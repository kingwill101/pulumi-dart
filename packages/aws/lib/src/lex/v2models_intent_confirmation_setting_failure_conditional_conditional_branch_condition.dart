// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'expressionString': expressionString};
  }

  factory V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition.fromMap(
    Map<String, dynamic> map,
  ) {
    return V2modelsIntentConfirmationSettingFailureConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
