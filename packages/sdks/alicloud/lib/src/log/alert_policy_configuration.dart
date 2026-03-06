// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AlertPolicyConfiguration {
  /// Action Policy Id.
  final pulumi.Input<String>? actionPolicyId;
  /// Alert Policy Id.
  final pulumi.Input<String> alertPolicyId;
  /// Repeat interval used by alert policy, 1h, 1m.e.g.
  final pulumi.Input<String> repeatInterval;

  /// Creates a new [AlertPolicyConfiguration].
  /// [actionPolicyId] Action Policy Id.
  /// [alertPolicyId] Alert Policy Id.
  /// [repeatInterval] Repeat interval used by alert policy, 1h, 1m.e.g.
  const AlertPolicyConfiguration({
    this.actionPolicyId,
    required this.alertPolicyId,
    required this.repeatInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionPolicyId': ?actionPolicyId,
      'alertPolicyId': alertPolicyId,
      'repeatInterval': repeatInterval,
    };
  }

  factory AlertPolicyConfiguration.fromMap(Map<String, dynamic> map) {
    return AlertPolicyConfiguration(
      actionPolicyId: (() { final guardedValue = map['actionPolicyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      alertPolicyId: pulumi.Input.fromValue(map['alertPolicyId'] as String),
      repeatInterval: pulumi.Input.fromValue(map['repeatInterval'] as String),
    );
  }
}

