// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition {
  /// Expression string that is evaluated.
  final String expressionString;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition].
  /// [expressionString] Expression string that is evaluated.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition({
    required this.expressionString,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expressionString': expressionString,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchCondition(
      expressionString: map['expressionString'] as String,
    );
  }
}

