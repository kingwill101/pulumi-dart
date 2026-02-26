// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../v2models_intent_confirmation_setting_failure_conditional_conditional_branch/v2models_intent_confirmation_setting_failure_conditional_conditional_branch.dart';
import '../v2models_intent_confirmation_setting_failure_conditional_default_branch/v2models_intent_confirmation_setting_failure_conditional_default_branch.dart';

class V2modelsIntentConfirmationSettingFailureConditional {
  /// Whether a conditional branch is active. When active is false, the conditions are not evaluated.
  final bool active;

  /// Configuration blocks for conditional branches. A conditional branch is made up of a condition, a response and a next step. The response and next step are executed when the condition is true. See <span pulumi-lang-nodejs="`conditionalBranch`" pulumi-lang-dotnet="`ConditionalBranch`" pulumi-lang-go="`conditionalBranch`" pulumi-lang-python="`conditional_branch`" pulumi-lang-yaml="`conditionalBranch`" pulumi-lang-java="`conditionalBranch`">`conditional_branch`</span>.
  final List<
          V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch>?
      conditionalBranches;

  /// Configuration block for the conditional branch that should be followed when the conditions for other branches are not satisfied. A branch is made up of a condition, a response and a next step. See <span pulumi-lang-nodejs="`defaultBranch`" pulumi-lang-dotnet="`DefaultBranch`" pulumi-lang-go="`defaultBranch`" pulumi-lang-python="`default_branch`" pulumi-lang-yaml="`defaultBranch`" pulumi-lang-java="`defaultBranch`">`default_branch`</span>.
  final V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch?
      defaultBranch;

  V2modelsIntentConfirmationSettingFailureConditional({
    required this.active,
    this.conditionalBranches,
    this.defaultBranch,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['active'] = active;
    final conditionalBranchesValue = conditionalBranches;
    if (conditionalBranchesValue != null) {
      map['conditionalBranches'] = Input.encodeList<
          V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch,
          Map<String,
              dynamic>>(conditionalBranchesValue, (value) => value.toMap());
    }
    final defaultBranchValue = defaultBranch;
    if (defaultBranchValue != null) {
      map['defaultBranch'] = defaultBranchValue.toMap();
    }
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureConditional.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditional(
      active: map['active'] as bool,
      conditionalBranches: map['conditionalBranches'] == null
          ? null
          : Input.decodeList<
                  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch>(
              map['conditionalBranches'],
              (value) =>
                  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranch
                      .fromMap((value as Map).cast<String, dynamic>())),
      defaultBranch: map['defaultBranch'] == null
          ? null
          : V2modelsIntentConfirmationSettingFailureConditionalDefaultBranch
              .fromMap((map['defaultBranch'] as Map).cast<String, dynamic>()),
    );
  }
}
