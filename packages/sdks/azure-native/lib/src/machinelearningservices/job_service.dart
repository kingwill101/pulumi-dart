// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'all_nodes.dart';

/// Job endpoint definition
class JobService {
  /// Url for endpoint.
  final pulumi.Input<String?>? endpoint;
  /// Endpoint type.
  final pulumi.Input<String?>? jobServiceType;
  /// Nodes that user would like to start the service on.
  /// If Nodes is not set or set to null, the service will only be started on leader node.
  final pulumi.Input<AllNodes?>? nodes;
  /// Port for endpoint.
  final pulumi.Input<int?>? port;
  /// Additional properties to set on the endpoint.
  final pulumi.Input<Map<String, String>?>? properties;

  /// Creates a new [JobService].
  /// [endpoint] Url for endpoint.
  /// [jobServiceType] Endpoint type.
  /// [nodes] Nodes that user would like to start the service on.
  /// [port] Port for endpoint.
  /// [properties] Additional properties to set on the endpoint.
  const JobService({
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
      endpoint: (() { final guardedValue = map['endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobServiceType: (() { final guardedValue = map['jobServiceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodes: (() { final guardedValue = map['nodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AllNodes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
