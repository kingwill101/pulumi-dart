// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RuleSetRuleActionRelay {
  /// Policy applied when the action fails.
  final pulumi.Input<String>? actionFailurePolicy;
  /// Whether to preserve or replace the original MAIL FROM address.
  final pulumi.Input<String>? mailFrom;
  /// Identifier of the relay resource.
  final pulumi.Input<String> relay;

  /// Creates a new [RuleSetRuleActionRelay].
  /// [actionFailurePolicy] Policy applied when the action fails.
  /// [mailFrom] Whether to preserve or replace the original MAIL FROM address.
  /// [relay] Identifier of the relay resource.
  const RuleSetRuleActionRelay({
    this.actionFailurePolicy,
    this.mailFrom,
    required this.relay,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionFailurePolicy': ?actionFailurePolicy,
      'mailFrom': ?mailFrom,
      'relay': relay,
    };
  }

  factory RuleSetRuleActionRelay.fromMap(Map<String, dynamic> map) {
    return RuleSetRuleActionRelay(
      actionFailurePolicy: (() { final guardedValue = map['actionFailurePolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      mailFrom: (() { final guardedValue = map['mailFrom']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      relay: pulumi.Input.fromValue(map['relay'] as String),
    );
  }
}
