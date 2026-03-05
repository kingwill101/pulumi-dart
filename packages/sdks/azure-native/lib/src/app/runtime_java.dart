// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_java_agent.dart';

/// Java app configuration
class RuntimeJava {
  /// Enable jmx core metrics for the java app
  final pulumi.Input<bool>? enableMetrics;
  /// Diagnostic capabilities achieved by java agent
  final pulumi.Input<RuntimeJavaAgent>? javaAgent;

  /// Creates a new [RuntimeJava].
  /// [enableMetrics] Enable jmx core metrics for the java app
  /// [javaAgent] Diagnostic capabilities achieved by java agent
  RuntimeJava({
    this.enableMetrics,
    this.javaAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableMetrics': ?enableMetrics,
      'javaAgent': ?pulumi.Input.mapOptionalInputValue<RuntimeJavaAgent, Map<String, dynamic>>(javaAgent, (value) => value.toMap()),
    };
  }

  factory RuntimeJava.fromMap(Map<String, dynamic> map) {
    return RuntimeJava(
      enableMetrics: (() { final guardedValue = map['enableMetrics']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      javaAgent: (() { final guardedValue = map['javaAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeJavaAgent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

