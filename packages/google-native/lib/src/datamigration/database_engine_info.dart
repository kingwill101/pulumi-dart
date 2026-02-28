// ignore_for_file: unused_element, unnecessary_cast

import 'database_engine_info_engine.dart';

/// The type and version of a source or destination database.
class DatabaseEngineInfo {
  /// Engine type.
  final DatabaseEngineInfoEngine engine;

  /// Engine version, for example "12.c.1".
  final String version;

  /// Creates a new [DatabaseEngineInfo].
  /// [engine] Engine type.
  /// [version] Engine version, for example "12.c.1".
  DatabaseEngineInfo({
    required this.engine,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine.value;
    map['version'] = version;
    return map;
  }

  factory DatabaseEngineInfo.fromMap(Map<String, dynamic> map) {
    return DatabaseEngineInfo(
      engine: DatabaseEngineInfoEngine.fromValue(map['engine'] as String),
      version: map['version'] as String,
    );
  }
}
