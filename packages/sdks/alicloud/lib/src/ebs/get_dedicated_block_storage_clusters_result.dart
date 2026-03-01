// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dedicated_block_storage_clusters_cluster.dart';

/// Result data returned by getDedicatedBlockStorageClusters.
class GetDedicatedBlockStorageClustersResult {
  /// A list of Dedicated Block Storage Cluster Entries. Each element contains the following attributes:
  final List<GetDedicatedBlockStorageClustersCluster> clusters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of Dedicated Block Storage Cluster IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of name of Dedicated Block Storage Clusters.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetDedicatedBlockStorageClustersResult].
  /// [clusters] A list of Dedicated Block Storage Cluster Entries. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of Dedicated Block Storage Cluster IDs.
  /// [nameRegex] Optional.
  /// [names] A list of name of Dedicated Block Storage Clusters.
  /// [outputFile] Optional.
  GetDedicatedBlockStorageClustersResult({
    required this.clusters,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': pulumi.Input.encodeList<GetDedicatedBlockStorageClustersCluster, Map<String, dynamic>>(clusters, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetDedicatedBlockStorageClustersResult.fromMap(Map<String, dynamic> map) {
    return GetDedicatedBlockStorageClustersResult(
      clusters: pulumi.Input.decodeList<GetDedicatedBlockStorageClustersCluster>(map['clusters'], (value) => GetDedicatedBlockStorageClustersCluster.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

