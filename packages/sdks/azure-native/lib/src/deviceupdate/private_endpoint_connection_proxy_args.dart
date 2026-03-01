// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_private_endpoint.dart';

/// {@template pulumi_deviceupdate_private_endpoint_connection_proxy_args_doc}
/// The set of arguments for PrivateEndpointConnectionProxy.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_private_endpoint_connection_proxy_args_doc}
class PrivateEndpointConnectionProxyArgs {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// The ID of the private endpoint connection proxy object.
  final pulumi.Input<String>? privateEndpointConnectionProxyId;
  /// Remote private endpoint details.
  final pulumi.Input<RemotePrivateEndpoint>? remotePrivateEndpoint;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;
  /// Operation status.
  final pulumi.Input<String>? status;

  /// Creates a new [PrivateEndpointConnectionProxyArgs].
  /// [accountName] Account name.
  /// [privateEndpointConnectionProxyId] The ID of the private endpoint connection proxy object.
  /// [remotePrivateEndpoint] Remote private endpoint details.
  /// [resourceGroupName] The resource group name.
  /// [status] Operation status.
  PrivateEndpointConnectionProxyArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? privateEndpointConnectionProxyId,
    pulumi.Output<RemotePrivateEndpoint>? remotePrivateEndpoint,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? status,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      privateEndpointConnectionProxyId = pulumi.Input.asOptionalInput<String>(privateEndpointConnectionProxyId),
      remotePrivateEndpoint = pulumi.Input.asOptionalInput<RemotePrivateEndpoint>(remotePrivateEndpoint),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      status = pulumi.Input.asOptionalInput<String>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateEndpointConnectionProxyId': ?privateEndpointConnectionProxyId,
      'remotePrivateEndpoint': ?pulumi.Input.mapOptionalInputValue<RemotePrivateEndpoint, Map<String, dynamic>>(remotePrivateEndpoint, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'status': ?status,
    };
  }

  factory PrivateEndpointConnectionProxyArgs.fromMap(Map<String, dynamic> map) {
    return PrivateEndpointConnectionProxyArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      privateEndpointConnectionProxyId: map['privateEndpointConnectionProxyId'] == null ? null : pulumi.Output.create<String>(map['privateEndpointConnectionProxyId'] as String),
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : pulumi.Output.create<RemotePrivateEndpoint>(RemotePrivateEndpoint.fromMap((map['remotePrivateEndpoint'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

