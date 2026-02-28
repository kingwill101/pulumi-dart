// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationStartResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}
