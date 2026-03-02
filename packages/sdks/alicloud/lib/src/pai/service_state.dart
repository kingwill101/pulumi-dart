// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Service resources.
class ServiceState {
  /// Creation time of the service
  final pulumi.Input<String>? createTime;
  /// Whether to enter the development mode.
  final pulumi.Input<String>? develop;
  /// The region ID of the resource
  final pulumi.Input<String>? regionId;
  /// Service configuration information. Please refer to https://www.alibabacloud.com/help/en/pai/user-guide/parameters-of-model-services
  final pulumi.Input<String>? serviceConfig;
  /// Service Current Status.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Workspace id
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ServiceState].
  /// [createTime] Creation time of the service
  /// [develop] Whether to enter the development mode.
  /// [regionId] The region ID of the resource
  /// [serviceConfig] Service configuration information. Please refer to https://www.alibabacloud.com/help/en/pai/user-guide/parameters-of-model-services
  /// [status] Service Current Status.
  /// [tags] The tag of the resource.
  /// [workspaceId] Workspace id
  ServiceState({
    this.createTime,
    this.develop,
    this.regionId,
    this.serviceConfig,
    this.status,
    this.tags,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'develop': ?develop,
      'regionId': ?regionId,
      'serviceConfig': ?serviceConfig,
      'status': ?status,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory ServiceState.fromMap(Map<String, dynamic> map) {
    return ServiceState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      develop: map['develop'] == null ? null : (map['develop']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      serviceConfig: map['serviceConfig'] == null ? null : (map['serviceConfig']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId']! as String).input(),
    );
  }
}

