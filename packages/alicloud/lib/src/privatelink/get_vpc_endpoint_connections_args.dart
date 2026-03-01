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
    String? endpointId,
    int? endpointOwnerId,
    String? outputFile,
    required String serviceId,
    String? status,
  }) :
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      endpointOwnerId = pulumi.Input.asOptionalInput<int>(endpointOwnerId),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      serviceId = pulumi.Input.asInput<String>(serviceId),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      endpointId: map['endpointId'] == null ? null : map['endpointId'] as String,
      endpointOwnerId: map['endpointOwnerId'] == null ? null : map['endpointOwnerId'] as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      serviceId: map['serviceId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

