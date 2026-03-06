// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// A list of clusters.
  final List<GetClustersCluster> clusters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of cluster IDs.
  final List<String> ids;
  final String logicalRegionId;
  final String? nameRegex;
  /// A list of cluster names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetClustersResult].
  /// [clusters] A list of clusters.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of cluster IDs.
  /// [logicalRegionId] Required.
  /// [nameRegex] Optional.
  /// [names] A list of cluster names.
  /// [outputFile] Optional.
  const GetClustersResult({
    required this.clusters,
    required this.id,
    required this.ids,
    required this.logicalRegionId,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'logicalRegionId': logicalRegionId,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusters: pulumi.Input.decodeList<GetClustersCluster>(map['clusters']!, (value) => GetClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      logicalRegionId: map['logicalRegionId'] as String,
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

