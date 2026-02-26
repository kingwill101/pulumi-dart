// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
