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
      applicationId: (map['applicationId'] as String).input(),
      applicationName: (map['applicationName'] as String).input(),
      createTime: (map['createTime'] as String).input(),
      id: (map['id'] as String).input(),
      imageUrl: (map['imageUrl'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      status: (map['status'] as String).input(),
      topoUrl: (map['topoUrl'] as String).input(),
    );
  }
}

