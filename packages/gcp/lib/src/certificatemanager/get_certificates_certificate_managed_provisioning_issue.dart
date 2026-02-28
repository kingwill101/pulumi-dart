// ignore_for_file: unused_element, unnecessary_cast

class GetCertificatesCertificateManagedProvisioningIssue {
  /// Human readable explanation about the issue. Provided to help address
  /// the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'reason' field.
  final String details;

  /// Reason for provisioning failures.
  final String reason;

  /// Creates a new [GetCertificatesCertificateManagedProvisioningIssue].
  /// [details] Human readable explanation about the issue. Provided to help address
  /// [reason] Reason for provisioning failures.
  GetCertificatesCertificateManagedProvisioningIssue({
    required this.details,
    required this.reason,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['reason'] = reason;
    return map;
  }

  factory GetCertificatesCertificateManagedProvisioningIssue.fromMap(
      Map<String, dynamic> map) {
    return GetCertificatesCertificateManagedProvisioningIssue(
      details: map['details'] as String,
      reason: map['reason'] as String,
    );
  }
}
