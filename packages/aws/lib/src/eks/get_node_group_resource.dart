// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_node_group_resource_autoscaling_group.dart';

class GetNodeGroupResource {
  /// List of objects containing information about AutoScaling Groups.
  final List<GetNodeGroupResourceAutoscalingGroup> autoscalingGroups;

  /// Identifier of the remote access EC2 Security Group.
  final String remoteAccessSecurityGroupId;

  /// Creates a new [GetNodeGroupResource].
  /// [autoscalingGroups] List of objects containing information about AutoScaling Groups.
  /// [remoteAccessSecurityGroupId] Identifier of the remote access EC2 Security Group.
  GetNodeGroupResource({
    required this.autoscalingGroups,
    required this.remoteAccessSecurityGroupId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingGroups'] = pulumi.Input.encodeList<
        GetNodeGroupResourceAutoscalingGroup,
        Map<String, dynamic>>(autoscalingGroups, (value) => value.toMap());
    map['remoteAccessSecurityGroupId'] = remoteAccessSecurityGroupId;
    return map;
  }

  factory GetNodeGroupResource.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupResource(
      autoscalingGroups:
          pulumi.Input.decodeList<GetNodeGroupResourceAutoscalingGroup>(
              map['autoscalingGroups'],
              (value) => GetNodeGroupResourceAutoscalingGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      remoteAccessSecurityGroupId: map['remoteAccessSecurityGroupId'] as String,
    );
  }
}
