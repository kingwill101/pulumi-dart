// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_edge_kubernetes_clusters_cluster.dart';

/// Result data returned by getEdgeKubernetesClusters.
class GetEdgeKubernetesClustersResult {
  /// A list of matched Kubernetes clusters. Each element contains the following attributes:
  final List<GetEdgeKubernetesClustersCluster> clusters;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of matched Kubernetes clusters' ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of matched Kubernetes clusters' names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetEdgeKubernetesClustersResult].
  /// [clusters] A list of matched Kubernetes clusters. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of matched Kubernetes clusters' ids.
  /// [nameRegex] Optional.
  /// [names] A list of matched Kubernetes clusters' names.
  /// [outputFile] Optional.
  GetEdgeKubernetesClustersResult({
    required this.clusters,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetEdgeKubernetesClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetEdgeKubernetesClustersResult.fromMap(Map<String, dynamic> map) {
    return GetEdgeKubernetesClustersResult(
      clusters: pulumi.Input.decodeList<GetEdgeKubernetesClustersCluster>(map['clusters'], (value) => GetEdgeKubernetesClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

