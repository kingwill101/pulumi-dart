// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth.dart';

/// Azure Spring Apps App Instance Azure Queue based scaling rule.
class QueueScaleRule {
  /// Authentication secrets for the queue scale rule.
  final pulumi.Input<List<ScaleRuleAuth>>? auth;
  /// Queue length.
  final pulumi.Input<int>? queueLength;
  /// Queue name.
  final pulumi.Input<String>? queueName;

  /// Creates a new [QueueScaleRule].
  /// [auth] Authentication secrets for the queue scale rule.
  /// [queueLength] Queue length.
  /// [queueName] Queue name.
  QueueScaleRule({
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
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuth>(map['auth']!, (value) => ScaleRuleAuth.fromMap((value as Map).cast<String, dynamic>()))).input(),
      queueLength: map['queueLength'] == null ? null : (map['queueLength']! as int).input(),
      queueName: map['queueName'] == null ? null : (map['queueName']! as String).input(),
    );
  }
}

