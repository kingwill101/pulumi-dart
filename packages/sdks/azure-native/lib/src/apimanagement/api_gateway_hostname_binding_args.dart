// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_hostname_binding_key_vault.dart';

/// {@template pulumi_apimanagement_api_gateway_hostname_binding_args_doc}
/// The set of arguments for ApiGatewayHostnameBinding.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_api_gateway_hostname_binding_args_doc}
class ApiGatewayHostnameBindingArgs {
  /// The name of the API Management gateway.
  final pulumi.Input<String> gatewayName;
  /// The default hostname of the data-plane gateway.
  final pulumi.Input<String> hostname;
  /// Gateway hostname binding identifier. Must be unique in the scope of parent Gateway entity.
  final pulumi.Input<String>? hostnameBindingName;
  /// The link to the API Management service workspace.
  final pulumi.Input<GatewayHostnameBindingKeyVault> keyVault;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ApiGatewayHostnameBindingArgs].
  /// [gatewayName] The name of the API Management gateway.
  /// [hostname] The default hostname of the data-plane gateway.
  /// [hostnameBindingName] Gateway hostname binding identifier. Must be unique in the scope of parent Gateway entity.
  /// [keyVault] The link to the API Management service workspace.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  ApiGatewayHostnameBindingArgs({
    required pulumi.Output<String> gatewayName,
    required pulumi.Output<String> hostname,
    pulumi.Output<String>? hostnameBindingName,
    required pulumi.Output<GatewayHostnameBindingKeyVault> keyVault,
    required pulumi.Output<String> resourceGroupName,
  }) :
      gatewayName = pulumi.Input.asInput<String>(gatewayName),
      hostname = pulumi.Input.asInput<String>(hostname),
      hostnameBindingName = pulumi.Input.asOptionalInput<String>(hostnameBindingName),
      keyVault = pulumi.Input.asInput<GatewayHostnameBindingKeyVault>(keyVault),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayName': gatewayName,
      'hostname': hostname,
      'hostnameBindingName': ?hostnameBindingName,
      'keyVault': pulumi.Input.mapInputValue<GatewayHostnameBindingKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ApiGatewayHostnameBindingArgs.fromMap(Map<String, dynamic> map) {
    return ApiGatewayHostnameBindingArgs(
      gatewayName: pulumi.Output.create<String>(map['gatewayName'] as String),
      hostname: pulumi.Output.create<String>(map['hostname'] as String),
      hostnameBindingName: map['hostnameBindingName'] == null ? null : pulumi.Output.create<String>(map['hostnameBindingName'] as String),
      keyVault: pulumi.Output.create<GatewayHostnameBindingKeyVault>(GatewayHostnameBindingKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

