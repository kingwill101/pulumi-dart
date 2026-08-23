// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_action_definition_iam_action_definition.dart';
import 'budget_action_definition_scp_action_definition.dart';
import 'budget_action_definition_ssm_action_definition.dart';

class BudgetActionDefinition {
  /// The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition.
  final pulumi.Input<BudgetActionDefinitionIamActionDefinition>? iamActionDefinition;
  /// The service control policies (SCPs) action definition details. See SCP Action Definition.
  final pulumi.Input<BudgetActionDefinitionScpActionDefinition>? scpActionDefinition;
  /// The AWS Systems Manager (SSM) action definition details. See SSM Action Definition.
  final pulumi.Input<BudgetActionDefinitionSsmActionDefinition>? ssmActionDefinition;

  /// Creates a new [BudgetActionDefinition].
  /// [iamActionDefinition] The AWS Identity and Access Management (IAM) action definition details. See IAM Action Definition.
  /// [scpActionDefinition] The service control policies (SCPs) action definition details. See SCP Action Definition.
  /// [ssmActionDefinition] The AWS Systems Manager (SSM) action definition details. See SSM Action Definition.
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
