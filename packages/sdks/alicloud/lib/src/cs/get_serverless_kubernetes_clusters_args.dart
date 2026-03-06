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
  const GetServerlessKubernetesClustersArgs({
    this.enableDetails,
    this.ids,
    this.kubeConfigFilePrefix,
    this.nameRegex,
    this.outputFile,
  });

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
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      kubeConfigFilePrefix: (() { final guardedValue = map['kubeConfigFilePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

