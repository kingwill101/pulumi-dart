// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Resource requests of the API portal
class ApiPortalResourceRequestsResponse {
  /// Cpu allocated to each API portal instance
  final pulumi.Input<String> cpu;
  /// Memory allocated to each API portal instance
  final pulumi.Input<String> memory;

  /// Creates a new [ApiPortalResourceRequestsResponse].
  /// [cpu] Cpu allocated to each API portal instance
  /// [memory] Memory allocated to each API portal instance
  const ApiPortalResourceRequestsResponse({
    required this.cpu,
    required this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': cpu,
      'memory': memory,
    };
  }

  factory ApiPortalResourceRequestsResponse.fromMap(Map<String, dynamic> map) {
    return ApiPortalResourceRequestsResponse(
      cpu: pulumi.Input.fromValue(map['cpu'] as String),
      memory: pulumi.Input.fromValue(map['memory'] as String),
    );
  }
}
