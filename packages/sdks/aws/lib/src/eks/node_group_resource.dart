// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_group_resource_autoscaling_group.dart';

class NodeGroupResource {
  /// List of objects containing information about AutoScaling Groups.
  final pulumi.Input<List<NodeGroupResourceAutoscalingGroup>>? autoscalingGroups;
  /// Identifier of the remote access EC2 Security Group.
  final pulumi.Input<String>? remoteAccessSecurityGroupId;

  /// Creates a new [NodeGroupResource].
  /// [autoscalingGroups] List of objects containing information about AutoScaling Groups.
  /// [remoteAccessSecurityGroupId] Identifier of the remote access EC2 Security Group.
  const NodeGroupResource({
    this.autoscalingGroups,
    this.remoteAccessSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroups': ?pulumi.Input.mapOptionalInputValue<List<NodeGroupResourceAutoscalingGroup>, List<Map<String, dynamic>>>(autoscalingGroups, (value) => pulumi.Input.encodeList<NodeGroupResourceAutoscalingGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAccessSecurityGroupId': ?remoteAccessSecurityGroupId,
    };
  }

  factory NodeGroupResource.fromMap(Map<String, dynamic> map) {
    return NodeGroupResource(
      autoscalingGroups: (() { final guardedValue = map['autoscalingGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NodeGroupResourceAutoscalingGroup>(guardedValue, (value) => NodeGroupResourceAutoscalingGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
      remoteAccessSecurityGroupId: (() { final guardedValue = map['remoteAccessSecurityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
