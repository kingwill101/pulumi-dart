// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MigrationConfiguration properties.
class MigrationConfiguration {
  /// Gets or sets the key vault resource Id.
  final pulumi.Input<String>? keyVaultResourceId;
  /// Gets or sets the migration solution resource Id.
  final pulumi.Input<String>? migrationSolutionResourceId;
  /// Gets or sets the storage account resource Id.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [MigrationConfiguration].
  /// [keyVaultResourceId] Gets or sets the key vault resource Id.
  /// [migrationSolutionResourceId] Gets or sets the migration solution resource Id.
  /// [storageAccountResourceId] Gets or sets the storage account resource Id.
  MigrationConfiguration({
    this.keyVaultResourceId,
    this.migrationSolutionResourceId,
    this.storageAccountResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultResourceId': ?keyVaultResourceId,
      'migrationSolutionResourceId': ?migrationSolutionResourceId,
      'storageAccountResourceId': ?storageAccountResourceId,
    };
  }

  factory MigrationConfiguration.fromMap(Map<String, dynamic> map) {
    return MigrationConfiguration(
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : (map['keyVaultResourceId']! as String).input(),
      migrationSolutionResourceId: map['migrationSolutionResourceId'] == null ? null : (map['migrationSolutionResourceId']! as String).input(),
      storageAccountResourceId: map['storageAccountResourceId'] == null ? null : (map['storageAccountResourceId']! as String).input(),
    );
  }
}

