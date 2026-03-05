// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_api_version_args_doc}
/// The set of arguments for ApiVersion.
/// {@endtemplate}
/// {@macro pulumi_apicenter_api_version_args_doc}
class ApiVersionArgs {
  /// The name of the API.
  final pulumi.Input<String> apiName;
  /// Current lifecycle stage of the API.
  final pulumi.Input<String> lifecycleStage;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// API version title.
  final pulumi.Input<String> title;
  /// The name of the API version.
  final pulumi.Input<String>? versionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ApiVersionArgs].
  /// [apiName] The name of the API.
  /// [lifecycleStage] Current lifecycle stage of the API.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [title] API version title.
  /// [versionName] The name of the API version.
  /// [workspaceName] The name of the workspace.
  ApiVersionArgs({
    required this.apiName,
    required this.lifecycleStage,
    required this.resourceGroupName,
    required this.serviceName,
    required this.title,
    this.versionName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'lifecycleStage': lifecycleStage,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'title': title,
      'versionName': ?versionName,
      'workspaceName': workspaceName,
    };
  }

  factory ApiVersionArgs.fromMap(Map<String, dynamic> map) {
    return ApiVersionArgs(
      apiName: pulumi.Input.fromValue(map['apiName'] as String),
      lifecycleStage: pulumi.Input.fromValue(map['lifecycleStage'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      title: pulumi.Input.fromValue(map['title'] as String),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

