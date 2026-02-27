// ignore_for_file: unused_element, unnecessary_cast

/// A message defining the database engine and provider.
class DatabaseTypeResponseDatamigrationV1beta1 {
  /// The database engine.
  final String engine;

  /// The database provider.
  final String provider;

  DatabaseTypeResponseDatamigrationV1beta1({
    required this.engine,
    required this.provider,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['engine'] = engine;
    map['provider'] = provider;
    return map;
  }

  factory DatabaseTypeResponseDatamigrationV1beta1.fromMap(
      Map<String, dynamic> map) {
    return DatabaseTypeResponseDatamigrationV1beta1(
      engine: map['engine'] as String,
      provider: map['provider'] as String,
    );
  }
}
