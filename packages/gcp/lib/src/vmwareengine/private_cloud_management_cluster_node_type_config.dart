// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudManagementClusterNodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  /// This number must always be one of `nodeType.availableCustomCoreCounts`.
  /// If zero is provided max value from `nodeType.availableCustomCoreCounts` will be used.
  /// This cannot be changed once the PrivateCloud is created.
  final int? customCoreCount;

  /// The number of nodes of this type in the cluster.
  final int nodeCount;

  /// The identifier for this object. Format specified above.
  final String nodeTypeId;

  /// Creates a new [PrivateCloudManagementClusterNodeTypeConfig].
  /// [customCoreCount] Customized number of cores available to each node of the type.
  /// [nodeCount] The number of nodes of this type in the cluster.
  /// [nodeTypeId] The identifier for this object. Format specified above.
  PrivateCloudManagementClusterNodeTypeConfig({
    this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customCoreCountValue = customCoreCount;
    if (customCoreCountValue != null) {
      map['customCoreCount'] = customCoreCountValue;
    }
    map['nodeCount'] = nodeCount;
    map['nodeTypeId'] = nodeTypeId;
    return map;
  }

  factory PrivateCloudManagementClusterNodeTypeConfig.fromMap(
      Map<String, dynamic> map) {
    return PrivateCloudManagementClusterNodeTypeConfig(
      customCoreCount:
          map['customCoreCount'] == null ? null : map['customCoreCount'] as int,
      nodeCount: map['nodeCount'] as int,
      nodeTypeId: map['nodeTypeId'] as String,
    );
  }
}
