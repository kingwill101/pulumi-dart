// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalrservice_get_signal_rreplica_args_doc}
/// Arguments for getSignalRReplica.
/// {@endtemplate}
/// {@macro pulumi_signalrservice_get_signal_rreplica_args_doc}
class GetSignalRReplicaArgs {
  /// The name of the replica.
  final pulumi.Input<String> replicaName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the resource.
  final pulumi.Input<String> resourceName;

  /// Creates a new [GetSignalRReplicaArgs].
  /// [replicaName] The name of the replica.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] The name of the resource.
  GetSignalRReplicaArgs({
    required String replicaName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      replicaName = pulumi.Input.asInput<String>(replicaName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'replicaName': replicaName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory GetSignalRReplicaArgs.fromMap(Map<String, dynamic> map) {
    return GetSignalRReplicaArgs(
      replicaName: map['replicaName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

