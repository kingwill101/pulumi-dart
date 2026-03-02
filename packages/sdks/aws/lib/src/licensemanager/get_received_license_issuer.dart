// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetReceivedLicenseIssuer {
  /// Issuer key fingerprint.
  final pulumi.Input<String> keyFingerprint;
  /// The key name.
  final pulumi.Input<String> name;
  /// Asymmetric KMS key from AWS Key Management Service. The KMS key must have a key usage of sign and verify, and support the RSASSA-PSS SHA-256 signing algorithm.
  final pulumi.Input<String> signKey;

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
      keyFingerprint: (map['keyFingerprint'] as String).input(),
      name: (map['name'] as String).input(),
      signKey: (map['signKey'] as String).input(),
    );
  }
}

