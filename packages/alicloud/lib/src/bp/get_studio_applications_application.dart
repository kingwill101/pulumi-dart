// ignore_for_file: unused_element, unnecessary_cast


class GetStudioApplicationsApplication {
  /// The ID of the Application.
  final String applicationId;
  /// The name of the Application.
  final String applicationName;
  /// The creation time of the Application.
  final String createTime;
  /// The ID of the Application.
  final String id;
  /// The image url of the Application.
  final String imageUrl;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The status of the Application. Valid values: `success`, `release`.
  final String status;
  /// The topo url of the Application.
  final String topoUrl;

  /// Creates a new [GetStudioApplicationsApplication].
  /// [applicationId] The ID of the Application.
  /// [applicationName] The name of the Application.
  /// [createTime] The creation time of the Application.
  /// [id] The ID of the Application.
  /// [imageUrl] The image url of the Application.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the Application. Valid values: `success`, `release`.
  /// [topoUrl] The topo url of the Application.
  GetStudioApplicationsApplication({
    required this.applicationId,
    required this.applicationName,
    required this.createTime,
    required this.id,
    required this.imageUrl,
    required this.resourceGroupId,
    required this.status,
    required this.topoUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'applicationName': applicationName,
      'createTime': createTime,
      'id': id,
      'imageUrl': imageUrl,
      'resourceGroupId': resourceGroupId,
      'status': status,
      'topoUrl': topoUrl,
    };
  }

  factory GetStudioApplicationsApplication.fromMap(Map<String, dynamic> map) {
    return GetStudioApplicationsApplication(
      applicationId: map['applicationId'] as String,
      applicationName: map['applicationName'] as String,
      createTime: map['createTime'] as String,
      id: map['id'] as String,
      imageUrl: map['imageUrl'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      status: map['status'] as String,
      topoUrl: map['topoUrl'] as String,
    );
  }
}

