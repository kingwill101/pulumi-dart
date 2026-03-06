// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_configuration_rule.dart';

class BucketReplicationConfiguration {
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final pulumi.Input<String> role;
  /// Specifies the rules managing the replication (documented below).
  final pulumi.Input<List<BucketReplicationConfigurationRule>> rules;

  /// Creates a new [BucketReplicationConfiguration].
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] Specifies the rules managing the replication (documented below).
  const BucketReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'rules': pulumi.Input.mapInputValue<List<BucketReplicationConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketReplicationConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfiguration(
      role: pulumi.Input.fromValue(map['role'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<BucketReplicationConfigurationRule>(map['rules']!, (value) => BucketReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

