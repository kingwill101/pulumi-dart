// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_managed_kubernetes_clusters_cluster.dart';

/// Result data returned by getManagedKubernetesClusters.
class GetManagedKubernetesClustersResult {
  /// A list of matched Kubernetes clusters. Each element contains the following attributes:
  final List<GetManagedKubernetesClustersCluster> clusters;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of matched Kubernetes clusters' ids.
  final List<String> ids;
  final String? kubeConfigFilePrefix;
  final String? nameRegex;
  /// A list of matched Kubernetes clusters' names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetManagedKubernetesClustersResult].
  /// [clusters] A list of matched Kubernetes clusters. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Kubernetes clusters' ids.
  /// [kubeConfigFilePrefix] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of matched Kubernetes clusters' names.
  /// [outputFile] Optional.
  GetManagedKubernetesClustersResult({
    required this.clusters,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.kubeConfigFilePrefix,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetManagedKubernetesClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'kubeConfigFilePrefix': ?kubeConfigFilePrefix,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetManagedKubernetesClustersResult.fromMap(Map<String, dynamic> map) {
    return GetManagedKubernetesClustersResult(
      clusters: pulumi.Input.decodeList<GetManagedKubernetesClustersCluster>(map['clusters'], (value) => GetManagedKubernetesClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      kubeConfigFilePrefix: map['kubeConfigFilePrefix'] == null ? null : map['kubeConfigFilePrefix']! as String,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

