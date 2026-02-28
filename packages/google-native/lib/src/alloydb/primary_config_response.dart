// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfigResponse {
  /// Names of the clusters that are replicating from this cluster.
  final List<String> secondaryClusterNames;

  /// Creates a new [PrimaryConfigResponse].
  /// [secondaryClusterNames] Names of the clusters that are replicating from this cluster.
  PrimaryConfigResponse({
    required this.secondaryClusterNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secondaryClusterNames'] = secondaryClusterNames;
    return map;
  }

  factory PrimaryConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrimaryConfigResponse(
      secondaryClusterNames:
          (map['secondaryClusterNames'] as List).cast<String>(),
    );
  }
}
