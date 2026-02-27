// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getSessionContext.
class GetSessionContextResult {
  final String arn;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IAM source role ARN if `arn` corresponds to an STS assumed role. Otherwise, `issuer_arn` is equal to `arn`.
  final String issuerArn;

  /// Unique identifier of the IAM role that issues the STS assumed role.
  final String issuerId;

  /// Name of the source role. Only available if `arn` corresponds to an STS assumed role.
  final String issuerName;

  /// Name of the STS session. Only available if `arn` corresponds to an STS assumed role.
  final String sessionName;

  GetSessionContextResult({
    required this.arn,
    required this.id,
    required this.issuerArn,
    required this.issuerId,
    required this.issuerName,
    required this.sessionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['id'] = id;
    map['issuerArn'] = issuerArn;
    map['issuerId'] = issuerId;
    map['issuerName'] = issuerName;
    map['sessionName'] = sessionName;
    return map;
  }

  factory GetSessionContextResult.fromMap(Map<String, dynamic> map) {
    return GetSessionContextResult(
      arn: map['arn'] as String,
      id: map['id'] as String,
      issuerArn: map['issuerArn'] as String,
      issuerId: map['issuerId'] as String,
      issuerName: map['issuerName'] as String,
      sessionName: map['sessionName'] as String,
    );
  }
}
