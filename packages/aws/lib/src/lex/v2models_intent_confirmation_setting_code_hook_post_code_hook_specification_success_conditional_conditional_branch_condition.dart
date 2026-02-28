// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingCodeHookPostCodeHookSpecificationSuccessConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
