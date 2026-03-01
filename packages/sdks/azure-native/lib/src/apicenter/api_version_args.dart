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
    required pulumi.Output<String> apiName,
    required pulumi.Output<String> lifecycleStage,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> title,
    pulumi.Output<String>? versionName,
    required pulumi.Output<String> workspaceName,
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
      apiName: pulumi.Output.create<String>(map['apiName'] as String),
      lifecycleStage: pulumi.Output.create<String>(map['lifecycleStage'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      title: pulumi.Output.create<String>(map['title'] as String),
      versionName: map['versionName'] == null ? null : pulumi.Output.create<String>(map['versionName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

