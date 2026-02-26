// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../network_interface_attachment/network_interface_attachment.dart';

/// The set of arguments for NetworkInterface.
class NetworkInterfaceArgs {
  /// Configuration block to define the attachment of the ENI. See Attachment below for more details!
  final Input<List<NetworkInterfaceAttachment>>? attachments;

  /// Description for the network interface.
  final Input<String>? description;

  /// Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  final Input<bool>? enablePrimaryIpv6;

  /// Type of network interface to create. Set to <span pulumi-lang-nodejs="`efa`" pulumi-lang-dotnet="`Efa`" pulumi-lang-go="`efa`" pulumi-lang-python="`efa`" pulumi-lang-yaml="`efa`" pulumi-lang-java="`efa`">`efa`</span> for Elastic Fabric Adapter. Changing <span pulumi-lang-nodejs="`interfaceType`" pulumi-lang-dotnet="`InterfaceType`" pulumi-lang-go="`interfaceType`" pulumi-lang-python="`interface_type`" pulumi-lang-yaml="`interfaceType`" pulumi-lang-java="`interfaceType`">`interface_type`</span> will cause the resource to be destroyed and re-created.
  final Input<String>? interfaceType;

  /// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  final Input<int>? ipv4PrefixCount;

  /// One or more IPv4 prefixes assigned to the network interface.
  final Input<List<String>>? ipv4Prefixes;

  /// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific <span pulumi-lang-nodejs="`ipv6Addresses`" pulumi-lang-dotnet="`Ipv6Addresses`" pulumi-lang-go="`ipv6Addresses`" pulumi-lang-python="`ipv6_addresses`" pulumi-lang-yaml="`ipv6Addresses`" pulumi-lang-java="`ipv6Addresses`">`ipv6_addresses`</span>. If your subnet has the AssignIpv6AddressOnCreation attribute set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, you can specify <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> to override this setting.
  final Input<int>? ipv6AddressCount;

  /// Whether <span pulumi-lang-nodejs="`ipv6AddressList`" pulumi-lang-dotnet="`Ipv6AddressList`" pulumi-lang-go="`ipv6AddressList`" pulumi-lang-python="`ipv6_address_list`" pulumi-lang-yaml="`ipv6AddressList`" pulumi-lang-java="`ipv6AddressList`">`ipv6_address_list`</span> is allowed and controls the IPs to assign to the ENI and <span pulumi-lang-nodejs="`ipv6Addresses`" pulumi-lang-dotnet="`Ipv6Addresses`" pulumi-lang-go="`ipv6Addresses`" pulumi-lang-python="`ipv6_addresses`" pulumi-lang-yaml="`ipv6Addresses`" pulumi-lang-java="`ipv6Addresses`">`ipv6_addresses`</span> and <span pulumi-lang-nodejs="`ipv6AddressCount`" pulumi-lang-dotnet="`Ipv6AddressCount`" pulumi-lang-go="`ipv6AddressCount`" pulumi-lang-python="`ipv6_address_count`" pulumi-lang-yaml="`ipv6AddressCount`" pulumi-lang-java="`ipv6AddressCount`">`ipv6_address_count`</span> become read-only. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? ipv6AddressListEnabled;

  /// List of private IPs to assign to the ENI in sequential order.
  final Input<List<String>>? ipv6AddressLists;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying <span pulumi-lang-nodejs="`ipv6AddressCount`" pulumi-lang-dotnet="`Ipv6AddressCount`" pulumi-lang-go="`ipv6AddressCount`" pulumi-lang-python="`ipv6_address_count`" pulumi-lang-yaml="`ipv6AddressCount`" pulumi-lang-java="`ipv6AddressCount`">`ipv6_address_count`</span>.
  final Input<List<String>>? ipv6Addresses;

  /// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  final Input<int>? ipv6PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface.
  final Input<List<String>>? ipv6Prefixes;
  final Input<String>? privateIp;

