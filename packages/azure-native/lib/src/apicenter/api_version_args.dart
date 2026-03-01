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
    required String apiName,
    required String lifecycleStage,
    required String resourceGroupName,
    required String serviceName,
    required String title,
    String? versionName,
    required String workspaceName,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      lifecycleStage = pulumi.Input.asInput<String>(lifecycleStage),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      title = pulumi.Input.asInput<String>(title),
      versionName = pulumi.Input.asOptionalInput<String>(versionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      apiName: map['apiName'] as String,
      lifecycleStage: map['lifecycleStage'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      title: map['title'] as String,
      versionName: map['versionName'] == null ? null : map['versionName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

