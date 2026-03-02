// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of awsEfsMountTarget
class AwsEfsMountTargetProperties {
  /// The ID of the file system for which to create the mount target.
  final pulumi.Input<String>? fileSystemId;
  /// Property id
  final pulumi.Input<String>? id;
  /// Valid IPv4 address within the address range of the specified subnet.
  final pulumi.Input<String>? ipAddress;
  /// Up to five VPC security group IDs, of the form ``sg-xxxxxxxx``. These must be for the same VPC as subnet specified.
  final pulumi.Input<List<String>>? securityGroups;
  /// The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet that is associated with the file system's Availability Zone.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [AwsEfsMountTargetProperties].
  /// [fileSystemId] The ID of the file system for which to create the mount target.
  /// [id] Property id
  /// [ipAddress] Valid IPv4 address within the address range of the specified subnet.
  /// [securityGroups] Up to five VPC security group IDs, of the form ``sg-xxxxxxxx``. These must be for the same VPC as subnet specified.
  /// [subnetId] The ID of the subnet to add the mount target in. For One Zone file systems, use the subnet that is associated with the file system's Availability Zone.
  AwsEfsMountTargetProperties({
    this.fileSystemId,
    this.id,
    this.ipAddress,
    this.securityGroups,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'id': ?id,
      'ipAddress': ?ipAddress,
      'securityGroups': ?securityGroups,
      'subnetId': ?subnetId,
    };
  }

  factory AwsEfsMountTargetProperties.fromMap(Map<String, dynamic> map) {
    return AwsEfsMountTargetProperties(
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      securityGroups: map['securityGroups'] == null ? null : ((map['securityGroups']! as List).cast<String>()).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId']! as String).input(),
    );
  }
}

