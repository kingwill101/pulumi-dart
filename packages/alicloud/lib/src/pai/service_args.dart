// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_pai_service_service_args_doc}
/// The set of arguments for Service.
/// {@endtemplate}
/// {@macro pulumi_pai_service_service_args_doc}
class ServiceArgs {
  /// Whether to enter the development mode.
  final pulumi.Input<String>? develop;
  /// Service configuration information. Please refer to https://www.alibabacloud.com/help/en/pai/user-guide/parameters-of-model-services
  final pulumi.Input<String> serviceConfig;
  /// Service Current Status.
  final pulumi.Input<String>? status;
  /// The tag of the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Workspace id
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [ServiceArgs].
  /// [develop] Whether to enter the development mode.
  /// [serviceConfig] Service configuration information. Please refer to https://www.alibabacloud.com/help/en/pai/user-guide/parameters-of-model-services
  /// [status] Service Current Status.
  /// [tags] The tag of the resource.
  /// [workspaceId] Workspace id
  ServiceArgs({
    String? develop,
    required String serviceConfig,
    String? status,
    Map<String, String>? tags,
    String? workspaceId,
  }) :
      develop = pulumi.Input.asOptionalInput<String>(develop),
      serviceConfig = pulumi.Input.asInput<String>(serviceConfig),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workspaceId = pulumi.Input.asOptionalInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'develop': ?develop,
      'serviceConfig': serviceConfig,
      'status': ?status,
      'tags': ?tags,
      'workspaceId': ?workspaceId,
    };
  }

  factory ServiceArgs.fromMap(Map<String, dynamic> map) {
    return ServiceArgs(
      develop: map['develop'] == null ? null : map['develop'] as String,
      serviceConfig: map['serviceConfig'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'] as String,
    );
  }
}

