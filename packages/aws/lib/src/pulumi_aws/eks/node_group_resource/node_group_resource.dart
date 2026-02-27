// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../node_group_resource_autoscaling_group/node_group_resource_autoscaling_group.dart';

class NodeGroupResource {
  /// List of objects containing information about AutoScaling Groups.
  final List<NodeGroupResourceAutoscalingGroup>? autoscalingGroups;

  /// Identifier of the remote access EC2 Security Group.
  final String? remoteAccessSecurityGroupId;

  NodeGroupResource({
    this.autoscalingGroups,
    this.remoteAccessSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingGroupsValue = autoscalingGroups;
    if (autoscalingGroupsValue != null) {
      map['autoscalingGroups'] = pulumi.Input.encodeList<
              NodeGroupResourceAutoscalingGroup, Map<String, dynamic>>(
          autoscalingGroupsValue, (value) => value.toMap());
    }
    final remoteAccessSecurityGroupIdValue = remoteAccessSecurityGroupId;
    if (remoteAccessSecurityGroupIdValue != null) {
      map['remoteAccessSecurityGroupId'] = remoteAccessSecurityGroupIdValue;
    }
    return map;
  }

  factory NodeGroupResource.fromMap(Map<String, dynamic> map) {
    return NodeGroupResource(
      autoscalingGroups: map['autoscalingGroups'] == null
          ? null
          : pulumi.Input.decodeList<NodeGroupResourceAutoscalingGroup>(
              map['autoscalingGroups'],
              (value) => NodeGroupResourceAutoscalingGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      remoteAccessSecurityGroupId: map['remoteAccessSecurityGroupId'] == null
          ? null
          : map['remoteAccessSecurityGroupId'] as String,
    );
  }
}
