// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The resource quantity for required CPU and Memory of Dev Tool Portal
class DevToolPortalResourceRequestsResponse {
  /// Cpu quantity allocated to each Dev Tool Portal instance. 1 core can be represented by 1 or 1000m
  final pulumi.Input<String> cpu;
  /// Desired instance count of Dev Tool Portal.
  final pulumi.Input<int> instanceCount;
  /// Memory quantity allocated to each Dev Tool Portal instance. 1 GB can be represented by 1Gi or 1024Mi.
  final pulumi.Input<String> memory;

  /// Creates a new [DevToolPortalResourceRequestsResponse].
  /// [cpu] Cpu quantity allocated to each Dev Tool Portal instance. 1 core can be represented by 1 or 1000m
  /// [instanceCount] Desired instance count of Dev Tool Portal.
  /// [memory] Memory quantity allocated to each Dev Tool Portal instance. 1 GB can be represented by 1Gi or 1024Mi.
  const DevToolPortalResourceRequestsResponse({
    required this.cpu,
    required this.instanceCount,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'instanceCount': instanceCount,
      'memory': memory,
    };
  }

  factory DevToolPortalResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return DevToolPortalResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      instanceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['instanceCount'])),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
