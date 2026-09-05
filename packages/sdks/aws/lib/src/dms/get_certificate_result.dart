// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// ARN for the certificate.
  final String? certificateArn;
  /// The date that the certificate was created.
  final String? certificateCreationDate;
  final String? certificateId;
  /// The owner of the certificate.
  final String? certificateOwner;
  /// The contents of a .pem file, which contains an X.509 certificate.
  final String? certificatePem;
  /// The owner of the certificate.
  final String? certificateWallet;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The key length of the cryptographic algorithm being used.
  final int? keyLength;
  final String? region;
  /// The algorithm for the certificate.
  final String? signingAlgorithm;
  final Map<String, String>? tags;
  /// The beginning date that the certificate is valid.
  final String? validFromDate;
  /// The final date that the certificate is valid.
  final String? validToDate;

  /// Creates a new [GetCertificateResult].
  /// [certificateArn] ARN for the certificate.
  /// [certificateCreationDate] The date that the certificate was created.
  /// [certificateId] Optional.
  /// [certificateOwner] The owner of the certificate.
  /// [certificatePem] The contents of a .pem file, which contains an X.509 certificate.
  /// [certificateWallet] The owner of the certificate.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyLength] The key length of the cryptographic algorithm being used.
  /// [region] Optional.
  /// [signingAlgorithm] The algorithm for the certificate.
  /// [tags] Optional.
  /// [validFromDate] The beginning date that the certificate is valid.
  /// [validToDate] The final date that the certificate is valid.
  const GetCertificateResult({
    this.certificateArn,
    this.certificateCreationDate,
    this.certificateId,
    this.certificateOwner,
    this.certificatePem,
    this.certificateWallet,
    this.id,
    this.keyLength,
    this.region,
    this.signingAlgorithm,
    this.tags,
    this.validFromDate,
    this.validToDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateArn': ?certificateArn,
      'certificateCreationDate': ?certificateCreationDate,
      'certificateId': ?certificateId,
      'certificateOwner': ?certificateOwner,
      'certificatePem': ?certificatePem,
      'certificateWallet': ?certificateWallet,
      'id': ?id,
      'keyLength': ?keyLength,
      'region': ?region,
      'signingAlgorithm': ?signingAlgorithm,
      'tags': ?tags,
      'validFromDate': ?validFromDate,
      'validToDate': ?validToDate,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificateArn: (() { final guardedValue = map['certificateArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateCreationDate: (() { final guardedValue = map['certificateCreationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateOwner: (() { final guardedValue = map['certificateOwner']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificatePem: (() { final guardedValue = map['certificatePem']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateWallet: (() { final guardedValue = map['certificateWallet']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyLength: (() { final guardedValue = map['keyLength']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      signingAlgorithm: (() { final guardedValue = map['signingAlgorithm']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      validFromDate: (() { final guardedValue = map['validFromDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      validToDate: (() { final guardedValue = map['validToDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
