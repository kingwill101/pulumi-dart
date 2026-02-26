// ignore_for_file: unused_element, unnecessary_cast

class GetClusterNodeTypeConfig {
  /// Customized number of cores available to each node of the type.
  /// This number must always be one of 'nodeType.availableCustomCoreCounts'.
  /// If zero is provided max value from 'nodeType.availableCustomCoreCounts' will be used.
  /// Once the customer is created then corecount cannot be changed.
  final int customCoreCount;

  /// The number of nodes of this type in the cluster.
  final int nodeCount;
  final String nodeTypeId;

  GetClusterNodeTypeConfig({
    required this.customCoreCount,
    required this.nodeCount,
    required this.nodeTypeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customCoreCount'] = customCoreCount;
    map['nodeCount'] = nodeCount;
    map['nodeTypeId'] = nodeTypeId;
    return map;
  }

  factory GetClusterNodeTypeConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterNodeTypeConfig(
      customCoreCount: map['customCoreCount'] as int,
      nodeCount: map['nodeCount'] as int,
      nodeTypeId: map['nodeTypeId'] as String,
    );
  }
}
