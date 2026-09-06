// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainTopicEventSubscriptionDeliveryAttributes.
class GetDomainTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetDomainTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetDomainTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetDomainTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
