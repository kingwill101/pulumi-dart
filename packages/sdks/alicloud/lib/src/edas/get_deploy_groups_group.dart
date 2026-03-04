// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeployGroupsGroup {
  /// ID of the EDAS application.
  final pulumi.Input<String> appId;

  /// The version of the deployment package for the application.
  final pulumi.Input<String> appVersionId;

  /// The ID of the cluster that you want to create the application.
  final pulumi.Input<String> clusterId;

  /// The time when the instance group was created.
  final pulumi.Input<int> createTime;

  /// The ID of the instance group.
  final pulumi.Input<String> groupId;

  /// The name of the instance group. The length cannot exceed 64 characters.
  final pulumi.Input<String> groupName;

  /// The type of the instance group. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  final pulumi.Input<int> groupType;

  /// The version of the deployment package for the instance group that was created.
  final pulumi.Input<String> packageVersionId;

  /// The time when the instance group was updated.
  final pulumi.Input<int> updateTime;

  /// Creates a new [GetDeployGroupsGroup].
  /// [appId] ID of the EDAS application.
  /// [appVersionId] The version of the deployment package for the application.
  /// [clusterId] The ID of the cluster that you want to create the application.
  /// [createTime] The time when the instance group was created.
  /// [groupId] The ID of the instance group.
  /// [groupName] The name of the instance group. The length cannot exceed 64 characters.
  /// [groupType] The type of the instance group. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  /// [packageVersionId] The version of the deployment package for the instance group that was created.
  /// [updateTime] The time when the instance group was updated.
  GetDeployGroupsGroup({
    required this.appId,
    required this.appVersionId,
    required this.clusterId,
    required this.createTime,
    required this.groupId,
    required this.groupName,
    required this.groupType,
    required this.packageVersionId,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': appId,
      'appVersionId': appVersionId,
      'clusterId': clusterId,
      'createTime': createTime,
      'groupId': groupId,
      'groupName': groupName,
      'groupType': groupType,
      'packageVersionId': packageVersionId,
      'updateTime': updateTime,
    };
  }

  factory GetDeployGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetDeployGroupsGroup(
      appId: pulumi.Input.fromValue(map['appId'] as String),
      appVersionId: pulumi.Input.fromValue(map['appVersionId'] as String),
      clusterId: pulumi.Input.fromValue(map['clusterId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      groupId: pulumi.Input.fromValue(map['groupId'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      groupType: pulumi.Input.fromValue(map['groupType'] as int),
      packageVersionId: pulumi.Input.fromValue(
        map['packageVersionId'] as String,
      ),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as int),
    );
  }
}
