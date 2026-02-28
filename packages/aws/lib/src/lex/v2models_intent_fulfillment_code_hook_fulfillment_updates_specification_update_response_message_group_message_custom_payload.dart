// ignore_for_file: unused_element, unnecessary_cast

class V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload {
  /// String that is sent to your application.
  final String value;

  /// Creates a new [V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload].
  /// [value] String that is sent to your application.
  V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload.fromMap(
      Map<String, dynamic> map) {
    return V2modelsIntentFulfillmentCodeHookFulfillmentUpdatesSpecificationUpdateResponseMessageGroupMessageCustomPayload(
      value: map['value'] as String,
    );
  }
}
