// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  final String? clusterAliasName;
  /// A list of MSE Clusters. Each element contains the following attributes:
  final List<GetClustersCluster> clusters;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of MSE Cluster ids.
  final List<String> ids;
  final String? nameRegex;
  /// A list of MSE Cluster names.
  final List<String> names;
  final String? outputFile;
  final String? requestPars;
  /// The status of MSE Cluster.
  final String? status;

  /// Creates a new [GetClustersResult].
  /// [clusterAliasName] Optional.
  /// [clusters] A list of MSE Clusters. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of MSE Cluster ids.
  /// [nameRegex] Optional.
  /// [names] A list of MSE Cluster names.
  /// [outputFile] Optional.
  /// [requestPars] Optional.
  /// [status] The status of MSE Cluster.
  GetClustersResult({
    this.clusterAliasName,
    required this.clusters,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.requestPars,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterAliasName': ?clusterAliasName,
      'clusters': pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'requestPars': ?requestPars,
      'status': ?status,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterAliasName: map['clusterAliasName'] == null ? null : map['clusterAliasName'] as String,
      clusters: pulumi.Input.decodeList<GetClustersCluster>(map['clusters'], (value) => GetClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      requestPars: map['requestPars'] == null ? null : map['requestPars'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

