// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_rule_resource_response_identity.dart';
import 'data_collection_rule_resource_response_system_data.dart';
import 'data_collection_rule_response_data_sources.dart';
import 'data_collection_rule_response_destinations.dart';
import 'data_collection_rule_response_metadata.dart';
import 'data_flow_response.dart';
import 'stream_declaration_response.dart';

/// Result data returned by getDataCollectionRule.
class GetDataCollectionRuleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The resource ID of the data collection endpoint that this rule can be used with.
  final String? dataCollectionEndpointId;
  /// The specification of data flows.
  final List<DataFlowResponse>? dataFlows;
  /// The specification of data sources.
  /// This property is optional and can be omitted if the rule is meant to be used via direct calls to the provisioned endpoint.
  final DataCollectionRuleResponseDataSources? dataSources;
  /// Description of the data collection rule.
  final String? description;
  /// The specification of destinations.
  final DataCollectionRuleResponseDestinations? destinations;
  /// Resource entity tag (ETag).
  final String etag;
  /// Fully qualified ID of the resource.
  final String id;
  /// Managed service identity of the resource.
  final DataCollectionRuleResourceResponseIdentity? identity;
  /// The immutable ID of this data collection rule. This property is READ-ONLY.
  final String immutableId;
  /// The kind of the resource.
  final String? kind;
  /// The geo-location where the resource lives.
  final String location;
  /// Metadata about the resource
  final DataCollectionRuleResponseMetadata metadata;
  /// The name of the resource.
  final String name;
  /// The resource provisioning state.
  final String provisioningState;
  /// Declaration of custom streams used in this rule.
  final Map<String, StreamDeclarationResponse>? streamDeclarations;
  /// Metadata pertaining to creation and last modification of the resource.
  final DataCollectionRuleResourceResponseSystemData systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetDataCollectionRuleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataCollectionEndpointId] The resource ID of the data collection endpoint that this rule can be used with.
  /// [dataFlows] The specification of data flows.
  /// [dataSources] The specification of data sources.
  /// [description] Description of the data collection rule.
  /// [destinations] The specification of destinations.
  /// [etag] Resource entity tag (ETag).
  /// [id] Fully qualified ID of the resource.
  /// [identity] Managed service identity of the resource.
  /// [immutableId] The immutable ID of this data collection rule. This property is READ-ONLY.
  /// [kind] The kind of the resource.
  /// [location] The geo-location where the resource lives.
  /// [metadata] Metadata about the resource
  /// [name] The name of the resource.
  /// [provisioningState] The resource provisioning state.
  /// [streamDeclarations] Declaration of custom streams used in this rule.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags.
  /// [type] The type of the resource.
  const GetDataCollectionRuleResult({
    required this.azureApiVersion,
    this.dataCollectionEndpointId,
    this.dataFlows,
    this.dataSources,
    this.description,
    this.destinations,
    required this.etag,
    required this.id,
    this.identity,
    required this.immutableId,
    this.kind,
    required this.location,
    required this.metadata,
    required this.name,
    required this.provisioningState,
    this.streamDeclarations,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataFlows': ?(() { final guardedValue = dataFlows; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataFlowResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataSources': ?dataSources?.toMap(),
      'description': ?description,
      'destinations': ?destinations?.toMap(),
      'etag': etag,
      'id': id,
      'identity': ?identity?.toMap(),
      'immutableId': immutableId,
      'kind': ?kind,
      'location': location,
      'metadata': metadata.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'streamDeclarations': ?(() { final guardedValue = streamDeclarations; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<StreamDeclarationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDataCollectionRuleResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataFlows: (() { final guardedValue = map['dataFlows']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataFlowResponse>(guardedValue, (value) => DataFlowResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataSources: (() { final guardedValue = map['dataSources']; if (guardedValue == null) return null; return DataCollectionRuleResponseDataSources.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinations: (() { final guardedValue = map['destinations']; if (guardedValue == null) return null; return DataCollectionRuleResponseDestinations.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: map['etag'] as String,
      id: map['id'] as String,
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return DataCollectionRuleResourceResponseIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      immutableId: map['immutableId'] as String,
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      metadata: DataCollectionRuleResponseMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      streamDeclarations: (() { final guardedValue = map['streamDeclarations']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<StreamDeclarationResponse>(guardedValue, (value) => StreamDeclarationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: DataCollectionRuleResourceResponseSystemData.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
