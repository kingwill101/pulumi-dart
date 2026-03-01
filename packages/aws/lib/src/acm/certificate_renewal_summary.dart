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
    return <String, dynamic>{
      'renewalStatus': ?renewalStatus,
      'renewalStatusReason': ?renewalStatusReason,
      'updatedAt': ?updatedAt,
    };
  }

  factory CertificateRenewalSummary.fromMap(Map<String, dynamic> map) {
    return CertificateRenewalSummary(
      renewalStatus: map['renewalStatus'] == null
          ? null
          : map['renewalStatus'] as String,
      renewalStatusReason: map['renewalStatusReason'] == null
          ? null
          : map['renewalStatusReason'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
    );
  }
}
