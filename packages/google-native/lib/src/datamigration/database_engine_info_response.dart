// ignore_for_file: unused_element, unnecessary_cast

/// The type and version of a source or destination database.
class DatabaseEngineInfoResponse {
  /// Engine type.
  final String engine;

  /// Engine version, for example "12.c.1".
  final String version;

  /// Creates a new [DatabaseEngineInfoResponse].
  /// [engine] Engine type.
  /// [version] Engine version, for example "12.c.1".
  DatabaseEngineInfoResponse({
    required this.engine,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    map['version'] = version;
    return map;
  }

  factory DatabaseEngineInfoResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseEngineInfoResponse(
      engine: map['engine'] as String,
      version: map['version'] as String,
    );
  }
}
