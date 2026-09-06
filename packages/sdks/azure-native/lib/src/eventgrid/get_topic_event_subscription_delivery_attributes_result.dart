// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTopicEventSubscriptionDeliveryAttributes.
class GetTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetTopicEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
