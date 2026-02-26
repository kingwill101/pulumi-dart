// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentClosingSettingConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  V2modelsIntentClosingSettingConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentClosingSettingConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentClosingSettingConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
