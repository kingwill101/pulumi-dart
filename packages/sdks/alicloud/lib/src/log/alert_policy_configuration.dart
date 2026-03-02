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
  AlertPolicyConfiguration({
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
      actionPolicyId: map['actionPolicyId'] == null ? null : (map['actionPolicyId']! as String).input(),
      alertPolicyId: (map['alertPolicyId'] as String).input(),
      repeatInterval: (map['repeatInterval'] as String).input(),
    );
  }
}