  /// Whether <span pulumi-lang-nodejs="`privateIpList`" pulumi-lang-dotnet="`PrivateIpList`" pulumi-lang-go="`privateIpList`" pulumi-lang-python="`private_ip_list`" pulumi-lang-yaml="`privateIpList`" pulumi-lang-java="`privateIpList`">`private_ip_list`</span> is allowed and controls the IPs to assign to the ENI and <span pulumi-lang-nodejs="`privateIps`" pulumi-lang-dotnet="`PrivateIps`" pulumi-lang-go="`privateIps`" pulumi-lang-python="`private_ips`" pulumi-lang-yaml="`privateIps`" pulumi-lang-java="`privateIps`">`private_ips`</span> and <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span> become read-only. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? privateIpListEnabled;

  /// List of private IPs to assign to the ENI in sequential order. Requires setting <span pulumi-lang-nodejs="`privateIpListEnabled`" pulumi-lang-dotnet="`PrivateIpListEnabled`" pulumi-lang-go="`privateIpListEnabled`" pulumi-lang-python="`private_ip_list_enabled`" pulumi-lang-yaml="`privateIpListEnabled`" pulumi-lang-java="`privateIpListEnabled`">`private_ip_list_enabled`</span> to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<List<String>>? privateIpLists;

  /// List of private IPs to assign to the ENI without regard to order.
  final Input<List<String>>? privateIps;

  /// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + <span pulumi-lang-nodejs="`privateIpsCount`" pulumi-lang-dotnet="`PrivateIpsCount`" pulumi-lang-go="`privateIpsCount`" pulumi-lang-python="`private_ips_count`" pulumi-lang-yaml="`privateIpsCount`" pulumi-lang-java="`privateIpsCount`">`private_ips_count`</span>, as a primary private IP will be assiged to an ENI by default.
  final Input<int>? privateIpsCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of security group IDs to assign to the ENI.
  final Input<List<String>>? securityGroups;

  /// Whether to enable source destination checking for the ENI. Default true.
  final Input<bool>? sourceDestCheck;

