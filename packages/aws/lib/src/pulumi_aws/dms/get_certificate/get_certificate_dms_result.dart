// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getCertificate.
class GetCertificateDmsResult {
  /// The Amazon Resource Name (ARN) for the certificate.
  final String certificateArn;

  /// The date that the certificate was created.
  final String certificateCreationDate;
  final String certificateId;

  /// The owner of the certificate.
  final String certificateOwner;

  /// The contents of a .pem file, which contains an X.509 certificate.
  final String certificatePem;

  /// The owner of the certificate.
  final String certificateWallet;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// The key length of the cryptographic algorithm being used.
  final int keyLength;
  final String region;

  /// The algorithm for the certificate.
  final String signingAlgorithm;
  final Map<String, String> tags;

  /// The beginning date that the certificate is valid.
  final String validFromDate;

  /// The final date that the certificate is valid.
  final String validToDate;

  GetCertificateDmsResult({
    required this.certificateArn,
    required this.certificateCreationDate,
    required this.certificateId,
    required this.certificateOwner,
    required this.certificatePem,
    required this.certificateWallet,
    required this.id,
    required this.keyLength,
    required this.region,
    required this.signingAlgorithm,
    required this.tags,
    required this.validFromDate,
    required this.validToDate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificateArn'] = certificateArn;
    map['certificateCreationDate'] = certificateCreationDate;
    map['certificateId'] = certificateId;
    map['certificateOwner'] = certificateOwner;
    map['certificatePem'] = certificatePem;
    map['certificateWallet'] = certificateWallet;
    map['id'] = id;
    map['keyLength'] = keyLength;
    map['region'] = region;
    map['signingAlgorithm'] = signingAlgorithm;
    map['tags'] = tags;
    map['validFromDate'] = validFromDate;
    map['validToDate'] = validToDate;
    return map;
  }

  factory GetCertificateDmsResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateDmsResult(
      certificateArn: map['certificateArn'] as String,
      certificateCreationDate: map['certificateCreationDate'] as String,
      certificateId: map['certificateId'] as String,
      certificateOwner: map['certificateOwner'] as String,
      certificatePem: map['certificatePem'] as String,
      certificateWallet: map['certificateWallet'] as String,
      id: map['id'] as String,
      keyLength: map['keyLength'] as int,
      region: map['region'] as String,
      signingAlgorithm: map['signingAlgorithm'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      validFromDate: map['validFromDate'] as String,
      validToDate: map['validToDate'] as String,
    );
  }
}
