// ignore_for_file: unused_element, unnecessary_cast

import 'policy.dart';
import 'webhook.dart';

/// AuditSinkSpec holds the spec for the audit sink
class AuditSinkSpec {
  /// Policy defines the policy for selecting which events should be sent to the webhook required
  final Policy policy;
  /// Webhook to send events required
  final Webhook webhook;

  /// Creates a new [AuditSinkSpec].
  /// [policy] Policy defines the policy for selecting which events should be sent to the webhook required
  /// [webhook] Webhook to send events required
  AuditSinkSpec({
    required this.policy,
    required this.webhook,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policy': policy.toMap(),
      'webhook': webhook.toMap(),
    };
  }

  factory AuditSinkSpec.fromMap(Map<String, dynamic> map) {
    return AuditSinkSpec(
      policy: Policy.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      webhook: Webhook.fromMap((map['webhook'] as Map).cast<String, dynamic>()),
    );
  }
}

