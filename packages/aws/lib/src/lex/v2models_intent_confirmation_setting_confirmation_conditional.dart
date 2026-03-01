// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2models_intent_confirmation_setting_confirmation_conditional_conditional_branch.dart';
import 'v2models_intent_confirmation_setting_confirmation_conditional_default_branch.dart';

class V2modelsIntentConfirmationSettingConfirmationConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final bool active;

  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  final List<
    V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch
  >?
  conditionalBranches;

  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  final V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch?
  defaultBranch;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditional].
  /// [active] Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  /// [conditionalBranches] Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See `conditional_branch`.
  /// [defaultBranch] Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See `default_branch`.
  V2modelsIntentConfirmationSettingConfirmationConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': active,
      'conditionalBranches': ?conditionalBranches == null
          ? null
          : pulumi.Input.encodeList<
              V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch,
              Map<String, dynamic>
            >(conditionalBranches!, (value) => value.toMap()),
      'defaultBranch': ?defaultBranch == null ? null : defaultBranch!.toMap(),
    };
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditional.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingConfirmationConditional(
      active: map['active'] as bool,
      conditionalBranches: map['conditionalBranches'] == null
          ? null
          : pulumi.Input.decodeList<
              V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch
            >(
              map['conditionalBranches'],
              (value) =>
                  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranch.fromMap(
                    (value as Map).cast<String, dynamic>(),
                  ),
            ),
      defaultBranch: map['defaultBranch'] == null
          ? null
          : V2modelsIntentConfirmationSettingConfirmationConditionalDefaultBranch.fromMap(
              (map['defaultBranch'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
