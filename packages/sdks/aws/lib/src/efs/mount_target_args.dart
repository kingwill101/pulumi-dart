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
    required this.fileSystemId,
    this.ipAddress,
    this.ipAddressType,
    this.ipv6Address,
    this.region,
    this.securityGroups,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': fileSystemId,
      'ipAddress': ?ipAddress,
      'ipAddressType': ?ipAddressType,
      'ipv6Address': ?ipv6Address,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'subnetId': subnetId,
    };
  }

  factory MountTargetArgs.fromMap(Map<String, dynamic> map) {
    return MountTargetArgs(
      fileSystemId: (map['fileSystemId'] as String).input(),
      ipAddress: map['ipAddress'] == null ? null : ((map['ipAddress'] as String).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      ipv6Address: map['ipv6Address'] == null ? null : ((map['ipv6Address'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

