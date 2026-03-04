// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// A list of PolarDB clusters. Each element contains the following attributes:
  final List<GetClustersCluster> clusters;

  /// Database type. Value options: MySQL, PostgreSQL and Oracle.
  final String? dbType;
  final String? descriptionRegex;

  /// A list of RDS cluster descriptions.
  final List<String> descriptions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// A list of RDS cluster IDs.
  final List<String> ids;
  final String? outputFile;

  /// Status of the cluster.
  final String? status;
  final Map<String, String>? tags;

  /// Creates a new [GetClustersResult].
  /// [clusters] A list of PolarDB clusters. Each element contains the following attributes:
  /// [dbType] Database type. Value options: MySQL, PostgreSQL and Oracle.
  /// [descriptionRegex] Optional.
  /// [descriptions] A list of RDS cluster descriptions.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of RDS cluster IDs.
  /// [outputFile] Optional.
  /// [status] Status of the cluster.
  /// [tags] Optional.
  GetClustersResult({
    required this.clusters,
    this.dbType,
    this.descriptionRegex,
    required this.descriptions,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters':
          pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(
            clusters,
            (value) => value.toMap(),
          ),
      'dbType': ?dbType,
      'descriptionRegex': ?descriptionRegex,
      'descriptions': descriptions,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
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
      dbType: (() {
        final guardedValue = map['dbType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      descriptionRegex: (() {
        final guardedValue = map['descriptionRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      descriptions: (map['descriptions'] as List).cast<String>(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
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
