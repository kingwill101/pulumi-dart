// ignore_for_file: unused_element, unnecessary_cast

import 'database_type_engine.dart';
import 'database_type_provider.dart';

/// A message defining the database engine and provider.
class DatabaseType {
  /// The database engine.
  final DatabaseTypeEngine? engine;

  /// The database provider.
  final DatabaseTypeProvider? provider;

  /// Creates a new [DatabaseType].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseType({
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

  factory DatabaseType.fromMap(Map<String, dynamic> map) {
    return DatabaseType(
      engine: map['engine'] == null
          ? null
          : DatabaseTypeEngine.fromValue(map['engine'] as String),
      provider: map['provider'] == null
          ? null
          : DatabaseTypeProvider.fromValue(map['provider'] as String),
    );
  }
}
