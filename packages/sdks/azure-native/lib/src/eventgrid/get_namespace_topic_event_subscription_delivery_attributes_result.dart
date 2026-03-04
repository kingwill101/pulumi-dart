// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping_response.dart';

/// Result data returned by getNamespaceTopicEventSubscriptionDeliveryAttributes.
class GetNamespaceTopicEventSubscriptionDeliveryAttributesResult {
  /// A collection of DeliveryAttributeMapping
  final List<DynamicDeliveryAttributeMappingResponse>? value;

  /// Creates a new [GetNamespaceTopicEventSubscriptionDeliveryAttributesResult].
  /// [value] A collection of DeliveryAttributeMapping
  GetNamespaceTopicEventSubscriptionDeliveryAttributesResult({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?(() {
        final guardedValue = value;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          DynamicDeliveryAttributeMappingResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
    };
  }

  factory GetNamespaceTopicEventSubscriptionDeliveryAttributesResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetNamespaceTopicEventSubscriptionDeliveryAttributesResult(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<DynamicDeliveryAttributeMappingResponse>(
          guardedValue,
          (value) => DynamicDeliveryAttributeMappingResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
