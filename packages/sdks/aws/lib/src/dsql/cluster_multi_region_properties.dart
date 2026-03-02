// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMultiRegionProperties {
  /// List of DSQL Cluster ARNs peered to this cluster.
  final pulumi.Input<List<String>>? clusters;
  /// Witness region for the multi-region clusters. Setting this makes this cluster a multi-region cluster. Changing it recreates the resource.
  final pulumi.Input<String>? witnessRegion;

  /// Creates a new [ClusterMultiRegionProperties].
  /// [clusters] List of DSQL Cluster ARNs peered to this cluster.
  /// [witnessRegion] Witness region for the multi-region clusters. Setting this makes this cluster a multi-region cluster. Changing it recreates the resource.
  ClusterMultiRegionProperties({
    this.clusters,
    this.witnessRegion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusters': ?clusters,
      'witnessRegion': ?witnessRegion,
    };
  }

  factory ClusterMultiRegionProperties.fromMap(Map<String, dynamic> map) {
    return ClusterMultiRegionProperties(
      clusters: map['clusters'] == null ? null : ((map['clusters'] as List).cast<String>()).input(),
      witnessRegion: map['witnessRegion'] == null ? null : (map['witnessRegion'] as String).input(),
    );
  }
}

