// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_resource_autoscaling_group.dart';

class GetNodeGroupResource {
  /// List of objects containing information about AutoScaling Groups.
  final pulumi.Input<List<GetNodeGroupResourceAutoscalingGroup>> autoscalingGroups;
  /// Identifier of the remote access EC2 Security Group.
  final pulumi.Input<String> remoteAccessSecurityGroupId;

  /// Creates a new [GetNodeGroupResource].
  /// [autoscalingGroups] List of objects containing information about AutoScaling Groups.
  /// [remoteAccessSecurityGroupId] Identifier of the remote access EC2 Security Group.
  const GetNodeGroupResource({
    required this.autoscalingGroups,
    required this.remoteAccessSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscalingGroups': pulumi.Input.mapInputValue<List<GetNodeGroupResourceAutoscalingGroup>, List<Map<String, dynamic>>>(autoscalingGroups, (value) => pulumi.Input.encodeList<GetNodeGroupResourceAutoscalingGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
      'remoteAccessSecurityGroupId': remoteAccessSecurityGroupId,
    };
  }

  factory GetNodeGroupResource.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResource(
      autoscalingGroups: pulumi.Input.fromValue(pulumi.Input.decodeList<GetNodeGroupResourceAutoscalingGroup>(map['autoscalingGroups']!, (value) => GetNodeGroupResourceAutoscalingGroup.fromMap((value as Map).cast<String, dynamic>()))),
      remoteAccessSecurityGroupId: pulumi.Input.fromValue(map['remoteAccessSecurityGroupId'] as String),
    );
  }
}

