// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPartnerTopicEventSubscriptionDeliveryAttributes.
class GetPartnerTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetPartnerTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetPartnerTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetPartnerTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerTopicEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
