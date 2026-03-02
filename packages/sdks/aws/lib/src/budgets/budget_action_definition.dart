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
  BudgetActionDefinition({
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
      iamActionDefinition: map['iamActionDefinition'] == null ? null : (BudgetActionDefinitionIamActionDefinition.fromMap((map['iamActionDefinition'] as Map).cast<String, dynamic>())).input(),
      scpActionDefinition: map['scpActionDefinition'] == null ? null : (BudgetActionDefinitionScpActionDefinition.fromMap((map['scpActionDefinition'] as Map).cast<String, dynamic>())).input(),
      ssmActionDefinition: map['ssmActionDefinition'] == null ? null : (BudgetActionDefinitionSsmActionDefinition.fromMap((map['ssmActionDefinition'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

