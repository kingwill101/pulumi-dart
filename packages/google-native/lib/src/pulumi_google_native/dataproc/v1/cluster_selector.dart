// ignore_for_file: unused_element, unnecessary_cast

/// A selector that chooses target cluster for jobs based on metadata.
class ClusterSelector {
  /// The cluster labels. Cluster must have all labels to match.
  final Map<String, String> clusterLabels;

  /// Optional. The zone where workflow process executes. This parameter does not affect the selection of the cluster.If unspecified, the zone of the first cluster matching the selector is used.
  final String? zone;

  ClusterSelector({
    required this.clusterLabels,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterLabels'] = clusterLabels;
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ClusterSelector.fromMap(Map<String, dynamic> map) {
    return ClusterSelector(
      clusterLabels: (map['clusterLabels'] as Map).cast<String, String>(),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
