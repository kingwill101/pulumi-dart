// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
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

  /// Creates a new [GetCertificateResult].
  /// [certificateArn] The Amazon Resource Name (ARN) for the certificate.
  /// [certificateCreationDate] The date that the certificate was created.
  /// [certificateId] Required.
  /// [certificateOwner] The owner of the certificate.
  /// [certificatePem] The contents of a .pem file, which contains an X.509 certificate.
  /// [certificateWallet] The owner of the certificate.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyLength] The key length of the cryptographic algorithm being used.
  /// [region] Required.
  /// [signingAlgorithm] The algorithm for the certificate.
  /// [tags] Required.
  /// [validFromDate] The beginning date that the certificate is valid.
  /// [validToDate] The final date that the certificate is valid.
  const GetCertificateResult({
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
    return <String, dynamic>{
      'certificateArn': certificateArn,
      'certificateCreationDate': certificateCreationDate,
      'certificateId': certificateId,
      'certificateOwner': certificateOwner,
      'certificatePem': certificatePem,
      'certificateWallet': certificateWallet,
      'id': id,
      'keyLength': keyLength,
      'region': region,
      'signingAlgorithm': signingAlgorithm,
      'tags': tags,
      'validFromDate': validFromDate,
      'validToDate': validToDate,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
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
