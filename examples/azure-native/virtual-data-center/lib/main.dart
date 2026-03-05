import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:pulumi_azure_native/network.dart' as network;
import 'package:pulumi_azure_native/resources.dart' as resources;

class _Ipv4Cidr {
  _Ipv4Cidr._(this.network, this.prefix);

  final int network;
  final int prefix;

  static _Ipv4Cidr parse(String cidr) {
    final parts = cidr.split('/');
    if (parts.length != 2) {
      throw ArgumentError('Invalid CIDR: $cidr');
    }
    final prefix = int.tryParse(parts[1]);
    if (prefix == null || prefix < 0 || prefix > 32) {
      throw ArgumentError('Invalid CIDR prefix: $cidr');
    }
    final ip = _ipToInt(parts[0]);
    final masked = ip & _mask(prefix);
    return _Ipv4Cidr._(masked, prefix);
  }

  int get size => 1 << (32 - prefix);
  int get start => network;
  int get end => network + size - 1;

  bool get isPrivate {
    final o1 = (network >> 24) & 0xff;
    final o2 = (network >> 16) & 0xff;
    if (o1 == 10) {
      return true;
    }
    if (o1 == 172 && o2 >= 16 && o2 <= 31) {
      return true;
    }
    if (o1 == 192 && o2 == 168) {
      return true;
    }
    return false;
  }

  bool contains(_Ipv4Cidr other) {
    return other.start >= start && other.end <= end;
  }

  bool overlaps(_Ipv4Cidr other) {
    return !(end < other.start || other.end < start);
  }

  _Ipv4Cidr supernetWithPrefixDiff(int prefixDiff) {
    final newPrefix = prefix - prefixDiff;
    if (newPrefix < 0) {
      throw ArgumentError('Invalid supernet diff for $this');
    }
    return _Ipv4Cidr._(network & _mask(newPrefix), newPrefix);
  }

  List<_Ipv4Cidr> subnetsWithPrefixDiff(int prefixDiff) {
    final newPrefix = prefix + prefixDiff;
    return subnetsWithNewPrefix(newPrefix);
  }

  List<_Ipv4Cidr> subnetsWithNewPrefix(int newPrefix) {
    if (newPrefix < prefix || newPrefix > 32) {
      throw ArgumentError('Invalid subnet prefix $newPrefix for $this');
    }
    final subnetSize = 1 << (32 - newPrefix);
    final count = 1 << (newPrefix - prefix);
    return List<_Ipv4Cidr>.generate(
      count,
      (i) => _Ipv4Cidr._(network + i * subnetSize, newPrefix),
      growable: false,
    );
  }

  @override
  String toString() => '${_intToIp(network)}/$prefix';

  static int _ipToInt(String ip) {
    final parts = ip.split('.');
    if (parts.length != 4) {
      throw ArgumentError('Invalid IPv4 address: $ip');
    }
    var value = 0;
    for (final part in parts) {
      final octet = int.tryParse(part);
      if (octet == null || octet < 0 || octet > 255) {
        throw ArgumentError('Invalid IPv4 address: $ip');
      }
      value = (value << 8) | octet;
    }
    return value;
  }

  static String _intToIp(int value) {
    return '${(value >> 24) & 0xff}.${(value >> 16) & 0xff}.${(value >> 8) & 0xff}.${value & 0xff}';
  }

  static int _mask(int prefix) {
    if (prefix == 0) {
      return 0;
    }
    return ((0xffffffff << (32 - prefix)) & 0xffffffff);
  }
}

class _Settings {
  _Settings({
    required this.azureBastion,
    required this.defaultTags,
    required this.firewallAddressSpace,
    required this.forcedTunnel,
    required this.hubAddressSpace,
    required this.location,
    required this.org,
    required this.peer,
    required this.project,
    required this.reference,
    required this.separator,
    required this.suffix,
    required this.stack,
    required this.spoke1AddressSpace,
    required this.spoke2AddressSpace,
  });

  final bool azureBastion;
  final Map<String, String> defaultTags;
  final String firewallAddressSpace;
  final String? forcedTunnel;
  final String hubAddressSpace;
  final String location;
  final String org;
  final String? peer;
  final String project;
  final pulumi.StackReference? reference;
  final String separator;
  final String suffix;
  final String stack;
  final String spoke1AddressSpace;
  final String spoke2AddressSpace;

