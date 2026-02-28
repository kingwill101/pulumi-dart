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
    String? region,
    required String role,
    TableReplicationRule? rule,
    required String tableArn,
  })  : region = pulumi.Input.asOptionalInput<String>(region),
        role = pulumi.Input.asInput<String>(role),
        rule = pulumi.Input.asOptionalInput<TableReplicationRule>(rule),
        tableArn = pulumi.Input.asInput<String>(tableArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['role'] = role;
    final ruleValue = rule;
    if (ruleValue != null) {
      map['rule'] = pulumi.Input.mapOptionalInputValue<TableReplicationRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    map['tableArn'] = tableArn;
    return map;
  }

  factory TableReplicationArgs.fromMap(Map<String, dynamic> map) {
    return TableReplicationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      role: map['role'] as String,
      rule: map['rule'] == null
          ? null
          : TableReplicationRule.fromMap(
              (map['rule'] as Map).cast<String, dynamic>()),
      tableArn: map['tableArn'] as String,
    );
  }
}
