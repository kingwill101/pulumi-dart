// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_instance_kubernetes_cluster_backup_datasource_parameters.dart';

/// {@template pulumi_dataprotection_backup_instance_kubernetes_cluster_backup_instance_kubernetes_cluster_args_doc}
/// The set of arguments for BackupInstanceKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_kubernetes_cluster_backup_instance_kubernetes_cluster_args_doc}
class BackupInstanceKubernetesClusterArgs {
  /// A `backup_datasource_parameters` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<BackupInstanceKubernetesClusterBackupDatasourceParameters>? backupDatasourceParameters;
  /// The ID of the Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> backupPolicyId;
  /// The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String> kubernetesClusterId;
  /// The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  final pulumi.Input<String> snapshotResourceGroupName;
  /// The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstanceKubernetesClusterArgs].
  /// [backupDatasourceParameters] A `backup_datasource_parameters` block as defined below. Changing this forces a new resource to be created.
  /// [backupPolicyId] The ID of the Backup Policy. Changing this forces a new resource to be created.
  /// [kubernetesClusterId] The ID of the Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [location] The location of the Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Backup Instance Kubernetes Cluster. Changing this forces a new resource to be created.
  /// [snapshotResourceGroupName] The name of the Resource Group where snapshots are stored. Changing this forces a new resource to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Kubernetes Cluster should exist. Changing this forces a new resource to be created.
  BackupInstanceKubernetesClusterArgs({
    BackupInstanceKubernetesClusterBackupDatasourceParameters? backupDatasourceParameters,
    required String backupPolicyId,
    required String kubernetesClusterId,
    String? location,
    String? name,
    required String snapshotResourceGroupName,
    required String vaultId,
  }) :
      backupDatasourceParameters = pulumi.Input.asOptionalInput<BackupInstanceKubernetesClusterBackupDatasourceParameters>(backupDatasourceParameters),
      backupPolicyId = pulumi.Input.asInput<String>(backupPolicyId),
      kubernetesClusterId = pulumi.Input.asInput<String>(kubernetesClusterId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      snapshotResourceGroupName = pulumi.Input.asInput<String>(snapshotResourceGroupName),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDatasourceParameters': ?pulumi.Input.mapOptionalInputValue<BackupInstanceKubernetesClusterBackupDatasourceParameters, Map<String, dynamic>>(backupDatasourceParameters, (value) => value.toMap()),
      'backupPolicyId': backupPolicyId,
      'kubernetesClusterId': kubernetesClusterId,
      'location': ?location,
      'name': ?name,
      'snapshotResourceGroupName': snapshotResourceGroupName,
      'vaultId': vaultId,
    };
  }

  factory BackupInstanceKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceKubernetesClusterArgs(
      backupDatasourceParameters: map['backupDatasourceParameters'] == null ? null : BackupInstanceKubernetesClusterBackupDatasourceParameters.fromMap((map['backupDatasourceParameters'] as Map).cast<String, dynamic>()),
      backupPolicyId: map['backupPolicyId'] as String,
      kubernetesClusterId: map['kubernetesClusterId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      snapshotResourceGroupName: map['snapshotResourceGroupName'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

