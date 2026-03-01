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
  MongoClusterArgs({
    pulumi.Output<String>? administratorLogin,
    pulumi.Output<String>? administratorLoginPassword,
    pulumi.Output<String>? createMode,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mongoClusterName,
    pulumi.Output<List<NodeGroupSpec>>? nodeGroupSpecs,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<MongoClusterRestoreParameters>? restoreParameters,
    pulumi.Output<String>? serverVersion,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      administratorLogin = pulumi.Input.asOptionalInput<String>(administratorLogin),
      administratorLoginPassword = pulumi.Input.asOptionalInput<String>(administratorLoginPassword),
      createMode = pulumi.Input.asOptionalInput<String>(createMode),
      location = pulumi.Input.asOptionalInput<String>(location),
      mongoClusterName = pulumi.Input.asOptionalInput<String>(mongoClusterName),
      nodeGroupSpecs = pulumi.Input.asOptionalInput<List<NodeGroupSpec>>(nodeGroupSpecs),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      restoreParameters = pulumi.Input.asOptionalInput<MongoClusterRestoreParameters>(restoreParameters),
      serverVersion = pulumi.Input.asOptionalInput<String>(serverVersion),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      administratorLogin: map['administratorLogin'] == null ? null : pulumi.Output.create<String>(map['administratorLogin'] as String),
      administratorLoginPassword: map['administratorLoginPassword'] == null ? null : pulumi.Output.create<String>(map['administratorLoginPassword'] as String),
      createMode: map['createMode'] == null ? null : pulumi.Output.create<String>(map['createMode'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mongoClusterName: map['mongoClusterName'] == null ? null : pulumi.Output.create<String>(map['mongoClusterName'] as String),
      nodeGroupSpecs: map['nodeGroupSpecs'] == null ? null : pulumi.Output.create<List<NodeGroupSpec>>(pulumi.Input.decodeList<NodeGroupSpec>(map['nodeGroupSpecs'], (value) => NodeGroupSpec.fromMap((value as Map).cast<String, dynamic>()))),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      restoreParameters: map['restoreParameters'] == null ? null : pulumi.Output.create<MongoClusterRestoreParameters>(MongoClusterRestoreParameters.fromMap((map['restoreParameters'] as Map).cast<String, dynamic>())),
      serverVersion: map['serverVersion'] == null ? null : pulumi.Output.create<String>(map['serverVersion'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

