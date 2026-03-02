// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_migration_specific_properties.dart';

/// Migration Entity Properties class.
class MigrationEntityProperties {
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
  /// Display Name of the Workload.
  final pulumi.Input<String> inventoryDisplayName;
  /// Migration path
  final pulumi.Input<String>? migrationPath;
  /// Migration specific properties for the entity.
  final pulumi.Input<ServerMigrationSpecificProperties>? migrationSpecificProperties;
  /// Migration Tool of the Migration Entity.
  final pulumi.Input<String>? migrationTool;
  /// ARM Resource Identifier for the partner resource.
  final pulumi.Input<String>? partnerResourceArmId;
  /// Target of the Migration Entity.
  final pulumi.Input<String>? target;
  /// target Azure Resource ARM Id.
  final pulumi.Input<String>? targetAzureResourceArmId;

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
      'migrationSpecificProperties': ?pulumi.Input.mapOptionalInputValue<ServerMigrationSpecificProperties, Map<String, dynamic>>(migrationSpecificProperties, (value) => value.toMap()),
      'migrationTool': ?migrationTool,
      'partnerResourceArmId': ?partnerResourceArmId,
      'target': ?target,
      'targetAzureResourceArmId': ?targetAzureResourceArmId,
    };
  }

  factory MigrationEntityProperties.fromMap(Map<String, dynamic> map) {
    return MigrationEntityProperties(
      assessedEntityArmId: map['assessedEntityArmId'] == null ? null : (map['assessedEntityArmId'] as String).input(),
      associatedAssessmentId: map['associatedAssessmentId'] == null ? null : (map['associatedAssessmentId'] as String).input(),
      associatedInventoryResourceId: (map['associatedInventoryResourceId'] as String).input(),
      associatedMigrationEntityGroupIds: map['associatedMigrationEntityGroupIds'] == null ? null : ((map['associatedMigrationEntityGroupIds'] as List).cast<String>()).input(),
      associatedWaveId: map['associatedWaveId'] == null ? null : (map['associatedWaveId'] as String).input(),
      inventoryDisplayName: (map['inventoryDisplayName'] as String).input(),
      migrationPath: map['migrationPath'] == null ? null : (map['migrationPath'] as String).input(),
      migrationSpecificProperties: map['migrationSpecificProperties'] == null ? null : (ServerMigrationSpecificProperties.fromMap((map['migrationSpecificProperties'] as Map).cast<String, dynamic>())).input(),
      migrationTool: map['migrationTool'] == null ? null : (map['migrationTool'] as String).input(),
      partnerResourceArmId: map['partnerResourceArmId'] == null ? null : (map['partnerResourceArmId'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      targetAzureResourceArmId: map['targetAzureResourceArmId'] == null ? null : (map['targetAzureResourceArmId'] as String).input(),
    );
  }
}

