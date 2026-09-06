// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Azure Spring Apps App Instance Azure Queue based scaling rule.
class QueueScaleRule {
  /// Authentication secrets for the queue scale rule.
  final pulumi.Input<List<ScaleRuleAuth>?>? auth;
  /// Queue length.
  final pulumi.Input<int?>? queueLength;
  /// Queue name.
  final pulumi.Input<String?>? queueName;

  /// Creates a new [QueueScaleRule].
  /// [auth] Authentication secrets for the queue scale rule.
  /// [queueLength] Queue length.
  /// [queueName] Queue name.
  const QueueScaleRule({
    this.auth,
    this.queueLength,
    this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuth>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuth, Map<String, dynamic>>(value, (value) => value.toMap())),
      'queueLength': ?queueLength,
      'queueName': ?queueName,
    };
  }

  factory QueueScaleRule.fromMap(Map<String, dynamic> map) {
    return QueueScaleRule(
      auth: (() { final guardedValue = map['auth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScaleRuleAuth>(guardedValue, (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>()))); })(),
      queueLength: (() { final guardedValue = map['queueLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      queueName: (() { final guardedValue = map['queueName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
