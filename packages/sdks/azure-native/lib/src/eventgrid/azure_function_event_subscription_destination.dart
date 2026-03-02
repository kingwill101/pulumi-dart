// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the azure function destination for an event subscription.
class AzureFunctionEventSubscriptionDestination {
  /// Delivery attribute details.
  final pulumi.Input<List<DynamicDeliveryAttributeMapping>>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'AzureFunction'.
  final pulumi.Input<String> endpointType;
  /// Maximum number of events per batch.
  final pulumi.Input<int>? maxEventsPerBatch;
  /// Preferred batch size in Kilobytes.
  final pulumi.Input<int>? preferredBatchSizeInKilobytes;
  /// The Azure Resource Id that represents the endpoint of the Azure Function destination of an event subscription.
  final pulumi.Input<String>? resourceId;

  /// Creates a new [AzureFunctionEventSubscriptionDestination].
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  /// [resourceId] The Azure Resource Id that represents the endpoint of the Azure Function destination of an event subscription.
  AzureFunctionEventSubscriptionDestination({
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.maxEventsPerBatch,
    this.preferredBatchSizeInKilobytes,
    this.resourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deliveryAttributeMappings': ?pulumi.Input.mapOptionalInputValue<List<DynamicDeliveryAttributeMapping>, List<Map<String, dynamic>>>(deliveryAttributeMappings, (value) => pulumi.Input.encodeList<DynamicDeliveryAttributeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointType': endpointType,
      'maxEventsPerBatch': ?maxEventsPerBatch,
      'preferredBatchSizeInKilobytes': ?preferredBatchSizeInKilobytes,
      'resourceId': ?resourceId,
    };
  }

  factory AzureFunctionEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return AzureFunctionEventSubscriptionDestination(
      deliveryAttributeMappings: map['deliveryAttributeMappings'] == null ? null : (pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(map['deliveryAttributeMappings']!, (value) => DynamicDeliveryAttributeMapping.fromMap((value as Map).cast<String, dynamic>()))).input(),
      endpointType: (map['endpointType'] as String).input(),
      maxEventsPerBatch: map['maxEventsPerBatch'] == null ? null : (map['maxEventsPerBatch']! as int).input(),
      preferredBatchSizeInKilobytes: map['preferredBatchSizeInKilobytes'] == null ? null : (map['preferredBatchSizeInKilobytes']! as int).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId']! as String).input(),
    );
  }
}

