// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_response_logging.dart';

/// Diagnostic capabilities achieved by java agent
class RuntimeResponseJavaAgent {
  /// Enable java agent injection for the java app.
  final pulumi.Input<bool>? enabled;
  /// Capabilities on the java logging scenario.
  final pulumi.Input<RuntimeResponseLogging>? logging;

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
      'logging': ?pulumi.Input.mapOptionalInputValue<RuntimeResponseLogging, Map<String, dynamic>>(logging, (value) => value.toMap()),
    };
  }

  factory RuntimeResponseJavaAgent.fromMap(Map<String, dynamic> map) {
    return RuntimeResponseJavaAgent(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logging: (() { final guardedValue = map['logging']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuntimeResponseLogging.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

