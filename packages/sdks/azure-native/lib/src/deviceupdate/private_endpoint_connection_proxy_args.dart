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
      accountName: (map['accountName'] as String).input(),
      privateEndpointConnectionProxyId: map['privateEndpointConnectionProxyId'] == null ? null : (map['privateEndpointConnectionProxyId'] as String).input(),
      remotePrivateEndpoint: map['remotePrivateEndpoint'] == null ? null : (RemotePrivateEndpoint.fromMap((map['remotePrivateEndpoint'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

