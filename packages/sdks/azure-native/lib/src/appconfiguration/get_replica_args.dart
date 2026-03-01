// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_get_replica_args_doc}
/// Arguments for getReplica.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_get_replica_args_doc}
class GetReplicaArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The name of the replica.
  final pulumi.Input<String> replicaName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReplicaArgs].
  /// [configStoreName] The name of the configuration store.
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  GetReplicaArgs({
    required pulumi.Output<String> configStoreName,
    required pulumi.Output<String> replicaName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      replicaName = pulumi.Input.asInput<String>(replicaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'replicaName': replicaName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReplicaArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicaArgs(
      configStoreName: pulumi.Output.create<String>(map['configStoreName'] as String),
      replicaName: pulumi.Output.create<String>(map['replicaName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

