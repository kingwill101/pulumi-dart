// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule.dart';

/// Result data returned by getBucketReplicationConfiguration.
class GetBucketReplicationConfigurationResult {
  final String bucket;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// The ARN of the IAM role that Amazon S3 assumes when replicating objects.
  final String role;
  /// An unordered list of configuration blocks that define the rules managing replication.
  final List<GetBucketReplicationConfigurationRule> rules;

  /// Creates a new [GetBucketReplicationConfigurationResult].
  /// [bucket] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [role] The ARN of the IAM role that Amazon S3 assumes when replicating objects.
  /// [rules] An unordered list of configuration blocks that define the rules managing replication.
  GetBucketReplicationConfigurationResult({
    required this.bucket,
    required this.id,
    required this.region,
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'id': id,
      'region': region,
      'role': role,
      'rules': pulumi.Input.encodeList<GetBucketReplicationConfigurationRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetBucketReplicationConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationResult(
      bucket: map['bucket'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      role: map['role'] as String,
      rules: pulumi.Input.decodeList<GetBucketReplicationConfigurationRule>(map['rules']!, (value) => GetBucketReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

