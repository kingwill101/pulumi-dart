// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUserPoolSigningCertificate.
class GetUserPoolSigningCertificateResult {
  /// Certificate string
  final String certificate;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  final String userPoolId;

  /// Creates a new [GetUserPoolSigningCertificateResult].
  /// [certificate] Certificate string
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [userPoolId] Required.
  GetUserPoolSigningCertificateResult({
    required this.certificate,
    required this.id,
    required this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    map['id'] = id;
    map['region'] = region;
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory GetUserPoolSigningCertificateResult.fromMap(
      Map<String, dynamic> map) {
    return GetUserPoolSigningCertificateResult(
      certificate: map['certificate'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      userPoolId: map['userPoolId'] as String,
    );
  }
}