  static _Settings fromConfig() {
    final config = pulumi.Config();
    final deployment = pulumi.Deployment.instance;

    final project = deployment.projectName;
    final stack = deployment.stackName;
    final defaultTags = <String, String>{
      'manager': 'pulumi',
      'project': project,
      'stack': stack,
    };

    final separatorRaw = config.get('separator') ?? '-';
    var separator = separatorRaw.isEmpty ? '-' : separatorRaw[0];
    if (separator == ' ') {
      separator = '';
    }

    final suffix = config.get('suffix') ?? '';
    final azureBastion = config.getBoolean('azure_bastion') ?? false;
    final forcedTunnel = config.get('forced_tunnel');
    final firewallAddressSpace = config.require('firewall_address_space');
    final hubAddressSpace = config.require('hub_address_space');
    final location =
        config.get('location') ??
        pulumi.Config('azure-native').get('location') ??
        'australiaeast';

    final peer = config.get('peer');
    final org = config.get('org') ?? '';
    var peerProject = config.get('project') ?? '';
    if (org.isNotEmpty && peerProject.isEmpty) {
      peerProject = project;
    }
    if (peerProject.isEmpty) {
      peerProject = project;
    }

    final reference = (peer == null || peer.isEmpty)
        ? null
        : pulumi.StackReference(
            '${org.isNotEmpty ? '$org/' : ''}$peerProject/$peer',
          );

    final firewallNetwork = _Ipv4Cidr.parse(firewallAddressSpace);
    if (!firewallNetwork.isPrivate) {
      throw ArgumentError('firewall_address_space must be private');
    }
    if (firewallNetwork.prefix > 24) {
      throw ArgumentError('firewall_address_space must be /24 or larger');
    }

    final hubNetwork = _Ipv4Cidr.parse(hubAddressSpace);
    if (!hubNetwork.isPrivate) {
      throw ArgumentError('hub_address_space must be private');
    }
    if (hubNetwork.prefix > 24) {
      throw ArgumentError('hub_address_space must be /24 or larger');
    }
    if (hubNetwork.overlaps(firewallNetwork)) {
      throw ArgumentError(
        'firewall_address_space and hub_address_space may not overlap',
      );
    }

    final privateCandidates = <_Ipv4Cidr>[
      _Ipv4Cidr.parse('10.0.0.0/8'),
      _Ipv4Cidr.parse('172.16.0.0/12'),
      _Ipv4Cidr.parse('192.168.0.0/16'),
    ];
    _Ipv4Cidr? superNetwork;
    for (final candidate in privateCandidates) {
      if (candidate.contains(hubNetwork)) {
        superNetwork = candidate;
        break;
      }
    }
    if (superNetwork == null) {
      throw ArgumentError(
        'hub_address_space must be a subnet of a private supernet',
      );
    }

    final stackSubnets = superNetwork.subnetsWithNewPrefix(hubNetwork.prefix);
    final hubIndex = stackSubnets.indexWhere(
      (n) => n.network == hubNetwork.network,
    );
    if (hubIndex < 0 || hubIndex + 2 >= stackSubnets.length) {
      throw ArgumentError('Unable to derive contiguous spoke address spaces');
    }

    if (_Ipv4Cidr.parse(stackSubnets[hubIndex].toString()).toString() !=
        hubAddressSpace) {
      throw ArgumentError('hub_address_space check assumptions');
    }

    return _Settings(
      azureBastion: azureBastion,
      defaultTags: defaultTags,
      firewallAddressSpace: firewallAddressSpace,
      forcedTunnel: forcedTunnel,
      hubAddressSpace: hubAddressSpace,
      location: location,
      org: org,
      peer: peer,
      project: peerProject,
      reference: reference,
      separator: separator,
      suffix: suffix,
      stack: stack,
      spoke1AddressSpace: stackSubnets[hubIndex + 1].toString(),
      spoke2AddressSpace: stackSubnets[hubIndex + 2].toString(),
    );
  }
}

class _HubProps {
  _HubProps({
    required this.azureBastion,
    required this.firewallAddressSpace,
    required this.forcedTunnel,
    required this.hubAddressSpace,
    required this.location,
    required this.peer,
    required this.reference,
    required this.resourceGroupName,
    required this.separator,
    required this.stack,
    required this.subnetNames,
    required this.suffix,
    required this.tags,
  });

  final bool azureBastion;
  final String firewallAddressSpace;
  final String? forcedTunnel;
  final String hubAddressSpace;
  final String location;
  final String? peer;
  final pulumi.StackReference? reference;
  final pulumi.Input<String> resourceGroupName;
  final String separator;
  final String stack;
  final List<String> subnetNames;
  final String suffix;
  final Map<String, String> tags;
}

