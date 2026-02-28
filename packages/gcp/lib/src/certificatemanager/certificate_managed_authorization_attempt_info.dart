// ignore_for_file: unused_element, unnecessary_cast

class CertificateManagedAuthorizationAttemptInfo {
  /// Human readable explanation for reaching the state. Provided to help
  /// address the configuration issues.
  /// Not guaranteed to be stable. For programmatic access use 'failure_reason' field.
  final String? details;

  /// Domain name of the authorization attempt.
  final String? domain;

  /// Reason for failure of the authorization attempt for the domain.
  final String? failureReason;

  /// State of the domain for managed certificate issuance.
  final String? state;

  /// Creates a new [CertificateManagedAuthorizationAttemptInfo].
  /// [details] Human readable explanation for reaching the state. Provided to help
  /// [domain] Domain name of the authorization attempt.
  /// [failureReason] Reason for failure of the authorization attempt for the domain.
  /// [state] State of the domain for managed certificate issuance.
  CertificateManagedAuthorizationAttemptInfo({
    this.details,
    this.domain,
    this.failureReason,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final detailsValue = details;
    if (detailsValue != null) {
      map['details'] = detailsValue;
    }
    final domainValue = domain;
    if (domainValue != null) {
      map['domain'] = domainValue;
    }
    final failureReasonValue = failureReason;
    if (failureReasonValue != null) {
      map['failureReason'] = failureReasonValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory CertificateManagedAuthorizationAttemptInfo.fromMap(
      Map<String, dynamic> map) {
    return CertificateManagedAuthorizationAttemptInfo(
      details: map['details'] == null ? null : map['details'] as String,
      domain: map['domain'] == null ? null : map['domain'] as String,
      failureReason:
          map['failureReason'] == null ? null : map['failureReason'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
