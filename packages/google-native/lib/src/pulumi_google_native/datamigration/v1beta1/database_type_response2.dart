// ignore_for_file: unused_element, unnecessary_cast

/// A message defining the database engine and provider.
class DatabaseTypeResponse2 {
  /// The database engine.
  final String engine;

  /// The database provider.
  final String provider;

  DatabaseTypeResponse2({
    required this.engine,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    map['provider'] = provider;
    return map;
  }

  factory DatabaseTypeResponse2.fromMap(Map<String, dynamic> map) {
    return DatabaseTypeResponse2(
      engine: map['engine'] as String,
      provider: map['provider'] as String,
    );
  }
}
