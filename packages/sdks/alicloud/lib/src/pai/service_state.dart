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
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? develop,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? serviceConfig,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? workspaceId,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      develop = pulumi.Input.asOptionalInput<String>(develop),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      serviceConfig = pulumi.Input.asOptionalInput<String>(serviceConfig),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

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
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      develop: map['develop'] == null ? null : pulumi.Output.create<String>(map['develop'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      serviceConfig: map['serviceConfig'] == null ? null : pulumi.Output.create<String>(map['serviceConfig'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workspaceId: map['workspaceId'] == null ? null : pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

