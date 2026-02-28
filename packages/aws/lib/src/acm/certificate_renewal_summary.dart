// ignore_for_file: unused_element, unnecessary_cast

class CertificateRenewalSummary {
  /// The status of ACM's managed renewal of the certificate
  final String? renewalStatus;

  /// The reason that a renewal request was unsuccessful or is pending
  final String? renewalStatusReason;
  final String? updatedAt;

  /// Creates a new [CertificateRenewalSummary].
  /// [renewalStatus] The status of ACM's managed renewal of the certificate
  /// [renewalStatusReason] The reason that a renewal request was unsuccessful or is pending
  /// [updatedAt] Optional.
  CertificateRenewalSummary({
    this.renewalStatus,
    this.renewalStatusReason,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final renewalStatusValue = renewalStatus;
    if (renewalStatusValue != null) {
      map['renewalStatus'] = renewalStatusValue;
    }
    final renewalStatusReasonValue = renewalStatusReason;
    if (renewalStatusReasonValue != null) {
      map['renewalStatusReason'] = renewalStatusReasonValue;
    }
    final updatedAtValue = updatedAt;
    if (updatedAtValue != null) {
      map['updatedAt'] = updatedAtValue;
    }
    return map;
  }

  factory CertificateRenewalSummary.fromMap(Map<String, dynamic> map) {
    return CertificateRenewalSummary(
      renewalStatus:
          map['renewalStatus'] == null ? null : map['renewalStatus'] as String,
      renewalStatusReason: map['renewalStatusReason'] == null
          ? null
          : map['renewalStatusReason'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
    );
  }
}
