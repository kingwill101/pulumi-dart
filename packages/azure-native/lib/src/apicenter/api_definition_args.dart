// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apicenter_api_definition_args_doc}
/// The set of arguments for ApiDefinition.
/// {@endtemplate}
/// {@macro pulumi_apicenter_api_definition_args_doc}
class ApiDefinitionArgs {
  /// The name of the API.
  final pulumi.Input<String> apiName;
  /// The name of the API definition.
  final pulumi.Input<String>? definitionName;
  /// API definition description.
  final pulumi.Input<String>? description;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of Azure API Center service.
  final pulumi.Input<String> serviceName;
  /// API definition title.
  final pulumi.Input<String> title;
  /// The name of the API version.
  final pulumi.Input<String> versionName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ApiDefinitionArgs].
  /// [apiName] The name of the API.
  /// [definitionName] The name of the API definition.
  /// [description] API definition description.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of Azure API Center service.
  /// [title] API definition title.
  /// [versionName] The name of the API version.
  /// [workspaceName] The name of the workspace.
  ApiDefinitionArgs({
    required String apiName,
    String? definitionName,
    String? description,
    required String resourceGroupName,
    required String serviceName,
    required String title,
    required String versionName,
    required String workspaceName,
  }) :
      apiName = pulumi.Input.asInput<String>(apiName),
      definitionName = pulumi.Input.asOptionalInput<String>(definitionName),
      description = pulumi.Input.asOptionalInput<String>(description),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      title = pulumi.Input.asInput<String>(title),
      versionName = pulumi.Input.asInput<String>(versionName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiName': apiName,
      'definitionName': ?definitionName,
      'description': ?description,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'title': title,
      'versionName': versionName,
      'workspaceName': workspaceName,
    };
  }

  factory ApiDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return ApiDefinitionArgs(
      apiName: map['apiName'] as String,
      definitionName: map['definitionName'] == null ? null : map['definitionName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      title: map['title'] as String,
      versionName: map['versionName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

