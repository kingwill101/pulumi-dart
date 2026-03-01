// ignore_for_file: unused_element, unnecessary_cast

/// A message defining the database engine and provider.
class DatabaseTypeResponse {
  /// The database engine.
  final String engine;

  /// The database provider.
  final String provider;

  /// Creates a new [DatabaseTypeResponse].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseTypeResponse({required this.engine, required this.provider});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engine': engine, 'provider': provider};
  }

  factory DatabaseTypeResponse.fromMap(Map<String, dynamic> map) {
    return DatabaseTypeResponse(
      engine: map['engine'] as String,
      provider: map['provider'] as String,
    );
  }
}
