// ignore_for_file: unused_element, unnecessary_cast

class ServiceConnectionPolicyPscConnectionErrorInfo {
  /// The logical grouping to which the "reason" belongs.
  final String? domain;

  /// Additional structured details about this error.
  final Map<String, String>? metadata;

  /// The reason of the error.
  final String? reason;

  /// Creates a new [ServiceConnectionPolicyPscConnectionErrorInfo].
  /// [domain] The logical grouping to which the "reason" belongs.
  /// [metadata] Additional structured details about this error.
  /// [reason] The reason of the error.
  ServiceConnectionPolicyPscConnectionErrorInfo({
    this.domain,
    this.metadata,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': ?domain,
      'metadata': ?metadata,
      'reason': ?reason,
    };
  }

  factory ServiceConnectionPolicyPscConnectionErrorInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceConnectionPolicyPscConnectionErrorInfo(
      domain: map['domain'] == null ? null : map['domain'] as String,
      metadata: map['metadata'] == null
          ? null
          : (map['metadata'] as Map).cast<String, String>(),
      reason: map['reason'] == null ? null : map['reason'] as String,
    );
  }
}
