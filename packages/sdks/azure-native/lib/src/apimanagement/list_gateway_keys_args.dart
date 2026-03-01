// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_list_gateway_keys_args_doc}
/// Arguments for listGatewayKeys.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_list_gateway_keys_args_doc}
class ListGatewayKeysArgs {
  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [ListGatewayKeysArgs].
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  ListGatewayKeysArgs({
    required pulumi.Output<String> gatewayId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory ListGatewayKeysArgs.fromMap(Map<String, dynamic> map) {
    return ListGatewayKeysArgs(
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

