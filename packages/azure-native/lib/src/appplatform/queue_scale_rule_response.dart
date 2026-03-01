// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Azure Spring Apps App Instance Azure Queue based scaling rule.
class QueueScaleRuleResponse {
  /// Authentication secrets for the queue scale rule.
  final List<ScaleRuleAuthResponse>? auth;
  /// Queue length.
  final int? queueLength;
  /// Queue name.
  final String? queueName;

  /// Creates a new [QueueScaleRuleResponse].
  /// [auth] Authentication secrets for the queue scale rule.
  /// [queueLength] Queue length.
  /// [queueName] Queue name.
  QueueScaleRuleResponse({
    this.auth,
    this.queueLength,
    this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auth': ?auth == null ? null : pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(auth!, (value) => value.toMap()),
      'queueLength': ?queueLength,
      'queueName': ?queueName,
    };
  }

  factory QueueScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return QueueScaleRuleResponse(
      auth: map['auth'] == null ? null : pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>())),
      queueLength: map['queueLength'] == null ? null : map['queueLength'] as int,
      queueName: map['queueName'] == null ? null : map['queueName'] as String,
    );
  }
}

