// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_restore_parameters.dart';
import 'node_group_spec.dart';

/// {@template pulumi_cosmosdb_mongo_cluster_args_doc}
/// The set of arguments for MongoCluster.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_mongo_cluster_args_doc}
class MongoClusterArgs {
  /// The administrator's login for the mongo cluster.
  final pulumi.Input<String>? administratorLogin;
  /// The password of the administrator login.
  final pulumi.Input<String>? administratorLoginPassword;
  /// The mode to create a mongo cluster.
  final pulumi.Input<String>? createMode;
  /// The geo-location where the resource lives
  final pulumi.Input<String>? location;
  /// The name of the mongo cluster.
  final pulumi.Input<String>? mongoClusterName;
  /// The list of node group specs in the cluster.
  final pulumi.Input<List<NodeGroupSpec>>? nodeGroupSpecs;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameters used for restore operations
  final pulumi.Input<MongoClusterRestoreParameters>? restoreParameters;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  final pulumi.Input<String>? serverVersion;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MongoClusterArgs].
  /// [administratorLogin] The administrator's login for the mongo cluster.
  /// [administratorLoginPassword] The password of the administrator login.
  /// [createMode] The mode to create a mongo cluster.
  /// [location] The geo-location where the resource lives
  /// [mongoClusterName] The name of the mongo cluster.
  /// [nodeGroupSpecs] The list of node group specs in the cluster.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [restoreParameters] Parameters used for restore operations
  /// [serverVersion] The Mongo DB server version. Defaults to the latest available version if not specified.
  /// [tags] Resource tags.
  const MongoClusterArgs({
    this.administratorLogin,
    this.administratorLoginPassword,
    this.createMode,
    this.location,
    this.mongoClusterName,
    this.nodeGroupSpecs,
    required this.resourceGroupName,
    this.restoreParameters,
    this.serverVersion,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorLogin': ?administratorLogin,
      'administratorLoginPassword': ?administratorLoginPassword,
      'createMode': ?createMode,
      'location': ?location,
      'mongoClusterName': ?mongoClusterName,
      'nodeGroupSpecs': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupSpec>, List<Map<String, dynamic>>>(nodeGroupSpecs, (value) => pulumi.Input.encodeList<NodeGroupSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'restoreParameters': ?pulumi.Input.mapOptionalInputValue<MongoClusterRestoreParameters, Map<String, dynamic>>(restoreParameters, (value) => value.toMap()),
      'serverVersion': ?serverVersion,
      'tags': ?tags,
    };
  }

  factory MongoClusterArgs.fromMap(Map<String, dynamic> map) {
    return MongoClusterArgs(
      administratorLogin: (() { final guardedValue = map['administratorLogin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      administratorLoginPassword: (() { final guardedValue = map['administratorLoginPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createMode: (() { final guardedValue = map['createMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mongoClusterName: (() { final guardedValue = map['mongoClusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupSpecs: (() { final guardedValue = map['nodeGroupSpecs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupSpec>(guardedValue, (value) => NodeGroupSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      restoreParameters: (() { final guardedValue = map['restoreParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MongoClusterRestoreParameters.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverVersion: (() { final guardedValue = map['serverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
