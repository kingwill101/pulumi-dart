// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationTimeoutConditionalConditionalBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
