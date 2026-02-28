// ignore_for_file: unused_element, unnecessary_cast

class GetCertificatesCertificateManagedAuthorizationAttemptInfo {
  /// Human readable explanation for reaching the state. Provided to help
  /// address the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'failure_reason' field.
  final String details;

  /// Domain name of the authorization attempt.
  final String domain;

  /// Reason for failure of the authorization attempt for the domain.
  final String failureReason;

  /// State of the domain for managed certificate issuance.
  final String state;

  /// Creates a new [GetCertificatesCertificateManagedAuthorizationAttemptInfo].
  /// [details] Human readable explanation for reaching the state. Provided to help
  /// [domain] Domain name of the authorization attempt.
  /// [failureReason] Reason for failure of the authorization attempt for the domain.
  /// [state] State of the domain for managed certificate issuance.
  GetCertificatesCertificateManagedAuthorizationAttemptInfo({
    required this.details,
    required this.domain,
    required this.failureReason,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['details'] = details;
    map['domain'] = domain;
    map['failureReason'] = failureReason;
    map['state'] = state;
    return map;
  }

  factory GetCertificatesCertificateManagedAuthorizationAttemptInfo.fromMap(
      Map<String, dynamic> map) {
    return GetCertificatesCertificateManagedAuthorizationAttemptInfo(
      details: map['details'] as String,
      domain: map['domain'] as String,
      failureReason: map['failureReason'] as String,
      state: map['state'] as String,
    );
  }
}
