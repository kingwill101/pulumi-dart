// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetBucketReplicationConfigurationRuleExistingObjectReplication {
  /// Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  final pulumi.Input<String> status;

  /// Creates a new [GetBucketReplicationConfigurationRuleExistingObjectReplication].
  /// [status] Whether Amazon S3 replicates objects created with server-side encryption using an AWS KMS key stored in AWS Key Management Service.
  const GetBucketReplicationConfigurationRuleExistingObjectReplication({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': status,
    };
  }

  factory GetBucketReplicationConfigurationRuleExistingObjectReplication.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationRuleExistingObjectReplication(
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
