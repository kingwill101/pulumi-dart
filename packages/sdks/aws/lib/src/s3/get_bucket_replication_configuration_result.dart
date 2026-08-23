// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule.dart';

/// Result data returned by getBucketReplicationConfiguration.
class GetBucketReplicationConfigurationResult {
  /// ARN of the bucket where Amazon S3 stores the results.
  final String bucket;
  final String region;
  /// ARN of the IAM role that Amazon S3 assumes when replicating objects.
  final String role;
  /// List of configuration blocks that define the rules managing replication. See `rule` Block below.
  final List<GetBucketReplicationConfigurationRule> rules;

  /// Creates a new [GetBucketReplicationConfigurationResult].
  /// [bucket] ARN of the bucket where Amazon S3 stores the results.
  /// [region] Required.
  /// [role] ARN of the IAM role that Amazon S3 assumes when replicating objects.
  /// [rules] List of configuration blocks that define the rules managing replication. See `rule` Block below.
  const GetBucketReplicationConfigurationResult({
    required this.bucket,
    required this.region,
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': bucket,
      'region': region,
      'role': role,
      'rules': pulumi.Input.encodeList<GetBucketReplicationConfigurationRule, Map<String, dynamic>>(rules, (value) => value.toMap()),
    };
  }

  factory GetBucketReplicationConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationResult(
      bucket: map['bucket'] as String,
      region: map['region'] as String,
      role: map['role'] as String,
      rules: pulumi.Input.decodeList<GetBucketReplicationConfigurationRule>(map['rules']!, (value) => GetBucketReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
