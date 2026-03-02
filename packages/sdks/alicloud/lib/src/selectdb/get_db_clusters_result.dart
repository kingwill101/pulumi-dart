// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster.dart';

/// Result data returned by getDbClusters.
class GetDbClustersResult {
  /// A list of SelectDB DBClusters. Each element contains the following attributes:
  final List<GetDbClustersCluster> clusters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;

  /// Creates a new [GetDbClustersResult].
  /// [clusters] A list of SelectDB DBClusters. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  GetDbClustersResult({
    required this.clusters,
    required this.id,
    required this.ids,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetDbClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
    };
  }

  factory GetDbClustersResult.fromMap(Map<String, dynamic> map) {
    return GetDbClustersResult(
      clusters: pulumi.Input.decodeList<GetDbClustersCluster>(map['clusters'], (value) => GetDbClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
    );
  }
}

