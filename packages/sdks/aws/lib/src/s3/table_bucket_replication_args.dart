// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_bucket_replication_rule.dart';

/// {@template pulumi_s3_tables_table_bucket_replication_table_bucket_replication_args_doc}
/// The set of arguments for TableBucketReplication.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_bucket_replication_table_bucket_replication_args_doc}
class TableBucketReplicationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  final pulumi.Input<String> role;
  /// Replication rules. See Rule below for more details.
  final pulumi.Input<TableBucketReplicationRule>? rule;
  /// ARN referencing the Table Bucket that owns this replication configuration.
  final pulumi.Input<String> tableBucketArn;

  /// Creates a new [TableBucketReplicationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN referencing the IAM role assumed by S3 when replicating tables in this bucket.
  /// [rule] Replication rules. See Rule below for more details.
  /// [tableBucketArn] ARN referencing the Table Bucket that owns this replication configuration.
  TableBucketReplicationArgs({
    this.region,
    required this.role,
    this.rule,
    required this.tableBucketArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'role': role,
      'rule': ?pulumi.Input.mapOptionalInputValue<TableBucketReplicationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tableBucketArn': tableBucketArn,
    };
  }

  factory TableBucketReplicationArgs.fromMap(Map<String, dynamic> map) {
    return TableBucketReplicationArgs(
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      role: (map['role'] as String).input(),
      rule: map['rule'] == null ? null : ((TableBucketReplicationRule.fromMap((map['rule']! as Map).cast<String, dynamic>())).input()).input(),
      tableBucketArn: (map['tableBucketArn'] as String).input(),
    );
  }
}

