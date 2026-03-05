// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BudgetActionDefinitionSsmActionDefinition {
  /// The action subType. Valid values are `STOP_EC2_INSTANCES` or `STOP_RDS_INSTANCES`.
  final pulumi.Input<String> actionSubType;
  /// The EC2 and RDS instance IDs.
  final pulumi.Input<List<String>> instanceIds;
  /// The Region to run the SSM document.
  final pulumi.Input<String> region;

  /// Creates a new [BudgetActionDefinitionSsmActionDefinition].
  /// [actionSubType] The action subType. Valid values are `STOP_EC2_INSTANCES` or `STOP_RDS_INSTANCES`.
  /// [instanceIds] The EC2 and RDS instance IDs.
  /// [region] The Region to run the SSM document.
  BudgetActionDefinitionSsmActionDefinition({
    required this.actionSubType,
    required this.instanceIds,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionSubType': actionSubType,
      'instanceIds': instanceIds,
      'region': region,
    };
  }

  factory BudgetActionDefinitionSsmActionDefinition.fromMap(Map<String, dynamic> map) {
    return BudgetActionDefinitionSsmActionDefinition(
      actionSubType: pulumi.Input.fromValue(map['actionSubType'] as String),
      instanceIds: pulumi.Input.fromValue((map['instanceIds'] as List).cast<String>()),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

