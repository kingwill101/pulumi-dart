// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_engine.dart';
import 'database_type_provider.dart';

/// A message defining the database engine and provider.
class DatabaseTypeDatamigrationV1 {
  /// The database engine.
  final DatabaseTypeEngine? engine;

  /// The database provider.
  final DatabaseTypeProvider? provider;

  DatabaseTypeDatamigrationV1({
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

  factory DatabaseTypeDatamigrationV1.fromMap(Map<String, dynamic> map) {
    return DatabaseTypeDatamigrationV1(
      engine: map['engine'] == null
          ? null
          : DatabaseTypeEngine.fromValue(map['engine'] as String),
      provider: map['provider'] == null
          ? null
          : DatabaseTypeProvider.fromValue(map['provider'] as String),
    );
  }
}
