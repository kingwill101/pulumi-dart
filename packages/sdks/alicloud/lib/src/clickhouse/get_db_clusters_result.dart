// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_db_clusters_cluster.dart';

/// Result data returned by getDbClusters.
class GetDbClustersResult {
  final List<GetDbClustersCluster> clusters;
  final String? dbClusterDescription;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? outputFile;
  final String? status;

  /// Creates a new [GetDbClustersResult].
  /// [clusters] Required.
  /// [dbClusterDescription] Optional.
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [outputFile] Optional.
  /// [status] Optional.
  const GetDbClustersResult({
    required this.clusters,
    this.dbClusterDescription,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetDbClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'dbClusterDescription': ?dbClusterDescription,
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetDbClustersResult.fromMap(Map<String, dynamic> map) {
    return GetDbClustersResult(
      clusters: pulumi.Input.decodeList<GetDbClustersCluster>(map['clusters']!, (value) => GetDbClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      dbClusterDescription: (() { final guardedValue = map['dbClusterDescription']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

