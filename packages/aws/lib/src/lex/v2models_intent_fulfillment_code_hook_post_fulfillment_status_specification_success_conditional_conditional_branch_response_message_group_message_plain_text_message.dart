// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookPostFulfillmentStatusSpecificationSuccessConditionalConditionalBranchResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
