// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupVariationCustomPayload(
      value: map['value'] as String,
    );
  }
}
