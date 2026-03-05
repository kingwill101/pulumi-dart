// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertConfigurationPolicyConfiguration {
  /// The ID of the action policy used. If the alert policy is in advanced mode and the selected alert policy is not configured with a dynamic action policy, set the actionPolicyId to an empty string.
  final pulumi.Input<String>? actionPolicyId;
  /// Alarm policy ID. If it is in simple mode or normal mode, set it to sls.builtin.dynamic (dynamic alarm policy built into the system). For advanced mode, set it to the specified alarm policy ID.
  final pulumi.Input<String>? alertPolicyId;
  /// Repeat the waiting time. For example, 5m, 1H, etc.
  final pulumi.Input<String>? repeatInterval;

  /// Creates a new [AlertConfigurationPolicyConfiguration].
  /// [actionPolicyId] The ID of the action policy used. If the alert policy is in advanced mode and the selected alert policy is not configured with a dynamic action policy, set the actionPolicyId to an empty string.
  /// [alertPolicyId] Alarm policy ID. If it is in simple mode or normal mode, set it to sls.builtin.dynamic (dynamic alarm policy built into the system). For advanced mode, set it to the specified alarm policy ID.
  /// [repeatInterval] Repeat the waiting time. For example, 5m, 1H, etc.
  AlertConfigurationPolicyConfiguration({
    this.actionPolicyId,
    this.alertPolicyId,
    this.repeatInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPolicyId': ?actionPolicyId,
      'alertPolicyId': ?alertPolicyId,
      'repeatInterval': ?repeatInterval,
    };
  }

  factory AlertConfigurationPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertConfigurationPolicyConfiguration(
      actionPolicyId: (() { final guardedValue = map['actionPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertPolicyId: (() { final guardedValue = map['alertPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repeatInterval: (() { final guardedValue = map['repeatInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

