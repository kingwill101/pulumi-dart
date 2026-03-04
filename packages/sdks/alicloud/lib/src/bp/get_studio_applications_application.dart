// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStudioApplicationsApplication {
  /// The ID of the Application.
  final pulumi.Input<String> applicationId;

  /// The name of the Application.
  final pulumi.Input<String> applicationName;

  /// The creation time of the Application.
  final pulumi.Input<String> createTime;

  /// The ID of the Application.
  final pulumi.Input<String> id;

  /// The image url of the Application.
  final pulumi.Input<String> imageUrl;

  /// The ID of the resource group.
  final pulumi.Input<String> resourceGroupId;

  /// The status of the Application. Valid values: `success`, `release`.
  final pulumi.Input<String> status;

  /// The topo url of the Application.
  final pulumi.Input<String> topoUrl;

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
      applicationId: pulumi.Input.fromValue(map['applicationId'] as String),
      applicationName: pulumi.Input.fromValue(map['applicationName'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      imageUrl: pulumi.Input.fromValue(map['imageUrl'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      topoUrl: pulumi.Input.fromValue(map['topoUrl'] as String),
    );
  }
}
