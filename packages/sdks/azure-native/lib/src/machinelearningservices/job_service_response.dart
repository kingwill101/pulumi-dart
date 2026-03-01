// ignore_for_file: unused_element, unnecessary_cast

import 'all_nodes_response.dart';

/// Job endpoint definition
class JobServiceResponse {
  /// Url for endpoint.
  final String? endpoint;
  /// Any error in the service.
  final String errorMessage;
  /// Endpoint type.
  final String? jobServiceType;
  /// Nodes that user would like to start the service on.
  /// If Nodes is not set or set to null, the service will only be started on leader node.
  final AllNodesResponse? nodes;
  /// Port for endpoint.
  final int? port;
  /// Additional properties to set on the endpoint.
  final Map<String, String>? properties;
  /// Status of endpoint.
  final String status;

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
      'nodes': ?nodes == null ? null : nodes!.toMap(),
      'port': ?port,
      'properties': ?properties,
      'status': status,
    };
  }

  factory JobServiceResponse.fromMap(Map<String, dynamic> map) {
    return JobServiceResponse(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      errorMessage: map['errorMessage'] as String,
      jobServiceType: map['jobServiceType'] == null ? null : map['jobServiceType'] as String,
      nodes: map['nodes'] == null ? null : AllNodesResponse.fromMap((map['nodes'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      status: map['status'] as String,
    );
  }
}