  /// Subnet ID to create the ENI in.
  ///
  /// The following arguments are optional:
  final Input<String> subnetId;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  NetworkInterfaceArgs({
    this.attachments,
    this.description,
    this.enablePrimaryIpv6,
    this.interfaceType,
    this.ipv4PrefixCount,
    this.ipv4Prefixes,
    this.ipv6AddressCount,
    this.ipv6AddressListEnabled,
    this.ipv6AddressLists,
    this.ipv6Addresses,
    this.ipv6PrefixCount,
    this.ipv6Prefixes,
    this.privateIp,
    this.privateIpListEnabled,
    this.privateIpLists,
    this.privateIps,
    this.privateIpsCount,
    this.region,
    this.securityGroups,
    this.sourceDestCheck,
    required this.subnetId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attachmentsValue = attachments;
    if (attachmentsValue != null) {
      map['attachments'] = Input.mapOptionalInputValue<
              List<NetworkInterfaceAttachment>, List<Map<String, dynamic>>>(
          attachmentsValue,
          (value) => Input.encodeList<NetworkInterfaceAttachment,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final enablePrimaryIpv6Value = enablePrimaryIpv6;
    if (enablePrimaryIpv6Value != null) {
      map['enablePrimaryIpv6'] = enablePrimaryIpv6Value;
    }
    final interfaceTypeValue = interfaceType;
    if (interfaceTypeValue != null) {
      map['interfaceType'] = interfaceTypeValue;
    }
    final ipv4PrefixCountValue = ipv4PrefixCount;
    if (ipv4PrefixCountValue != null) {
      map['ipv4PrefixCount'] = ipv4PrefixCountValue;
    }
    final ipv4PrefixesValue = ipv4Prefixes;
    if (ipv4PrefixesValue != null) {
      map['ipv4Prefixes'] = ipv4PrefixesValue;
    }
    final ipv6AddressCountValue = ipv6AddressCount;
    if (ipv6AddressCountValue != null) {
      map['ipv6AddressCount'] = ipv6AddressCountValue;
    }
    final ipv6AddressListEnabledValue = ipv6AddressListEnabled;
    if (ipv6AddressListEnabledValue != null) {
      map['ipv6AddressListEnabled'] = ipv6AddressListEnabledValue;
    }
    final ipv6AddressListsValue = ipv6AddressLists;
    if (ipv6AddressListsValue != null) {
      map['ipv6AddressLists'] = ipv6AddressListsValue;
    }
    final ipv6AddressesValue = ipv6Addresses;
    if (ipv6AddressesValue != null) {
      map['ipv6Addresses'] = ipv6AddressesValue;
    }
    final ipv6PrefixCountValue = ipv6PrefixCount;
    if (ipv6PrefixCountValue != null) {
      map['ipv6PrefixCount'] = ipv6PrefixCountValue;
    }
    final ipv6PrefixesValue = ipv6Prefixes;
    if (ipv6PrefixesValue != null) {
      map['ipv6Prefixes'] = ipv6PrefixesValue;
    }
    final privateIpValue = privateIp;
    if (privateIpValue != null) {
      map['privateIp'] = privateIpValue;
    }
    final privateIpListEnabledValue = privateIpListEnabled;
    if (privateIpListEnabledValue != null) {
      map['privateIpListEnabled'] = privateIpListEnabledValue;
    }
    final privateIpListsValue = privateIpLists;
    if (privateIpListsValue != null) {
      map['privateIpLists'] = privateIpListsValue;
    }
    final privateIpsValue = privateIps;
    if (privateIpsValue != null) {
      map['privateIps'] = privateIpsValue;
    }
    final privateIpsCountValue = privateIpsCount;
    if (privateIpsCountValue != null) {
      map['privateIpsCount'] = privateIpsCountValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    final sourceDestCheckValue = sourceDestCheck;
    if (sourceDestCheckValue != null) {
      map['sourceDestCheck'] = sourceDestCheckValue;
    }
    map['subnetId'] = subnetId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory NetworkInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceArgs(
      attachments: Input.asOptionalInput<List<NetworkInterfaceAttachment>>(
          map['attachments']),
      description: Input.asOptionalInput<String>(map['description']),
      enablePrimaryIpv6: Input.asOptionalInput<bool>(map['enablePrimaryIpv6']),
      interfaceType: Input.asOptionalInput<String>(map['interfaceType']),
      ipv4PrefixCount: Input.asOptionalInput<int>(map['ipv4PrefixCount']),
      ipv4Prefixes: Input.asOptionalInput<List<String>>(map['ipv4Prefixes']),
      ipv6AddressCount: Input.asOptionalInput<int>(map['ipv6AddressCount']),
      ipv6AddressListEnabled:
          Input.asOptionalInput<bool>(map['ipv6AddressListEnabled']),
      ipv6AddressLists:
          Input.asOptionalInput<List<String>>(map['ipv6AddressLists']),
      ipv6Addresses: Input.asOptionalInput<List<String>>(map['ipv6Addresses']),
      ipv6PrefixCount: Input.asOptionalInput<int>(map['ipv6PrefixCount']),
      ipv6Prefixes: Input.asOptionalInput<List<String>>(map['ipv6Prefixes']),
      privateIp: Input.asOptionalInput<String>(map['privateIp']),
      privateIpListEnabled:
          Input.asOptionalInput<bool>(map['privateIpListEnabled']),
      privateIpLists:
          Input.asOptionalInput<List<String>>(map['privateIpLists']),
      privateIps: Input.asOptionalInput<List<String>>(map['privateIps']),
      privateIpsCount: Input.asOptionalInput<int>(map['privateIpsCount']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroups:
          Input.asOptionalInput<List<String>>(map['securityGroups']),
      sourceDestCheck: Input.asOptionalInput<bool>(map['sourceDestCheck']),
      subnetId: Input.asInput<String>(map['subnetId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
