// ignore_for_file: unused_element, unnecessary_cast

import 'delivery_configuration_response.dart';
import 'filters_configuration_response.dart';
import 'system_data_response.dart';

/// Result data returned by getNamespaceTopicEventSubscription.
class GetNamespaceTopicEventSubscriptionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Information about the delivery configuration of the event subscription.
  final DeliveryConfigurationResponse? deliveryConfiguration;
  /// The event delivery schema for the event subscription.
  final String? eventDeliverySchema;
  /// Expiration time of the event subscription.
  final String? expirationTimeUtc;
  /// Information about the filter for the event subscription.
  final FiltersConfigurationResponse? filtersConfiguration;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Name of the resource.
  final String? name;
  /// Provisioning state of the event subscription.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Type of the resource.
  final String? type;

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
  const GetNamespaceTopicEventSubscriptionResult({
    this.azureApiVersion,
    this.deliveryConfiguration,
    this.eventDeliverySchema,
    this.expirationTimeUtc,
    this.filtersConfiguration,
    this.id,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'deliveryConfiguration': ?deliveryConfiguration?.toMap(),
      'eventDeliverySchema': ?eventDeliverySchema,
      'expirationTimeUtc': ?expirationTimeUtc,
      'filtersConfiguration': ?filtersConfiguration?.toMap(),
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetNamespaceTopicEventSubscriptionResult.fromMap(Map<String, dynamic> map) {
    return GetNamespaceTopicEventSubscriptionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deliveryConfiguration: (() { final guardedValue = map['deliveryConfiguration']; if (guardedValue == null) return null; return DeliveryConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      eventDeliverySchema: (() { final guardedValue = map['eventDeliverySchema']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTimeUtc: (() { final guardedValue = map['expirationTimeUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filtersConfiguration: (() { final guardedValue = map['filtersConfiguration']; if (guardedValue == null) return null; return FiltersConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
