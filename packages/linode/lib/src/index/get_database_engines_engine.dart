// ignore_for_file: unused_element, unnecessary_cast


class GetDatabaseEnginesEngine {
  /// The Managed Database engine type.
  final String engine;
  /// The Managed Database engine ID in engine/version format.
  final String id;
  /// The Managed Database engine version.
  final String version;

  /// Creates a new [GetDatabaseEnginesEngine].
  /// [engine] The Managed Database engine type.
  /// [id] The Managed Database engine ID in engine/version format.
  /// [version] The Managed Database engine version.
  GetDatabaseEnginesEngine({
    required this.engine,
    required this.id,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'engine': engine,
      'id': id,
      'version': version,
    };
  }

  factory GetDatabaseEnginesEngine.fromMap(Map<String, dynamic> map) {
    return GetDatabaseEnginesEngine(
      engine: map['engine'] as String,
      id: map['id'] as String,
      version: map['version'] as String,
    );
  }
}

