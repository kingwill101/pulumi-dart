// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_cluster_database_cache_configuration.dart';

class KxClusterDatabase {
  /// Configuration details for the disk cache to increase performance reading from a KX database mounted to the cluster. See cache_configurations.
  final pulumi.Input<List<KxClusterDatabaseCacheConfiguration>>? cacheConfigurations;
  /// A unique identifier of the changeset that is associated with the cluster.
  final pulumi.Input<String>? changesetId;
  /// Name of the KX database.
  final pulumi.Input<String> databaseName;
  /// The name of the dataview to be used for caching historical data on disk. You cannot update to a different dataview name once a cluster is created. Use `lifecycle` `ignore_changes` for database to prevent any undesirable behaviors.
  final pulumi.Input<String>? dataviewName;

  /// Creates a new [KxClusterDatabase].
  /// [cacheConfigurations] Configuration details for the disk cache to increase performance reading from a KX database mounted to the cluster. See cache_configurations.
  /// [changesetId] A unique identifier of the changeset that is associated with the cluster.
  /// [databaseName] Name of the KX database.
  /// [dataviewName] The name of the dataview to be used for caching historical data on disk. You cannot update to a different dataview name once a cluster is created. Use `lifecycle` `ignore_changes` for database to prevent any undesirable behaviors.
  KxClusterDatabase({
    this.cacheConfigurations,
    this.changesetId,
    required this.databaseName,
    this.dataviewName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cacheConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KxClusterDatabaseCacheConfiguration>, List<Map<String, dynamic>>>(cacheConfigurations, (value) => pulumi.Input.encodeList<KxClusterDatabaseCacheConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'changesetId': ?changesetId,
      'databaseName': databaseName,
      'dataviewName': ?dataviewName,
    };
  }

  factory KxClusterDatabase.fromMap(Map<String, dynamic> map) {
    return KxClusterDatabase(
      cacheConfigurations: map['cacheConfigurations'] == null ? null : (pulumi.Input.decodeList<KxClusterDatabaseCacheConfiguration>(map['cacheConfigurations'], (value) => KxClusterDatabaseCacheConfiguration.fromMap((value as Map).cast<String, dynamic>()))).input(),
      changesetId: map['changesetId'] == null ? null : (map['changesetId'] as String).input(),
      databaseName: (map['databaseName'] as String).input(),
      dataviewName: map['dataviewName'] == null ? null : (map['dataviewName'] as String).input(),
    );
  }
}

