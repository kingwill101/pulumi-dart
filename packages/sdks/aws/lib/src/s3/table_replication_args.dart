// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_replication_rule.dart';

/// {@template pulumi_s3_tables_table_replication_table_replication_args_doc}
/// The set of arguments for TableReplication.
/// {@endtemplate}
/// {@macro pulumi_s3_tables_table_replication_table_replication_args_doc}
class TableReplicationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  final pulumi.Input<String> role;
  /// Replication rules. See Rule below for more details.
  final pulumi.Input<TableReplicationRule>? rule;
  /// ARN referencing the Table that owns this replication configuration.
  final pulumi.Input<String> tableArn;

  /// Creates a new [TableReplicationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN referencing the IAM role assumed by S3 when replicating tables.
  /// [rule] Replication rules. See Rule below for more details.
  /// [tableArn] ARN referencing the Table that owns this replication configuration.
  TableReplicationArgs({
    this.region,
    required this.role,
    this.rule,
    required this.tableArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'role': role,
      'rule': ?pulumi.Input.mapOptionalInputValue<TableReplicationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tableArn': tableArn,
    };
  }

  factory TableReplicationArgs.fromMap(Map<String, dynamic> map) {
    return TableReplicationArgs(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      role: (map['role'] as String).input(),
      rule: map['rule'] == null ? null : (TableReplicationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      tableArn: (map['tableArn'] as String).input(),
    );
  }
}

