// ignore_for_file: unused_element, unnecessary_cast

import 'log_rules.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesProperties {
  /// Rules for sending logs.
  final LogRules? logRules;
  /// Provisioning state of the monitoring tag rules.
  final String? provisioningState;

  /// Creates a new [MonitoringTagRulesProperties].
  /// [logRules] Rules for sending logs.
  /// [provisioningState] Provisioning state of the monitoring tag rules.
  MonitoringTagRulesProperties({
    this.logRules,
    this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logRules': ?logRules == null ? null : logRules!.toMap(),
      'provisioningState': ?provisioningState,
    };
  }

  factory MonitoringTagRulesProperties.fromMap(Map<String, dynamic> map) {
    return MonitoringTagRulesProperties(
      logRules: map['logRules'] == null ? null : LogRules.fromMap((map['logRules'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
    );
  }
}

