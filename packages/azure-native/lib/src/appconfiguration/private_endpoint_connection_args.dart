// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_endpoint.dart';
import 'private_link_service_connection_state.dart';

/// {@template pulumi_appconfiguration_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_appconfiguration_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The name of the configuration store.
  final pulumi.Input<String> configStoreName;
  /// The resource of private endpoint.
  final pulumi.Input<PrivateEndpoint>? privateEndpoint;
  /// Private endpoint connection name
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// The name of the resource group to which the container registry belongs.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [configStoreName] The name of the configuration store.
  /// [privateEndpoint] The resource of private endpoint.
  /// [privateEndpointConnectionName] Private endpoint connection name
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [resourceGroupName] The name of the resource group to which the container registry belongs.
  PrivateEndpointConnectionArgs({
    required String configStoreName,
    PrivateEndpoint? privateEndpoint,
    String? privateEndpointConnectionName,
    required PrivateLinkServiceConnectionState privateLinkServiceConnectionState,
    required String resourceGroupName,
  }) :
      configStoreName = pulumi.Input.asInput<String>(configStoreName),
      privateEndpoint = pulumi.Input.asOptionalInput<PrivateEndpoint>(privateEndpoint),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      privateLinkServiceConnectionState = pulumi.Input.asInput<PrivateLinkServiceConnectionState>(privateLinkServiceConnectionState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configStoreName': configStoreName,
      'privateEndpoint': ?pulumi.Input.mapOptionalInputValue<PrivateEndpoint, Map<String, dynamic>>(privateEndpoint, (value) => value.toMap()),
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      configStoreName: map['configStoreName'] as String,
      privateEndpoint: map['privateEndpoint'] == null ? null : PrivateEndpoint.fromMap((map['privateEndpoint'] as Map).cast<String, dynamic>()),
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : map['privateEndpointConnectionName'] as String,
      privateLinkServiceConnectionState: PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

