// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_get_virtual_endpoint_args_doc}
/// Arguments for getVirtualEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_get_virtual_endpoint_args_doc}
class GetVirtualEndpointArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Base name of the virtual endpoints.
  final pulumi.Input<String> virtualEndpointName;

  /// Creates a new [GetVirtualEndpointArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [virtualEndpointName] Base name of the virtual endpoints.
  GetVirtualEndpointArgs({
    required this.resourceGroupName,
    required this.serverName,
    required this.virtualEndpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualEndpointName': virtualEndpointName,
    };
  }

  factory GetVirtualEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualEndpointArgs(
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serverName: pulumi.Input.fromValue(map['serverName'] as String),
      virtualEndpointName: pulumi.Input.fromValue(map['virtualEndpointName'] as String),
    );
  }
}

