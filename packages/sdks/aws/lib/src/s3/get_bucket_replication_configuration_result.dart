// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bucket_replication_configuration_rule.dart';

/// Result data returned by getBucketReplicationConfiguration.
class GetBucketReplicationConfigurationResult {
  /// ARN of the bucket where Amazon S3 stores the results.
  final String? bucket;
  final String? region;
  /// ARN of the IAM role that Amazon S3 assumes when replicating objects.
  final String? role;
  /// List of configuration blocks that define the rules managing replication. See `rule` Block below.
  final List<GetBucketReplicationConfigurationRule>? rules;

  /// Creates a new [GetBucketReplicationConfigurationResult].
  /// [bucket] ARN of the bucket where Amazon S3 stores the results.
  /// [region] Optional.
  /// [role] ARN of the IAM role that Amazon S3 assumes when replicating objects.
  /// [rules] List of configuration blocks that define the rules managing replication. See `rule` Block below.
  const GetBucketReplicationConfigurationResult({
    this.bucket,
    this.region,
    this.role,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'region': ?region,
      'role': ?role,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetBucketReplicationConfigurationRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetBucketReplicationConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetBucketReplicationConfigurationResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetBucketReplicationConfigurationRule>(guardedValue, (value) => GetBucketReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
