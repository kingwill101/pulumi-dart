// ignore_for_file: unused_element, unnecessary_cast

class ClusterNodePoolAutoConfigNetworkTags {
  /// List of network tags applied to auto-provisioned node pools.
  final List<String>? tags;

  /// Creates a new [ClusterNodePoolAutoConfigNetworkTags].
  /// [tags] List of network tags applied to auto-provisioned node pools.
  ClusterNodePoolAutoConfigNetworkTags({this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tags': ?tags};
  }

  factory ClusterNodePoolAutoConfigNetworkTags.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClusterNodePoolAutoConfigNetworkTags(
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}
