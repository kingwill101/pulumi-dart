// ignore_for_file: unused_element, unnecessary_cast


/// GovernedServiceItem Properties
class GovernedServiceItemResponse {
  /// Initiative enforcement (Enabled or Disabled).
  final String? enforcement;
  /// Initiatives associated with this service.
  final List<String> initiatives;
  /// Governance option for this service (Allow, Deny, ExceptionOnly, or NotApplicable).
  final String? option;
  /// Enforcement mode for policy. AuditOnly, Enforce, or None.
  final String? policyAction;
  /// Service ID
  final String serviceId;
  /// Service name.
  final String serviceName;

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
      enforcement: map['enforcement'] == null ? null : map['enforcement'] as String,
      initiatives: (map['initiatives'] as List).cast<String>(),
      option: map['option'] == null ? null : map['option'] as String,
      policyAction: map['policyAction'] == null ? null : map['policyAction'] as String,
      serviceId: map['serviceId'] as String,
      serviceName: map['serviceName'] as String,
    );
  }
}

