// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_identifier_response.dart';
import 'business_process_mapping_item_response.dart';
import 'business_process_stage_response.dart';
import 'system_data_response.dart';

/// Result data returned by getBusinessProcess.
class GetBusinessProcessResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The business process mapping.
  final Map<String, BusinessProcessMappingItemResponse>? businessProcessMapping;
  /// The business process stages.
  final Map<String, BusinessProcessStageResponse>? businessProcessStages;
  /// The description of the business process.
  final String? description;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The business process identifier.
  final BusinessProcessIdentifierResponse? identifier;
  /// The name of the resource
  final String name;
  /// The status of the last operation.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The table name of the business process.
  final String? tableName;
  /// The tracking data store reference name.
  final String? trackingDataStoreReferenceName;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The version of the business process.
  final String version;

  /// Creates a new [GetBusinessProcessResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [businessProcessMapping] The business process mapping.
  /// [businessProcessStages] The business process stages.
  /// [description] The description of the business process.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [identifier] The business process identifier.
  /// [name] The name of the resource
  /// [provisioningState] The status of the last operation.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tableName] The table name of the business process.
  /// [trackingDataStoreReferenceName] The tracking data store reference name.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] The version of the business process.
  const GetBusinessProcessResult({
    required this.azureApiVersion,
    this.businessProcessMapping,
    this.businessProcessStages,
    this.description,
    required this.id,
    this.identifier,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tableName,
    this.trackingDataStoreReferenceName,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'businessProcessMapping': ?(() { final guardedValue = businessProcessMapping; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<BusinessProcessMappingItemResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'businessProcessStages': ?(() { final guardedValue = businessProcessStages; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<BusinessProcessStageResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'description': ?description,
      'id': id,
      'identifier': ?identifier?.toMap(),
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tableName': ?tableName,
      'trackingDataStoreReferenceName': ?trackingDataStoreReferenceName,
      'type': type,
      'version': version,
    };
  }

  factory GetBusinessProcessResult.fromMap(Map<String, dynamic> map) {
    return GetBusinessProcessResult(
      azureApiVersion: map['azureApiVersion'] as String,
      businessProcessMapping: (() { final guardedValue = map['businessProcessMapping']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<BusinessProcessMappingItemResponse>(guardedValue, (value) => BusinessProcessMappingItemResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      businessProcessStages: (() { final guardedValue = map['businessProcessStages']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<BusinessProcessStageResponse>(guardedValue, (value) => BusinessProcessStageResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      identifier: (() { final guardedValue = map['identifier']; if (guardedValue == null) return null; return BusinessProcessIdentifierResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tableName: (() { final guardedValue = map['tableName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trackingDataStoreReferenceName: (() { final guardedValue = map['trackingDataStoreReferenceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}
