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
  GetBusinessProcessResult({
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
      'businessProcessMapping': ?businessProcessMapping == null ? null : pulumi.Input.encodeMapValues<BusinessProcessMappingItemResponse, Map<String, dynamic>>(businessProcessMapping!, (value) => value.toMap()),
      'businessProcessStages': ?businessProcessStages == null ? null : pulumi.Input.encodeMapValues<BusinessProcessStageResponse, Map<String, dynamic>>(businessProcessStages!, (value) => value.toMap()),
      'description': ?description,
      'id': id,
      'identifier': ?identifier == null ? null : identifier!.toMap(),
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
      businessProcessMapping: map['businessProcessMapping'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessMappingItemResponse>(map['businessProcessMapping'], (value) => BusinessProcessMappingItemResponse.fromMap((value as Map).cast<String, dynamic>())),
      businessProcessStages: map['businessProcessStages'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessStageResponse>(map['businessProcessStages'], (value) => BusinessProcessStageResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      id: map['id'] as String,
      identifier: map['identifier'] == null ? null : BusinessProcessIdentifierResponse.fromMap((map['identifier'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
      trackingDataStoreReferenceName: map['trackingDataStoreReferenceName'] == null ? null : map['trackingDataStoreReferenceName'] as String,
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

