// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_default_branch.dart';

class V2modelsIntentConfirmationSettingConfirmationConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final pulumi.Input<bool> active;
  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditionalBranch`.
  final pulumi.Input<List<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch>>? conditionalBranches;
  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `defaultBranch`.
  final pulumi.Input<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch>? defaultBranch;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditional].
  /// [active] Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  /// [conditionalBranches] Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditionalBranch`.
  /// [defaultBranch] Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `defaultBranch`.
  const V2modelsIntentConfirmationSettingConfirmationConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'conditionalBranches': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch>, List<Map<String, dynamic>>>(conditionalBranches, (value) => pulumi.Input.encodeList<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultBranch': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch, Map<String, dynamic>>(defaultBranch, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditional.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditional(
      active: pulumi.Input.fromValue(map['active'] as bool),
      conditionalBranches: (() { final guardedValue = map['conditionalBranches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch>(guardedValue, (value) => V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultBranch: (() { final guardedValue = map['defaultBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
