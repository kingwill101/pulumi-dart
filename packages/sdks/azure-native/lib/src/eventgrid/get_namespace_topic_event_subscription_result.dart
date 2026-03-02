// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_configuration_response.dart';
import 'filters_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceTopicEventSubscription.
class GetNamespaceTopicEventSubscriptionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Information about the delivery configuration of the event subscription.
  final DeliveryConfigurationResponse? deliveryConfiguration;
  /// The event delivery schema for the event subscription.
  final String? eventDeliverySchema;
  /// Expiration time of the event subscription.
  final String? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final FiltersConfigurationResponse? filtersConfiguration;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Name of the resource.
  final String name;
  /// Provisioning state of the event subscription.
  final String provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetNamespaceTopicEventSubscriptionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deliveryConfiguration] Information about the delivery configuration of the event subscription.
  /// [eventDeliverySchema] The event delivery schema for the event subscription.
  /// [expirationTimeUtc] Expiration time of the event subscription.
  /// [filtersConfiguration] Information about the filter for the event subscription.
  /// [id] Fully qualified identifier of the resource.
  /// [name] Name of the resource.
  /// [provisioningState] Provisioning state of the event subscription.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [type] Type of the resource.
  GetNamespaceTopicEventSubscriptionResult({
    required this.azureApiVersion,
    this.deliveryConfiguration,
    this.eventDeliverySchema,
    this.expirationTimeUtc,
    this.filtersConfiguration,
    required this.id,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deliveryConfiguration': ?deliveryConfiguration == null ? null : deliveryConfiguration!.toMap(),
      'eventDeliverySchema': ?eventDeliverySchema,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filtersConfiguration': ?filtersConfiguration == null ? null : filtersConfiguration!.toMap(),
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetNamespaceTopicEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deliveryConfiguration: map['deliveryConfiguration'] == null ? null : DeliveryConfigurationResponse.fromMap((map['deliveryConfiguration']! as Map).cast<String, dynamic>()),
      eventDeliverySchema: map['eventDeliverySchema'] == null ? null : map['eventDeliverySchema']! as String,
      expirationTimeUtc: map['expirationTimeUtc'] == null ? null : map['expirationTimeUtc']! as String,
      filtersConfiguration: map['filtersConfiguration'] == null ? null : FiltersConfigurationResponse.fromMap((map['filtersConfiguration']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

