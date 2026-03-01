// ignore_for_file: unused_element, unnecessary_cast


class ClusterBootstrapScriptNodeSelector {
  final String? nodeGroupId;
  /// The bootstrap scripts execution target node group ids.
  final List<String>? nodeGroupIds;
  final String? nodeGroupName;
  /// The bootstrap scripts execution target node group names.
  final List<String>? nodeGroupNames;
  /// The bootstrap scripts execution target node group types.
  final List<String>? nodeGroupTypes;
  /// The bootstrap scripts execution target node names.
  final List<String>? nodeNames;
  /// The bootstrap scripts execution target node select type. Supported value: NODE, NODEGROUP or CLUSTER.
  final String nodeSelectType;

  /// Creates a new [ClusterBootstrapScriptNodeSelector].
  /// [nodeGroupId] Optional.
  /// [nodeGroupIds] The bootstrap scripts execution target node group ids.
  /// [nodeGroupName] Optional.
  /// [nodeGroupNames] The bootstrap scripts execution target node group names.
  /// [nodeGroupTypes] The bootstrap scripts execution target node group types.
  /// [nodeNames] The bootstrap scripts execution target node names.
  /// [nodeSelectType] The bootstrap scripts execution target node select type. Supported value: NODE, NODEGROUP or CLUSTER.
  ClusterBootstrapScriptNodeSelector({
    this.nodeGroupId,
    this.nodeGroupIds,
    this.nodeGroupName,
    this.nodeGroupNames,
    this.nodeGroupTypes,
    this.nodeNames,
    required this.nodeSelectType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeGroupId': ?nodeGroupId,
      'nodeGroupIds': ?nodeGroupIds,
      'nodeGroupName': ?nodeGroupName,
      'nodeGroupNames': ?nodeGroupNames,
      'nodeGroupTypes': ?nodeGroupTypes,
      'nodeNames': ?nodeNames,
      'nodeSelectType': nodeSelectType,
    };
  }

  factory ClusterBootstrapScriptNodeSelector.fromMap(Map<String, dynamic> map) {
    return ClusterBootstrapScriptNodeSelector(
      nodeGroupId: map['nodeGroupId'] == null ? null : map['nodeGroupId'] as String,
      nodeGroupIds: map['nodeGroupIds'] == null ? null : (map['nodeGroupIds'] as List).cast<String>(),
      nodeGroupName: map['nodeGroupName'] == null ? null : map['nodeGroupName'] as String,
      nodeGroupNames: map['nodeGroupNames'] == null ? null : (map['nodeGroupNames'] as List).cast<String>(),
      nodeGroupTypes: map['nodeGroupTypes'] == null ? null : (map['nodeGroupTypes'] as List).cast<String>(),
      nodeNames: map['nodeNames'] == null ? null : (map['nodeNames'] as List).cast<String>(),
      nodeSelectType: map['nodeSelectType'] as String,
    );
  }
}

