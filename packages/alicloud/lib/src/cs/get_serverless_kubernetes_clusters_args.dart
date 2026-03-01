// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cs_get_serverless_kubernetes_clusters_get_serverless_kubernetes_clusters_args_doc}
/// Arguments for getServerlessKubernetesClusters.
/// {@endtemplate}
/// {@macro pulumi_cs_get_serverless_kubernetes_clusters_get_serverless_kubernetes_clusters_args_doc}
class GetServerlessKubernetesClustersArgs {
  /// Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g.,  `deletion_protection`, `connections`. See full list in attributes.
  final pulumi.Input<bool>? enableDetails;
  /// Cluster IDs to filter.
  final pulumi.Input<List<String>>? ids;
  /// The path prefix of kube config. You could store kube config in a specified directory by specifying this field, like `~/.kube/serverless`, then it will be named with `~/.kube/serverless-clusterID-kubeconfig`. From version 1.243.0, kube_config will not export kube_config if this field is not set. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it
  final pulumi.Input<String>? kubeConfigFilePrefix;
  /// A regex string to filter results by cluster name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetServerlessKubernetesClustersArgs].
  /// [enableDetails] Boolean, false by default, only `id` and `name` are exported. Set to true if more details are needed, e.g.,  `deletion_protection`, `connections`. See full list in attributes.
  /// [ids] Cluster IDs to filter.
  /// [kubeConfigFilePrefix] The path prefix of kube config. You could store kube config in a specified directory by specifying this field, like `~/.kube/serverless`, then it will be named with `~/.kube/serverless-clusterID-kubeconfig`. From version 1.243.0, kube_config will not export kube_config if this field is not set. Please use the attribute output_file of new DataSource `alicloud.cs.getClusterCredential` to replace it
  /// [nameRegex] A regex string to filter results by cluster name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetServerlessKubernetesClustersArgs({
    bool? enableDetails,
    List<String>? ids,
    String? kubeConfigFilePrefix,
    String? nameRegex,
    String? outputFile,
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

  factory GetServerlessKubernetesClustersArgs.fromMap(Map<String, dynamic> map) {
    return GetServerlessKubernetesClustersArgs(
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      kubeConfigFilePrefix: map['kubeConfigFilePrefix'] == null ? null : map['kubeConfigFilePrefix'] as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

