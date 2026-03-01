// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationsApplication {
  /// The name of the application.
  final String applicationName;
  /// The Created time of the application.
  final String createTime;
  /// Application group description information.
  final String description;
  /// The ID of the Application. The value is formate as <application_name>.
  final String id;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The tag of the resource.
  final Map<String, String> tags;
  /// The Updated time of the application.
  final String updateTime;

  /// Creates a new [GetApplicationsApplication].
  /// [applicationName] The name of the application.
  /// [createTime] The Created time of the application.
  /// [description] Application group description information.
  /// [id] The ID of the Application. The value is formate as <application_name>.
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
      applicationName: map['applicationName'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

