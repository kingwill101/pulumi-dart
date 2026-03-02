// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_connector_data_lake_data_destination_response.dart';
import 'analytics_connector_fhir_service_data_source_response.dart';
import 'analytics_connector_fhir_to_parquet_mapping_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getAnalyticsConnector.
class GetAnalyticsConnectorResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Data destination configuration for Analytics Connector.
  final AnalyticsConnectorDataLakeDataDestinationResponse dataDestinationConfiguration;
  /// Data mapping configuration for Analytics Connector.
  final AnalyticsConnectorFhirToParquetMappingResponse dataMappingConfiguration;
  /// Data source for Analytics Connector.
  final AnalyticsConnectorFhirServiceDataSourceResponse dataSourceConfiguration;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServiceManagedIdentityResponseIdentity? identity;
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

  /// Creates a new [GetAnalyticsConnectorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataDestinationConfiguration] Data destination configuration for Analytics Connector.
  /// [dataMappingConfiguration] Data mapping configuration for Analytics Connector.
  /// [dataSourceConfiguration] Data source for Analytics Connector.
  /// [etag] An etag associated with the resource, used for optimistic concurrency when editing it.
  /// [id] The resource identifier.
  /// [identity] Setting indicating whether the service has a managed identity associated with it.
  /// [location] The resource location.
  /// [name] The resource name.
  /// [provisioningState] The provisioning state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The resource type.
  GetAnalyticsConnectorResult({
    required this.azureApiVersion,
    required this.dataDestinationConfiguration,
    required this.dataMappingConfiguration,
    required this.dataSourceConfiguration,
    this.etag,
    required this.id,
    this.identity,
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
      'dataDestinationConfiguration': dataDestinationConfiguration.toMap(),
      'dataMappingConfiguration': dataMappingConfiguration.toMap(),
      'dataSourceConfiguration': dataSourceConfiguration.toMap(),
      'etag': ?etag,
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAnalyticsConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsConnectorResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataDestinationConfiguration: AnalyticsConnectorDataLakeDataDestinationResponse.fromMap((map['dataDestinationConfiguration'] as Map).cast<String, dynamic>()),
      dataMappingConfiguration: AnalyticsConnectorFhirToParquetMappingResponse.fromMap((map['dataMappingConfiguration'] as Map).cast<String, dynamic>()),
      dataSourceConfiguration: AnalyticsConnectorFhirServiceDataSourceResponse.fromMap((map['dataSourceConfiguration'] as Map).cast<String, dynamic>()),
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      identity: map['identity'] == null ? null : ServiceManagedIdentityResponseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

