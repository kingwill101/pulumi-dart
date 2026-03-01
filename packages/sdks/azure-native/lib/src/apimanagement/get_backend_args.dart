// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_backend_args_doc}
/// Arguments for getBackend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_backend_args_doc}
class GetBackendArgs {
  /// Identifier of the Backend entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String> backendId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GetBackendArgs].
  /// [backendId] Identifier of the Backend entity. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GetBackendArgs({
    required pulumi.Output<String> backendId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      backendId = pulumi.Input.asInput<String>(backendId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendId': backendId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GetBackendArgs.fromMap(Map<String, dynamic> map) {
    return GetBackendArgs(
      backendId: pulumi.Output.create<String>(map['backendId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

