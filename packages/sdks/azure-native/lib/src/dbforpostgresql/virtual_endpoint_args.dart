// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dbforpostgresql_virtual_endpoint_args_doc}
/// The set of arguments for VirtualEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dbforpostgresql_virtual_endpoint_args_doc}
class VirtualEndpointArgs {
  /// Type of endpoint for the virtual endpoints.
  final pulumi.Input<String>? endpointType;
  /// List of servers that one of the virtual endpoints can refer to.
  final pulumi.Input<List<String>>? members;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the server.
  final pulumi.Input<String> serverName;
  /// Base name of the virtual endpoints.
  final pulumi.Input<String>? virtualEndpointName;

  /// Creates a new [VirtualEndpointArgs].
  /// [endpointType] Type of endpoint for the virtual endpoints.
  /// [members] List of servers that one of the virtual endpoints can refer to.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serverName] The name of the server.
  /// [virtualEndpointName] Base name of the virtual endpoints.
  VirtualEndpointArgs({
    this.endpointType,
    this.members,
    required this.resourceGroupName,
    required this.serverName,
    this.virtualEndpointName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointType': ?endpointType,
      'members': ?members,
      'resourceGroupName': resourceGroupName,
      'serverName': serverName,
      'virtualEndpointName': ?virtualEndpointName,
    };
  }

  factory VirtualEndpointArgs.fromMap(Map<String, dynamic> map) {
    return VirtualEndpointArgs(
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      members: map['members'] == null ? null : ((map['members'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serverName: (map['serverName'] as String).input(),
      virtualEndpointName: map['virtualEndpointName'] == null ? null : (map['virtualEndpointName'] as String).input(),
    );
  }
}

