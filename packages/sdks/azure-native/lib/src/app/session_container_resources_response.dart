// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container resource requirements for sessions of the session pool.
class SessionContainerResourcesResponse {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;
  /// Required memory, e.g. "250Mb"
  final pulumi.Input<String>? memory;

  /// Creates a new [SessionContainerResourcesResponse].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [memory] Required memory, e.g. "250Mb"
  SessionContainerResourcesResponse({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory SessionContainerResourcesResponse.fromMap(Map<String, dynamic> map) {
    return SessionContainerResourcesResponse(
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
    );
  }
}

