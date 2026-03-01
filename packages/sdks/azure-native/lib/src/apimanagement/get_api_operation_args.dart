// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_api_operation_args_doc}
/// Arguments for getApiOperation.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_api_operation_args_doc}
class GetApiOperationArgs {
  /// API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  final pulumi.Input<String> apiId;
  /// Operation identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> operationId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetApiOperationArgs].
  /// [apiId] API revision identifier. Must be unique in the current API Management service instance. Non-current revision has ;rev=n as a suffix where n is the revision number.
  /// [operationId] Operation identifier within an API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetApiOperationArgs({
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> operationId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      operationId = pulumi.Input.asInput<String>(operationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'operationId': operationId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetApiOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetApiOperationArgs(
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      operationId: pulumi.Output.create<String>(map['operationId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

