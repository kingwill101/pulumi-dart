// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUserPoolSigningCertificate.
class GetUserPoolSigningCertificateResult {
  /// Certificate string
  final String? certificate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;
  final String? userPoolId;

  /// Creates a new [GetUserPoolSigningCertificateResult].
  /// [certificate] Certificate string
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  /// [userPoolId] Optional.
  const GetUserPoolSigningCertificateResult({
    this.certificate,
    this.id,
    this.region,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'id': ?id,
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory GetUserPoolSigningCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolSigningCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
