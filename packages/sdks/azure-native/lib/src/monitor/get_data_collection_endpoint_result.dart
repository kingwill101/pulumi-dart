// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_endpoint_resource_response_identity.dart';
import 'data_collection_endpoint_resource_response_system_data.dart';
import 'data_collection_endpoint_response_configuration_access.dart';
import 'data_collection_endpoint_response_failover_configuration.dart';
import 'data_collection_endpoint_response_logs_ingestion.dart';
import 'data_collection_endpoint_response_metadata.dart';
import 'data_collection_endpoint_response_metrics_ingestion.dart';
import 'data_collection_endpoint_response_network_acls.dart';
import 'private_link_scoped_resource_response.dart';

/// Result data returned by getDataCollectionEndpoint.
class GetDataCollectionEndpointResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The endpoint used by clients to access their configuration.
  final DataCollectionEndpointResponseConfigurationAccess? configurationAccess;
  /// Description of the data collection endpoint.
  final String? description;
  /// Resource entity tag (ETag).
  final String? etag;
  /// Failover configuration on this endpoint. This property is READ-ONLY.
  final DataCollectionEndpointResponseFailoverConfiguration? failoverConfiguration;
  /// Fully qualified ID of the resource.
  final String? id;
  /// Managed service identity of the resource.
  final DataCollectionEndpointResourceResponseIdentity? identity;
  /// The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  final String? immutableId;
  /// The kind of the resource.
  final String? kind;
  /// The geo-location where the resource lives.
  final String? location;
  /// The endpoint used by clients to ingest logs.
  final DataCollectionEndpointResponseLogsIngestion? logsIngestion;
  /// Metadata for the resource. This property is READ-ONLY.
  final DataCollectionEndpointResponseMetadata? metadata;
  /// The endpoint used by clients to ingest metrics.
  final DataCollectionEndpointResponseMetricsIngestion? metricsIngestion;
  /// The name of the resource.
  final String? name;
  /// Network access control rules for the endpoints.
  final DataCollectionEndpointResponseNetworkAcls? networkAcls;
  /// List of Azure Monitor Private Link Scope Resources to which this data collection endpoint resource is associated. This property is READ-ONLY.
  final List<PrivateLinkScopedResourceResponse>? privateLinkScopedResources;
  /// The resource provisioning state. This property is READ-ONLY.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final DataCollectionEndpointResourceResponseSystemData? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetDataCollectionEndpointResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [configurationAccess] The endpoint used by clients to access their configuration.
  /// [description] Description of the data collection endpoint.
  /// [etag] Resource entity tag (ETag).
  /// [failoverConfiguration] Failover configuration on this endpoint. This property is READ-ONLY.
  /// [id] Fully qualified ID of the resource.
  /// [identity] Managed service identity of the resource.
  /// [immutableId] The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  /// [kind] The kind of the resource.
  /// [location] The geo-location where the resource lives.
  /// [logsIngestion] The endpoint used by clients to ingest logs.
  /// [metadata] Metadata for the resource. This property is READ-ONLY.
  /// [metricsIngestion] The endpoint used by clients to ingest metrics.
  /// [name] The name of the resource.
  /// [networkAcls] Network access control rules for the endpoints.
  /// [privateLinkScopedResources] List of Azure Monitor Private Link Scope Resources to which this data collection endpoint resource is associated. This property is READ-ONLY.
  /// [provisioningState] The resource provisioning state. This property is READ-ONLY.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  const GetDataCollectionEndpointResult({
    this.azureApiVersion,
    this.configurationAccess,
    this.description,
    this.etag,
    this.failoverConfiguration,
    this.id,
    this.identity,
    this.immutableId,
    this.kind,
    this.location,
    this.logsIngestion,
    this.metadata,
    this.metricsIngestion,
    this.name,
    this.networkAcls,
    this.privateLinkScopedResources,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'configurationAccess': ?configurationAccess?.toMap(),
      'description': ?description,
      'etag': ?etag,
      'failoverConfiguration': ?failoverConfiguration?.toMap(),
      'id': ?id,
      'identity': ?identity?.toMap(),
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': ?location,
      'logsIngestion': ?logsIngestion?.toMap(),
      'metadata': ?metadata?.toMap(),
      'metricsIngestion': ?metricsIngestion?.toMap(),
      'name': ?name,
      'networkAcls': ?networkAcls?.toMap(),
      'privateLinkScopedResources': ?(() { final guardedValue = privateLinkScopedResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<PrivateLinkScopedResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDataCollectionEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationAccess: (() { final guardedValue = map['configurationAccess']; if (guardedValue == null) return null; return DataCollectionEndpointResponseConfigurationAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverConfiguration: (() { final guardedValue = map['failoverConfiguration']; if (guardedValue == null) return null; return DataCollectionEndpointResponseFailoverConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return DataCollectionEndpointResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableId: (() { final guardedValue = map['immutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logsIngestion: (() { final guardedValue = map['logsIngestion']; if (guardedValue == null) return null; return DataCollectionEndpointResponseLogsIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return DataCollectionEndpointResponseMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      metricsIngestion: (() { final guardedValue = map['metricsIngestion']; if (guardedValue == null) return null; return DataCollectionEndpointResponseMetricsIngestion.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return DataCollectionEndpointResponseNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      privateLinkScopedResources: (() { final guardedValue = map['privateLinkScopedResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<PrivateLinkScopedResourceResponse>(guardedValue, (value) => PrivateLinkScopedResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return DataCollectionEndpointResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
