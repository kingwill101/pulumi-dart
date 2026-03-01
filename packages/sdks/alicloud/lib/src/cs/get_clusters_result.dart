// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clusters_cluster.dart';

/// Result data returned by getClusters.
class GetClustersResult {
  /// The cluster ID.
  final String? clusterId;
  /// Custom cluster name.
  final String? clusterName;
  /// After you set `cluster_type` to `ManagedKubernetes` and configure `profile`, you can further specify the cluster specification.
  final String? clusterSpec;
  /// The cluster type.
  final String? clusterType;
  /// A list of Cluster Entries. Each element contains the following attributes:
  final List<GetClustersCluster> clusters;
  final bool? enableDetails;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Cluster IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Clusters.
  final List<String> names;
  final String? outputFile;
  /// ACK managed cluster profile.
  final String? profile;

  /// Creates a new [GetClustersResult].
  /// [clusterId] The cluster ID.
  /// [clusterName] Custom cluster name.
  /// [clusterSpec] After you set `cluster_type` to `ManagedKubernetes` and configure `profile`, you can further specify the cluster specification.
  /// [clusterType] The cluster type.
  /// [clusters] A list of Cluster Entries. Each element contains the following attributes:
  /// [enableDetails] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Cluster IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Clusters.
  /// [outputFile] Optional.
  /// [profile] ACK managed cluster profile.
  GetClustersResult({
    this.clusterId,
    this.clusterName,
    this.clusterSpec,
    this.clusterType,
    required this.clusters,
    this.enableDetails,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.profile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterId': ?clusterId,
      'clusterName': ?clusterName,
      'clusterSpec': ?clusterSpec,
      'clusterType': ?clusterType,
      'clusters': pulumi.Input.encodeList<GetClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'profile': ?profile,
    };
  }

  factory GetClustersResult.fromMap(Map<String, dynamic> map) {
    return GetClustersResult(
      clusterId: map['clusterId'] == null ? null : map['clusterId'] as String,
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      clusterSpec: map['clusterSpec'] == null ? null : map['clusterSpec'] as String,
      clusterType: map['clusterType'] == null ? null : map['clusterType'] as String,
      clusters: pulumi.Input.decodeList<GetClustersCluster>(map['clusters'], (value) => GetClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails'] as bool,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
    );
  }
}

