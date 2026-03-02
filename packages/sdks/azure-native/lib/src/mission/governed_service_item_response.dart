// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GovernedServiceItem Properties
class GovernedServiceItemResponse {
  /// Initiative enforcement (Enabled or Disabled).
  final pulumi.Input<String>? enforcement;
  /// Initiatives associated with this service.
  final pulumi.Input<List<String>> initiatives;
  /// Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  final pulumi.Input<String>? option;
  /// Enforcement mode for policy. AuditOnly, Enforce, or None.
  final pulumi.Input<String>? policyAction;
  /// Service ID
  final pulumi.Input<String> serviceId;
  /// Service name.
  final pulumi.Input<String> serviceName;

  /// Creates a new [GovernedServiceItemResponse].
  /// [enforcement] Initiative enforcement (Enabled or Disabled).
  /// [initiatives] Initiatives associated with this service.
  /// [option] Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  /// [policyAction] Enforcement mode for policy. AuditOnly, Enforce, or None.
  /// [serviceId] Service ID
  /// [serviceName] Service name.
  GovernedServiceItemResponse({
    this.enforcement,
    required this.initiatives,
    this.option,
    this.policyAction,
    required this.serviceId,
    required this.serviceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enforcement': ?enforcement,
      'initiatives': initiatives,
      'option': ?option,
      'policyAction': ?policyAction,
      'serviceId': serviceId,
      'serviceName': serviceName,
    };
  }

  factory GovernedServiceItemResponse.fromMap(Map<String, dynamic> map) {
    return GovernedServiceItemResponse(
      enforcement: map['enforcement'] == null ? null : (map['enforcement']! as String).input(),
      initiatives: ((map['initiatives'] as List).cast<String>()).input(),
      option: map['option'] == null ? null : (map['option']! as String).input(),
      policyAction: map['policyAction'] == null ? null : (map['policyAction']! as String).input(),
      serviceId: (map['serviceId'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
    );
  }
}

