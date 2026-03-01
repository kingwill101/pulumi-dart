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
    pulumi.Output<String>? endpointType,
    pulumi.Output<List<String>>? members,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serverName,
    pulumi.Output<String>? virtualEndpointName,
  }) :
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serverName = pulumi.Input.asInput<String>(serverName),
      virtualEndpointName = pulumi.Input.asOptionalInput<String>(virtualEndpointName);

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
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serverName: pulumi.Output.create<String>(map['serverName'] as String),
      virtualEndpointName: map['virtualEndpointName'] == null ? null : pulumi.Output.create<String>(map['virtualEndpointName'] as String),
    );
  }
}

