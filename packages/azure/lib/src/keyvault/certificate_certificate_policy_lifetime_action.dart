// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_certificate_policy_lifetime_action_action.dart';
import 'certificate_certificate_policy_lifetime_action_trigger.dart';

class CertificateCertificatePolicyLifetimeAction {
  /// A `action` block as defined below.
  final CertificateCertificatePolicyLifetimeActionAction action;
  /// A `trigger` block as defined below.
  final CertificateCertificatePolicyLifetimeActionTrigger trigger;

  /// Creates a new [CertificateCertificatePolicyLifetimeAction].
  /// [action] A `action` block as defined below.
  /// [trigger] A `trigger` block as defined below.
  CertificateCertificatePolicyLifetimeAction({
    required this.action,
    required this.trigger,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action.toMap(),
      'trigger': trigger.toMap(),
    };
  }

  factory CertificateCertificatePolicyLifetimeAction.fromMap(Map<String, dynamic> map) {
    return CertificateCertificatePolicyLifetimeAction(
      action: CertificateCertificatePolicyLifetimeActionAction.fromMap((map['action'] as Map).cast<String, dynamic>()),
      trigger: CertificateCertificatePolicyLifetimeActionTrigger.fromMap((map['trigger'] as Map).cast<String, dynamic>()),
    );
  }
}

