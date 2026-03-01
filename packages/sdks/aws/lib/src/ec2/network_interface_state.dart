// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_interface_attachment.dart';

/// Input properties used for looking up and filtering NetworkInterface resources.
class NetworkInterfaceState {
  /// ARN of the network interface.
  final pulumi.Input<String>? arn;
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
  /// MAC address of the network interface.
  final pulumi.Input<String>? macAddress;
  final pulumi.Input<String>? outpostArn;
  /// AWS account ID of the owner of the network interface.
  final pulumi.Input<String>? ownerId;
  /// Private DNS name of the network interface (IPv4).
  final pulumi.Input<String>? privateDnsName;
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
  final pulumi.Input<String>? subnetId;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [NetworkInterfaceState].
  /// [arn] ARN of the network interface.
  /// [attachments] Configuration block to define the attachment of the ENI. See Attachment below for more details!
  /// [description] Description for the network interface.
  /// [enablePrimaryIpv6] Enables assigning a primary IPv6 Global Unicast Address (GUA) to the network interface (ENI) in dual-stack or IPv6-only subnets. This ensures the instance attached to the ENI retains a consistent IPv6 address. Once enabled, the first IPv6 GUA becomes the primary IPv6 address and cannot be disabled. The primary IPv6 address remains assigned until the instance is terminated or the ENI is detached. Enabling and subsequent disabling forces recreation of the ENI.
  /// [interfaceType] Type of network interface to create. Set to `efa` for Elastic Fabric Adapter. Changing `interface_type` will cause the resource to be destroyed and re-created.
  /// [ipv4PrefixCount] Number of IPv4 prefixes that AWS automatically assigns to the network interface.
  /// [ipv4Prefixes] One or more IPv4 prefixes assigned to the network interface.
  /// [ipv6AddressCount] Number of IPv6 addresses to assign to a network interface. You can't use this option if specifying specific `ipv6_addresses`. If your subnet has the AssignIpv6AddressOnCreation attribute set to `true`, you can specify `0` to override this setting.
  /// [ipv6AddressListEnabled] Whether `ipv6_address_list` is allowed and controls the IPs to assign to the ENI and `ipv6_addresses` and `ipv6_address_count` become read-only. Default is `false`.
  /// [ipv6AddressLists] List of private IPs to assign to the ENI in sequential order.
  /// [ipv6Addresses] One or more specific IPv6 addresses from the IPv6 CIDR block range of your subnet. Addresses are assigned without regard to order. You can't use this option if you're specifying `ipv6_address_count`.
  /// [ipv6PrefixCount] Number of IPv6 prefixes that AWS automatically assigns to the network interface.
  /// [ipv6Prefixes] One or more IPv6 prefixes assigned to the network interface.
  /// [macAddress] MAC address of the network interface.
  /// [outpostArn] Optional.
  /// [ownerId] AWS account ID of the owner of the network interface.
  /// [privateDnsName] Private DNS name of the network interface (IPv4).
  /// [privateIp] Optional.
  /// [privateIpListEnabled] Whether `private_ip_list` is allowed and controls the IPs to assign to the ENI and `private_ips` and `private_ips_count` become read-only. Default is `false`.
  /// [privateIpLists] List of private IPs to assign to the ENI in sequential order. Requires setting `private_ip_list_enabled` to `true`.
  /// [privateIps] List of private IPs to assign to the ENI without regard to order.
  /// [privateIpsCount] Number of secondary private IPs to assign to the ENI. The total number of private IPs will be 1 + `private_ips_count`, as a primary private IP will be assiged to an ENI by default.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] List of security group IDs to assign to the ENI.
  /// [sourceDestCheck] Whether to enable source destination checking for the ENI. Default true.
  /// [subnetId] Subnet ID to create the ENI in.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  NetworkInterfaceState({
    pulumi.Output<String>? arn,
    pulumi.Output<List<NetworkInterfaceAttachment>>? attachments,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enablePrimaryIpv6,
    pulumi.Output<String>? interfaceType,
    pulumi.Output<int>? ipv4PrefixCount,
    pulumi.Output<List<String>>? ipv4Prefixes,
    pulumi.Output<int>? ipv6AddressCount,
    pulumi.Output<bool>? ipv6AddressListEnabled,
    pulumi.Output<List<String>>? ipv6AddressLists,
    pulumi.Output<List<String>>? ipv6Addresses,
    pulumi.Output<int>? ipv6PrefixCount,
    pulumi.Output<List<String>>? ipv6Prefixes,
    pulumi.Output<String>? macAddress,
    pulumi.Output<String>? outpostArn,
    pulumi.Output<String>? ownerId,
    pulumi.Output<String>? privateDnsName,
    pulumi.Output<String>? privateIp,
    pulumi.Output<bool>? privateIpListEnabled,
    pulumi.Output<List<String>>? privateIpLists,
    pulumi.Output<List<String>>? privateIps,
    pulumi.Output<int>? privateIpsCount,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityGroups,
    pulumi.Output<bool>? sourceDestCheck,
    pulumi.Output<String>? subnetId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      attachments = pulumi.Input.asOptionalInput<List<NetworkInterfaceAttachment>>(attachments),
      description = pulumi.Input.asOptionalInput<String>(description),
      enablePrimaryIpv6 = pulumi.Input.asOptionalInput<bool>(enablePrimaryIpv6),
      interfaceType = pulumi.Input.asOptionalInput<String>(interfaceType),
      ipv4PrefixCount = pulumi.Input.asOptionalInput<int>(ipv4PrefixCount),
      ipv4Prefixes = pulumi.Input.asOptionalInput<List<String>>(ipv4Prefixes),
      ipv6AddressCount = pulumi.Input.asOptionalInput<int>(ipv6AddressCount),
      ipv6AddressListEnabled = pulumi.Input.asOptionalInput<bool>(ipv6AddressListEnabled),
      ipv6AddressLists = pulumi.Input.asOptionalInput<List<String>>(ipv6AddressLists),
      ipv6Addresses = pulumi.Input.asOptionalInput<List<String>>(ipv6Addresses),
      ipv6PrefixCount = pulumi.Input.asOptionalInput<int>(ipv6PrefixCount),
      ipv6Prefixes = pulumi.Input.asOptionalInput<List<String>>(ipv6Prefixes),
      macAddress = pulumi.Input.asOptionalInput<String>(macAddress),
      outpostArn = pulumi.Input.asOptionalInput<String>(outpostArn),
      ownerId = pulumi.Input.asOptionalInput<String>(ownerId),
      privateDnsName = pulumi.Input.asOptionalInput<String>(privateDnsName),
      privateIp = pulumi.Input.asOptionalInput<String>(privateIp),
      privateIpListEnabled = pulumi.Input.asOptionalInput<bool>(privateIpListEnabled),
      privateIpLists = pulumi.Input.asOptionalInput<List<String>>(privateIpLists),
      privateIps = pulumi.Input.asOptionalInput<List<String>>(privateIps),
      privateIpsCount = pulumi.Input.asOptionalInput<int>(privateIpsCount),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityGroups = pulumi.Input.asOptionalInput<List<String>>(securityGroups),
      sourceDestCheck = pulumi.Input.asOptionalInput<bool>(sourceDestCheck),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'attachments': ?pulumi.Input.mapOptionalInputValue<List<NetworkInterfaceAttachment>, List<Map<String, dynamic>>>(attachments, (value) => pulumi.Input.encodeList<NetworkInterfaceAttachment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'enablePrimaryIpv6': ?enablePrimaryIpv6,
      'interfaceType': ?interfaceType,
      'ipv4PrefixCount': ?ipv4PrefixCount,
      'ipv4Prefixes': ?ipv4Prefixes,
      'ipv6AddressCount': ?ipv6AddressCount,
      'ipv6AddressListEnabled': ?ipv6AddressListEnabled,
      'ipv6AddressLists': ?ipv6AddressLists,
      'ipv6Addresses': ?ipv6Addresses,
      'ipv6PrefixCount': ?ipv6PrefixCount,
      'ipv6Prefixes': ?ipv6Prefixes,
      'macAddress': ?macAddress,
      'outpostArn': ?outpostArn,
      'ownerId': ?ownerId,
      'privateDnsName': ?privateDnsName,
      'privateIp': ?privateIp,
      'privateIpListEnabled': ?privateIpListEnabled,
      'privateIpLists': ?privateIpLists,
      'privateIps': ?privateIps,
      'privateIpsCount': ?privateIpsCount,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'sourceDestCheck': ?sourceDestCheck,
      'subnetId': ?subnetId,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory NetworkInterfaceState.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      attachments: map['attachments'] == null ? null : pulumi.Output.create<List<NetworkInterfaceAttachment>>(pulumi.Input.decodeList<NetworkInterfaceAttachment>(map['attachments'], (value) => NetworkInterfaceAttachment.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enablePrimaryIpv6: map['enablePrimaryIpv6'] == null ? null : pulumi.Output.create<bool>(map['enablePrimaryIpv6'] as bool),
      interfaceType: map['interfaceType'] == null ? null : pulumi.Output.create<String>(map['interfaceType'] as String),
      ipv4PrefixCount: map['ipv4PrefixCount'] == null ? null : pulumi.Output.create<int>(map['ipv4PrefixCount'] as int),
      ipv4Prefixes: map['ipv4Prefixes'] == null ? null : pulumi.Output.create<List<String>>((map['ipv4Prefixes'] as List).cast<String>()),
      ipv6AddressCount: map['ipv6AddressCount'] == null ? null : pulumi.Output.create<int>(map['ipv6AddressCount'] as int),
      ipv6AddressListEnabled: map['ipv6AddressListEnabled'] == null ? null : pulumi.Output.create<bool>(map['ipv6AddressListEnabled'] as bool),
      ipv6AddressLists: map['ipv6AddressLists'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6AddressLists'] as List).cast<String>()),
      ipv6Addresses: map['ipv6Addresses'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Addresses'] as List).cast<String>()),
      ipv6PrefixCount: map['ipv6PrefixCount'] == null ? null : pulumi.Output.create<int>(map['ipv6PrefixCount'] as int),
      ipv6Prefixes: map['ipv6Prefixes'] == null ? null : pulumi.Output.create<List<String>>((map['ipv6Prefixes'] as List).cast<String>()),
      macAddress: map['macAddress'] == null ? null : pulumi.Output.create<String>(map['macAddress'] as String),
      outpostArn: map['outpostArn'] == null ? null : pulumi.Output.create<String>(map['outpostArn'] as String),
      ownerId: map['ownerId'] == null ? null : pulumi.Output.create<String>(map['ownerId'] as String),
      privateDnsName: map['privateDnsName'] == null ? null : pulumi.Output.create<String>(map['privateDnsName'] as String),
      privateIp: map['privateIp'] == null ? null : pulumi.Output.create<String>(map['privateIp'] as String),
      privateIpListEnabled: map['privateIpListEnabled'] == null ? null : pulumi.Output.create<bool>(map['privateIpListEnabled'] as bool),
      privateIpLists: map['privateIpLists'] == null ? null : pulumi.Output.create<List<String>>((map['privateIpLists'] as List).cast<String>()),
      privateIps: map['privateIps'] == null ? null : pulumi.Output.create<List<String>>((map['privateIps'] as List).cast<String>()),
      privateIpsCount: map['privateIpsCount'] == null ? null : pulumi.Output.create<int>(map['privateIpsCount'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityGroups: map['securityGroups'] == null ? null : pulumi.Output.create<List<String>>((map['securityGroups'] as List).cast<String>()),
      sourceDestCheck: map['sourceDestCheck'] == null ? null : pulumi.Output.create<bool>(map['sourceDestCheck'] as bool),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

