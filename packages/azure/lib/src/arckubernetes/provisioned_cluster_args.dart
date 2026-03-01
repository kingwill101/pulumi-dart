// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioned_cluster_azure_active_directory.dart';
import 'provisioned_cluster_identity.dart';

/// {@template pulumi_arckubernetes_provisioned_cluster_provisioned_cluster_args_doc}
/// The set of arguments for ProvisionedCluster.
/// {@endtemplate}
/// {@macro pulumi_arckubernetes_provisioned_cluster_provisioned_cluster_args_doc}
class ProvisionedClusterArgs {
  /// Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  final pulumi.Input<bool>? arcAgentAutoUpgradeEnabled;
  /// The version of the Arc agents to be installed on the cluster.
  final pulumi.Input<String>? arcAgentDesiredVersion;
  /// An `azure_active_directory` block as defined below.
  final pulumi.Input<ProvisionedClusterAzureActiveDirectory>? azureActiveDirectory;
  /// An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<ProvisionedClusterIdentity> identity;
  /// The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ProvisionedClusterArgs].
  /// [arcAgentAutoUpgradeEnabled] Whether the Arc agents will be upgraded automatically to the latest version. Defaults to `true`.
  /// [arcAgentDesiredVersion] The version of the Arc agents to be installed on the cluster.
  /// [azureActiveDirectory] An `azure_active_directory` block as defined below.
  /// [identity] An `identity` block as defined below. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [location] The Azure Region where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [name] The name which should be used for this Arc Kubernetes Provisioned Cluster. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [resourceGroupName] The name of the Resource Group where the Arc Kubernetes Provisioned Cluster should exist. Changing this forces a new Arc Kubernetes Provisioned Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Arc Kubernetes Provisioned Cluster.
  ProvisionedClusterArgs({
    bool? arcAgentAutoUpgradeEnabled,
    String? arcAgentDesiredVersion,
    ProvisionedClusterAzureActiveDirectory? azureActiveDirectory,
    required ProvisionedClusterIdentity identity,
    String? location,
    String? name,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      arcAgentAutoUpgradeEnabled = pulumi.Input.asOptionalInput<bool>(arcAgentAutoUpgradeEnabled),
      arcAgentDesiredVersion = pulumi.Input.asOptionalInput<String>(arcAgentDesiredVersion),
      azureActiveDirectory = pulumi.Input.asOptionalInput<ProvisionedClusterAzureActiveDirectory>(azureActiveDirectory),
      identity = pulumi.Input.asInput<ProvisionedClusterIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arcAgentAutoUpgradeEnabled': ?arcAgentAutoUpgradeEnabled,
      'arcAgentDesiredVersion': ?arcAgentDesiredVersion,
      'azureActiveDirectory': ?pulumi.Input.mapOptionalInputValue<ProvisionedClusterAzureActiveDirectory, Map<String, dynamic>>(azureActiveDirectory, (value) => value.toMap()),
      'identity': pulumi.Input.mapInputValue<ProvisionedClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ProvisionedClusterArgs.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterArgs(
      arcAgentAutoUpgradeEnabled: map['arcAgentAutoUpgradeEnabled'] == null ? null : map['arcAgentAutoUpgradeEnabled'] as bool,
      arcAgentDesiredVersion: map['arcAgentDesiredVersion'] == null ? null : map['arcAgentDesiredVersion'] as String,
      azureActiveDirectory: map['azureActiveDirectory'] == null ? null : ProvisionedClusterAzureActiveDirectory.fromMap((map['azureActiveDirectory'] as Map).cast<String, dynamic>()),
      identity: ProvisionedClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

