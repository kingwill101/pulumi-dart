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
    pulumi.Output<String>? apiId,
    required pulumi.Output<String> gatewayId,
    pulumi.Output<ProvisioningState>? provisioningState,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      provisioningState = pulumi.Input.asOptionalInput<ProvisioningState>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'gatewayId': gatewayId,
      'provisioningState': ?pulumi.Input.mapOptionalInputValue<ProvisioningState, String>(provisioningState, (value) => value.value),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
    };
  }

  factory GatewayApiEntityTagArgs.fromMap(Map<String, dynamic> map) {
    return GatewayApiEntityTagArgs(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      provisioningState: map['provisioningState'] == null ? null : pulumi.Output.create<ProvisioningState>(ProvisioningState.fromValue(map['provisioningState'] as String)),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
    );
  }
}

