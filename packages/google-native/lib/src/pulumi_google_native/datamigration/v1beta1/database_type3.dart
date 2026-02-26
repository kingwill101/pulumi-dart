// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_engine2.dart';
import 'database_type_provider2.dart';

/// A message defining the database engine and provider.
class DatabaseType3 {
  /// The database engine.
  final DatabaseTypeEngine2? engine;

  /// The database provider.
  final DatabaseTypeProvider2? provider;

  DatabaseType3({
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

  factory DatabaseType3.fromMap(Map<String, dynamic> map) {
    return DatabaseType3(
      engine: map['engine'] == null
          ? null
          : DatabaseTypeEngine2.fromValue(map['engine'] as String),
      provider: map['provider'] == null
          ? null
          : DatabaseTypeProvider2.fromValue(map['provider'] as String),
    );
  }
}
