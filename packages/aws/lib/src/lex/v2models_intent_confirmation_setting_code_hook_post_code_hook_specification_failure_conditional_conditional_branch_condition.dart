// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationFailureConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
