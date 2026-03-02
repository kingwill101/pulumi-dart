// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KxClusterDatabaseCacheConfiguration {
  /// Type of disk cache.
  final pulumi.Input<String> cacheType;
  /// Paths within the database to cache.
  final pulumi.Input<List<String>>? dbPaths;

  /// Creates a new [KxClusterDatabaseCacheConfiguration].
  /// [cacheType] Type of disk cache.
  /// [dbPaths] Paths within the database to cache.
  KxClusterDatabaseCacheConfiguration({
    required this.cacheType,
    this.dbPaths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheType': cacheType,
      'dbPaths': ?dbPaths,
    };
  }

  factory KxClusterDatabaseCacheConfiguration.fromMap(Map<String, dynamic> map) {
    return KxClusterDatabaseCacheConfiguration(
      cacheType: (map['cacheType'] as String).input(),
      dbPaths: map['dbPaths'] == null ? null : ((map['dbPaths'] as List).cast<String>()).input(),
    );
  }
}

