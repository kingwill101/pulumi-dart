// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appconfiguration_replica_args_doc}
/// The set of arguments for Replica.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_replica_args_doc}
class ReplicaArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The location of the replica.
  final pulumi.Input<String>? location;
  /// The name of the replica.
  final pulumi.Input<String>? replicaName;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ReplicaArgs].
  /// [configStoreName] The name of the configuration store.
  /// [location] The location of the replica.
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  ReplicaArgs({
    required pulumi.Output<String> configStoreName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? replicaName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      location = pulumi.Input.asOptionalInput<String>(location),
      replicaName = pulumi.Input.asOptionalInput<String>(replicaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'location': ?location,
      'replicaName': ?replicaName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ReplicaArgs.fromMap(Map<String, dynamic> map) {
    return ReplicaArgs(
      configStoreName: pulumi.Output.create<String>(map['configStoreName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      replicaName: map['replicaName'] == null ? null : pulumi.Output.create<String>(map['replicaName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

