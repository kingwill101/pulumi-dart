// ignore_for_file: unused_element, unnecessary_cast

import 'migration_configuration.dart';

/// ModernizeProject properties.
class ModernizeProjectModelProperties {
  /// MigrationConfiguration properties.
  final MigrationConfiguration? migrationConfiguration;

  /// Creates a new [ModernizeProjectModelProperties].
  /// [migrationConfiguration] MigrationConfiguration properties.
  ModernizeProjectModelProperties({
    this.migrationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationConfiguration': ?migrationConfiguration == null ? null : migrationConfiguration!.toMap(),
    };
  }

  factory ModernizeProjectModelProperties.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectModelProperties(
      migrationConfiguration: map['migrationConfiguration'] == null ? null : MigrationConfiguration.fromMap((map['migrationConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

