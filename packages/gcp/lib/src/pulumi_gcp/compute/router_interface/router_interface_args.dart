// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for RouterInterface.
class RouterInterfaceArgs {
  /// The name or resource link to the
  /// VLAN interconnect for this interface. Changing this forces a new interface to
  /// be created. Only one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  final Input<String>? interconnectAttachment;

  /// IP address and range of the interface. The IP range must be
  /// in the RFC3927 link-local IP space. Changing this forces a new interface to be created.
  final Input<String>? ipRange;

  /// IP version of this interface. Can be either IPV4 or IPV6.
  final Input<String>? ipVersion;

  /// A unique name for the interface, required by GCE. Changing
  /// this forces a new interface to be created.
  final Input<String>? name;

  /// The regional private internal IP address that is used
  /// to establish BGP sessions to a VM instance acting as a third-party Router Appliance. Changing this forces a new interface to be created.
  final Input<String>? privateIpAddress;

  /// The ID of the project in which this interface's routerbelongs.
  /// If it is not provided, the provider project is used. Changing this forces a new interface to be created.
  final Input<String>? project;

  /// The name of the interface that is redundant to
  /// this interface. Changing this forces a new interface to be created.
  final Input<String>? redundantInterface;

  /// The region this interface's router sits in.
  /// If not specified, the project region will be used. Changing this forces a new interface to be created.
  final Input<String>? region;

  /// The name of the router this interface will be attached to.
  /// Changing this forces a new interface to be created.
  ///
  /// In addition to the above required fields, a router interface must have specified either <span pulumi-lang-nodejs="`ipRange`" pulumi-lang-dotnet="`IpRange`" pulumi-lang-go="`ipRange`" pulumi-lang-python="`ip_range`" pulumi-lang-yaml="`ipRange`" pulumi-lang-java="`ipRange`">`ip_range`</span> or exactly one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span>, or both.
  ///
  /// - - -
  final Input<String> router;

  /// The URI of the subnetwork resource that this interface
  /// belongs to, which must be in the same region as the Cloud Router. When you establish a BGP session to a VM instance using this interface, the VM instance must belong to the same subnetwork as the subnetwork specified here. Changing this forces a new interface to be created. Only one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  final Input<String>? subnetwork;

  /// The name or resource link to the VPN tunnel this
  /// interface will be linked to. Changing this forces a new interface to be created. Only
  /// one of <span pulumi-lang-nodejs="`vpnTunnel`" pulumi-lang-dotnet="`VpnTunnel`" pulumi-lang-go="`vpnTunnel`" pulumi-lang-python="`vpn_tunnel`" pulumi-lang-yaml="`vpnTunnel`" pulumi-lang-java="`vpnTunnel`">`vpn_tunnel`</span>, <span pulumi-lang-nodejs="`interconnectAttachment`" pulumi-lang-dotnet="`InterconnectAttachment`" pulumi-lang-go="`interconnectAttachment`" pulumi-lang-python="`interconnect_attachment`" pulumi-lang-yaml="`interconnectAttachment`" pulumi-lang-java="`interconnectAttachment`">`interconnect_attachment`</span> or <span pulumi-lang-nodejs="`subnetwork`" pulumi-lang-dotnet="`Subnetwork`" pulumi-lang-go="`subnetwork`" pulumi-lang-python="`subnetwork`" pulumi-lang-yaml="`subnetwork`" pulumi-lang-java="`subnetwork`">`subnetwork`</span> can be specified.
  final Input<String>? vpnTunnel;

  RouterInterfaceArgs({
    this.interconnectAttachment,
    this.ipRange,
    this.ipVersion,
    this.name,
    this.privateIpAddress,
    this.project,
    this.redundantInterface,
    this.region,
    required this.router,
    this.subnetwork,
    this.vpnTunnel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interconnectAttachmentValue = interconnectAttachment;
    if (interconnectAttachmentValue != null) {
      map['interconnectAttachment'] = interconnectAttachmentValue;
    }
    final ipRangeValue = ipRange;
    if (ipRangeValue != null) {
      map['ipRange'] = ipRangeValue;
    }
    final ipVersionValue = ipVersion;
    if (ipVersionValue != null) {
      map['ipVersion'] = ipVersionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final privateIpAddressValue = privateIpAddress;
    if (privateIpAddressValue != null) {
      map['privateIpAddress'] = privateIpAddressValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final redundantInterfaceValue = redundantInterface;
    if (redundantInterfaceValue != null) {
      map['redundantInterface'] = redundantInterfaceValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    final subnetworkValue = subnetwork;
    if (subnetworkValue != null) {
      map['subnetwork'] = subnetworkValue;
    }
    final vpnTunnelValue = vpnTunnel;
    if (vpnTunnelValue != null) {
      map['vpnTunnel'] = vpnTunnelValue;
    }
    return map;
  }

  factory RouterInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return RouterInterfaceArgs(
      interconnectAttachment:
          Input.asOptionalInput<String>(map['interconnectAttachment']),
      ipRange: Input.asOptionalInput<String>(map['ipRange']),
      ipVersion: Input.asOptionalInput<String>(map['ipVersion']),
      name: Input.asOptionalInput<String>(map['name']),
      privateIpAddress: Input.asOptionalInput<String>(map['privateIpAddress']),
      project: Input.asOptionalInput<String>(map['project']),
      redundantInterface:
          Input.asOptionalInput<String>(map['redundantInterface']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
      subnetwork: Input.asOptionalInput<String>(map['subnetwork']),
      vpnTunnel: Input.asOptionalInput<String>(map['vpnTunnel']),
    );
  }
}
