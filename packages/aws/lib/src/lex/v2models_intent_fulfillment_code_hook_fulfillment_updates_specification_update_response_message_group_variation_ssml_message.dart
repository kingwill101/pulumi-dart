// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage {
  /// SSML text that defines the prompt.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage].
  /// [value] SSML text that defines the prompt.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupVariationSsmlMessage(
      value: map['value'] as String,
    );
  }
}
