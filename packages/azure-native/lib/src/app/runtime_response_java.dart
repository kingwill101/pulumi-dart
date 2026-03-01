// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_response_java_agent.dart';

/// Java app configuration
class RuntimeResponseJava {
  /// Enable jmx core metrics for the java app
  final bool? enableMetrics;
  /// Diagnostic capabilities achieved by java agent
  final RuntimeResponseJavaAgent? javaAgent;

  /// Creates a new [RuntimeResponseJava].
  /// [enableMetrics] Enable jmx core metrics for the java app
  /// [javaAgent] Diagnostic capabilities achieved by java agent
  RuntimeResponseJava({
    this.enableMetrics,
    this.javaAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'javaAgent': ?javaAgent == null ? null : javaAgent!.toMap(),
    };
  }

  factory RuntimeResponseJava.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseJava(
      enableMetrics: map['enableMetrics'] == null ? null : map['enableMetrics'] as bool,
      javaAgent: map['javaAgent'] == null ? null : RuntimeResponseJavaAgent.fromMap((map['javaAgent'] as Map).cast<String, dynamic>()),
    );
  }
}

