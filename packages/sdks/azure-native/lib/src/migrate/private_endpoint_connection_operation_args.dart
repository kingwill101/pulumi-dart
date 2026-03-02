// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_service_connection_state.dart';

/// {@template pulumi_migrate_private_endpoint_connection_operation_args_doc}
/// The set of arguments for PrivateEndpointConnectionOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_private_endpoint_connection_operation_args_doc}
class PrivateEndpointConnectionOperationArgs {
  /// Private endpoint connection ARM name
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// A collection of information about the state of the connection between service consumer and provider.
  final pulumi.Input<PrivateLinkServiceConnectionState> privateLinkServiceConnectionState;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionOperationArgs].
  /// [privateEndpointConnectionName] Private endpoint connection ARM name
  /// [privateLinkServiceConnectionState] A collection of information about the state of the connection between service consumer and provider.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  PrivateEndpointConnectionOperationArgs({
    this.privateEndpointConnectionName,
    required this.privateLinkServiceConnectionState,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'privateLinkServiceConnectionState': pulumi.Input.mapInputValue<PrivateLinkServiceConnectionState, Map<String, dynamic>>(privateLinkServiceConnectionState, (value) => value.toMap()),
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionOperationArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionOperationArgs(
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : (map['privateEndpointConnectionName'] as String).input(),
      privateLinkServiceConnectionState: (PrivateLinkServiceConnectionState.fromMap((map['privateLinkServiceConnectionState'] as Map).cast<String, dynamic>())).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

