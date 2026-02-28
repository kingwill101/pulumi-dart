// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
