// ignore_for_file: unused_element, unnecessary_cast

import 'administrator_properties.dart';
import 'compute_properties.dart';
import 'high_availability_properties.dart';
import 'mongo_cluster_replica_parameters.dart';
import 'mongo_cluster_restore_parameters.dart';
import 'sharding_properties.dart';
import 'storage_properties.dart';

/// The properties of a mongo cluster.
class MongoClusterProperties {
  /// The local administrator properties for the mongo cluster.
  final AdministratorProperties? administrator;
  /// The compute properties of the mongo cluster.
  final ComputeProperties? compute;
  /// The mode to create a mongo cluster.
  final String? createMode;
  /// The high availability properties of the mongo cluster.
  final HighAvailabilityProperties? highAvailability;
  /// List of private endpoint connections.
  final List<String>? previewFeatures;
  /// Whether or not public endpoint access is allowed for this mongo cluster.
  final String? publicNetworkAccess;
  /// The parameters to create a replica mongo cluster.
  final MongoClusterReplicaParameters? replicaParameters;
  /// The parameters to create a point-in-time restore mongo cluster.
  final MongoClusterRestoreParameters? restoreParameters;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final String? serverVersion;
  /// The sharding properties of the mongo cluster.
  final ShardingProperties? sharding;
  /// The storage properties of the mongo cluster.
  final StorageProperties? storage;

  /// Creates a new [MongoClusterProperties].
  /// [administrator] The local administrator properties for the mongo cluster.
  /// [compute] The compute properties of the mongo cluster.
  /// [createMode] The mode to create a mongo cluster.
  /// [highAvailability] The high availability properties of the mongo cluster.
  /// [previewFeatures] List of private endpoint connections.
  /// [publicNetworkAccess] Whether or not public endpoint access is allowed for this mongo cluster.
  /// [replicaParameters] The parameters to create a replica mongo cluster.
  /// [restoreParameters] The parameters to create a point-in-time restore mongo cluster.
  /// [serverVersion] The Mongo DB server version. Defaults to the latest available version if not specified.
  /// [sharding] The sharding properties of the mongo cluster.
  /// [storage] The storage properties of the mongo cluster.
  MongoClusterProperties({
    this.administrator,
    this.compute,
    this.createMode,
    this.highAvailability,
    this.previewFeatures,
    this.publicNetworkAccess,
    this.replicaParameters,
    this.restoreParameters,
    this.serverVersion,
    this.sharding,
    this.storage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrator': ?administrator == null ? null : administrator!.toMap(),
      'compute': ?compute == null ? null : compute!.toMap(),
      'createMode': ?createMode,
      'highAvailability': ?highAvailability == null ? null : highAvailability!.toMap(),
      'previewFeatures': ?previewFeatures,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaParameters': ?replicaParameters == null ? null : replicaParameters!.toMap(),
      'restoreParameters': ?restoreParameters == null ? null : restoreParameters!.toMap(),
      'serverVersion': ?serverVersion,
      'sharding': ?sharding == null ? null : sharding!.toMap(),
      'storage': ?storage == null ? null : storage!.toMap(),
    };
  }

  factory MongoClusterProperties.fromMap(Map<String, dynamic> map) {
    return MongoClusterProperties(
      administrator: map['administrator'] == null ? null : AdministratorProperties.fromMap((map['administrator'] as Map).cast<String, dynamic>()),
      compute: map['compute'] == null ? null : ComputeProperties.fromMap((map['compute'] as Map).cast<String, dynamic>()),
      createMode: map['createMode'] == null ? null : map['createMode'] as String,
      highAvailability: map['highAvailability'] == null ? null : HighAvailabilityProperties.fromMap((map['highAvailability'] as Map).cast<String, dynamic>()),
      previewFeatures: map['previewFeatures'] == null ? null : (map['previewFeatures'] as List).cast<String>(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : map['publicNetworkAccess'] as String,
      replicaParameters: map['replicaParameters'] == null ? null : MongoClusterReplicaParameters.fromMap((map['replicaParameters'] as Map).cast<String, dynamic>()),
      restoreParameters: map['restoreParameters'] == null ? null : MongoClusterRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>()),
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      sharding: map['sharding'] == null ? null : ShardingProperties.fromMap((map['sharding'] as Map).cast<String, dynamic>()),
      storage: map['storage'] == null ? null : StorageProperties.fromMap((map['storage'] as Map).cast<String, dynamic>()),
    );
  }
}

