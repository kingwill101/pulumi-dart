// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../table_replication_rule/table_replication_rule.dart';

/// The set of arguments for TableReplication.
class TableReplicationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  final Input<String> role;

  /// Replication rules. See Rule below for more details.
  final Input<TableReplicationRule>? rule;

  /// ARN referencing the Table that owns this replication configuration.
  final Input<String> tableArn;

  TableReplicationArgs({
    this.region,
    required this.role,
    this.rule,
    required this.tableArn,
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
      map['rule'] = Input.mapOptionalInputValue<TableReplicationRule,
          Map<String, dynamic>>(ruleValue, (value) => value.toMap());
    }
    map['tableArn'] = tableArn;
    return map;
  }

  factory TableReplicationArgs.fromMap(Map<String, dynamic> map) {
    return TableReplicationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      role: Input.asInput<String>(map['role']),
      rule: Input.asOptionalInput<TableReplicationRule>(map['rule']),
      tableArn: Input.asInput<String>(map['tableArn']),
    );
  }
}
