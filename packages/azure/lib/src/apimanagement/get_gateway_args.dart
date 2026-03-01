// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_gateway_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_gateway_get_gateway_args_doc}
class GetGatewayArgs {
  /// The ID of the API Management Service in which the Gateway exists.
  final pulumi.Input<String> apiManagementId;
  /// The name of the API Management Gateway.
  final pulumi.Input<String> name;

  /// Creates a new [GetGatewayArgs].
  /// [apiManagementId] The ID of the API Management Service in which the Gateway exists.
  /// [name] The name of the API Management Gateway.
  GetGatewayArgs({
    required String apiManagementId,
    required String name,
  }) :
      apiManagementId = pulumi.Input.asInput<String>(apiManagementId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiManagementId': apiManagementId,
      'name': name,
    };
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      apiManagementId: map['apiManagementId'] as String,
      name: map['name'] as String,
    );
  }
}

