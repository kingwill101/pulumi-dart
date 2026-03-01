// ignore_for_file: unused_element, unnecessary_cast


class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage.fromMap(Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageSsmlMessage(
      value: map['value'] as String,
    );
  }
}

