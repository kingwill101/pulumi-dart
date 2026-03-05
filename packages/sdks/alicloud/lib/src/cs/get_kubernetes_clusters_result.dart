// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_clusters_cluster.dart';

/// Result data returned by getKubernetesClusters.
class GetKubernetesClustersResult {
  /// A list of matched Kubernetes clusters. Each element contains the following attributes:
  final List<GetKubernetesClustersCluster> clusters;
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

  /// Creates a new [GetKubernetesClustersResult].
  /// [clusters] A list of matched Kubernetes clusters. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Kubernetes clusters' ids.
  /// [kubeConfigFilePrefix] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of matched Kubernetes clusters' names.
  /// [outputFile] Optional.
  GetKubernetesClustersResult({
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
      'clusters': pulumi.Input.encodeList<GetKubernetesClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'kubeConfigFilePrefix': ?kubeConfigFilePrefix,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetKubernetesClustersResult.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersResult(
      clusters: pulumi.Input.decodeList<GetKubernetesClustersCluster>(map['clusters']!, (value) => GetKubernetesClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      kubeConfigFilePrefix: (() { final guardedValue = map['kubeConfigFilePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

