// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container resource requirements for sessions of the session pool.
class SessionContainerResources {
  /// Required CPU in cores, e.g. 0.5
  final pulumi.Input<double>? cpu;
  /// Required memory, e.g. "250Mb"
  final pulumi.Input<String>? memory;

  /// Creates a new [SessionContainerResources].
  /// [cpu] Required CPU in cores, e.g. 0.5
  /// [memory] Required memory, e.g. "250Mb"
  SessionContainerResources({
    this.cpu,
    this.memory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpu': ?cpu,
      'memory': ?memory,
    };
  }

  factory SessionContainerResources.fromMap(Map<String, dynamic> map) {
    return SessionContainerResources(
      cpu: map['cpu'] == null ? null : (map['cpu'] as double).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
    );
  }
}

