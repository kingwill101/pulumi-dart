// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  V2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentInitialResponseSettingConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
