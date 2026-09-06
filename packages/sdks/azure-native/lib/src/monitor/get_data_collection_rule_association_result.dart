// ignore_for_file: unused_element, unnecessary_cast

import 'data_collection_rule_association_proxy_only_resource_response_system_data.dart';
import 'data_collection_rule_association_response_metadata.dart';

/// Result data returned by getDataCollectionRuleAssociation.
class GetDataCollectionRuleAssociationResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The resource ID of the data collection endpoint that is to be associated.
  final String? dataCollectionEndpointId;
  /// The resource ID of the data collection rule that is to be associated.
  final String? dataCollectionRuleId;
  /// Description of the association.
  final String? description;
  /// Resource entity tag (ETag).
  final String? etag;
  /// Fully qualified ID of the resource.
  final String? id;
  /// Metadata about the resource
  final DataCollectionRuleAssociationResponseMetadata? metadata;
  /// The name of the resource.
  final String? name;
  /// The resource provisioning state.
  final String? provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  final DataCollectionRuleAssociationProxyOnlyResourceResponseSystemData? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetDataCollectionRuleAssociationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataCollectionEndpointId] The resource ID of the data collection endpoint that is to be associated.
  /// [dataCollectionRuleId] The resource ID of the data collection rule that is to be associated.
  /// [description] Description of the association.
  /// [etag] Resource entity tag (ETag).
  /// [id] Fully qualified ID of the resource.
  /// [metadata] Metadata about the resource
  /// [name] The name of the resource.
  /// [provisioningState] The resource provisioning state.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetDataCollectionRuleAssociationResult({
    this.azureApiVersion,
    this.dataCollectionEndpointId,
    this.dataCollectionRuleId,
    this.description,
    this.etag,
    this.id,
    this.metadata,
    this.name,
    this.provisioningState,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataCollectionEndpointId': ?dataCollectionEndpointId,
      'dataCollectionRuleId': ?dataCollectionRuleId,
      'description': ?description,
      'etag': ?etag,
      'id': ?id,
      'metadata': ?metadata?.toMap(),
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetDataCollectionRuleAssociationResult.fromMap(Map<String, dynamic> map) {
    return GetDataCollectionRuleAssociationResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataCollectionEndpointId: (() { final guardedValue = map['dataCollectionEndpointId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataCollectionRuleId: (() { final guardedValue = map['dataCollectionRuleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return DataCollectionRuleAssociationResponseMetadata.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return DataCollectionRuleAssociationProxyOnlyResourceResponseSystemData.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
