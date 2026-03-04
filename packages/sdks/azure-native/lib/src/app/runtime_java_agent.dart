// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_logging.dart';

/// Diagnostic capabilities achieved by java agent
class RuntimeJavaAgent {
  /// Enable java agent injection for the java app.
  final pulumi.Input<bool>? enabled;

  /// Capabilities on the java logging scenario.
  final pulumi.Input<RuntimeLogging>? logging;

  /// Creates a new [RuntimeJavaAgent].
  /// [enabled] Enable java agent injection for the java app.
  /// [logging] Capabilities on the java logging scenario.
  RuntimeJavaAgent({this.enabled, this.logging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'logging':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeLogging,
            Map<String, dynamic>
          >(logging, (value) => value.toMap()),
    };
  }

  factory RuntimeJavaAgent.fromMap(Map<String, dynamic> map) {
    return RuntimeJavaAgent(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      logging: (() {
        final guardedValue = map['logging'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeLogging.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}
