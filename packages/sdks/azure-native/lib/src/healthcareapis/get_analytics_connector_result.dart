// ignore_for_file: unused_element, unnecessary_cast

import 'analytics_connector_data_lake_data_destination_response.dart';
import 'analytics_connector_fhir_service_data_source_response.dart';
import 'analytics_connector_fhir_to_parquet_mapping_response.dart';
import 'service_managed_identity_response_identity.dart';
import 'system_data_response.dart';

/// Result data returned by getAnalyticsConnector.
class GetAnalyticsConnectorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Data destination configuration for Analytics Connector.
  final AnalyticsConnectorDataLakeDataDestinationResponse? dataDestinationConfiguration;
  /// Data mapping configuration for Analytics Connector.
  final AnalyticsConnectorFhirToParquetMappingResponse? dataMappingConfiguration;
  /// Data source for Analytics Connector.
  final AnalyticsConnectorFhirServiceDataSourceResponse? dataSourceConfiguration;
  /// An etag associated with the resource, used for optimistic concurrency when editing it.
  final String? etag;
  /// The resource identifier.
  final String? id;
  /// Setting indicating whether the service has a managed identity associated with it.
  final ServiceManagedIdentityResponseIdentity? identity;
  /// The resource location.
  final String? location;
  /// The resource name.
  final String? name;
  /// The provisioning state.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The resource type.
  final String? type;

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
  const GetAnalyticsConnectorResult({
    this.azureApiVersion,
    this.dataDestinationConfiguration,
    this.dataMappingConfiguration,
    this.dataSourceConfiguration,
    this.etag,
    this.id,
    this.identity,
    this.location,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataDestinationConfiguration': ?dataDestinationConfiguration?.toMap(),
      'dataMappingConfiguration': ?dataMappingConfiguration?.toMap(),
      'dataSourceConfiguration': ?dataSourceConfiguration?.toMap(),
      'etag': ?etag,
      'id': ?id,
      'identity': ?identity?.toMap(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetAnalyticsConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetAnalyticsConnectorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataDestinationConfiguration: (() { final guardedValue = map['dataDestinationConfiguration']; if (guardedValue == null) return null; return AnalyticsConnectorDataLakeDataDestinationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataMappingConfiguration: (() { final guardedValue = map['dataMappingConfiguration']; if (guardedValue == null) return null; return AnalyticsConnectorFhirToParquetMappingResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataSourceConfiguration: (() { final guardedValue = map['dataSourceConfiguration']; if (guardedValue == null) return null; return AnalyticsConnectorFhirServiceDataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return ServiceManagedIdentityResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
