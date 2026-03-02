// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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
  final pulumi.Input<AdministratorProperties>? administrator;
  /// The compute properties of the mongo cluster.
  final pulumi.Input<ComputeProperties>? compute;
  /// The mode to create a mongo cluster.
  final pulumi.Input<String>? createMode;
  /// The high availability properties of the mongo cluster.
  final pulumi.Input<HighAvailabilityProperties>? highAvailability;
  /// List of private endpoint connections.
  final pulumi.Input<List<String>>? previewFeatures;
  /// Whether or not public endpoint access is allowed for this mongo cluster.
  final pulumi.Input<String>? publicNetworkAccess;
  /// The parameters to create a replica mongo cluster.
  final pulumi.Input<MongoClusterReplicaParameters>? replicaParameters;
  /// The parameters to create a point-in-time restore mongo cluster.
  final pulumi.Input<MongoClusterRestoreParameters>? restoreParameters;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final pulumi.Input<String>? serverVersion;
  /// The sharding properties of the mongo cluster.
  final pulumi.Input<ShardingProperties>? sharding;
  /// The storage properties of the mongo cluster.
  final pulumi.Input<StorageProperties>? storage;

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
      'administrator': ?pulumi.Input.mapOptionalInputValue<AdministratorProperties, Map<String, dynamic>>(administrator, (value) => value.toMap()),
      'compute': ?pulumi.Input.mapOptionalInputValue<ComputeProperties, Map<String, dynamic>>(compute, (value) => value.toMap()),
      'createMode': ?createMode,
      'highAvailability': ?pulumi.Input.mapOptionalInputValue<HighAvailabilityProperties, Map<String, dynamic>>(highAvailability, (value) => value.toMap()),
      'previewFeatures': ?previewFeatures,
      'publicNetworkAccess': ?publicNetworkAccess,
      'replicaParameters': ?pulumi.Input.mapOptionalInputValue<MongoClusterReplicaParameters, Map<String, dynamic>>(replicaParameters, (value) => value.toMap()),
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<MongoClusterRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'sharding': ?pulumi.Input.mapOptionalInputValue<ShardingProperties, Map<String, dynamic>>(sharding, (value) => value.toMap()),
      'storage': ?pulumi.Input.mapOptionalInputValue<StorageProperties, Map<String, dynamic>>(storage, (value) => value.toMap()),
    };
  }

  factory MongoClusterProperties.fromMap(Map<String, dynamic> map) {
    return MongoClusterProperties(
      administrator: map['administrator'] == null ? null : (AdministratorProperties.fromMap((map['administrator']! as Map).cast<String, dynamic>())).input(),
      compute: map['compute'] == null ? null : (ComputeProperties.fromMap((map['compute']! as Map).cast<String, dynamic>())).input(),
      createMode: map['createMode'] == null ? null : (map['createMode']! as String).input(),
      highAvailability: map['highAvailability'] == null ? null : (HighAvailabilityProperties.fromMap((map['highAvailability']! as Map).cast<String, dynamic>())).input(),
      previewFeatures: map['previewFeatures'] == null ? null : ((map['previewFeatures']! as List).cast<String>()).input(),
      publicNetworkAccess: map['publicNetworkAccess'] == null ? null : (map['publicNetworkAccess']! as String).input(),
      replicaParameters: map['replicaParameters'] == null ? null : (MongoClusterReplicaParameters.fromMap((map['replicaParameters']! as Map).cast<String, dynamic>())).input(),
      restoreParameters: map['restoreParameters'] == null ? null : (MongoClusterRestoreParameters.fromMap((map['restoreParameters']! as Map).cast<String, dynamic>())).input(),
      serverVersion: map['serverVersion'] == null ? null : (map['serverVersion']! as String).input(),
      sharding: map['sharding'] == null ? null : (ShardingProperties.fromMap((map['sharding']! as Map).cast<String, dynamic>())).input(),
      storage: map['storage'] == null ? null : (StorageProperties.fromMap((map['storage']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

