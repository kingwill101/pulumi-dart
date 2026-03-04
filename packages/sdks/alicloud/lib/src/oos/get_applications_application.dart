// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationsApplication {
  /// The name of the application.
  final pulumi.Input<String> applicationName;

  /// The Created time of the application.
  final pulumi.Input<String> createTime;

  /// Application group description information.
  final pulumi.Input<String> description;

  /// The ID of the Application. The value is formate as &lt;application_name&gt;.
  final pulumi.Input<String> id;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The Updated time of the application.
  final pulumi.Input<String> updateTime;

  /// Creates a new [GetApplicationsApplication].
  /// [applicationName] The name of the application.
  /// [createTime] The Created time of the application.
  /// [description] Application group description information.
  /// [id] The ID of the Application. The value is formate as &lt;application_name&gt;.
  /// [resourceGroupId] The ID of the resource group.
  /// [tags] The tag of the resource.
  /// [updateTime] The Updated time of the application.
  GetApplicationsApplication({
    required this.applicationName,
    required this.createTime,
    required this.description,
    required this.id,
    required this.resourceGroupId,
    required this.tags,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationName': applicationName,
      'createTime': createTime,
      'description': description,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'tags': tags,
      'updateTime': updateTime,
    };
  }

  factory GetApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetApplicationsApplication(
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      updateTime: pulumi.Input.fromValue(map['updateTime'] as String),
    );
  }
}
