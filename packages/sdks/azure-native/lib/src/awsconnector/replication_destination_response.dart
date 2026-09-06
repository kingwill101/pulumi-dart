// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ReplicationDestination
class ReplicationDestinationResponse {
  /// The AWS For One Zone file systems, the replication configuration must specify the Availability Zone in which the destination file system is located.  Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the *Amazon EFS User Guide*.  One Zone file system type is not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  final pulumi.Input<String?>? availabilityZoneName;
  /// The ID of the destination Amazon EFS file system.
  final pulumi.Input<String?>? fileSystemId;
  /// The ID of an kms-key-long used to protect the encrypted file system.
  final pulumi.Input<String?>? kmsKeyId;
  /// The AWS-Region in which the destination file system is located.  For One Zone file systems, the replication configuration must specify the AWS-Region in which the destination file system is located.
  final pulumi.Input<String?>? region;

  /// Creates a new [ReplicationDestinationResponse].
  /// [availabilityZoneName] The AWS For One Zone file systems, the replication configuration must specify the Availability Zone in which the destination file system is located.  Use the format ``us-east-1a`` to specify the Availability Zone. For more information about One Zone file systems, see [EFS file system types](https://docs.aws.amazon.com/efs/latest/ug/storage-classes.html) in the *Amazon EFS User Guide*.  One Zone file system type is not available in all Availability Zones in AWS-Regions where Amazon EFS is available.
  /// [fileSystemId] The ID of the destination Amazon EFS file system.
  /// [kmsKeyId] The ID of an kms-key-long used to protect the encrypted file system.
  /// [region] The AWS-Region in which the destination file system is located.  For One Zone file systems, the replication configuration must specify the AWS-Region in which the destination file system is located.
  const ReplicationDestinationResponse({
    this.availabilityZoneName,
    this.fileSystemId,
    this.kmsKeyId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZoneName': ?availabilityZoneName,
      'fileSystemId': ?fileSystemId,
      'kmsKeyId': ?kmsKeyId,
      'region': ?region,
    };
  }

  factory ReplicationDestinationResponse.fromMap(Map<String, dynamic> map) {
    return ReplicationDestinationResponse(
      availabilityZoneName: (() { final guardedValue = map['availabilityZoneName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fileSystemId: (() { final guardedValue = map['fileSystemId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
