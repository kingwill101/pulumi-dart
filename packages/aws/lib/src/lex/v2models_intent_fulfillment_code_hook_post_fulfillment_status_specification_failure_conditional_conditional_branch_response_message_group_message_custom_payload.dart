// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationFailureConditionalConditionalBranchResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
