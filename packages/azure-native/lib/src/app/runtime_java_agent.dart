// ignore_for_file: unused_element, unnecessary_cast

import 'runtime_logging.dart';

/// Diagnostic capabilities achieved by java agent
class RuntimeJavaAgent {
  /// Enable java agent injection for the java app.
  final bool? enabled;
  /// Capabilities on the java logging scenario.
  final RuntimeLogging? logging;

  /// Creates a new [RuntimeJavaAgent].
  /// [enabled] Enable java agent injection for the java app.
  /// [logging] Capabilities on the java logging scenario.
  RuntimeJavaAgent({
    this.enabled,
    this.logging,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'logging': ?logging == null ? null : logging!.toMap(),
    };
  }

  factory RuntimeJavaAgent.fromMap(Map<String, dynamic> map) {
    return RuntimeJavaAgent(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      logging: map['logging'] == null ? null : RuntimeLogging.fromMap((map['logging'] as Map).cast<String, dynamic>()),
    );
  }
}

