// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping_response.dart';

/// Result data returned by getDomainTopicEventSubscriptionDeliveryAttributes.
class GetDomainTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<DynamicDeliveryAttributeMappingResponse>? value;

  /// Creates a new [GetDomainTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  GetDomainTopicEventSubscriptionDeliveryAttributesResult({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value == null ? null : pulumi.Input.encodeList<DynamicDeliveryAttributeMappingResponse, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory GetDomainTopicEventSubscriptionDeliveryAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetDomainTopicEventSubscriptionDeliveryAttributesResult(
      value: map['value'] == null ? null : pulumi.Input.decodeList<DynamicDeliveryAttributeMappingResponse>(map['value']!, (value) => DynamicDeliveryAttributeMappingResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

