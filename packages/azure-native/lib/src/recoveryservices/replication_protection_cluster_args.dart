// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_protection_cluster_properties.dart';

/// {@template pulumi_recoveryservices_replication_protection_cluster_args_doc}
/// The set of arguments for ReplicationProtectionCluster.
/// {@endtemplate}
/// {@macro pulumi_recoveryservices_replication_protection_cluster_args_doc}
class ReplicationProtectionClusterArgs {
  /// Fabric name.
  final pulumi.Input<String> fabricName;
  /// The custom data.
  final pulumi.Input<ReplicationProtectionClusterProperties>? properties;
  /// Protection container name.
  final pulumi.Input<String> protectionContainerName;
  /// Replication protection cluster name.
  final pulumi.Input<String>? replicationProtectionClusterName;
  /// The name of the resource group where the recovery services vault is present.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the recovery services vault.
  final pulumi.Input<String> resourceName;

  /// Creates a new [ReplicationProtectionClusterArgs].
  /// [fabricName] Fabric name.
  /// [properties] The custom data.
  /// [protectionContainerName] Protection container name.
  /// [replicationProtectionClusterName] Replication protection cluster name.
  /// [resourceGroupName] The name of the resource group where the recovery services vault is present.
  /// [resourceName] The name of the recovery services vault.
  ReplicationProtectionClusterArgs({
    required String fabricName,
    ReplicationProtectionClusterProperties? properties,
    required String protectionContainerName,
    String? replicationProtectionClusterName,
    required String resourceGroupName,
    required String resourceName,
  }) :
      fabricName = pulumi.Input.asInput<String>(fabricName),
      properties = pulumi.Input.asOptionalInput<ReplicationProtectionClusterProperties>(properties),
      protectionContainerName = pulumi.Input.asInput<String>(protectionContainerName),
      replicationProtectionClusterName = pulumi.Input.asOptionalInput<String>(replicationProtectionClusterName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fabricName': fabricName,
      'properties': ?pulumi.Input.mapOptionalInputValue<ReplicationProtectionClusterProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'protectionContainerName': protectionContainerName,
      'replicationProtectionClusterName': ?replicationProtectionClusterName,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
    };
  }

  factory ReplicationProtectionClusterArgs.fromMap(Map<String, dynamic> map) {
    return ReplicationProtectionClusterArgs(
      fabricName: map['fabricName'] as String,
      properties: map['properties'] == null ? null : ReplicationProtectionClusterProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      protectionContainerName: map['protectionContainerName'] as String,
      replicationProtectionClusterName: map['replicationProtectionClusterName'] == null ? null : map['replicationProtectionClusterName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceName: map['resourceName'] as String,
    );
  }
}

