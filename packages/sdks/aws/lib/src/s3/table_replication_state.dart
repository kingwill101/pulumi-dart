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
    pulumi.Output<String>? region,
    pulumi.Output<String>? role,
    pulumi.Output<TableReplicationRule>? rule,
    pulumi.Output<String>? tableArn,
    pulumi.Output<String>? versionToken,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      role = pulumi.Input.asOptionalInput<String>(role),
      rule = pulumi.Input.asOptionalInput<TableReplicationRule>(rule),
      tableArn = pulumi.Input.asOptionalInput<String>(tableArn),
      versionToken = pulumi.Input.asOptionalInput<String>(versionToken);

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
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      role: map['role'] == null ? null : pulumi.Output.create<String>(map['role'] as String),
      rule: map['rule'] == null ? null : pulumi.Output.create<TableReplicationRule>(TableReplicationRule.fromMap((map['rule'] as Map).cast<String, dynamic>())),
      tableArn: map['tableArn'] == null ? null : pulumi.Output.create<String>(map['tableArn'] as String),
      versionToken: map['versionToken'] == null ? null : pulumi.Output.create<String>(map['versionToken'] as String),
    );
  }
}

