// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_rule_auth_response.dart';

/// Container App container Azure Queue based scaling rule.
class QueueScaleRuleResponse {
  /// Storage account name. required if using managed identity to authenticate
  final pulumi.Input<String>? accountName;
  /// Authentication secrets for the queue scale rule.
  final pulumi.Input<List<ScaleRuleAuthResponse>>? auth;
  /// The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  final pulumi.Input<String>? identity;
  /// Queue length.
  final pulumi.Input<int>? queueLength;
  /// Queue name.
  final pulumi.Input<String>? queueName;

  /// Creates a new [QueueScaleRuleResponse].
  /// [accountName] Storage account name. required if using managed identity to authenticate
  /// [auth] Authentication secrets for the queue scale rule.
  /// [identity] The resource ID of a user-assigned managed identity that is assigned to the Container App, or 'system' for system-assigned identity.
  /// [queueLength] Queue length.
  /// [queueName] Queue name.
  QueueScaleRuleResponse({
    this.accountName,
    this.auth,
    this.identity,
    this.queueLength,
    this.queueName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'auth': ?pulumi.Input.mapOptionalInputValue<List<ScaleRuleAuthResponse>, List<Map<String, dynamic>>>(auth, (value) => pulumi.Input.encodeList<ScaleRuleAuthResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identity': ?identity,
      'queueLength': ?queueLength,
      'queueName': ?queueName,
    };
  }

  factory QueueScaleRuleResponse.fromMap(Map<String, dynamic> map) {
    return QueueScaleRuleResponse(
      accountName: map['accountName'] == null ? null : (map['accountName'] as String).input(),
      auth: map['auth'] == null ? null : (pulumi.Input.decodeList<ScaleRuleAuthResponse>(map['auth'], (value) => ScaleRuleAuthResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identity: map['identity'] == null ? null : (map['identity'] as String).input(),
      queueLength: map['queueLength'] == null ? null : (map['queueLength'] as int).input(),
      queueName: map['queueName'] == null ? null : (map['queueName'] as String).input(),
    );
  }
}

