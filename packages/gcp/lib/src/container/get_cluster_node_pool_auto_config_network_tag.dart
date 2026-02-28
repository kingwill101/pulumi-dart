// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodePoolAutoConfigNetworkTag {
  /// List of network tags applied to auto-provisioned node pools.
  final List<String> tags;

  /// Creates a new [GetClusterNodePoolAutoConfigNetworkTag].
  /// [tags] List of network tags applied to auto-provisioned node pools.
  GetClusterNodePoolAutoConfigNetworkTag({
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['tags'] = tags;
    return map;
  }

  factory GetClusterNodePoolAutoConfigNetworkTag.fromMap(
      Map<String, dynamic> map) {
    return GetClusterNodePoolAutoConfigNetworkTag(
      tags: (map['tags'] as List).cast<String>(),
    );
  }
}
