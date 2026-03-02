// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterBootstrapScriptNodeSelector {
  final pulumi.Input<String>? nodeGroupId;
  /// The bootstrap scripts execution target node group ids.
  final pulumi.Input<List<String>>? nodeGroupIds;
  final pulumi.Input<String>? nodeGroupName;
  /// The bootstrap scripts execution target node group names.
  final pulumi.Input<List<String>>? nodeGroupNames;
  /// The bootstrap scripts execution target node group types.
  final pulumi.Input<List<String>>? nodeGroupTypes;
  /// The bootstrap scripts execution target node names.
  final pulumi.Input<List<String>>? nodeNames;
  /// The bootstrap scripts execution target node select type. Supported value: NODE, NODEGROUP or CLUSTER.
  final pulumi.Input<String> nodeSelectType;

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
      nodeGroupId: map['nodeGroupId'] == null ? null : (map['nodeGroupId'] as String).input(),
      nodeGroupIds: map['nodeGroupIds'] == null ? null : ((map['nodeGroupIds'] as List).cast<String>()).input(),
      nodeGroupName: map['nodeGroupName'] == null ? null : (map['nodeGroupName'] as String).input(),
      nodeGroupNames: map['nodeGroupNames'] == null ? null : ((map['nodeGroupNames'] as List).cast<String>()).input(),
      nodeGroupTypes: map['nodeGroupTypes'] == null ? null : ((map['nodeGroupTypes'] as List).cast<String>()).input(),
      nodeNames: map['nodeNames'] == null ? null : ((map['nodeNames'] as List).cast<String>()).input(),
      nodeSelectType: (map['nodeSelectType'] as String).input(),
    );
  }
}

