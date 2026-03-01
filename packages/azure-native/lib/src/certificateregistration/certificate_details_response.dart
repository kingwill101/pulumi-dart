// ignore_for_file: unused_element, unnecessary_cast


/// SSL certificate details.
class CertificateDetailsResponse {
  /// Certificate Issuer.
  final String issuer;
  /// Date Certificate is valid to.
  final String notAfter;
  /// Date Certificate is valid from.
  final String notBefore;
  /// Raw certificate data.
  final String rawData;
  /// Certificate Serial Number.
  final String serialNumber;
  /// Certificate Signature algorithm.
  final String signatureAlgorithm;
  /// Certificate Subject.
  final String subject;
  /// Certificate Thumbprint.
  final String thumbprint;
  /// Certificate Version.
  final int version;

  /// Creates a new [CertificateDetailsResponse].
  /// [issuer] Certificate Issuer.
  /// [notAfter] Date Certificate is valid to.
  /// [notBefore] Date Certificate is valid from.
  /// [rawData] Raw certificate data.
  /// [serialNumber] Certificate Serial Number.
  /// [signatureAlgorithm] Certificate Signature algorithm.
  /// [subject] Certificate Subject.
  /// [thumbprint] Certificate Thumbprint.
  /// [version] Certificate Version.
  CertificateDetailsResponse({
    required this.issuer,
    required this.notAfter,
    required this.notBefore,
    required this.rawData,
    required this.serialNumber,
    required this.signatureAlgorithm,
    required this.subject,
    required this.thumbprint,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuer': issuer,
      'notAfter': notAfter,
      'notBefore': notBefore,
      'rawData': rawData,
      'serialNumber': serialNumber,
      'signatureAlgorithm': signatureAlgorithm,
      'subject': subject,
      'thumbprint': thumbprint,
      'version': version,
    };
  }

  factory CertificateDetailsResponse.fromMap(Map<String, dynamic> map) {
    return CertificateDetailsResponse(
      issuer: map['issuer'] as String,
      notAfter: map['notAfter'] as String,
      notBefore: map['notBefore'] as String,
      rawData: map['rawData'] as String,
      serialNumber: map['serialNumber'] as String,
      signatureAlgorithm: map['signatureAlgorithm'] as String,
      subject: map['subject'] as String,
      thumbprint: map['thumbprint'] as String,
      version: map['version'] as int,
    );
  }
}

