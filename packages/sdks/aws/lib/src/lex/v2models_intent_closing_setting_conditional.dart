// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_closing_setting_conditional_conditional_branch.dart';
import 'v2models_intent_closing_setting_conditional_default_branch.dart';

class V2modelsIntentClosingSettingConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final pulumi.Input<bool> active;
  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  final pulumi.Input<List<V2modelsIntentClosingSettingConditionalConditionalBranch>>? conditionalBranches;
  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  final pulumi.Input<V2modelsIntentClosingSettingConditionalDefaultBranch>? defaultBranch;

  /// Creates a new [V2modelsIntentClosingSettingConditional].
  /// [active] Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  /// [conditionalBranches] Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  /// [defaultBranch] Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  const V2modelsIntentClosingSettingConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'conditionalBranches': ?pulumi.Input.mapOptionalInputValue<List<V2modelsIntentClosingSettingConditionalConditionalBranch>, List<Map<String, dynamic>>>(conditionalBranches, (value) => pulumi.Input.encodeList<V2modelsIntentClosingSettingConditionalConditionalBranch, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultBranch': ?pulumi.Input.mapOptionalInputValue<V2modelsIntentClosingSettingConditionalDefaultBranch, Map<String, dynamic>>(defaultBranch, (value) => value.toMap()),
    };
  }

  factory V2modelsIntentClosingSettingConditional.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditional(
      active: pulumi.Input.fromValue(map['active'] as bool),
      conditionalBranches: (() { final guardedValue = map['conditionalBranches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<V2modelsIntentClosingSettingConditionalConditionalBranch>(guardedValue, (value) => V2modelsIntentClosingSettingConditionalConditionalBranch.fromMap((value as Map).cast<String, dynamic>()))); })(),
      defaultBranch: (() { final guardedValue = map['defaultBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(V2modelsIntentClosingSettingConditionalDefaultBranch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

