// ignore_for_file: unused_element, unnecessary_cast


class GetDeployGroupsGroup {
  /// ID of the EDAS application.
  final String appId;
  /// The version of the deployment package for the application.
  final String appVersionId;
  /// The ID of the cluster that you want to create the application.
  final String clusterId;
  /// The time when the instance group was created.
  final int createTime;
  /// The ID of the instance group.
  final String groupId;
  /// The name of the instance group. The length cannot exceed 64 characters.
  final String groupName;
  /// The type of the instance group. Valid values: 0: Default group. 1: Phased release is disabled for traffic management. 2: Phased release is enabled for traffic management.
  final int groupType;
  /// The version of the deployment package for the instance group that was created.
  final String packageVersionId;
  /// The time when the instance group was updated.
  final int updateTime;

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
      appId: map['appId'] as String,
      appVersionId: map['appVersionId'] as String,
      clusterId: map['clusterId'] as String,
      createTime: map['createTime'] as int,
      groupId: map['groupId'] as String,
      groupName: map['groupName'] as String,
      groupType: map['groupType'] as int,
      packageVersionId: map['packageVersionId'] as String,
      updateTime: map['updateTime'] as int,
    );
  }
}