class _Hub extends pulumi.ComponentResource {
  _Hub(String name, _HubProps props, {pulumi.ComponentResourceOptions? opts})
    : stem = name,
      super('vdc:network:Hub', name, const {}, opts) {
    final fwzNw = _Ipv4Cidr.parse(props.firewallAddressSpace);
    final fwzSubnets = fwzNw.subnetsWithNewPrefix(25);
    final fwxNw = fwzSubnets[0];
    final dmzNw = fwzSubnets[1];
    final fwxSubnets = fwxNw.subnetsWithNewPrefix(26);
    final fwsNw = fwxSubnets[0];
    final fwmNw = fwxSubnets[1];

    final hubNw = _Ipv4Cidr.parse(props.hubAddressSpace);
    final hubSubDiff = hubNw.prefix < 20
        ? ((32 - hubNw.prefix) / 2).floor()
        : 25 - hubNw.prefix;
    final hubSubnets = hubNw.subnetsWithPrefixDiff(hubSubDiff);
    final firstReserved = hubSubnets[0].subnetsWithNewPrefix(26);
    final gwsNw = firstReserved[0];
    final remNw = firstReserved[1];
    final absNw = remNw.subnetsWithNewPrefix(27)[0];
    final sharedSubnetCidrs = hubSubnets
        .skip(1)
        .map((n) => n.toString())
        .toList();
    if (sharedSubnetCidrs.length < props.subnetNames.length) {
      throw StateError('Not enough hub subnets for shared services');
    }

    final s = props.separator;
    final dmzAr = dmzNw.toString();
    final gwsAr = gwsNw.toString();

    final hubVnet = _virtualNetwork(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      addressSpaces: [props.firewallAddressSpace, props.hubAddressSpace],
      tags: props.tags,
    );

    final hubFwmRt = _routeTable(
      parent: this,
      stem: '${name}${s}fwm',
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: true,
      tags: props.tags,
    );
    final hubFwmDg = _routeToInternet(
      parent: this,
      stem: 'fwm${s}internet',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubFwmRt.name,
      routeName: 'FirewallDefaultRoute'.output(),
    );
    final hubFwmSn = _subnetSpecial(
      parent: this,
      stem: '${name}${s}fwm',
      separator: s,
      subnetName: 'AzureFirewallManagementSubnet',
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: hubVnet.name,
      addressPrefix: fwmNw.toString().output(),
      routeTableId: hubFwmRt.id,
      dependsOn: [hubVnet, hubFwmRt, hubFwmDg],
    );

    final hubFwRt = _routeTable(
      parent: this,
      stem: '${name}${s}fw',
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: false,
      tags: props.tags,
    );

    network.RouteNetwork hubFwDg;
    var privateRanges = 'IANAPrivateRanges';
    if (props.forcedTunnel == null || props.forcedTunnel!.isEmpty) {
      hubFwDg = _routeToInternet(
        parent: this,
        stem: 'fw${s}internet',
        separator: s,
        resourceGroupName: props.resourceGroupName,
        routeTableName: hubFwRt.name,
      );
    } else {
      hubFwDg = _routeToVirtualAppliance(
        parent: this,
        stem: 'fw${s}tunnel',
        separator: s,
        resourceGroupName: props.resourceGroupName,
        routeTableName: hubFwRt.name,
        addressPrefix: '0.0.0.0/0'.output(),
        nextHopIpAddress: props.forcedTunnel!.output(),
      );
      final forcedTunnelIp = _Ipv4Cidr._ipToInt(props.forcedTunnel!);
      final o1 = (forcedTunnelIp >> 24) & 0xff;
      final o2 = (forcedTunnelIp >> 16) & 0xff;
      final isPrivate =
          o1 == 10 ||
          (o1 == 172 && o2 >= 16 && o2 <= 31) ||
          (o1 == 192 && o2 == 168);
      if (!isPrivate) {
        privateRanges = '0.0.0.0/0';
      }
    }

    final hubFwSn = _subnetSpecial(
      parent: this,
      stem: '${name}${s}fw',
      separator: s,
      subnetName: 'AzureFirewallSubnet',
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: hubVnet.name,
      addressPrefix: fwsNw.toString().output(),
      routeTableId: hubFwRt.id,
      dependsOn: [hubVnet, hubFwRt, hubFwDg],
    );

    final hubFw = _firewall(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      fwSubnetId: hubFwSn.id,
      fwmSubnetId: hubFwmSn.id,
      privateRanges: privateRanges,
      tags: props.tags,
      dependsOn: [hubFwSn, hubFwmSn],
    );

    final hubFwIp = hubFw.ipConfigurations.apply<String>((configs) {
      final value = (configs != null && configs.isNotEmpty)
          ? configs.first['privateIPAddress'] as String?
          : null;
      if (value == null || value.isEmpty) {
        if (pulumi.Deployment.instance.isDryRun) {
          return '<preview>';
        }
        throw StateError('Firewall private IP was not available');
      }
      return value;
    });

    final hubDmzRt = _routeTable(
      parent: this,
      stem: '${name}${s}dmz',
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: true,
      tags: props.tags,
      dependsOn: [hubFw],
    );
    final hubDmzDg = _routeToVirtualAppliance(
      parent: this,
      stem: 'dmz${s}dg',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubDmzRt.name,
      addressPrefix: '0.0.0.0/0'.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubDmzDmz = _routeToVirtualAppliance(
      parent: this,
      stem: 'dmz${s}dmz',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubDmzRt.name,
      addressPrefix: dmzAr.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubDmzHub = _routeToVirtualAppliance(
      parent: this,
      stem: 'dmz${s}hub',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubDmzRt.name,
      addressPrefix: props.hubAddressSpace.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubDmzSn = _subnetSpecial(
      parent: this,
      stem: '${name}${s}dmz',
      separator: s,
      subnetName: 'DMZ',
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: hubVnet.name,
      addressPrefix: dmzAr.output(),
      routeTableId: hubDmzRt.id,
      dependsOn: [hubDmzRt, hubDmzDg, hubDmzDmz, hubDmzHub],
    );

    final hubGwRt = _routeTable(
      parent: this,
      stem: '${name}${s}gw',
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: false,
      tags: props.tags,
      dependsOn: [hubDmzSn],
    );
    final hubGwGw = _routeToVirtualNetwork(
      parent: this,
      stem: 'gw${s}gw',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubGwRt.name,
      addressPrefix: gwsAr.output(),
    );
    final hubGwDmz = _routeToVirtualAppliance(
      parent: this,
      stem: 'gw${s}dmz',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubGwRt.name,
      addressPrefix: dmzAr.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubGwHub = _routeToVirtualAppliance(
      parent: this,
      stem: 'gw${s}hub',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubGwRt.name,
      addressPrefix: props.hubAddressSpace.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubGwSn = _subnetSpecial(
      parent: this,
      stem: '${name}${s}gw',
      separator: s,
      subnetName: 'GatewaySubnet',
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: hubVnet.name,
      addressPrefix: gwsAr.output(),
      routeTableId: hubGwRt.id,
      dependsOn: [hubGwRt, hubGwGw, hubGwDmz, hubGwHub],
    );

    final hubVpnGw = _vpnGateway(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      subnetId: hubGwSn.id,
      tags: props.tags,
      dependsOn: [hubGwSn],
    );

    final hubErGw = _expressRouteGateway(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      subnetId: hubGwSn.id,
      tags: props.tags,
      dependsOn: [hubGwSn],
    );

    final hubSsRt = _routeTable(
      parent: this,
      stem: '${name}${s}ss',
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: true,
      tags: props.tags,
      dependsOn: [hubErGw, hubVpnGw],
    );
    final hubSsDg = _routeToVirtualAppliance(
      parent: this,
      stem: 'ss${s}dg',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubSsRt.name,
      addressPrefix: '0.0.0.0/0'.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubSsDmz = _routeToVirtualAppliance(
      parent: this,
      stem: 'ss${s}dmz',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubSsRt.name,
      addressPrefix: dmzAr.output(),
      nextHopIpAddress: hubFwIp,
    );
    final hubSsGw = _routeToVirtualAppliance(
      parent: this,
      stem: 'ss${s}gw',
      separator: s,
      resourceGroupName: props.resourceGroupName,
      routeTableName: hubSsRt.name,
      addressPrefix: gwsAr.output(),
      nextHopIpAddress: hubFwIp,
    );

    for (var i = 0; i < props.subnetNames.length; i++) {
      _subnet(
        parent: this,
        stem: '${name}${s}${props.subnetNames[i]}',
        separator: s,
        resourceGroupName: props.resourceGroupName,
        virtualNetworkName: hubVnet.name,
        addressPrefix: sharedSubnetCidrs[i].output(),
        routeTableId: hubSsRt.id,
        dependsOn: [hubSsRt, hubSsDg, hubSsDmz, hubSsGw],
      );
    }

    if (props.azureBastion) {
      _bastionHost(
        parent: this,
        stem: name,
        separator: s,
        suffix: props.suffix,
        resourceGroupName: props.resourceGroupName,
        location: props.location.output(),
        virtualNetworkName: hubVnet.name,
        addressPrefix: absNw.toString().output(),
        tags: props.tags,
        dependsOn: [hubErGw, hubVpnGw],
      );
    }

    if (props.peer != null &&
        props.peer!.isNotEmpty &&
        props.reference != null) {
      final peerHubId = _stackRefString(props.reference!, 'hub_id');
      _vnetPeering(
        parent: this,
        stem: props.stack,
        peer: props.peer!,
        separator: s,
        suffix: props.suffix,
        resourceGroupName: props.resourceGroupName,
        virtualNetworkName: hubVnet.name,
        remoteVirtualNetworkId: peerHubId,
        allowForwardedTraffic: true.output(),
        allowGatewayTransit: false.output(),
      );

      final peerDmzAr = _stackRefString(props.reference!, 'dmz_ar');
      final peerFwIp = _stackRefString(props.reference!, 'fw_ip');
      final peerHubAs = _stackRefString(props.reference!, 'hub_as');
      final peerRoutes = <(String, pulumi.Input<String>, pulumi.Input<String>)>[
        ('dmz${s}${props.peer}${s}dmz', hubDmzRt.name, peerDmzAr),
        ('dmz${s}${props.peer}${s}hub', hubDmzRt.name, peerHubAs),
        ('gw${s}${props.peer}${s}dmz', hubGwRt.name, peerDmzAr),
        ('gw${s}${props.peer}${s}hub', hubGwRt.name, peerHubAs),
        ('ss${s}${props.peer}${s}dmz', hubSsRt.name, peerDmzAr),
        ('ss${s}${props.peer}${s}hub', hubSsRt.name, peerHubAs),
      ];
      for (final route in peerRoutes) {
        _routeToVirtualAppliance(
          parent: this,
          stem: route.$1,
          separator: s,
          resourceGroupName: props.resourceGroupName,
          routeTableName: route.$2,
          addressPrefix: route.$3,
          nextHopIpAddress: peerFwIp,
        );
      }
    }

    addressSpace = props.hubAddressSpace.output();
    dmzAddressRange = dmzAr.output();
    dmzRouteTableName = hubDmzRt.name;
    erGateway = hubErGw;
    fwIp = hubFwIp;
    fwRouteTableName = hubFwRt.name;
    gatewayRouteTableName = hubGwRt.name;
    id = hubVnet.id;
    nameOutput = hubVnet.name;
    ssRouteTableName = hubSsRt.name;
    vpnGateway = hubVpnGw;

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'id': id,
      'name': nameOutput,
      'addressSpace': addressSpace,
      'dmz_ar': dmzAddressRange,
      'fw_ip': fwIp,
    });
  }

  final String stem;
  late final pulumi.Output<String> id;
  late final pulumi.Output<String> nameOutput;
  late final pulumi.Output<String> addressSpace;
  late final pulumi.Output<String> dmzAddressRange;
  late final pulumi.Output<String> fwIp;
  late final pulumi.Output<String> fwRouteTableName;
  late final pulumi.Output<String> dmzRouteTableName;
  late final pulumi.Output<String> gatewayRouteTableName;
  late final pulumi.Output<String> ssRouteTableName;
  late final network.VirtualNetworkGatewayNetwork vpnGateway;
  late final network.VirtualNetworkGatewayNetwork erGateway;
}

class _SpokeProps {
  _SpokeProps({
    required this.azureBastion,
    required this.fwRouteTableName,
    required this.hub,
    required this.location,
    required this.peer,
    required this.reference,
    required this.resourceGroupName,
    required this.separator,
    required this.spokeAddressSpace,
    required this.subnetNames,
    required this.suffix,
    required this.tags,
  });

  final bool azureBastion;
  final pulumi.Input<String> fwRouteTableName;
  final _Hub hub;
  final String location;
  final String? peer;
  final pulumi.StackReference? reference;
  final pulumi.Input<String> resourceGroupName;
  final String separator;
  final String spokeAddressSpace;
  final List<String> subnetNames;
  final String suffix;
  final Map<String, String> tags;
}

class _Spoke extends pulumi.ComponentResource {
  _Spoke(
    String name,
    _SpokeProps props, {
    pulumi.ComponentResourceOptions? opts,
  }) : super('vdc:network:Spoke', name, const {}, opts) {
    final spokeNw = _Ipv4Cidr.parse(props.spokeAddressSpace);
    final spokeSubDiff = spokeNw.prefix < 24
        ? ((32 - spokeNw.prefix) / 2).floor()
        : 27 - spokeNw.prefix;
    final spokeSubnets = spokeNw.subnetsWithPrefixDiff(spokeSubDiff);
    final firstReserved = spokeSubnets[0].subnetsWithNewPrefix(27);
    final absNw = firstReserved[0];
    final appSubnetCidrs = spokeSubnets
        .skip(1)
        .map((n) => n.toString())
        .toList();
    if (appSubnetCidrs.length < props.subnetNames.length) {
      throw StateError('Not enough spoke subnets for requested layout');
    }

    final s = props.separator;

    final spokeVnet = _virtualNetwork(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      addressSpaces: [props.spokeAddressSpace],
      tags: props.tags,
    );

    final hubToSpoke = _vnetPeering(
      parent: this,
      stem: props.hub.stem,
      peer: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: props.hub.nameOutput,
      remoteVirtualNetworkId: spokeVnet.id,
      allowGatewayTransit: true.output(),
      dependsOn: [spokeVnet],
    );

    final spokeToHub = _vnetPeering(
      parent: this,
      stem: name,
      peer: props.hub.stem,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      virtualNetworkName: spokeVnet.name,
      remoteVirtualNetworkId: props.hub.id,
      allowForwardedTraffic: true.output(),
      useRemoteGateways: true.output(),
      dependsOn: [spokeVnet, props.hub.erGateway, props.hub.vpnGateway],
    );

    final spokeRt = _routeTable(
      parent: this,
      stem: name,
      separator: s,
      suffix: props.suffix,
      resourceGroupName: props.resourceGroupName,
      location: props.location.output(),
      disableBgpRoutePropagation: true,
      tags: props.tags,
    );

    final routes = <(String, pulumi.Input<String>, pulumi.Input<String>)>[
      (
        'dmz${s}$name',
        props.hub.dmzRouteTableName,
        props.spokeAddressSpace.output(),
      ),
      (
        'gw${s}$name',
        props.hub.gatewayRouteTableName,
        props.spokeAddressSpace.output(),
      ),
      (
        'ss${s}$name',
        props.hub.ssRouteTableName,
        props.spokeAddressSpace.output(),
      ),
      ('${name}${s}dg', spokeRt.name, '0.0.0.0/0'.output()),
      ('${name}${s}dmz', spokeRt.name, props.hub.dmzAddressRange),
      ('${name}${s}hub', spokeRt.name, props.hub.addressSpace),
    ];
    for (final route in routes) {
      _routeToVirtualAppliance(
        parent: this,
        stem: route.$1,
        separator: s,
        resourceGroupName: props.resourceGroupName,
        routeTableName: route.$2,
        addressPrefix: route.$3,
        nextHopIpAddress: props.hub.fwIp,
      );
    }

    for (var i = 0; i < props.subnetNames.length; i++) {
      _subnet(
        parent: this,
        stem: '${name}${s}${props.subnetNames[i]}',
        separator: s,
        resourceGroupName: props.resourceGroupName,
        virtualNetworkName: spokeVnet.name,
        addressPrefix: appSubnetCidrs[i].output(),
        routeTableId: spokeRt.id,
        dependsOn: [spokeRt, hubToSpoke, spokeToHub],
      );
    }

    if (props.azureBastion) {
      _bastionHost(
        parent: this,
        stem: name,
        separator: s,
        suffix: props.suffix,
        resourceGroupName: props.resourceGroupName,
        location: props.location.output(),
        virtualNetworkName: spokeVnet.name,
        addressPrefix: absNw.toString().output(),
        tags: props.tags,
        dependsOn: [hubToSpoke, spokeToHub, spokeRt],
      );
    }

    if (props.peer != null &&
        props.peer!.isNotEmpty &&
        props.reference != null) {
      final peerFwIp = _stackRefString(props.reference!, 'fw_ip');
      final peerSpokeAs = _stackRefString(props.reference!, '${name}_as');
      _routeToVirtualAppliance(
        parent: this,
        stem: 'fw${s}${props.peer}${s}$name',
        separator: s,
        resourceGroupName: props.resourceGroupName,
        routeTableName: props.fwRouteTableName,
        addressPrefix: peerSpokeAs,
        nextHopIpAddress: peerFwIp,
      );
    }

    addressSpace = props.spokeAddressSpace.output();
    id = spokeVnet.id;
    nameOutput = spokeVnet.name;

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'id': id,
      'name': nameOutput,
      'addressSpace': addressSpace,
    });
  }

  late final pulumi.Output<String> addressSpace;
  late final pulumi.Output<String> id;
  late final pulumi.Output<String> nameOutput;
}

class AzureNativeVirtualDataCenterStack extends pulumi.Stack {
  AzureNativeVirtualDataCenterStack() : super() {
    final settings = _Settings.fromConfig();
    final resourceGroup = resources.ResourceGroup(
      '${settings.stack}${settings.separator}vdc${settings.separator}rg${settings.separator}${settings.suffix}',
      args: resources.ResourceGroupArgs(
        location: settings.location.output(),
        tags: settings.defaultTags.output(),
      ),
    );

    final hub = _Hub(
      'hub',
      _HubProps(
        azureBastion: settings.azureBastion,
        firewallAddressSpace: settings.firewallAddressSpace,
        forcedTunnel: settings.forcedTunnel,
        hubAddressSpace: settings.hubAddressSpace,
        location: settings.location,
        peer: settings.peer,
        reference: settings.reference,
        resourceGroupName: resourceGroup.name,
        separator: settings.separator,
        stack: settings.stack,
        subnetNames: ['domain', 'files'],
        suffix: settings.suffix,
        tags: settings.defaultTags,
      ),
    );

    final spoke1 = _Spoke(
      's01',
      _SpokeProps(
        azureBastion: settings.azureBastion,
        fwRouteTableName: hub.fwRouteTableName,
        hub: hub,
        location: settings.location,
        peer: settings.peer,
        reference: settings.reference,
        resourceGroupName: resourceGroup.name,
        separator: settings.separator,
        spokeAddressSpace: settings.spoke1AddressSpace,
        subnetNames: ['web', 'app', 'db'],
        suffix: settings.suffix,
        tags: settings.defaultTags,
      ),
    );

    final spoke2 = _Spoke(
      's02',
      _SpokeProps(
        azureBastion: settings.azureBastion,
        fwRouteTableName: hub.fwRouteTableName,
        hub: hub,
        location: settings.location,
        peer: settings.peer,
        reference: settings.reference,
        resourceGroupName: resourceGroup.name,
        separator: settings.separator,
        spokeAddressSpace: settings.spoke2AddressSpace,
        subnetNames: ['web', 'app', 'db'],
        suffix: settings.suffix,
        tags: settings.defaultTags,
      ),
    );

    registerOutputs(<String, pulumi.Output<dynamic>>{
      'dmz_ar': hub.dmzAddressRange,
      'fw_ip': hub.fwIp,
      'hub_as': hub.addressSpace,
      'hub_id': hub.id,
      's01_as': spoke1.addressSpace,
      's01_id': spoke1.id,
      's02_as': spoke2.addressSpace,
      's02_id': spoke2.id,
    });
  }
}

pulumi.Output<String> _stackRefString(pulumi.StackReference ref, String key) {
  return ref.getOutput(key.output()).apply<String>((value) => value as String);
}

String _nameWithSuffix(
  String stem,
  String part,
  String separator,
  String suffix,
) {
  return '$stem$separator$part$separator$suffix';
}

pulumi.CustomResourceOptions _opts(
  pulumi.Resource parent, {
  List<pulumi.Resource>? dependsOn,
  bool? deleteBeforeReplace,
  pulumi.CustomTimeouts? customTimeouts,
}) {
  return pulumi.CustomResourceOptions(
    parent: parent,
    dependsOn: dependsOn,
    deleteBeforeReplace: deleteBeforeReplace,
    customTimeouts: customTimeouts,
  );
}

network.VirtualNetworkNetwork _virtualNetwork({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required List<String> addressSpaces,
  required Map<String, String> tags,
}) {
  final name = _nameWithSuffix(stem, 'vn', separator, suffix);
  return network.VirtualNetworkNetwork(
    name,
    args: network.VirtualNetworkArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      virtualNetworkName: name.output(),
      addressSpace: network.AddressSpace(
        addressPrefixes: addressSpaces.output(),
      ).output(),
      tags: tags.output(),
    ),
    options: _opts(parent),
  );
}

network.RouteTableNetwork _routeTable({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required bool disableBgpRoutePropagation,
  required Map<String, String> tags,
  List<pulumi.Resource>? dependsOn,
}) {
  final name = _nameWithSuffix(stem, 'rt', separator, suffix);
  return network.RouteTableNetwork(
    name,
    args: network.RouteTableArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      routeTableName: name.output(),
      disableBgpRoutePropagation: disableBgpRoutePropagation.output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );
}

network.RouteNetwork _routeToInternet({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> routeTableName,
  pulumi.Input<String>? routeName,
}) {
  final name = '$stem${separator}r';
  return network.RouteNetwork(
    name,
    args: network.RouteArgs(
      resourceGroupName: resourceGroupName,
      routeTableName: routeTableName,
      routeName: routeName ?? name.output(),
      addressPrefix: '0.0.0.0/0'.output(),
      nextHopType: network.RouteNextHopType.valueInternet.wireValue.output(),
    ),
    options: _opts(parent, deleteBeforeReplace: true),
  );
}

network.RouteNetwork _routeToVirtualAppliance({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> routeTableName,
  required pulumi.Input<String> addressPrefix,
  required pulumi.Input<String> nextHopIpAddress,
}) {
  final name = '$stem${separator}r';
  return network.RouteNetwork(
    name,
    args: network.RouteArgs(
      resourceGroupName: resourceGroupName,
      routeTableName: routeTableName,
      routeName: name.output(),
      addressPrefix: addressPrefix,
      nextHopType: network.RouteNextHopType.valueVirtualAppliance.wireValue
          .output(),
      nextHopIpAddress: nextHopIpAddress,
    ),
    options: _opts(parent),
  );
}

network.RouteNetwork _routeToVirtualNetwork({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> routeTableName,
  required pulumi.Input<String> addressPrefix,
}) {
  final name = '$stem${separator}r';
  return network.RouteNetwork(
    name,
    args: network.RouteArgs(
      resourceGroupName: resourceGroupName,
      routeTableName: routeTableName,
      routeName: name.output(),
      addressPrefix: addressPrefix,
      nextHopType: network.RouteNextHopType.valueVnetLocal.wireValue.output(),
    ),
    options: _opts(parent),
  );
}

network.SubnetNetwork _subnet({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> virtualNetworkName,
  required pulumi.Input<String> addressPrefix,
  required pulumi.Input<String> routeTableId,
  List<pulumi.Resource>? dependsOn,
}) {
  final name = '$stem${separator}sn';
  return network.SubnetNetwork(
    name,
    args: network.SubnetArgs(
      resourceGroupName: resourceGroupName,
      virtualNetworkName: virtualNetworkName,
      subnetName: name.output(),
      addressPrefix: addressPrefix,
      routeTable: (network.SubResource(id: routeTableId).output() as dynamic),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );
}

network.SubnetNetwork _subnetSpecial({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String subnetName,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> virtualNetworkName,
  required pulumi.Input<String> addressPrefix,
  required pulumi.Input<String> routeTableId,
  List<pulumi.Resource>? dependsOn,
}) {
  final name = '$stem${separator}sn';
  return network.SubnetNetwork(
    name,
    args: network.SubnetArgs(
      resourceGroupName: resourceGroupName,
      virtualNetworkName: virtualNetworkName,
      subnetName: subnetName.output(),
      addressPrefix: addressPrefix,
      routeTable: (network.SubResource(id: routeTableId).output() as dynamic),
    ),
    options: _opts(parent, dependsOn: dependsOn, deleteBeforeReplace: true),
  );
}

network.BastionHost _bastionHost({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required pulumi.Input<String> virtualNetworkName,
  required pulumi.Input<String> addressPrefix,
  required Map<String, String> tags,
  List<pulumi.Resource>? dependsOn,
}) {
  final subnet = _subnetSpecial(
    parent: parent,
    stem: '${stem}${separator}ab',
    separator: separator,
    subnetName: 'AzureBastionSubnet',
    resourceGroupName: resourceGroupName,
    virtualNetworkName: virtualNetworkName,
    addressPrefix: addressPrefix,
    routeTableId: ''.output(),
    dependsOn: dependsOn,
  );

  final pipName = _nameWithSuffix(stem, 'ab${separator}pip', separator, suffix);
  final pip = network.PublicIPAddressNetwork(
    pipName,
    args: network.PublicIPAddressArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      publicIpAddressName: pipName.output(),
      publicIPAllocationMethod: network.IPAllocationMethod.valueStatic.wireValue
          .output(),
      sku: network.PublicIPAddressSku(
        name: network.PublicIPAddressSkuName.valueStandard.wireValue.output(),
      ).output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );

  final bastionName = _nameWithSuffix(stem, 'ab', separator, suffix);
  return network.BastionHost(
    bastionName,
    args: network.BastionHostArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      bastionHostName: bastionName.output(),
      ipConfigurations: [
        network.BastionHostIPConfiguration(
          name: '${stem}${separator}ab${separator}ipc'.output(),
          subnet: network.SubResource(id: subnet.id).output(),
          publicIPAddress: network.SubResource(id: pip.id).output(),
        ),
      ].output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );
}

network.VirtualNetworkGatewayNetwork _vpnGateway({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required pulumi.Input<String> subnetId,
  required Map<String, String> tags,
  List<pulumi.Resource>? dependsOn,
}) {
  final pipName = _nameWithSuffix(
    stem,
    'vpn${separator}gw${separator}pip',
    separator,
    suffix,
  );
  final pip = network.PublicIPAddressNetwork(
    pipName,
    args: network.PublicIPAddressArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      publicIpAddressName: pipName.output(),
      publicIPAllocationMethod: network
          .IPAllocationMethod
          .valueDynamic
          .wireValue
          .output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );

  final gatewayName = _nameWithSuffix(
    stem,
    'vpn${separator}gw',
    separator,
    suffix,
  );
  return network.VirtualNetworkGatewayNetwork(
    gatewayName,
    args: network.VirtualNetworkGatewayArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      virtualNetworkGatewayName: gatewayName.output(),
      gatewayType: network.VirtualNetworkGatewayType.valueVpn.wireValue
          .output(),
      vpnType: network.VpnType.valueRouteBased.wireValue.output(),
      enableBgp: true.output(),
      sku: network.VirtualNetworkGatewaySku(
        name: network.VirtualNetworkGatewaySkuName.valueVpnGw1.wireValue
            .output(),
        tier: network.VirtualNetworkGatewaySkuTier.valueVpnGw1.wireValue
            .output(),
      ).output(),
      ipConfigurations: [
        network.VirtualNetworkGatewayIPConfiguration(
          name: '${stem}${separator}vpn${separator}gw${separator}ipc'.output(),
          publicIPAddress: network.SubResource(id: pip.id).output(),
          subnet: network.SubResource(id: subnetId).output(),
        ),
      ].output(),
      tags: tags.output(),
    ),
    options: _opts(
      parent,
      dependsOn: dependsOn,
      customTimeouts: const pulumi.CustomTimeouts(
        create: '1h',
        update: '1h',
        delete: '1h',
      ),
    ),
  );
}

network.VirtualNetworkGatewayNetwork _expressRouteGateway({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required pulumi.Input<String> subnetId,
  required Map<String, String> tags,
  List<pulumi.Resource>? dependsOn,
}) {
  final pipName = _nameWithSuffix(
    stem,
    'er${separator}gw${separator}pip',
    separator,
    suffix,
  );
  final pip = network.PublicIPAddressNetwork(
    pipName,
    args: network.PublicIPAddressArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      publicIpAddressName: pipName.output(),
      publicIPAllocationMethod: network
          .IPAllocationMethod
          .valueDynamic
          .wireValue
          .output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );

  final gatewayName = _nameWithSuffix(
    stem,
    'er${separator}gw',
    separator,
    suffix,
  );
  return network.VirtualNetworkGatewayNetwork(
    gatewayName,
    args: network.VirtualNetworkGatewayArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      virtualNetworkGatewayName: gatewayName.output(),
      gatewayType: network.VirtualNetworkGatewayType.valueExpressRoute.wireValue
          .output(),
      vpnType: network.VpnType.valueRouteBased.wireValue.output(),
      enableBgp: true.output(),
      sku: network.VirtualNetworkGatewaySku(
        name: network.VirtualNetworkGatewaySkuName.valueStandard.wireValue
            .output(),
        tier: network.VirtualNetworkGatewaySkuTier.valueStandard.wireValue
            .output(),
      ).output(),
      ipConfigurations: [
        network.VirtualNetworkGatewayIPConfiguration(
          name: '${stem}${separator}er${separator}gw${separator}ipc'.output(),
          publicIPAddress: network.SubResource(id: pip.id).output(),
          subnet: network.SubResource(id: subnetId).output(),
        ),
      ].output(),
      tags: tags.output(),
    ),
    options: _opts(
      parent,
      dependsOn: dependsOn,
      customTimeouts: const pulumi.CustomTimeouts(
        create: '1h',
        update: '1h',
        delete: '1h',
      ),
    ),
  );
}

