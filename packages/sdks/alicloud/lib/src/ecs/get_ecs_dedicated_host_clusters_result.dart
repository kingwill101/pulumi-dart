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
      'clusters':
          pulumi.Input.encodeList<
            GetEcsDedicatedHostClustersCluster,
            Map<String, dynamic>
          >(clusters, (value) => value.toMap()),
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
      clusters: pulumi.Input.decodeList<GetEcsDedicatedHostClustersCluster>(
        map['clusters']!,
        (value) => GetEcsDedicatedHostClustersCluster.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      dedicatedHostClusterIds: (() {
        final guardedValue = map['dedicatedHostClusterIds'];
        if (guardedValue == null) return null;
        return (guardedValue as List).cast<String>();
      })(),
      dedicatedHostClusterName: (() {
        final guardedValue = map['dedicatedHostClusterName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
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
      zoneId: (() {
        final guardedValue = map['zoneId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
