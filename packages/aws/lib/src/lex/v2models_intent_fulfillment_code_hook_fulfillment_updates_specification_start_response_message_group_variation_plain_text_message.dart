// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage {
  /// Message to send to the user.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage].
  /// [value] Message to send to the user.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupVariationPlainTextMessage(
      value: map['value'] as String,
    );
  }
}
