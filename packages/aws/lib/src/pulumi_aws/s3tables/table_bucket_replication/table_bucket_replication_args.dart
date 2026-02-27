// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../table_bucket_replication_rule/table_bucket_replication_rule.dart';

/// The set of arguments for TableBucketReplication.
class TableBucketReplicationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  final pulumi.Input<String> role;

  /// Replication rules. See Rule below for more details.
  final pulumi.Input<TableBucketReplicationRule>? rule;

  /// ARN referencing the Table Bucket that owns this replication configuration.
  final pulumi.Input<String> tableBucketArn;

  TableBucketReplicationArgs({
    this.region,
    required this.role,
    this.rule,
    required this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] = pulumi.Input.mapOptionalInputValue<
          TableBucketReplicationRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    map['tableBucketArn'] = tableBucketArn;
    return map;
  }

  factory TableBucketReplicationArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      role: pulumi.Input.asInput<String>(map['role']),
      rule:
          pulumi.Input.asOptionalInput<TableBucketReplicationRule>(map['rule']),
      tableBucketArn: pulumi.Input.asInput<String>(map['tableBucketArn']),
    );
  }
}
