// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue {
  /// Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  final String? interpretedValue;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue].
  /// [interpretedValue] Value that Amazon Lex determines for the slot. The actual value depends on the setting of the value selection strategy for the bot. You can choose to use the value entered by the user, or you can have Amazon Lex choose the first value in the resolvedValues list.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue({
    this.interpretedValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final interpretedValueValue = interpretedValue;
    if (interpretedValueValue != null) {
      map['interpretedValue'] = interpretedValueValue;
    }
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchNextStepIntentSlotValue(
      interpretedValue: map['interpretedValue'] == null
          ? null
          : map['interpretedValue'] as String,
    );
  }
}
