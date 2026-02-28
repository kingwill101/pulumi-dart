// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['expressionString'] = expressionString;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}
