// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GovernedServiceItem Properties
class GovernedServiceItem {
  /// Initiative enforcement (Enabled or Disabled).
  final pulumi.Input<dynamic>? enforcement;
  /// Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  final pulumi.Input<dynamic>? option;
  /// Enforcement mode for policy. AuditOnly, Enforce, or None.
  final pulumi.Input<dynamic>? policyAction;
  /// Service ID
  final pulumi.Input<dynamic> serviceId;

  /// Creates a new [GovernedServiceItem].
  /// [enforcement] Initiative enforcement (Enabled or Disabled).
  /// [option] Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  /// [policyAction] Enforcement mode for policy. AuditOnly, Enforce, or None.
  /// [serviceId] Service ID
  const GovernedServiceItem({
    this.enforcement,
    this.option,
    this.policyAction,
    required this.serviceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcement': ?enforcement,
      'option': ?option,
      'policyAction': ?policyAction,
      'serviceId': serviceId,
    };
  }

  factory GovernedServiceItem.fromMap(Map<String, dynamic> map) {
    return GovernedServiceItem(
      enforcement: (() { final guardedValue = map['enforcement']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      option: (() { final guardedValue = map['option']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      policyAction: (() { final guardedValue = map['policyAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceId: pulumi.Input.fromValue(map['serviceId']),
    );
  }
}
