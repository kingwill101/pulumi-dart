// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionString': expressionString,
    };
  }

  factory V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentConfirmationSettingDeclinationConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}