network.AzureFirewall _firewall({
  required pulumi.Resource parent,
  required String stem,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> location,
  required pulumi.Input<String> fwSubnetId,
  required pulumi.Input<String> fwmSubnetId,
  required String privateRanges,
  required Map<String, String> tags,
  List<pulumi.Resource>? dependsOn,
}) {
  final fwPipName = _nameWithSuffix(
    stem,
    'fw${separator}pip',
    separator,
    suffix,
  );
  final fwPip = network.PublicIPAddressNetwork(
    fwPipName,
    args: network.PublicIPAddressArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      publicIpAddressName: fwPipName.output(),
      publicIPAllocationMethod: network.IPAllocationMethod.valueStatic.wireValue
          .output(),
      sku: network.PublicIPAddressSku(
        name: network.PublicIPAddressSkuName.valueStandard.wireValue.output(),
      ).output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );

  final fwmPipName = _nameWithSuffix(
    stem,
    'fwm${separator}pip',
    separator,
    suffix,
  );
  final fwmPip = network.PublicIPAddressNetwork(
    fwmPipName,
    args: network.PublicIPAddressArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      publicIpAddressName: fwmPipName.output(),
      publicIPAllocationMethod: network.IPAllocationMethod.valueStatic.wireValue
          .output(),
      sku: network.PublicIPAddressSku(
        name: network.PublicIPAddressSkuName.valueStandard.wireValue.output(),
      ).output(),
      tags: tags.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );

  final firewallName = _nameWithSuffix(stem, 'fw', separator, suffix);
  return network.AzureFirewall(
    firewallName,
    args: network.AzureFirewallArgs(
      resourceGroupName: resourceGroupName,
      location: location,
      azureFirewallName: firewallName.output(),
      additionalProperties: <String, String>{
        'Network.SNAT.PrivateRanges': privateRanges,
      }.output(),
      sku: network.AzureFirewallSku(
        name: network.AzureFirewallSkuName.valueAZFWVNet.wireValue.output(),
        tier: network.AzureFirewallSkuTier.valueStandard.wireValue.output(),
      ).output(),
      ipConfigurations: [
        network.AzureFirewallIPConfiguration(
          name: '${stem}${separator}fw${separator}ipc'.output(),
          publicIPAddress: network.SubResource(id: fwPip.id).output(),
          subnet: network.SubResource(id: fwSubnetId).output(),
        ),
      ].output(),
      managementIpConfiguration: network.AzureFirewallIPConfiguration(
        name: '${stem}${separator}fwm${separator}ipc'.output(),
        publicIPAddress: network.SubResource(id: fwmPip.id).output(),
        subnet: network.SubResource(id: fwmSubnetId).output(),
      ).output(),
      tags: tags.output(),
    ),
    options: _opts(
      parent,
      dependsOn: dependsOn,
      customTimeouts: const pulumi.CustomTimeouts(
        create: '1h',
        update: '1h',
        delete: '1h',
      ),
    ),
  );
}

