// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}

