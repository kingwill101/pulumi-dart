// ignore_for_file: unused_element, unnecessary_cast


class GetReceivedLicenseIssuer {
  /// Issuer key fingerprint.
  final String keyFingerprint;
  /// The key name.
  final String name;
  /// Asymmetric KMS key from AWS Key Management Service. The KMS key must have a key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing algorithm.
  final String signKey;

  /// Creates a new [GetReceivedLicenseIssuer].
  /// [keyFingerprint] Issuer key fingerprint.
  /// [name] The key name.
  /// [signKey] Asymmetric KMS key from AWS Key Management Service. The KMS key must have a key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing algorithm.
  GetReceivedLicenseIssuer({
    required this.keyFingerprint,
    required this.name,
    required this.signKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyFingerprint': keyFingerprint,
      'name': name,
      'signKey': signKey,
    };
  }

  factory GetReceivedLicenseIssuer.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseIssuer(
      keyFingerprint: map['keyFingerprint'] as String,
      name: map['name'] as String,
      signKey: map['signKey'] as String,
    );
  }
}