network.VirtualNetworkPeeringNetwork _vnetPeering({
  required pulumi.Resource parent,
  required String stem,
  required String peer,
  required String separator,
  required String suffix,
  required pulumi.Input<String> resourceGroupName,
  required pulumi.Input<String> virtualNetworkName,
  required pulumi.Input<String> remoteVirtualNetworkId,
  pulumi.Input<bool>? allowForwardedTraffic,
  pulumi.Input<bool>? allowGatewayTransit,
  pulumi.Input<bool>? useRemoteGateways,
  List<pulumi.Resource>? dependsOn,
}) {
  final name = _nameWithSuffix(stem, '$peer${separator}vnp', separator, suffix);
  return network.VirtualNetworkPeeringNetwork(
    name,
    args: network.VirtualNetworkPeeringArgs(
      resourceGroupName: resourceGroupName,
      virtualNetworkName: virtualNetworkName,
      virtualNetworkPeeringName: name.output(),
      remoteVirtualNetwork: network.SubResource(
        id: remoteVirtualNetworkId,
      ).output(),
      allowForwardedTraffic: allowForwardedTraffic,
      allowGatewayTransit: allowGatewayTransit,
      useRemoteGateways: useRemoteGateways,
      allowVirtualNetworkAccess: true.output(),
    ),
    options: _opts(parent, dependsOn: dependsOn),
  );
}
