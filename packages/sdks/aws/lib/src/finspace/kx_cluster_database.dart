// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kx_cluster_database_cache_configuration.dart';

class KxClusterDatabase {
  /// Configuration details for the disk cache to increase performance reading from a KX database mounted to the cluster. See `cacheConfigurations` Block.
  final pulumi.Input<List<KxClusterDatabaseCacheConfiguration>>? cacheConfigurations;
  /// Unique identifier of the changeset that is associated with the cluster.
  final pulumi.Input<String>? changesetId;
  /// Name of the KX database.
  final pulumi.Input<String> databaseName;
  /// Name of the dataview to be used for caching historical data on disk. You cannot update to a different dataview name once a cluster is created. Use `lifecycle` `ignoreChanges` for database to prevent any undesirable behaviors.
  final pulumi.Input<String>? dataviewName;

  /// Creates a new [KxClusterDatabase].
  /// [cacheConfigurations] Configuration details for the disk cache to increase performance reading from a KX database mounted to the cluster. See `cacheConfigurations` Block.
  /// [changesetId] Unique identifier of the changeset that is associated with the cluster.
  /// [databaseName] Name of the KX database.
  /// [dataviewName] Name of the dataview to be used for caching historical data on disk. You cannot update to a different dataview name once a cluster is created. Use `lifecycle` `ignoreChanges` for database to prevent any undesirable behaviors.
  const KxClusterDatabase({
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
      cacheConfigurations: (() { final guardedValue = map['cacheConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<KxClusterDatabaseCacheConfiguration>(guardedValue, (value) => KxClusterDatabaseCacheConfiguration.fromMap((value as Map).cast<String, dynamic>()))); })(),
      changesetId: (() { final guardedValue = map['changesetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      dataviewName: (() { final guardedValue = map['dataviewName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
