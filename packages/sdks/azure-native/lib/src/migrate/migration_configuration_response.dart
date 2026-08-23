// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// MigrationConfiguration properties.
class MigrationConfigurationResponse {
  /// Gets or sets the key vault resource Id.
  final pulumi.Input<String>? keyVaultResourceId;
  /// Gets or sets the migration solution resource Id.
  final pulumi.Input<String>? migrationSolutionResourceId;
  /// Gets or sets the storage account resource Id.
  final pulumi.Input<String>? storageAccountResourceId;

  /// Creates a new [MigrationConfigurationResponse].
  /// [keyVaultResourceId] Gets or sets the key vault resource Id.
  /// [migrationSolutionResourceId] Gets or sets the migration solution resource Id.
  /// [storageAccountResourceId] Gets or sets the storage account resource Id.
  const MigrationConfigurationResponse({
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

  factory MigrationConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return MigrationConfigurationResponse(
      keyVaultResourceId: (() { final guardedValue = map['keyVaultResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      migrationSolutionResourceId: (() { final guardedValue = map['migrationSolutionResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountResourceId: (() { final guardedValue = map['storageAccountResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
