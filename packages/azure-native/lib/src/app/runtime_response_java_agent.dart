// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_response_logging.dart';

/// Diagnostic capabilities achieved by java agent
class RuntimeResponseJavaAgent {
  /// Enable java agent injection for the java app.
  final bool? enabled;
  /// Capabilities on the java logging scenario.
  final RuntimeResponseLogging? logging;

  /// Creates a new [RuntimeResponseJavaAgent].
  /// [enabled] Enable java agent injection for the java app.
  /// [logging] Capabilities on the java logging scenario.
  RuntimeResponseJavaAgent({
    this.enabled,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'logging': ?logging == null ? null : logging!.toMap(),
    };
  }

  factory RuntimeResponseJavaAgent.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseJavaAgent(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logging: map['logging'] == null ? null : RuntimeResponseLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
    );
  }
}

