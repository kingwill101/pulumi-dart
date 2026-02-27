// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_engine_datamigration_v1beta1.dart';
import 'database_type_provider_datamigration_v1beta1.dart';

/// A message defining the database engine and provider.
class DatabaseTypeDatamigrationV1beta1 {
  /// The database engine.
  final DatabaseTypeEngineDatamigrationV1beta1? engine;

  /// The database provider.
  final DatabaseTypeProviderDatamigrationV1beta1? provider;

  DatabaseTypeDatamigrationV1beta1({
    this.engine,
    this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final engineValue = engine;
    if (engineValue != null) {
      map['engine'] = engineValue.value;
    }
    final providerValue = provider;
    if (providerValue != null) {
      map['provider'] = providerValue.value;
    }
    return map;
  }

  factory DatabaseTypeDatamigrationV1beta1.fromMap(Map<String, dynamic> map) {
    return DatabaseTypeDatamigrationV1beta1(
      engine: map['engine'] == null
          ? null
          : DatabaseTypeEngineDatamigrationV1beta1.fromValue(
              map['engine'] as String),
      provider: map['provider'] == null
          ? null
          : DatabaseTypeProviderDatamigrationV1beta1.fromValue(
              map['provider'] as String),
    );
  }
}
