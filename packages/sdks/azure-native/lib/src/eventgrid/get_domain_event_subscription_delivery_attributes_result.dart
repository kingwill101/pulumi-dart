// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDomainEventSubscriptionDeliveryAttributes.
class GetDomainEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetDomainEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetDomainEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetDomainEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetDomainEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
