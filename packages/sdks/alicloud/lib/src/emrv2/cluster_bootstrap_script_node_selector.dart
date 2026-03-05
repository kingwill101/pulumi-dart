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
      nodeGroupId: (() { final guardedValue = map['nodeGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupIds: (() { final guardedValue = map['nodeGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeGroupName: (() { final guardedValue = map['nodeGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeGroupNames: (() { final guardedValue = map['nodeGroupNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeGroupTypes: (() { final guardedValue = map['nodeGroupTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeNames: (() { final guardedValue = map['nodeNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nodeSelectType: pulumi.Input.fromValue(map['nodeSelectType'] as String),
    );
  }
}

