// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNamespaceTopicEventSubscriptionDeliveryAttributes.
class GetNamespaceTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<dynamic>? value;

  /// Creates a new [GetNamespaceTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  const GetNamespaceTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory GetNamespaceTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionDeliveryAttributesResult(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); })(),
    );
  }
}
