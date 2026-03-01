// ignore_for_file: unused_element, unnecessary_cast

import 'all_nodes.dart';

/// Job endpoint definition
class JobService {
  /// Url for endpoint.
  final String? endpoint;
  /// Endpoint type.
  final String? jobServiceType;
  /// Nodes that user would like to start the service on.
  /// If Nodes is not set or set to null, the service will only be started on leader node.
  final AllNodes? nodes;
  /// Port for endpoint.
  final int? port;
  /// Additional properties to set on the endpoint.
  final Map<String, String>? properties;

  /// Creates a new [JobService].
  /// [endpoint] Url for endpoint.
  /// [jobServiceType] Endpoint type.
  /// [nodes] Nodes that user would like to start the service on.
  /// [port] Port for endpoint.
  /// [properties] Additional properties to set on the endpoint.
  JobService({
    this.endpoint,
    this.jobServiceType,
    this.nodes,
    this.port,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpoint': ?endpoint,
      'jobServiceType': ?jobServiceType,
      'nodes': ?nodes == null ? null : nodes!.toMap(),
      'port': ?port,
      'properties': ?properties,
    };
  }

  factory JobService.fromMap(Map<String, dynamic> map) {
    return JobService(
      endpoint: map['endpoint'] == null ? null : map['endpoint'] as String,
      jobServiceType: map['jobServiceType'] == null ? null : map['jobServiceType'] as String,
      nodes: map['nodes'] == null ? null : AllNodes.fromMap((map['nodes'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
    );
  }
}

