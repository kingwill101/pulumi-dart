// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_edas_k8s_cluster_k8s_cluster_args_doc}
/// The set of arguments for K8sCluster.
/// {@endtemplate}
/// {@macro pulumi_edas_k8s_cluster_k8s_cluster_args_doc}
class K8sClusterArgs {
  /// The ID of the alicloud container service kubernetes cluster that you want to import.
  final pulumi.Input<String> csClusterId;
  /// The ID of the namespace where you want to import. You can call the [ListUserDefineRegion](https://www.alibabacloud.com/help/en/doc-detail/149377.htm?spm=a2c63.p38356.879954.34.331054faK2yNvC#doc-api-Edas-ListUserDefineRegion) operation to query the namespace ID.
  final pulumi.Input<String>? namespaceId;

  /// Creates a new [K8sClusterArgs].
  /// [csClusterId] The ID of the alicloud container service kubernetes cluster that you want to import.
  /// [namespaceId] The ID of the namespace where you want to import. You can call the [ListUserDefineRegion](https://www.alibabacloud.com/help/en/doc-detail/149377.htm?spm=a2c63.p38356.879954.34.331054faK2yNvC#doc-api-Edas-ListUserDefineRegion) operation to query the namespace ID.
  K8sClusterArgs({
    required this.csClusterId,
    this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'csClusterId': csClusterId,
      'namespaceId': ?namespaceId,
    };
  }

  factory K8sClusterArgs.fromMap(Map<String, dynamic> map) {
    return K8sClusterArgs(
      csClusterId: (map['csClusterId'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId']! as String).input(),
    );
  }
}

