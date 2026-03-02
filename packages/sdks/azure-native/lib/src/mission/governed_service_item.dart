// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GovernedServiceItem Properties
class GovernedServiceItem {
  /// Initiative enforcement (Enabled or Disabled).
  final pulumi.Input<String>? enforcement;
  /// Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  final pulumi.Input<String>? option;
  /// Enforcement mode for policy. AuditOnly, Enforce, or None.
  final pulumi.Input<String>? policyAction;
  /// Service ID
  final pulumi.Input<String> serviceId;

  /// Creates a new [GovernedServiceItem].
  /// [enforcement] Initiative enforcement (Enabled or Disabled).
  /// [option] Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  /// [policyAction] Enforcement mode for policy. AuditOnly, Enforce, or None.
  /// [serviceId] Service ID
  GovernedServiceItem({
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
      enforcement: map['enforcement'] == null ? null : (map['enforcement']! as String).input(),
      option: map['option'] == null ? null : (map['option']! as String).input(),
      policyAction: map['policyAction'] == null ? null : (map['policyAction']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
    );
  }
}

