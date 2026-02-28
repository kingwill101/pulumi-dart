// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_efs_mount_target_mount_target_args_doc}
/// The set of arguments for MountTarget.
/// {@endtemplate}
/// {@macro pulumi_efs_mount_target_mount_target_args_doc}
class MountTargetArgs {
  /// The ID of the file system for which the mount target is intended.
  final pulumi.Input<String> fileSystemId;

  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  final pulumi.Input<String>? ipAddress;

  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  final pulumi.Input<String>? ipAddressType;

  /// IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  final pulumi.Input<String>? ipv6Address;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  final pulumi.Input<List<String>>? securityGroups;

  /// The ID of the subnet to add the mount target in.
  final pulumi.Input<String> subnetId;

  /// Creates a new [MountTargetArgs].
  /// [fileSystemId] The ID of the file system for which the mount target is intended.
  /// [ipAddress] The address (within the address range of the specified subnet) at
  /// [ipAddressType] IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  /// [ipv6Address] IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] A list of up to 5 VPC security group IDs (that must
  /// [subnetId] The ID of the subnet to add the mount target in.
  MountTargetArgs({
    required String fileSystemId,
    String? ipAddress,
    String? ipAddressType,
    String? ipv6Address,
    String? region,
    List<String>? securityGroups,
    required String subnetId,
  })  : fileSystemId = pulumi.Input.asInput<String>(fileSystemId),
        ipAddress = pulumi.Input.asOptionalInput<String>(ipAddress),
        ipAddressType = pulumi.Input.asOptionalInput<String>(ipAddressType),
        ipv6Address = pulumi.Input.asOptionalInput<String>(ipv6Address),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroups =
            pulumi.Input.asOptionalInput<List<String>>(securityGroups),
        subnetId = pulumi.Input.asInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['fileSystemId'] = fileSystemId;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipAddressTypeValue = ipAddressType;
    if (ipAddressTypeValue != null) {
      map['ipAddressType'] = ipAddressTypeValue;
    }
    final ipv6AddressValue = ipv6Address;
    if (ipv6AddressValue != null) {
      map['ipv6Address'] = ipv6AddressValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupsValue = securityGroups;
    if (securityGroupsValue != null) {
      map['securityGroups'] = securityGroupsValue;
    }
    map['subnetId'] = subnetId;
    return map;
  }

  factory MountTargetArgs.fromMap(Map<String, dynamic> map) {
    return MountTargetArgs(
      fileSystemId: map['fileSystemId'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipAddressType:
          map['ipAddressType'] == null ? null : map['ipAddressType'] as String,
      ipv6Address:
          map['ipv6Address'] == null ? null : map['ipv6Address'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroups: map['securityGroups'] == null
          ? null
          : (map['securityGroups'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
    );
  }
}
