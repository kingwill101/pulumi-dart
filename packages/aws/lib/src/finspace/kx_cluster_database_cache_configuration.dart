// ignore_for_file: unused_element, unnecessary_cast

class KxClusterDatabaseCacheConfiguration {
  /// Type of disk cache.
  final String cacheType;

  /// Paths within the database to cache.
  final List<String>? dbPaths;

  /// Creates a new [KxClusterDatabaseCacheConfiguration].
  /// [cacheType] Type of disk cache.
  /// [dbPaths] Paths within the database to cache.
  KxClusterDatabaseCacheConfiguration({
    required this.cacheType,
    this.dbPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cacheType'] = cacheType;
    final dbPathsValue = dbPaths;
    if (dbPathsValue != null) {
      map['dbPaths'] = dbPathsValue;
    }
    return map;
  }

  factory KxClusterDatabaseCacheConfiguration.fromMap(
      Map<String, dynamic> map) {
    return KxClusterDatabaseCacheConfiguration(
      cacheType: map['cacheType'] as String,
      dbPaths: map['dbPaths'] == null
          ? null
          : (map['dbPaths'] as List).cast<String>(),
    );
  }
}
