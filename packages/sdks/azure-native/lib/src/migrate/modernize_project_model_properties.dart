// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'migration_configuration.dart';

/// ModernizeProject properties.
class ModernizeProjectModelProperties {
  /// MigrationConfiguration properties.
  final pulumi.Input<MigrationConfiguration>? migrationConfiguration;

  /// Creates a new [ModernizeProjectModelProperties].
  /// [migrationConfiguration] MigrationConfiguration properties.
  ModernizeProjectModelProperties({
    this.migrationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'migrationConfiguration': ?pulumi.Input.mapOptionalInputValue<MigrationConfiguration, Map<String, dynamic>>(migrationConfiguration, (value) => value.toMap()),
    };
  }

  factory ModernizeProjectModelProperties.fromMap(Map<String, dynamic> map) {
    return ModernizeProjectModelProperties(
      migrationConfiguration: (() { final guardedValue = map['migrationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MigrationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

