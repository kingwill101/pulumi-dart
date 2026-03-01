// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_link_connection_approval_request.dart';

/// {@template pulumi_datafactory_private_endpoint_connection_args_doc}
/// The set of arguments for PrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_datafactory_private_endpoint_connection_args_doc}
class PrivateEndpointConnectionArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The private endpoint connection name.
  final pulumi.Input<String>? privateEndpointConnectionName;
  /// Core resource properties
  final pulumi.Input<PrivateLinkConnectionApprovalRequest>? properties;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [PrivateEndpointConnectionArgs].
  /// [factoryName] The factory name.
  /// [privateEndpointConnectionName] The private endpoint connection name.
  /// [properties] Core resource properties
  /// [resourceGroupName] The resource group name.
  PrivateEndpointConnectionArgs({
    required String factoryName,
    String? privateEndpointConnectionName,
    PrivateLinkConnectionApprovalRequest? properties,
    required String resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      privateEndpointConnectionName = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionName),
      properties = pulumi.Input.asOptionalInput<PrivateLinkConnectionApprovalRequest>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'privateEndpointConnectionName': ?privateEndpointConnectionName,
      'properties': ?pulumi.Input.mapOptionalInputValue<PrivateLinkConnectionApprovalRequest, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
    };
  }

  factory PrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionArgs(
      factoryName: map['factoryName'] as String,
      privateEndpointConnectionName: map['privateEndpointConnectionName'] == null ? null : map['privateEndpointConnectionName'] as String,
      properties: map['properties'] == null ? null : PrivateLinkConnectionApprovalRequest.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

