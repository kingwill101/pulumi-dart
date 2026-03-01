// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_network_application_gateway_private_endpoint_connection_args_doc}
/// The set of arguments for ApplicationGatewayPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_network_application_gateway_private_endpoint_connection_args_doc}
class ApplicationGatewayPrivateEndpointConnectionArgs {
  /// The name of the application gateway.
  final pulumi.Input<String> applicationGatewayName;
  /// The name of the application gateway private endpoint connection.
  final pulumi.Input<String>? connectionName;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Name of the private endpoint connection on an application gateway.
  final pulumi.Input<String>? name;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState>? privateLinkServiceConnectionState;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ApplicationGatewayPrivateEndpointConnectionArgs].
  /// [applicationGatewayName] The name of the application gateway.
  /// [connectionName] The name of the application gateway private endpoint connection.
  /// [id] Resource ID.
  /// [name] Name of the private endpoint connection on an application gateway.
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group.
  ApplicationGatewayPrivateEndpointConnectionArgs({
    required String applicationGatewayName,
    String? connectionName,
    String? id,
    String? name,
    PrivateLinkServiceConnectionState? privateLinkServiceConnectionState,
    required String resourceGroupName,
  }) :
      applicationGatewayName = pulumi.Input.asInput<String>(applicationGatewayName),
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateLinkServiceConnectionState = pulumi.Input.asOptionalInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayName': applicationGatewayName,
      'connectionName': ?connectionName,
      'id': ?id,
      'name': ?name,
      'privateLinkServiceConnectionState': ?pulumi.Input.mapOptionalInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ApplicationGatewayPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayPrivateEndpointConnectionArgs(
      applicationGatewayName: map['applicationGatewayName'] as String,
      connectionName: map['connectionName'] == null ? null : map['connectionName'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      privateLinkServiceConnectionState: map['privateLinkServiceConnectionState'] == null ? null : PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

