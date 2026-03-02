// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MountTarget resources.
class MountTargetState {
  /// The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String>? availabilityZoneId;
  /// The name of the Availability Zone (AZ) that the mount target resides in.
  final pulumi.Input<String>? availabilityZoneName;
  /// The DNS name for the EFS file system.
  final pulumi.Input<String>? dnsName;
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? fileSystemArn;
  /// The ID of the file system for which the mount target is intended.
  final pulumi.Input<String>? fileSystemId;
  /// The address (within the address range of the specified subnet) at
  /// which the file system may be mounted via the mount target.
  final pulumi.Input<String>? ipAddress;
  /// IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  final pulumi.Input<String>? ipAddressType;
  /// IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  final pulumi.Input<String>? ipv6Address;
  /// The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  final pulumi.Input<String>? mountTargetDnsName;
  /// The ID of the network interface that Amazon EFS created when it created the mount target.
  final pulumi.Input<String>? networkInterfaceId;
  /// AWS account ID that owns the resource.
  final pulumi.Input<String>? ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of up to 5 VPC security group IDs (that must
  /// be for the same VPC as subnet specified) in effect for the mount target.
  final pulumi.Input<List<String>>? securityGroups;
  /// The ID of the subnet to add the mount target in.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [MountTargetState].
  /// [availabilityZoneId] The unique and consistent identifier of the Availability Zone (AZ) that the mount target resides in.
  /// [availabilityZoneName] The name of the Availability Zone (AZ) that the mount target resides in.
  /// [dnsName] The DNS name for the EFS file system.
  /// [fileSystemArn] Amazon Resource Name of the file system.
  /// [fileSystemId] The ID of the file system for which the mount target is intended.
  /// [ipAddress] The address (within the address range of the specified subnet) at
  /// [ipAddressType] IP address type for the mount target. Valid values are `IPV4_ONLY` (only IPv4 addresses), `IPV6_ONLY` (only IPv6 addresses), and `DUAL_STACK` (dual-stack, both IPv4 and IPv6 addresses). Defaults to `IPV4_ONLY`.
  /// [ipv6Address] IPv6 address to use. Valid only when `ip_address_type` is set to `IPV6_ONLY` or `DUAL_STACK`.
  /// [mountTargetDnsName] The DNS name for the given subnet/AZ per [documented convention](http://docs.aws.amazon.com/efs/latest/ug/mounting-fs-mount-cmd-dns-name.html).
  /// [networkInterfaceId] The ID of the network interface that Amazon EFS created when it created the mount target.
  /// [ownerId] AWS account ID that owns the resource.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroups] A list of up to 5 VPC security group IDs (that must
  /// [subnetId] The ID of the subnet to add the mount target in.
  MountTargetState({
    this.availabilityZoneId,
    this.availabilityZoneName,
    this.dnsName,
    this.fileSystemArn,
    this.fileSystemId,
    this.ipAddress,
    this.ipAddressType,
    this.ipv6Address,
    this.mountTargetDnsName,
    this.networkInterfaceId,
    this.ownerId,
    this.region,
    this.securityGroups,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneId': ?availabilityZoneId,
      'availabilityZoneName': ?availabilityZoneName,
      'dnsName': ?dnsName,
      'fileSystemArn': ?fileSystemArn,
      'fileSystemId': ?fileSystemId,
      'ipAddress': ?ipAddress,
      'ipAddressType': ?ipAddressType,
      'ipv6Address': ?ipv6Address,
      'mountTargetDnsName': ?mountTargetDnsName,
      'networkInterfaceId': ?networkInterfaceId,
      'ownerId': ?ownerId,
      'region': ?region,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
    };
  }

  factory MountTargetState.fromMap(Map<String, dynamic> map) {
    return MountTargetState(
      availabilityZoneId: map['availabilityZoneId'] == null ? null : ((map['availabilityZoneId'] as String).input()).input(),
      availabilityZoneName: map['availabilityZoneName'] == null ? null : ((map['availabilityZoneName'] as String).input()).input(),
      dnsName: map['dnsName'] == null ? null : ((map['dnsName'] as String).input()).input(),
      fileSystemArn: map['fileSystemArn'] == null ? null : ((map['fileSystemArn'] as String).input()).input(),
      fileSystemId: map['fileSystemId'] == null ? null : ((map['fileSystemId'] as String).input()).input(),
      ipAddress: map['ipAddress'] == null ? null : ((map['ipAddress'] as String).input()).input(),
      ipAddressType: map['ipAddressType'] == null ? null : ((map['ipAddressType'] as String).input()).input(),
      ipv6Address: map['ipv6Address'] == null ? null : ((map['ipv6Address'] as String).input()).input(),
      mountTargetDnsName: map['mountTargetDnsName'] == null ? null : ((map['mountTargetDnsName'] as String).input()).input(),
      networkInterfaceId: map['networkInterfaceId'] == null ? null : ((map['networkInterfaceId'] as String).input()).input(),
      ownerId: map['ownerId'] == null ? null : ((map['ownerId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroups: map['securityGroups'] == null ? null : (((map['securityGroups'] as List).cast<String>()).input()).input(),
      subnetId: map['subnetId'] == null ? null : ((map['subnetId'] as String).input()).input(),
    );
  }
}

