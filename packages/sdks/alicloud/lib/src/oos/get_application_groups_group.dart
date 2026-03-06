// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGroupsGroup {
  /// The name of the Application group.
  final pulumi.Input<String> applicationGroupName;
  /// The name of the Application.
  final pulumi.Input<String> applicationName;
  /// The ID of the cloud monitor group.
  final pulumi.Input<String> cmsGroupId;
  /// The Creation time of the resource.
  final pulumi.Input<String> createTime;
  /// The region ID of the deployment.
  final pulumi.Input<String> deployRegionId;
  /// Application group description information.
  final pulumi.Input<String> description;
  /// The ID of the Application Group. Its value is same as Queue Name.
  final pulumi.Input<String> id;
  /// Label key.
  final pulumi.Input<String> importTagKey;
  /// Label value.
  final pulumi.Input<String> importTagValue;
  /// The Update time of the resource.
  final pulumi.Input<String> updateTime;

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
  const GetApplicationGroupsGroup({
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
      applicationGroupName: pulumi.Input.fromValue(map['applicationGroupName'] as String),
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      cmsGroupId: pulumi.Input.fromValue(map['cmsGroupId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      deployRegionId: pulumi.Input.fromValue(map['deployRegionId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      importTagKey: pulumi.Input.fromValue(map['importTagKey'] as String),
      importTagValue: pulumi.Input.fromValue(map['importTagValue'] as String),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}

