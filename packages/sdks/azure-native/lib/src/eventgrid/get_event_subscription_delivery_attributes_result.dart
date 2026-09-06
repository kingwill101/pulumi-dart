// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEventSubscriptionDeliveryAttributes.
class GetEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
