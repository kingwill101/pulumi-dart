// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingConfirmationConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
