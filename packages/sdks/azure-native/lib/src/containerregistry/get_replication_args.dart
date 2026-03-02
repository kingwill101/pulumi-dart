// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_containerregistry_get_replication_args_doc}
/// Arguments for getReplication.
/// {@endtemplate}
/// {@macro pulumi_containerregistry_get_replication_args_doc}
class GetReplicationArgs {
  /// The name of the container registry.
  final pulumi.Input<String> registryName;
  /// The name of the replication.
  final pulumi.Input<String> replicationName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetReplicationArgs].
  /// [registryName] The name of the container registry.
  /// [replicationName] The name of the replication.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetReplicationArgs({
    required this.registryName,
    required this.replicationName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'registryName': registryName,
      'replicationName': replicationName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetReplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetReplicationArgs(
      registryName: (map['registryName'] as String).input(),
      replicationName: (map['replicationName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

