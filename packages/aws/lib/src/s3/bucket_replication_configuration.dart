// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_replication_configuration_rule.dart';

class BucketReplicationConfiguration {
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final String role;

  /// Specifies the rules managing the replication (documented below).
  final List<BucketReplicationConfigurationRule> rules;

  /// Creates a new [BucketReplicationConfiguration].
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] Specifies the rules managing the replication (documented below).
  BucketReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['role'] = role;
    map['rules'] = pulumi.Input.encodeList<BucketReplicationConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory BucketReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketReplicationConfiguration(
      role: map['role'] as String,
      rules: pulumi.Input.decodeList<BucketReplicationConfigurationRule>(
          map['rules'],
          (value) => BucketReplicationConfigurationRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
