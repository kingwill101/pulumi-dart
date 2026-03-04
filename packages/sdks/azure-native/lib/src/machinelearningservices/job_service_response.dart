// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_nodes_response.dart';

/// Job endpoint definition
class JobServiceResponse {
  /// Url for endpoint.
  final pulumi.Input<String>? endpoint;

  /// Any error in the service.
  final pulumi.Input<String> errorMessage;

  /// Endpoint type.
  final pulumi.Input<String>? jobServiceType;

  /// Nodes that user would like to start the service on.
  /// If Nodes is not set or set to null, the service will only be started on leader node.
  final pulumi.Input<AllNodesResponse>? nodes;

  /// Port for endpoint.
  final pulumi.Input<int>? port;

  /// Additional properties to set on the endpoint.
  final pulumi.Input<Map<String, String>>? properties;

  /// Status of endpoint.
  final pulumi.Input<String> status;

  /// Creates a new [JobServiceResponse].
  /// [endpoint] Url for endpoint.
  /// [errorMessage] Any error in the service.
  /// [jobServiceType] Endpoint type.
  /// [nodes] Nodes that user would like to start the service on.
  /// [port] Port for endpoint.
  /// [properties] Additional properties to set on the endpoint.
  /// [status] Status of endpoint.
  JobServiceResponse({
    this.endpoint,
    required this.errorMessage,
    this.jobServiceType,
    this.nodes,
    this.port,
    this.properties,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'errorMessage': errorMessage,
      'jobServiceType': ?jobServiceType,
      'nodes':
          ?pulumi.Input.mapOptionalInputValue<
            AllNodesResponse,
            Map<String, dynamic>
          >(nodes, (value) => value.toMap()),
      'port': ?port,
      'properties': ?properties,
      'status': status,
    };
  }

  factory JobServiceResponse.fromMap(Map<String, dynamic> map) {
    return JobServiceResponse(
      endpoint: (() {
        final guardedValue = map['endpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      errorMessage: pulumi.Input.fromValue(map['errorMessage'] as String),
      jobServiceType: (() {
        final guardedValue = map['jobServiceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nodes: (() {
        final guardedValue = map['nodes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AllNodesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      properties: (() {
        final guardedValue = map['properties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
