// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_rules.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesProperties {
  /// Rules for sending logs.
  final pulumi.Input<LogRules>? logRules;
  /// Provisioning state of the monitoring tag rules.
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [MonitoringTagRulesProperties].
  /// [logRules] Rules for sending logs.
  /// [provisioningState] Provisioning state of the monitoring tag rules.
  MonitoringTagRulesProperties({
    this.logRules,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logRules': ?pulumi.Input.mapOptionalInputValue<LogRules, Map<String, dynamic>>(logRules, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory MonitoringTagRulesProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesProperties(
      logRules: (() { final guardedValue = map['logRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LogRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

