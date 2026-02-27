// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../kx_cluster_database_cache_configuration/kx_cluster_database_cache_configuration.dart';

class KxClusterDatabase {
  /// Configuration details for the disk cache to increase performance reading from a KX database mounted to the cluster. See cache_configurations.
  final List<KxClusterDatabaseCacheConfiguration>? cacheConfigurations;

  /// A unique identifier of the changeset that is associated with the cluster.
  final String? changesetId;

  /// Name of the KX database.
  final String databaseName;

  /// The name of the dataview to be used for caching historical data on disk. You cannot update to a different dataview name once a cluster is created. Use `lifecycle` `ignore_changes` for database to prevent any undesirable behaviors.
  final String? dataviewName;

  KxClusterDatabase({
    this.cacheConfigurations,
    this.changesetId,
    required this.databaseName,
    this.dataviewName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cacheConfigurationsValue = cacheConfigurations;
    if (cacheConfigurationsValue != null) {
      map['cacheConfigurations'] = Input.encodeList<
              KxClusterDatabaseCacheConfiguration, Map<String, dynamic>>(
          cacheConfigurationsValue, (value) => value.toMap());
    }
    final changesetIdValue = changesetId;
    if (changesetIdValue != null) {
      map['changesetId'] = changesetIdValue;
    }
    map['databaseName'] = databaseName;
    final dataviewNameValue = dataviewName;
    if (dataviewNameValue != null) {
      map['dataviewName'] = dataviewNameValue;
    }
    return map;
  }

  factory KxClusterDatabase.fromMap(Map<String, dynamic> map) {
    return KxClusterDatabase(
      cacheConfigurations: map['cacheConfigurations'] == null
          ? null
          : Input.decodeList<KxClusterDatabaseCacheConfiguration>(
              map['cacheConfigurations'],
              (value) => KxClusterDatabaseCacheConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      changesetId:
          map['changesetId'] == null ? null : map['changesetId'] as String,
      databaseName: map['databaseName'] as String,
      dataviewName:
          map['dataviewName'] == null ? null : map['dataviewName'] as String,
    );
  }
}
