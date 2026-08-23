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
  const ClusterMultiRegionProperties({
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
      clusters: (() { final guardedValue = map['clusters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      witnessRegion: (() { final guardedValue = map['witnessRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
