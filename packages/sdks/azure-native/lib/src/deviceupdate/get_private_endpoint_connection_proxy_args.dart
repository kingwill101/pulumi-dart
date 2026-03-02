// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_deviceupdate_get_private_endpoint_connection_proxy_args_doc}
/// Arguments for getPrivateEndpointConnectionProxy.
/// {@endtemplate}
/// {@macro pulumi_deviceupdate_get_private_endpoint_connection_proxy_args_doc}
class GetPrivateEndpointConnectionProxyArgs {
  /// Account name.
  final pulumi.Input<String> accountName;
  /// The ID of the private endpoint connection proxy object.
  final pulumi.Input<String> privateEndpointConnectionProxyId;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetPrivateEndpointConnectionProxyArgs].
  /// [accountName] Account name.
  /// [privateEndpointConnectionProxyId] The ID of the private endpoint connection proxy object.
  /// [resourceGroupName] The resource group name.
  GetPrivateEndpointConnectionProxyArgs({
    required this.accountName,
    required this.privateEndpointConnectionProxyId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'privateEndpointConnectionProxyId': privateEndpointConnectionProxyId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPrivateEndpointConnectionProxyArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionProxyArgs(
      accountName: (map['accountName'] as String).input(),
      privateEndpointConnectionProxyId: (map['privateEndpointConnectionProxyId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

