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
  const KxClusterDatabaseCacheConfiguration({
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
      cacheType: pulumi.Input.fromValue(map['cacheType'] as String),
      dbPaths: (() { final guardedValue = map['dbPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
