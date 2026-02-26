// ignore_for_file: unused_element, unnecessary_cast

class GetReceivedLicenseIssuer {
  /// Issuer key fingerprint.
  final String keyFingerprint;

  /// The key name.
  final String name;

  /// Asymmetric KMS key from AWS Key Management Service. The KMS key must have a key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing algorithm.
  final String signKey;

  GetReceivedLicenseIssuer({
    required this.keyFingerprint,
    required this.name,
    required this.signKey,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyFingerprint'] = keyFingerprint;
    map['name'] = name;
    map['signKey'] = signKey;
    return map;
  }

  factory GetReceivedLicenseIssuer.fromMap(Map<String, dynamic> map) {
    return GetReceivedLicenseIssuer(
      keyFingerprint: map['keyFingerprint'] as String,
      name: map['name'] as String,
      signKey: map['signKey'] as String,
    );
  }
}
