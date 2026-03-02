// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_nodes.dart';

/// Job endpoint definition
class JobService {
  /// Url for endpoint.
  final pulumi.Input<String>? endpoint;
  /// Endpoint type.
  final pulumi.Input<String>? jobServiceType;
  /// Nodes that user would like to start the service on.
  /// If Nodes is not set or set to null, the service will only be started on leader node.
  final pulumi.Input<AllNodes>? nodes;
  /// Port for endpoint.
  final pulumi.Input<int>? port;
  /// Additional properties to set on the endpoint.
  final pulumi.Input<Map<String, String>>? properties;

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
      'nodes': ?pulumi.Input.mapOptionalInputValue<AllNodes, Map<String, dynamic>>(nodes, (value) => value.toMap()),
      'port': ?port,
      'properties': ?properties,
    };
  }

  factory JobService.fromMap(Map<String, dynamic> map) {
    return JobService(
      endpoint: map['endpoint'] == null ? null : (map['endpoint'] as String).input(),
      jobServiceType: map['jobServiceType'] == null ? null : (map['jobServiceType'] as String).input(),
      nodes: map['nodes'] == null ? null : (AllNodes.fromMap((map['nodes'] as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port'] as int).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
    );
  }
}

