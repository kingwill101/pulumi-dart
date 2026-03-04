// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_privatelink_get_vpc_endpoint_connections_get_vpc_endpoint_connections_args_doc}
/// Arguments for getVpcEndpointConnections.
/// {@endtemplate}
/// {@macro pulumi_privatelink_get_vpc_endpoint_connections_get_vpc_endpoint_connections_args_doc}
class GetVpcEndpointConnectionsArgs {
  /// The ID of the Vpc Endpoint.
  final pulumi.Input<String>? endpointId;

  /// The endpoint owner id.
  final pulumi.Input<int>? endpointOwnerId;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// The ID of the Vpc Endpoint Service.
  final pulumi.Input<String> serviceId;

  /// The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetVpcEndpointConnectionsArgs].
  /// [endpointId] The ID of the Vpc Endpoint.
  /// [endpointOwnerId] The endpoint owner id.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [serviceId] The ID of the Vpc Endpoint Service.
  /// [status] The status of Vpc Endpoint Connection. Valid Values: `Connected`, `Connecting`, `Deleted`, `Deleting`, `Disconnected`, `Disconnecting`, `Pending` and `ServiceDeleted`.
  GetVpcEndpointConnectionsArgs({
    this.endpointId,
    this.endpointOwnerId,
    this.outputFile,
    required this.serviceId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointId': ?endpointId,
      'endpointOwnerId': ?endpointOwnerId,
      'outputFile': ?outputFile,
      'serviceId': serviceId,
      'status': ?status,
    };
  }

  factory GetVpcEndpointConnectionsArgs.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointConnectionsArgs(
      endpointId: (() {
        final guardedValue = map['endpointId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpointOwnerId: (() {
        final guardedValue = map['endpointOwnerId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceId: pulumi.Input.fromValue(map['serviceId'] as String),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
