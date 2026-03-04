// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_rules_response.dart';

/// Definition of the properties for a TagRules resource.
class MonitoringTagRulesPropertiesResponse {
  /// Rules for sending logs.
  final pulumi.Input<LogRulesResponse>? logRules;

  /// Provisioning state of the monitoring tag rules.
  final pulumi.Input<String>? provisioningState;

  /// Creates a new [MonitoringTagRulesPropertiesResponse].
  /// [logRules] Rules for sending logs.
  /// [provisioningState] Provisioning state of the monitoring tag rules.
  MonitoringTagRulesPropertiesResponse({this.logRules, this.provisioningState});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logRules':
          ?pulumi.Input.mapOptionalInputValue<
            LogRulesResponse,
            Map<String, dynamic>
          >(logRules, (value) => value.toMap()),
      'provisioningState': ?provisioningState,
    };
  }

  factory MonitoringTagRulesPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return MonitoringTagRulesPropertiesResponse(
      logRules: (() {
        final guardedValue = map['logRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LogRulesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: (() {
        final guardedValue = map['provisioningState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
