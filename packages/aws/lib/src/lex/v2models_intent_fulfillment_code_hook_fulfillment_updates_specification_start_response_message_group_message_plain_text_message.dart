// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessagePlainTextMessage(
      value: map['value'] as String,
    );
  }
}
