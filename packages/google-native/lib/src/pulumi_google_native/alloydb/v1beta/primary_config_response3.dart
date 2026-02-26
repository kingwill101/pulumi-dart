// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the primary cluster. It has the list of clusters that are replicating from this cluster. This should be set if and only if the cluster is of type PRIMARY.
class PrimaryConfigResponse3 {
  /// Names of the clusters that are replicating from this cluster.
  final List<String> secondaryClusterNames;

  PrimaryConfigResponse3({
    required this.secondaryClusterNames,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['secondaryClusterNames'] = secondaryClusterNames;
    return map;
  }

  factory PrimaryConfigResponse3.fromMap(Map<String, dynamic> map) {
    return PrimaryConfigResponse3(
      secondaryClusterNames:
          (map['secondaryClusterNames'] as List).cast<String>(),
    );
  }
}
