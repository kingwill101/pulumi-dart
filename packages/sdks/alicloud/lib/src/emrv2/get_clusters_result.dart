// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// The name of the emr cluster.
  final String? clusterName;
  final List<String>? clusterStates;
  final List<String>? clusterTypes;
  /// A list of Emr Clusters. Each element contains the following attributes:
  final List<GetClustersCluster> clusters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Cluster IDS.
  final List<String> ids;
  final int? maxResults;
  final String? nameRegex;
  /// A list of Cluster names.
  final List<String> names;
  final String? nextToken;
  final String? outputFile;
  final List<String>? paymentTypes;
  /// The resource group id of the resource.
  final String? resourceGroupId;
  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  /// The total count of list clusters.
  final int totalCount;

  /// Creates a new [GetClustersResult].
  /// [clusterName] The name of the emr cluster.
  /// [clusterStates] Optional.
  /// [clusterTypes] Optional.
  /// [clusters] A list of Emr Clusters. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Cluster IDS.
  /// [maxResults] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Cluster names.
  /// [nextToken] Optional.
  /// [outputFile] Optional.
  /// [paymentTypes] Optional.
  /// [resourceGroupId] The resource group id of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  /// [totalCount] The total count of list clusters.
  GetClustersResult({
    this.clusterName,
    this.clusterStates,
    this.clusterTypes,
    required this.clusters,
    required this.id,
    required this.ids,
    this.maxResults,
    this.nameRegex,
    required this.names,
    this.nextToken,
    this.outputFile,
    this.paymentTypes,
    this.resourceGroupId,
    this.tags,
    required this.totalCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'clusterStates': ?clusterStates,
      'clusterTypes': ?clusterTypes,
      'clusters': pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'maxResults': ?maxResults,
      'nameRegex': ?nameRegex,
      'names': names,
      'nextToken': ?nextToken,
      'outputFile': ?outputFile,
      'paymentTypes': ?paymentTypes,
      'resourceGroupId': ?resourceGroupId,
      'tags': ?tags,
      'totalCount': totalCount,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterName: map['clusterName'] == null ? null : map['clusterName']! as String,
      clusterStates: map['clusterStates'] == null ? null : (map['clusterStates']! as List).cast<String>(),
      clusterTypes: map['clusterTypes'] == null ? null : (map['clusterTypes']! as List).cast<String>(),
      clusters: pulumi.Input.decodeList<GetClustersCluster>(map['clusters'], (value) => GetClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      maxResults: map['maxResults'] == null ? null : map['maxResults']! as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      nextToken: map['nextToken'] == null ? null : map['nextToken']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      paymentTypes: map['paymentTypes'] == null ? null : (map['paymentTypes']! as List).cast<String>(),
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      totalCount: map['totalCount'] as int,
    );
  }
}

