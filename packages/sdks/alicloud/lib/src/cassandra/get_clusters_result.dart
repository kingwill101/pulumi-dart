// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// A list of Cassandra clusters. Its every element contains the following attributes:
  final List<GetClustersCluster> clusters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The list of Cassandra cluster ids.
  final List<String> ids;
  final String? nameRegex;

  /// The name list of Cassandra clusters.
  final List<String> names;
  final String? outputFile;

  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetClustersResult].
  /// [clusters] A list of Cassandra clusters. Its every element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] The list of Cassandra cluster ids.
  /// [nameRegex] Optional.
  /// [names] The name list of Cassandra clusters.
  /// [outputFile] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  GetClustersResult({
    required this.clusters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters':
          pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(
            clusters,
            (value) => value.toMap(),
          ),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusters: pulumi.Input.decodeList<GetClustersCluster>(
        map['clusters']!,
        (value) =>
            GetClustersCluster.fromMap((value as Map).cast<String, dynamic>()),
      ),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
    );
  }
}
