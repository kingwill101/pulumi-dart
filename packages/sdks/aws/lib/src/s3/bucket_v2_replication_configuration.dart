// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_v2_replication_configuration_rule.dart';

class BucketV2ReplicationConfiguration {
  /// ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  final pulumi.Input<String> role;
  /// Rules managing the replication. See `rules` Block below for details.
  final pulumi.Input<List<BucketV2ReplicationConfigurationRule>> rules;

  /// Creates a new [BucketV2ReplicationConfiguration].
  /// [role] ARN of the IAM role for Amazon S3 to assume when replicating the objects.
  /// [rules] Rules managing the replication. See `rules` Block below for details.
  const BucketV2ReplicationConfiguration({
    required this.role,
    required this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'role': role,
      'rules': pulumi.Input.mapInputValue<List<BucketV2ReplicationConfigurationRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<BucketV2ReplicationConfigurationRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BucketV2ReplicationConfiguration.fromMap(Map<String, dynamic> map) {
    return BucketV2ReplicationConfiguration(
      role: pulumi.Input.fromValue(map['role'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<BucketV2ReplicationConfigurationRule>(map['rules']!, (value) => BucketV2ReplicationConfigurationRule.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
