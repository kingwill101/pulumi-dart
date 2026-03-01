// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'business_process_identifier.dart';
import 'business_process_mapping_item.dart';
import 'business_process_stage.dart';

/// {@template pulumi_integrationspaces_business_process_args_doc}
/// The set of arguments for BusinessProcess.
/// {@endtemplate}
/// {@macro pulumi_integrationspaces_business_process_args_doc}
class BusinessProcessArgs {
  /// The name of the Application
  final pulumi.Input<String> applicationName;
  /// The business process mapping.
  final pulumi.Input<Map<String, BusinessProcessMappingItem>>? businessProcessMapping;
  /// The name of the business process
  final pulumi.Input<String>? businessProcessName;
  /// The business process stages.
  final pulumi.Input<Map<String, BusinessProcessStage>>? businessProcessStages;
  /// The description of the business process.
  final pulumi.Input<String>? description;
  /// The business process identifier.
  final pulumi.Input<BusinessProcessIdentifier>? identifier;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the space
  final pulumi.Input<String> spaceName;
  /// The table name of the business process.
  final pulumi.Input<String>? tableName;
  /// The tracking data store reference name.
  final pulumi.Input<String>? trackingDataStoreReferenceName;

  /// Creates a new [BusinessProcessArgs].
  /// [applicationName] The name of the Application
  /// [businessProcessMapping] The business process mapping.
  /// [businessProcessName] The name of the business process
  /// [businessProcessStages] The business process stages.
  /// [description] The description of the business process.
  /// [identifier] The business process identifier.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [spaceName] The name of the space
  /// [tableName] The table name of the business process.
  /// [trackingDataStoreReferenceName] The tracking data store reference name.
  BusinessProcessArgs({
    required String applicationName,
    Map<String, BusinessProcessMappingItem>? businessProcessMapping,
    String? businessProcessName,
    Map<String, BusinessProcessStage>? businessProcessStages,
    String? description,
    BusinessProcessIdentifier? identifier,
    required String resourceGroupName,
    required String spaceName,
    String? tableName,
    String? trackingDataStoreReferenceName,
  }) :
      applicationName = pulumi.Input.asInput<String>(applicationName),
      businessProcessMapping = pulumi.Input.asOptionalInput<Map<String, BusinessProcessMappingItem>>(businessProcessMapping),
      businessProcessName = pulumi.Input.asOptionalInput<String>(businessProcessName),
      businessProcessStages = pulumi.Input.asOptionalInput<Map<String, BusinessProcessStage>>(businessProcessStages),
      description = pulumi.Input.asOptionalInput<String>(description),
      identifier = pulumi.Input.asOptionalInput<BusinessProcessIdentifier>(identifier),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      spaceName = pulumi.Input.asInput<String>(spaceName),
      tableName = pulumi.Input.asOptionalInput<String>(tableName),
      trackingDataStoreReferenceName = pulumi.Input.asOptionalInput<String>(trackingDataStoreReferenceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'businessProcessMapping': ?pulumi.Input.mapOptionalInputValue<Map<String, BusinessProcessMappingItem>, Map<String, Map<String, dynamic>>>(businessProcessMapping, (value) => pulumi.Input.encodeMapValues<BusinessProcessMappingItem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'businessProcessName': ?businessProcessName,
      'businessProcessStages': ?pulumi.Input.mapOptionalInputValue<Map<String, BusinessProcessStage>, Map<String, Map<String, dynamic>>>(businessProcessStages, (value) => pulumi.Input.encodeMapValues<BusinessProcessStage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'identifier': ?pulumi.Input.mapOptionalInputValue<BusinessProcessIdentifier, Map<String, dynamic>>(identifier, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'spaceName': spaceName,
      'tableName': ?tableName,
      'trackingDataStoreReferenceName': ?trackingDataStoreReferenceName,
    };
  }

  factory BusinessProcessArgs.fromMap(Map<String, dynamic> map) {
    return BusinessProcessArgs(
      applicationName: map['applicationName'] as String,
      businessProcessMapping: map['businessProcessMapping'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessMappingItem>(map['businessProcessMapping'], (value) => BusinessProcessMappingItem.fromMap((value as Map).cast<String, dynamic>())),
      businessProcessName: map['businessProcessName'] == null ? null : map['businessProcessName'] as String,
      businessProcessStages: map['businessProcessStages'] == null ? null : pulumi.Input.decodeMapValues<BusinessProcessStage>(map['businessProcessStages'], (value) => BusinessProcessStage.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      identifier: map['identifier'] == null ? null : BusinessProcessIdentifier.fromMap((map['identifier'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      spaceName: map['spaceName'] as String,
      tableName: map['tableName'] == null ? null : map['tableName'] as String,
      trackingDataStoreReferenceName: map['trackingDataStoreReferenceName'] == null ? null : map['trackingDataStoreReferenceName'] as String,
    );
  }
}

