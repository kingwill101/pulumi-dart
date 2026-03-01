// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_tool_args_doc}
/// Arguments for getApiTool.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_tool_args_doc}
class GetApiToolArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tool identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> toolId;

  /// Creates a new [GetApiToolArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [toolId] Tool identifier within an API. Must be unique in the current API Management service instance.
  GetApiToolArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> toolId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      toolId = pulumi.Input.asInput<String>(toolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'toolId': toolId,
    };
  }

  factory GetApiToolArgs.fromMap(Map<String, dynamic> map) {
    return GetApiToolArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      toolId: pulumi.Output.create<String>(map['toolId'] as String),
    );
  }
}

