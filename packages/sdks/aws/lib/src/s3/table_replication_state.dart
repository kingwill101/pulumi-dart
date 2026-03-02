// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_replication_rule.dart';

/// Input properties used for looking up and filtering TableReplication resources.
class TableReplicationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN referencing the IAM role assumed by S3 when replicating tables.
  final pulumi.Input<String>? role;
  /// Replication rules. See Rule below for more details.
  final pulumi.Input<TableReplicationRule>? rule;
  /// ARN referencing the Table that owns this replication configuration.
  final pulumi.Input<String>? tableArn;
  final pulumi.Input<String>? versionToken;

  /// Creates a new [TableReplicationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [role] ARN referencing the IAM role assumed by S3 when replicating tables.
  /// [rule] Replication rules. See Rule below for more details.
  /// [tableArn] ARN referencing the Table that owns this replication configuration.
  /// [versionToken] Optional.
  TableReplicationState({
    this.region,
    this.role,
    this.rule,
    this.tableArn,
    this.versionToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'role': ?role,
      'rule': ?pulumi.Input.mapOptionalInputValue<TableReplicationRule, Map<String, dynamic>>(rule, (value) => value.toMap()),
      'tableArn': ?tableArn,
      'versionToken': ?versionToken,
    };
  }

  factory TableReplicationState.fromMap(Map<String, dynamic> map) {
    return TableReplicationState(
      region: map['region'] == null ? null : (map['region'] as String).input(),
      role: map['role'] == null ? null : (map['role'] as String).input(),
      rule: map['rule'] == null ? null : (TableReplicationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())).input(),
      tableArn: map['tableArn'] == null ? null : (map['tableArn'] as String).input(),
      versionToken: map['versionToken'] == null ? null : (map['versionToken'] as String).input(),
    );
  }
}

