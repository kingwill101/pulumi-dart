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
  const PrivateEndpointConnectionProxyArgs({
    required this.accountName,
    this.privateEndpointConnectionProxyId,
    this.remotePrivateEndpoint,
    required this.resourceGroupName,
    this.status,
  });

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
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      privateEndpointConnectionProxyId: (() { final guardedValue = map['privateEndpointConnectionProxyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remotePrivateEndpoint: (() { final guardedValue = map['remotePrivateEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RemotePrivateEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

