// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_managed_kubernetes_clusters_get_managed_kubernetes_clusters_args_doc}
/// Arguments for getManagedKubernetesClusters.
/// {@endtemplate}
/// {@macro pulumi_cs_get_managed_kubernetes_clusters_get_managed_kubernetes_clusters_args_doc}
class GetManagedKubernetesClustersArgs {
  /// Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g., `master_disk_category`, `slb_internet_enabled`, `connections`. See full list in attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Cluster IDs to filter.
  final pulumi.Input<List<String>>? ids;
  /// The path prefix of kube config. You could store kube config in a specified directory by specifying this field, like `~/.kube/managed`, then it will be named with `~/.kube/managed-clusterID-kubeconfig`. From version 1.243.0, kube_config will not export kube_config if this field is not set. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it
  final pulumi.Input<String>? kubeConfigFilePrefix;
  /// A regex string to filter results by cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetManagedKubernetesClustersArgs].
  /// [enableDetails] Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g., `master_disk_category`, `slb_internet_enabled`, `connections`. See full list in attributes.
  /// [ids] Cluster IDs to filter.
  /// [kubeConfigFilePrefix] The path prefix of kube config. You could store kube config in a specified directory by specifying this field, like `~/.kube/managed`, then it will be named with `~/.kube/managed-clusterID-kubeconfig`. From version 1.243.0, kube_config will not export kube_config if this field is not set. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it
  /// [nameRegex] A regex string to filter results by cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetManagedKubernetesClustersArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? kubeConfigFilePrefix,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      kubeConfigFilePrefix = pulumi.Input.asOptionalInput<String>(kubeConfigFilePrefix),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'ids': ?ids,
      'kubeConfigFilePrefix': ?kubeConfigFilePrefix,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetManagedKubernetesClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      kubeConfigFilePrefix: map['kubeConfigFilePrefix'] == null ? null : pulumi.Output.create<String>(map['kubeConfigFilePrefix'] as String),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

