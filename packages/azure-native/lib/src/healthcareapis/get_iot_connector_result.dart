// ignore_for_file: unused_element, unnecessary_cast

import 'iot_event_hub_ingestion_endpoint_configuration_response.dart';
import 'iot_mapping_properties_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getIotConnector.
class GetIotConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Device Mappings.
  final IotMappingPropertiesResponse? deviceMapping;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServiceManagedIdentityResponseIdentity? identity;
  /// Source configuration.
  final IotEventHubIngestionEndpointConfigurationResponse? ingestionEndpointConfiguration;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String name;
  /// The provisioning state.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String type;

  /// Creates a new [GetIotConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [deviceMapping] Device Mappings.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [ingestionEndpointConfiguration] Source configuration.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [provisioningState] The provisioning state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The resource type.
  GetIotConnectorResult({
    required this.azureApiVersion,
    this.deviceMapping,
    this.etag,
    required this.id,
    this.identity,
    this.ingestionEndpointConfiguration,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'deviceMapping': ?deviceMapping == null ? null : deviceMapping!.toMap(),
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'ingestionEndpointConfiguration': ?ingestionEndpointConfiguration == null ? null : ingestionEndpointConfiguration!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetIotConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetIotConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      deviceMapping: map['deviceMapping'] == null ? null : IotMappingPropertiesResponse.fromMap((map['deviceMapping'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ServiceManagedIdentityResponseIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      ingestionEndpointConfiguration: map['ingestionEndpointConfiguration'] == null ? null : IotEventHubIngestionEndpointConfigurationResponse.fromMap((map['ingestionEndpointConfiguration'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

