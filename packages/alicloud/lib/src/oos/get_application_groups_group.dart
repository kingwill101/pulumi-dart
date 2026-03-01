// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationGroupsGroup {
  /// The name of the Application group.
  final String applicationGroupName;
  /// The name of the Application.
  final String applicationName;
  /// The ID of the cloud monitor group.
  final String cmsGroupId;
  /// The Creation time of the resource.
  final String createTime;
  /// The region ID of the deployment.
  final String deployRegionId;
  /// Application group description information.
  final String description;
  /// The ID of the Application Group. Its value is same as Queue Name.
  final String id;
  /// Label key.
  final String importTagKey;
  /// Label value.
  final String importTagValue;
  /// The Update time of the resource.
  final String updateTime;

  /// Creates a new [GetApplicationGroupsGroup].
  /// [applicationGroupName] The name of the Application group.
  /// [applicationName] The name of the Application.
  /// [cmsGroupId] The ID of the cloud monitor group.
  /// [createTime] The Creation time of the resource.
  /// [deployRegionId] The region ID of the deployment.
  /// [description] Application group description information.
  /// [id] The ID of the Application Group. Its value is same as Queue Name.
  /// [importTagKey] Label key.
  /// [importTagValue] Label value.
  /// [updateTime] The Update time of the resource.
  GetApplicationGroupsGroup({
    required this.applicationGroupName,
    required this.applicationName,
    required this.cmsGroupId,
    required this.createTime,
    required this.deployRegionId,
    required this.description,
    required this.id,
    required this.importTagKey,
    required this.importTagValue,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGroupName': applicationGroupName,
      'applicationName': applicationName,
      'cmsGroupId': cmsGroupId,
      'createTime': createTime,
      'deployRegionId': deployRegionId,
      'description': description,
      'id': id,
      'importTagKey': importTagKey,
      'importTagValue': importTagValue,
      'updateTime': updateTime,
    };
  }

  factory GetApplicationGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetApplicationGroupsGroup(
      applicationGroupName: map['applicationGroupName'] as String,
      applicationName: map['applicationName'] as String,
      cmsGroupId: map['cmsGroupId'] as String,
      createTime: map['createTime'] as String,
      deployRegionId: map['deployRegionId'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      importTagKey: map['importTagKey'] as String,
      importTagValue: map['importTagValue'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

