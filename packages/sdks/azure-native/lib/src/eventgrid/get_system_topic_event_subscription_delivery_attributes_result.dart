// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSystemTopicEventSubscriptionDeliveryAttributes.
class GetSystemTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetSystemTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetSystemTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetSystemTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
