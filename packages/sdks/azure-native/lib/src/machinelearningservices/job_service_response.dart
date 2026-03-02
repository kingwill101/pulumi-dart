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
      'nodes': ?pulumi.Input.mapOptionalInputValue<AllNodesResponse, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'port': ?port,
      'properties': ?properties,
      'status': status,
    };
  }

  factory JobServiceResponse.fromMap(Map<String, dynamic> map) {
    return JobServiceResponse(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      errorMessage: (map['errorMessage'] as String).input(),
      jobServiceType: map['jobServiceType'] == null ? null : (map['jobServiceType'] as String).input(),
      nodes: map['nodes'] == null ? null : (AllNodesResponse.fromMap((map['nodes'] as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
      status: (map['status'] as String).input(),
    );
  }
}

