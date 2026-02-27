// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../network_interface_attachment/network_interface_attachment.dart';

/// The set of arguments for NetworkInterface.
class NetworkInterfaceArgs {
  /// Configuration block to define the attachment of the ENI. See Attachment below for more details!
  final pulumi.Input<List<NetworkInterfaceAttachment>>? attachments;

  /// Description for the network interface.
  final pulumi.Input<String>? description;

  /// Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  final pulumi.Input<bool>? enablePrimaryIpv6;

  /// Type of network interface to create. Set to `efa` for Elastic Fabric Adapter. Changing `interface_type` will cause the resource to be destroyed and re-created.
  final pulumi.Input<String>? interfaceType;

  /// Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  final pulumi.Input<int>? ipv4PrefixCount;

  /// One or more IPv4 prefixes assigned to the network interface.
  final pulumi.Input<List<String>>? ipv4Prefixes;

  /// Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific `ipv6_addresses`. If your subnet has the AssignIpv6AddressOnCreation attribute set to `true`, you can specify `0` to override this setting.
  final pulumi.Input<int>? ipv6AddressCount;

  /// Whether `ipv6_address_list` is allowed and controls the IPs to assign to the ENI and `ipv6_addresses` and `ipv6_address_count` become read-only. Default is `false`.
  final pulumi.Input<bool>? ipv6AddressListEnabled;

  /// List of private IPs to assign to the ENI in sequential order.
  final pulumi.Input<List<String>>? ipv6AddressLists;

  /// One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying `ipv6_address_count`.
  final pulumi.Input<List<String>>? ipv6Addresses;

  /// Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  final pulumi.Input<int>? ipv6PrefixCount;

  /// One or more IPv6 prefixes assigned to the network interface.
  final pulumi.Input<List<String>>? ipv6Prefixes;
  final pulumi.Input<String>? privateIp;

  /// Whether `private_ip_list` is allowed and controls the IPs to assign to the ENI and `private_ips` and `private_ips_count` become read-only. Default is `false`.
  final pulumi.Input<bool>? privateIpListEnabled;

  /// List of private IPs to assign to the ENI in sequential order. Requires setting `private_ip_list_enabled` to `true`.
  final pulumi.Input<List<String>>? privateIpLists;

  /// List of private IPs to assign to the ENI without regard to order.
  final pulumi.Input<List<String>>? privateIps;

  /// Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + `private_ips_count`, as a primary private IP will be assiged to an ENI by default.
  final pulumi.Input<int>? privateIpsCount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of security group IDs to assign to the ENI.
  final pulumi.Input<List<String>>? securityGroups;

  /// Whether to enable source destination checking for the ENI. Default true.
  final pulumi.Input<bool>? sourceDestCheck;

  /// Subnet ID to create the ENI in.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> subnetId;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

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
      map['attachments'] = pulumi.Input.mapOptionalInputValue<
              List<NetworkInterfaceAttachment>, List<Map<String, dynamic>>>(
          attachmentsValue,
          (value) => pulumi.Input.encodeList<NetworkInterfaceAttachment,
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
      attachments:
          pulumi.Input.asOptionalInput<List<NetworkInterfaceAttachment>>(
              map['attachments']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      enablePrimaryIpv6:
          pulumi.Input.asOptionalInput<bool>(map['enablePrimaryIpv6']),
      interfaceType: pulumi.Input.asOptionalInput<String>(map['interfaceType']),
      ipv4PrefixCount:
          pulumi.Input.asOptionalInput<int>(map['ipv4PrefixCount']),
      ipv4Prefixes:
          pulumi.Input.asOptionalInput<List<String>>(map['ipv4Prefixes']),
      ipv6AddressCount:
          pulumi.Input.asOptionalInput<int>(map['ipv6AddressCount']),
      ipv6AddressListEnabled:
          pulumi.Input.asOptionalInput<bool>(map['ipv6AddressListEnabled']),
      ipv6AddressLists:
          pulumi.Input.asOptionalInput<List<String>>(map['ipv6AddressLists']),
      ipv6Addresses:
          pulumi.Input.asOptionalInput<List<String>>(map['ipv6Addresses']),
      ipv6PrefixCount:
          pulumi.Input.asOptionalInput<int>(map['ipv6PrefixCount']),
      ipv6Prefixes:
          pulumi.Input.asOptionalInput<List<String>>(map['ipv6Prefixes']),
      privateIp: pulumi.Input.asOptionalInput<String>(map['privateIp']),
      privateIpListEnabled:
          pulumi.Input.asOptionalInput<bool>(map['privateIpListEnabled']),
      privateIpLists:
          pulumi.Input.asOptionalInput<List<String>>(map['privateIpLists']),
      privateIps: pulumi.Input.asOptionalInput<List<String>>(map['privateIps']),
      privateIpsCount:
          pulumi.Input.asOptionalInput<int>(map['privateIpsCount']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      securityGroups:
          pulumi.Input.asOptionalInput<List<String>>(map['securityGroups']),
      sourceDestCheck:
          pulumi.Input.asOptionalInput<bool>(map['sourceDestCheck']),
      subnetId: pulumi.Input.asInput<String>(map['subnetId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
