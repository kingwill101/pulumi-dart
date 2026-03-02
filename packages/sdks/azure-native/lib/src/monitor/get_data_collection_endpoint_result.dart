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
  final String azureApiVersion;
  /// The endpoint used by clients to access their configuration.
  final DataCollectionEndpointResponseConfigurationAccess? configurationAccess;
  /// Description of the data collection endpoint.
  final String? description;
  /// Resource entity tag (ETag).
  final String etag;
  /// Failover configuration on this endpoint. This property is READ-ONLY.
  final DataCollectionEndpointResponseFailoverConfiguration failoverConfiguration;
  /// Fully qualified ID of the resource.
  final String id;
  /// Managed service identity of the resource.
  final DataCollectionEndpointResourceResponseIdentity? identity;
  /// The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  final String? immutableId;
  /// The kind of the resource.
  final String? kind;
  /// The geo-location where the resource lives.
  final String location;
  /// The endpoint used by clients to ingest logs.
  final DataCollectionEndpointResponseLogsIngestion? logsIngestion;
  /// Metadata for the resource. This property is READ-ONLY.
  final DataCollectionEndpointResponseMetadata metadata;
  /// The endpoint used by clients to ingest metrics.
  final DataCollectionEndpointResponseMetricsIngestion? metricsIngestion;
  /// The name of the resource.
  final String name;
  /// Network access control rules for the endpoints.
  final DataCollectionEndpointResponseNetworkAcls? networkAcls;
  /// List of Azure Monitor Private Link Scope Resources to which this data collection endpoint resource is associated. This property is READ-ONLY.
  final List<PrivateLinkScopedResourceResponse> privateLinkScopedResources;
  /// The resource provisioning state. This property is READ-ONLY.
  final String provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final DataCollectionEndpointResourceResponseSystemData systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

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
  GetDataCollectionEndpointResult({
    required this.azureApiVersion,
    this.configurationAccess,
    this.description,
    required this.etag,
    required this.failoverConfiguration,
    required this.id,
    this.identity,
    this.immutableId,
    this.kind,
    required this.location,
    this.logsIngestion,
    required this.metadata,
    this.metricsIngestion,
    required this.name,
    this.networkAcls,
    required this.privateLinkScopedResources,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'configurationAccess': ?configurationAccess == null ? null : configurationAccess!.toMap(),
      'description': ?description,
      'etag': etag,
      'failoverConfiguration': failoverConfiguration.toMap(),
      'id': id,
      'identity': ?identity == null ? null : identity!.toMap(),
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': location,
      'logsIngestion': ?logsIngestion == null ? null : logsIngestion!.toMap(),
      'metadata': metadata.toMap(),
      'metricsIngestion': ?metricsIngestion == null ? null : metricsIngestion!.toMap(),
      'name': name,
      'networkAcls': ?networkAcls == null ? null : networkAcls!.toMap(),
      'privateLinkScopedResources': pulumi.Input.encodeList<PrivateLinkScopedResourceResponse, Map<String, dynamic>>(privateLinkScopedResources, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDataCollectionEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionEndpointResult(
      azureApiVersion: map['azureApiVersion'] as String,
      configurationAccess: map['configurationAccess'] == null ? null : DataCollectionEndpointResponseConfigurationAccess.fromMap((map['configurationAccess']! as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description']! as String,
      etag: map['etag'] as String,
      failoverConfiguration: DataCollectionEndpointResponseFailoverConfiguration.fromMap((map['failoverConfiguration'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      identity: map['identity'] == null ? null : DataCollectionEndpointResourceResponseIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>()),
      immutableId: map['immutableId'] == null ? null : map['immutableId']! as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      logsIngestion: map['logsIngestion'] == null ? null : DataCollectionEndpointResponseLogsIngestion.fromMap((map['logsIngestion']! as Map).cast<String, dynamic>()),
      metadata: DataCollectionEndpointResponseMetadata.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      metricsIngestion: map['metricsIngestion'] == null ? null : DataCollectionEndpointResponseMetricsIngestion.fromMap((map['metricsIngestion']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networkAcls: map['networkAcls'] == null ? null : DataCollectionEndpointResponseNetworkAcls.fromMap((map['networkAcls']! as Map).cast<String, dynamic>()),
      privateLinkScopedResources: pulumi.Input.decodeList<PrivateLinkScopedResourceResponse>(map['privateLinkScopedResources'], (value) => PrivateLinkScopedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      systemData: DataCollectionEndpointResourceResponseSystemData.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

