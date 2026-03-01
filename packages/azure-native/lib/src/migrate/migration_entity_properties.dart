// ignore_for_file: unused_element, unnecessary_cast

import 'server_migration_specific_properties.dart';

/// Migration Entity Properties class.
class MigrationEntityProperties {
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
  /// Display Name of the Workload.
  final String inventoryDisplayName;
  /// Migration path
  final String? migrationPath;
  /// Migration specific properties for the entity.
  final ServerMigrationSpecificProperties? migrationSpecificProperties;
  /// Migration Tool of the Migration Entity.
  final String? migrationTool;
  /// ARM Resource Identifier for the partner resource.
  final String? partnerResourceArmId;
  /// Target of the Migration Entity.
  final String? target;
  /// target Azure Resource ARM Id.
  final String? targetAzureResourceArmId;

  /// Creates a new [MigrationEntityProperties].
  /// [assessedEntityArmId] Assessed Entity ARM Id
  /// [associatedAssessmentId] Associated Assessment Id
  /// [associatedInventoryResourceId] inventory resource id
  /// [associatedMigrationEntityGroupIds] associated Migration Entity Group Id
  /// [associatedWaveId] associated Wave Id
  /// [inventoryDisplayName] Display Name of the Workload.
  /// [migrationPath] Migration path
  /// [migrationSpecificProperties] Migration specific properties for the entity.
  /// [migrationTool] Migration Tool of the Migration Entity.
  /// [partnerResourceArmId] ARM Resource Identifier for the partner resource.
  /// [target] Target of the Migration Entity.
  /// [targetAzureResourceArmId] target Azure Resource ARM Id.
  MigrationEntityProperties({
    this.assessedEntityArmId,
    this.associatedAssessmentId,
    required this.associatedInventoryResourceId,
    this.associatedMigrationEntityGroupIds,
    this.associatedWaveId,
    required this.inventoryDisplayName,
    this.migrationPath,
    this.migrationSpecificProperties,
    this.migrationTool,
    this.partnerResourceArmId,
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
      'inventoryDisplayName': inventoryDisplayName,
      'migrationPath': ?migrationPath,
      'migrationSpecificProperties': ?migrationSpecificProperties == null ? null : migrationSpecificProperties!.toMap(),
      'migrationTool': ?migrationTool,
      'partnerResourceArmId': ?partnerResourceArmId,
      'target': ?target,
      'targetAzureResourceArmId': ?targetAzureResourceArmId,
    };
  }

  factory MigrationEntityProperties.fromMap(Map<String, dynamic> map) {
    return MigrationEntityProperties(
      assessedEntityArmId: map['assessedEntityArmId'] == null ? null : map['assessedEntityArmId'] as String,
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : map['associatedAssessmentId'] as String,
      associatedInventoryResourceId: map['associatedInventoryResourceId'] as String,
      associatedMigrationEntityGroupIds: map['associatedMigrationEntityGroupIds'] == null ? null : (map['associatedMigrationEntityGroupIds'] as List).cast<String>(),
      associatedWaveId: map['associatedWaveId'] == null ? null : map['associatedWaveId'] as String,
      inventoryDisplayName: map['inventoryDisplayName'] as String,
      migrationPath: map['migrationPath'] == null ? null : map['migrationPath'] as String,
      migrationSpecificProperties: map['migrationSpecificProperties'] == null ? null : ServerMigrationSpecificProperties.fromMap((map['migrationSpecificProperties'] as Map).cast<String, dynamic>()),
      migrationTool: map['migrationTool'] == null ? null : map['migrationTool'] as String,
      partnerResourceArmId: map['partnerResourceArmId'] == null ? null : map['partnerResourceArmId'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      targetAzureResourceArmId: map['targetAzureResourceArmId'] == null ? null : map['targetAzureResourceArmId'] as String,
    );
  }
}

