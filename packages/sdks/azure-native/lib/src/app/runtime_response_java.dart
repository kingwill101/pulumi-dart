// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_response_java_agent.dart';

/// Java app configuration
class RuntimeResponseJava {
  /// Enable jmx core metrics for the java app
  final pulumi.Input<bool>? enableMetrics;
  /// Diagnostic capabilities achieved by java agent
  final pulumi.Input<RuntimeResponseJavaAgent>? javaAgent;

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
      'javaAgent': ?pulumi.Input.mapOptionalInputValue<RuntimeResponseJavaAgent, Map<String, dynamic>>(javaAgent, (value) => value.toMap()),
    };
  }

  factory RuntimeResponseJava.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseJava(
      enableMetrics: map['enableMetrics'] == null ? null : (map['enableMetrics'] as bool).input(),
      javaAgent: map['javaAgent'] == null ? null : (RuntimeResponseJavaAgent.fromMap((map['javaAgent'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

