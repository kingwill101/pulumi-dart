// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_action_definition_iam_action_definition.dart';
import 'budget_action_definition_scp_action_definition.dart';
import 'budget_action_definition_ssm_action_definition.dart';

class BudgetActionDefinition {
  /// AWS Identity and Access Management (IAM) action definition details. See `iamActionDefinition` Block.
  final pulumi.Input<BudgetActionDefinitionIamActionDefinition?>? iamActionDefinition;
  /// Service control policies (SCPs) action definition details. See `scpActionDefinition` Block.
  final pulumi.Input<BudgetActionDefinitionScpActionDefinition?>? scpActionDefinition;
  /// AWS Systems Manager (SSM) action definition details. See `ssmActionDefinition` Block.
  final pulumi.Input<BudgetActionDefinitionSsmActionDefinition?>? ssmActionDefinition;

  /// Creates a new [BudgetActionDefinition].
  /// [iamActionDefinition] AWS Identity and Access Management (IAM) action definition details. See `iamActionDefinition` Block.
  /// [scpActionDefinition] Service control policies (SCPs) action definition details. See `scpActionDefinition` Block.
  /// [ssmActionDefinition] AWS Systems Manager (SSM) action definition details. See `ssmActionDefinition` Block.
  const BudgetActionDefinition({
    this.iamActionDefinition,
    this.scpActionDefinition,
    this.ssmActionDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamActionDefinition': ?pulumi.Input.mapOptionalInputValue<BudgetActionDefinitionIamActionDefinition, Map<String, dynamic>>(iamActionDefinition, (value) => value.toMap()),
      'scpActionDefinition': ?pulumi.Input.mapOptionalInputValue<BudgetActionDefinitionScpActionDefinition, Map<String, dynamic>>(scpActionDefinition, (value) => value.toMap()),
      'ssmActionDefinition': ?pulumi.Input.mapOptionalInputValue<BudgetActionDefinitionSsmActionDefinition, Map<String, dynamic>>(ssmActionDefinition, (value) => value.toMap()),
    };
  }

  factory BudgetActionDefinition.fromMap(Map<String, dynamic> map) {
    return BudgetActionDefinition(
      iamActionDefinition: (() { final guardedValue = map['iamActionDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetActionDefinitionIamActionDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      scpActionDefinition: (() { final guardedValue = map['scpActionDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetActionDefinitionScpActionDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ssmActionDefinition: (() { final guardedValue = map['ssmActionDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetActionDefinitionSsmActionDefinition.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
