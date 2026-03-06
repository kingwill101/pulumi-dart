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
  const TableReplicationState({
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
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rule: (() { final guardedValue = map['rule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TableReplicationRule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableArn: (() { final guardedValue = map['tableArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionToken: (() { final guardedValue = map['versionToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

