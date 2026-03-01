// ignore_for_file: unused_element, unnecessary_cast

/// A message defining the database engine and provider.
class DatabaseTypeResponseDatamigrationV1beta1 {
  /// The database engine.
  final String engine;

  /// The database provider.
  final String provider;

  /// Creates a new [DatabaseTypeResponseDatamigrationV1beta1].
  /// [engine] The database engine.
  /// [provider] The database provider.
  DatabaseTypeResponseDatamigrationV1beta1({
    required this.engine,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'engine': engine, 'provider': provider};
  }

  factory DatabaseTypeResponseDatamigrationV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseTypeResponseDatamigrationV1beta1(
      engine: map['engine'] as String,
      provider: map['provider'] as String,
    );
  }
}
