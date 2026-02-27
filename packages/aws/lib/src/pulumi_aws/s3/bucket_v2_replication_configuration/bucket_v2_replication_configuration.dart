// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../bucket_v2_replication_configuration_rule/bucket_v2_replication_configuration_rule.dart';

class BucketV2ReplicationConfiguration {
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final String role;

  /// Specifies the rules managing the replication (documented below).
  final List<BucketV2ReplicationConfigurationRule> rules;

  BucketV2ReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['role'] = role;
    map['rules'] = pulumi.Input.encodeList<BucketV2ReplicationConfigurationRule,
        Map<String, dynamic>>(rules, (value) => value.toMap());
    return map;
  }

  factory BucketV2ReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfiguration(
      role: map['role'] as String,
      rules: pulumi.Input.decodeList<BucketV2ReplicationConfigurationRule>(
          map['rules'],
          (value) => BucketV2ReplicationConfigurationRule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
