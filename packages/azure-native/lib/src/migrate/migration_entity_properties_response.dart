// ignore_for_file: unused_element, unnecessary_cast

import 'server_migration_specific_properties_response.dart';

/// Migration Entity Properties class.
class MigrationEntityPropertiesResponse {
  /// Assessed Entity ARM Id
  final String? assessedEntityArmId;
  /// Associated Assessment Id
  final String? associatedAssessmentId;
  /// inventory resource id
  final String associatedInventoryResourceId;
  /// associated Migration Entity Group Id
  final List<String>? associatedMigrationEntityGroupIds;
  /// associated Wave Id
  final String? associatedWaveId;
  /// Execution Readiness of Migration Entity.
  final String executionReadiness;
  /// Execution Stage of Migration Entity.
  final String executionStage;
  /// Execution start date for Migration Entity.
  final String executionStartDate;
  /// Execution Status of Migration Entity.
  final String executionStatus;
  /// Display Name of the Workload.
  final String inventoryDisplayName;
  /// Migration path
  final String? migrationPath;
  /// Migration specific properties for the entity.
  final ServerMigrationSpecificPropertiesResponse? migrationSpecificProperties;
  /// Strategy of Migration Entity.
  final String migrationStrategy;
  /// Migration Tool of the Migration Entity.
  final String? migrationTool;
  /// ARM Resource Identifier for the partner resource.
  final String? partnerResourceArmId;
  /// The status of the last operation.
  final String provisioningState;
  /// Target of the Migration Entity.
  final String? target;
  /// target Azure Resource ARM Id.
  final String? targetAzureResourceArmId;

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
      'migrationSpecificProperties': ?migrationSpecificProperties == null ? null : migrationSpecificProperties!.toMap(),
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
      assessedEntityArmId: map['assessedEntityArmId'] == null ? null : map['assessedEntityArmId'] as String,
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : map['associatedAssessmentId'] as String,
      associatedInventoryResourceId: map['associatedInventoryResourceId'] as String,
      associatedMigrationEntityGroupIds: map['associatedMigrationEntityGroupIds'] == null ? null : (map['associatedMigrationEntityGroupIds'] as List).cast<String>(),
      associatedWaveId: map['associatedWaveId'] == null ? null : map['associatedWaveId'] as String,
      executionReadiness: map['executionReadiness'] as String,
      executionStage: map['executionStage'] as String,
      executionStartDate: map['executionStartDate'] as String,
      executionStatus: map['executionStatus'] as String,
      inventoryDisplayName: map['inventoryDisplayName'] as String,
      migrationPath: map['migrationPath'] == null ? null : map['migrationPath'] as String,
      migrationSpecificProperties: map['migrationSpecificProperties'] == null ? null : ServerMigrationSpecificPropertiesResponse.fromMap((map['migrationSpecificProperties'] as Map).cast<String, dynamic>()),
      migrationStrategy: map['migrationStrategy'] as String,
      migrationTool: map['migrationTool'] == null ? null : map['migrationTool'] as String,
      partnerResourceArmId: map['partnerResourceArmId'] == null ? null : map['partnerResourceArmId'] as String,
      provisioningState: map['provisioningState'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      targetAzureResourceArmId: map['targetAzureResourceArmId'] == null ? null : map['targetAzureResourceArmId'] as String,
    );
  }
}

