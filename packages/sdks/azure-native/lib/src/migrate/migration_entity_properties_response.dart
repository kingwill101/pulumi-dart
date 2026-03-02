// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_migration_specific_properties_response.dart';

/// Migration Entity Properties class.
class MigrationEntityPropertiesResponse {
  /// Assessed Entity ARM Id
  final pulumi.Input<String>? assessedEntityArmId;
  /// Associated Assessment Id
  final pulumi.Input<String>? associatedAssessmentId;
  /// inventory resource id
  final pulumi.Input<String> associatedInventoryResourceId;
  /// associated Migration Entity Group Id
  final pulumi.Input<List<String>>? associatedMigrationEntityGroupIds;
  /// associated Wave Id
  final pulumi.Input<String>? associatedWaveId;
  /// Execution Readiness of Migration Entity.
  final pulumi.Input<String> executionReadiness;
  /// Execution Stage of Migration Entity.
  final pulumi.Input<String> executionStage;
  /// Execution start date for Migration Entity.
  final pulumi.Input<String> executionStartDate;
  /// Execution Status of Migration Entity.
  final pulumi.Input<String> executionStatus;
  /// Display Name of the Workload.
  final pulumi.Input<String> inventoryDisplayName;
  /// Migration path
  final pulumi.Input<String>? migrationPath;
  /// Migration specific properties for the entity.
  final pulumi.Input<ServerMigrationSpecificPropertiesResponse>? migrationSpecificProperties;
  /// Strategy of Migration Entity.
  final pulumi.Input<String> migrationStrategy;
  /// Migration Tool of the Migration Entity.
  final pulumi.Input<String>? migrationTool;
  /// ARM Resource Identifier for the partner resource.
  final pulumi.Input<String>? partnerResourceArmId;
  /// The status of the last operation.
  final pulumi.Input<String> provisioningState;
  /// Target of the Migration Entity.
  final pulumi.Input<String>? target;
  /// target Azure Resource ARM Id.
  final pulumi.Input<String>? targetAzureResourceArmId;

  /// Creates a new [MigrationEntityPropertiesResponse].
  /// [assessedEntityArmId] Assessed Entity ARM Id
  /// [associatedAssessmentId] Associated Assessment Id
  /// [associatedInventoryResourceId] inventory resource id
  /// [associatedMigrationEntityGroupIds] associated Migration Entity Group Id
  /// [associatedWaveId] associated Wave Id
  /// [executionReadiness] Execution Readiness of Migration Entity.
  /// [executionStage] Execution Stage of Migration Entity.
  /// [executionStartDate] Execution start date for Migration Entity.
  /// [executionStatus] Execution Status of Migration Entity.
  /// [inventoryDisplayName] Display Name of the Workload.
  /// [migrationPath] Migration path
  /// [migrationSpecificProperties] Migration specific properties for the entity.
  /// [migrationStrategy] Strategy of Migration Entity.
  /// [migrationTool] Migration Tool of the Migration Entity.
  /// [partnerResourceArmId] ARM Resource Identifier for the partner resource.
  /// [provisioningState] The status of the last operation.
  /// [target] Target of the Migration Entity.
  /// [targetAzureResourceArmId] target Azure Resource ARM Id.
  MigrationEntityPropertiesResponse({
    this.assessedEntityArmId,
    this.associatedAssessmentId,
    required this.associatedInventoryResourceId,
    this.associatedMigrationEntityGroupIds,
    this.associatedWaveId,
    required this.executionReadiness,
    required this.executionStage,
    required this.executionStartDate,
    required this.executionStatus,
    required this.inventoryDisplayName,
    this.migrationPath,
    this.migrationSpecificProperties,
    required this.migrationStrategy,
    this.migrationTool,
    this.partnerResourceArmId,
    required this.provisioningState,
    this.target,
    this.targetAzureResourceArmId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessedEntityArmId': ?assessedEntityArmId,
      'associatedAssessmentId': ?associatedAssessmentId,
      'associatedInventoryResourceId': associatedInventoryResourceId,
      'associatedMigrationEntityGroupIds': ?associatedMigrationEntityGroupIds,
      'associatedWaveId': ?associatedWaveId,
      'executionReadiness': executionReadiness,
      'executionStage': executionStage,
      'executionStartDate': executionStartDate,
      'executionStatus': executionStatus,
      'inventoryDisplayName': inventoryDisplayName,
      'migrationPath': ?migrationPath,
      'migrationSpecificProperties': ?pulumi.Input.mapOptionalInputValue<ServerMigrationSpecificPropertiesResponse, Map<String, dynamic>>(migrationSpecificProperties, (value) => value.toMap()),
      'migrationStrategy': migrationStrategy,
      'migrationTool': ?migrationTool,
      'partnerResourceArmId': ?partnerResourceArmId,
      'provisioningState': provisioningState,
      'target': ?target,
      'targetAzureResourceArmId': ?targetAzureResourceArmId,
    };
  }

  factory MigrationEntityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MigrationEntityPropertiesResponse(
      assessedEntityArmId: map['assessedEntityArmId'] == null ? null : (map['assessedEntityArmId']! as String).input(),
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : (map['associatedAssessmentId']! as String).input(),
      associatedInventoryResourceId: (map['associatedInventoryResourceId'] as String).input(),
      associatedMigrationEntityGroupIds: map['associatedMigrationEntityGroupIds'] == null ? null : ((map['associatedMigrationEntityGroupIds']! as List).cast<String>()).input(),
      associatedWaveId: map['associatedWaveId'] == null ? null : (map['associatedWaveId']! as String).input(),
      executionReadiness: (map['executionReadiness'] as String).input(),
      executionStage: (map['executionStage'] as String).input(),
      executionStartDate: (map['executionStartDate'] as String).input(),
      executionStatus: (map['executionStatus'] as String).input(),
      inventoryDisplayName: (map['inventoryDisplayName'] as String).input(),
      migrationPath: map['migrationPath'] == null ? null : (map['migrationPath']! as String).input(),
      migrationSpecificProperties: map['migrationSpecificProperties'] == null ? null : (ServerMigrationSpecificPropertiesResponse.fromMap((map['migrationSpecificProperties']! as Map).cast<String, dynamic>())).input(),
      migrationStrategy: (map['migrationStrategy'] as String).input(),
      migrationTool: map['migrationTool'] == null ? null : (map['migrationTool']! as String).input(),
      partnerResourceArmId: map['partnerResourceArmId'] == null ? null : (map['partnerResourceArmId']! as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      target: map['target'] == null ? null : (map['target']! as String).input(),
      targetAzureResourceArmId: map['targetAzureResourceArmId'] == null ? null : (map['targetAzureResourceArmId']! as String).input(),
    );
  }
}

