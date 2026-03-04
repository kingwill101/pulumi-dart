// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provisioning_state.dart';

/// {@template pulumi_apimanagement_gateway_api_entity_tag_args_doc}
/// The set of arguments for GatewayApiEntityTag.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_gateway_api_entity_tag_args_doc}
class GatewayApiEntityTagArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? apiId;

  /// Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  final pulumi.Input<String> gatewayId;

  /// Provisioning state.
  final pulumi.Input<ProvisioningState>? provisioningState;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GatewayApiEntityTagArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [gatewayId] Gateway entity identifier. Must be unique in the current API Management service instance. Must not have value 'managed'
  /// [provisioningState] Provisioning state.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  GatewayApiEntityTagArgs({
    this.apiId,
    required this.gatewayId,
    this.provisioningState,
    required this.resourceGroupName,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'gatewayId': gatewayId,
      'provisioningState':
          ?pulumi.Input.mapOptionalInputValue<ProvisioningState, String>(
            provisioningState,
            (value) => value.wireValue,
          ),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GatewayApiEntityTagArgs.fromMap(Map<String, dynamic> map) {
    return GatewayApiEntityTagArgs(
      apiId: (() {
        final guardedValue = map['apiId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProvisioningState.fromValue(guardedValue as String),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
    );
  }
}
