// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ecs_dedicated_host_clusters_cluster.dart';

/// Result data returned by getEcsDedicatedHostClusters.
class GetEcsDedicatedHostClustersResult {
  final List<GetEcsDedicatedHostClustersCluster> clusters;
  final List<String>? dedicatedHostClusterIds;
  final String? dedicatedHostClusterName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final List<String> names;
  final String? outputFile;
  final Map<String, String>? tags;
  final String? zoneId;

  /// Creates a new [GetEcsDedicatedHostClustersResult].
  /// [clusters] Required.
  /// [dedicatedHostClusterIds] Optional.
  /// [dedicatedHostClusterName] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] Required.
  /// [outputFile] Optional.
  /// [tags] Optional.
  /// [zoneId] Optional.
  GetEcsDedicatedHostClustersResult({
    required this.clusters,
    this.dedicatedHostClusterIds,
    this.dedicatedHostClusterName,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.tags,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetEcsDedicatedHostClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'dedicatedHostClusterIds': ?dedicatedHostClusterIds,
      'dedicatedHostClusterName': ?dedicatedHostClusterName,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'tags': ?tags,
      'zoneId': ?zoneId,
    };
  }

  factory GetEcsDedicatedHostClustersResult.fromMap(Map<String, dynamic> map) {
    return GetEcsDedicatedHostClustersResult(
      clusters: pulumi.Input.decodeList<GetEcsDedicatedHostClustersCluster>(map['clusters'], (value) => GetEcsDedicatedHostClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      dedicatedHostClusterIds: map['dedicatedHostClusterIds'] == null ? null : (map['dedicatedHostClusterIds']! as List).cast<String>(),
      dedicatedHostClusterName: map['dedicatedHostClusterName'] == null ? null : map['dedicatedHostClusterName']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex']! as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      zoneId: map['zoneId'] == null ? null : map['zoneId']! as String,
    );
  }
}

