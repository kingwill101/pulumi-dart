// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_cluster_identity.dart';
import 'compute_cluster_scale_settings.dart';
import 'compute_cluster_ssh.dart';

/// {@template pulumi_machinelearning_compute_cluster_compute_cluster_args_doc}
/// The set of arguments for ComputeCluster.
/// {@endtemplate}
/// {@macro pulumi_machinelearning_compute_cluster_compute_cluster_args_doc}
class ComputeClusterArgs {
  /// The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? description;
  /// An `identity` block as defined below.
  final pulumi.Input<ComputeClusterIdentity>? identity;
  /// Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? localAuthEnabled;
  /// The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? location;
  /// The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String> machineLearningWorkspaceId;
  /// The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? name;
  /// Whether the compute cluster will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? nodePublicIpEnabled;
  /// A `scale_settings` block as defined below.
  final pulumi.Input<ComputeClusterScaleSettings> scaleSettings;
  /// Credentials for an administrator user account that will be created on each compute node. A `ssh` block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<ComputeClusterSsh>? ssh;
  /// A boolean value indicating whether enable the public SSH port. Defaults to `false`. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<bool>? sshPublicAccessEnabled;
  /// The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String>? subnetResourceId;
  /// A mapping of tags which should be assigned to the Machine Learning Compute Cluster.
  final pulumi.Input<Map<String, String>>? tags;
  /// The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`.
  final pulumi.Input<String> vmPriority;
  /// The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
  final pulumi.Input<String> vmSize;

  /// Creates a new [ComputeClusterArgs].
  /// [description] The description of the Machine Learning compute. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [identity] An `identity` block as defined below.
  /// [localAuthEnabled] Whether local authentication methods is enabled. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [location] The Azure Region where the Machine Learning Compute Cluster should exist. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [machineLearningWorkspaceId] The ID of the Machine Learning Workspace. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [name] The name which should be used for this Machine Learning Compute Cluster. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [nodePublicIpEnabled] Whether the compute cluster will have a public ip. Defaults to `true`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [scaleSettings] A `scale_settings` block as defined below.
  /// [ssh] Credentials for an administrator user account that will be created on each compute node. A `ssh` block as defined below. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [sshPublicAccessEnabled] A boolean value indicating whether enable the public SSH port. Defaults to `false`. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [subnetResourceId] The ID of the Subnet that the Compute Cluster should reside in. Changing this forces a new Machine Learning Compute Cluster to be created.
  /// [tags] A mapping of tags which should be assigned to the Machine Learning Compute Cluster.
  /// [vmPriority] The priority of the VM. Changing this forces a new Machine Learning Compute Cluster to be created. Accepted values are `Dedicated` and `LowPriority`.
  /// [vmSize] The size of the VM. Changing this forces a new Machine Learning Compute Cluster to be created.
  ComputeClusterArgs({
    String? description,
    ComputeClusterIdentity? identity,
    bool? localAuthEnabled,
    String? location,
    required String machineLearningWorkspaceId,
    String? name,
    bool? nodePublicIpEnabled,
    required ComputeClusterScaleSettings scaleSettings,
    ComputeClusterSsh? ssh,
    bool? sshPublicAccessEnabled,
    String? subnetResourceId,
    Map<String, String>? tags,
    required String vmPriority,
    required String vmSize,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<ComputeClusterIdentity>(identity),
      localAuthEnabled = pulumi.Input.asOptionalInput<bool>(localAuthEnabled),
      location = pulumi.Input.asOptionalInput<String>(location),
      machineLearningWorkspaceId = pulumi.Input.asInput<String>(machineLearningWorkspaceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePublicIpEnabled = pulumi.Input.asOptionalInput<bool>(nodePublicIpEnabled),
      scaleSettings = pulumi.Input.asInput<ComputeClusterScaleSettings>(scaleSettings),
      ssh = pulumi.Input.asOptionalInput<ComputeClusterSsh>(ssh),
      sshPublicAccessEnabled = pulumi.Input.asOptionalInput<bool>(sshPublicAccessEnabled),
      subnetResourceId = pulumi.Input.asOptionalInput<String>(subnetResourceId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmPriority = pulumi.Input.asInput<String>(vmPriority),
      vmSize = pulumi.Input.asInput<String>(vmSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<ComputeClusterIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'localAuthEnabled': ?localAuthEnabled,
      'location': ?location,
      'machineLearningWorkspaceId': machineLearningWorkspaceId,
      'name': ?name,
      'nodePublicIpEnabled': ?nodePublicIpEnabled,
      'scaleSettings': pulumi.Input.mapInputValue<ComputeClusterScaleSettings, Map<String, dynamic>>(scaleSettings, (value) => value.toMap()),
      'ssh': ?pulumi.Input.mapOptionalInputValue<ComputeClusterSsh, Map<String, dynamic>>(ssh, (value) => value.toMap()),
      'sshPublicAccessEnabled': ?sshPublicAccessEnabled,
      'subnetResourceId': ?subnetResourceId,
      'tags': ?tags,
      'vmPriority': vmPriority,
      'vmSize': vmSize,
    };
  }

  factory ComputeClusterArgs.fromMap(Map<String, dynamic> map) {
    return ComputeClusterArgs(
      description: map['description'] == null ? null : map['description'] as String,
      identity: map['identity'] == null ? null : ComputeClusterIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      localAuthEnabled: map['localAuthEnabled'] == null ? null : map['localAuthEnabled'] as bool,
      location: map['location'] == null ? null : map['location'] as String,
      machineLearningWorkspaceId: map['machineLearningWorkspaceId'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodePublicIpEnabled: map['nodePublicIpEnabled'] == null ? null : map['nodePublicIpEnabled'] as bool,
      scaleSettings: ComputeClusterScaleSettings.fromMap((map['scaleSettings'] as Map).cast<String, dynamic>()),
      ssh: map['ssh'] == null ? null : ComputeClusterSsh.fromMap((map['ssh'] as Map).cast<String, dynamic>()),
      sshPublicAccessEnabled: map['sshPublicAccessEnabled'] == null ? null : map['sshPublicAccessEnabled'] as bool,
      subnetResourceId: map['subnetResourceId'] == null ? null : map['subnetResourceId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vmPriority: map['vmPriority'] as String,
      vmSize: map['vmSize'] as String,
    );
  }
}

