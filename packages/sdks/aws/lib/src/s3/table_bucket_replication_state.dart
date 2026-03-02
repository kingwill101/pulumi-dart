// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_replication_rule.dart';

/// Input properties used for looking up and filtering TableBucketReplication resources.
class TableBucketReplicationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  final pulumi.Input<String>? role;
  /// Replication rules. See Rule below for more details.
  final pulumi.Input<TableBucketReplicationRule>? rule;
  /// ARN referencing the Table Bucket that owns this replication configuration.
  final pulumi.Input<String>? tableBucketArn;
  final pulumi.Input<String>? versionToken;

  /// Creates a new [TableBucketReplicationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  /// [rule] Replication rules. See Rule below for more details.
  /// [tableBucketArn] ARN referencing the Table Bucket that owns this replication configuration.
  /// [versionToken] Optional.
  TableBucketReplicationState({
    this.region,
    this.role,
    this.rule,
    this.tableBucketArn,
    this.versionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'role': ?role,
      'rule': ?pulumi.Input.mapOptionalInputValue<TableBucketReplicationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tableBucketArn': ?tableBucketArn,
      'versionToken': ?versionToken,
    };
  }

  factory TableBucketReplicationState.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      rule: map['rule'] == null ? null : (TableBucketReplicationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      tableBucketArn: map['tableBucketArn'] == null ? null : (map['tableBucketArn'] as String).input(),
      versionToken: map['versionToken'] == null ? null : (map['versionToken'] as String).input(),
    );
  }
}

