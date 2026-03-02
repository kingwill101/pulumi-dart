// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of certificate imported from key vault.
class ContentCertificatePropertiesResponse {
  /// The activate date of certificate.
  final pulumi.Input<String> activateDate;
  /// The domain list of certificate.
  final pulumi.Input<List<String>> dnsNames;
  /// The expiration date of certificate.
  final pulumi.Input<String> expirationDate;
  /// The issue date of certificate.
  final pulumi.Input<String> issuedDate;
  /// The issuer of certificate.
  final pulumi.Input<String> issuer;
  /// Provisioning state of the Certificate
  final pulumi.Input<String> provisioningState;
  /// The subject name of certificate.
  final pulumi.Input<String> subjectName;
  /// The thumbprint of certificate.
  final pulumi.Input<String> thumbprint;
  /// The type of the certificate source.
  /// Expected value is 'ContentCertificate'.
  final pulumi.Input<String> type;

  /// Creates a new [ContentCertificatePropertiesResponse].
  /// [activateDate] The activate date of certificate.
  /// [dnsNames] The domain list of certificate.
  /// [expirationDate] The expiration date of certificate.
  /// [issuedDate] The issue date of certificate.
  /// [issuer] The issuer of certificate.
  /// [provisioningState] Provisioning state of the Certificate
  /// [subjectName] The subject name of certificate.
  /// [thumbprint] The thumbprint of certificate.
  /// [type] The type of the certificate source.
  ContentCertificatePropertiesResponse({
    required this.activateDate,
    required this.dnsNames,
    required this.expirationDate,
    required this.issuedDate,
    required this.issuer,
    required this.provisioningState,
    required this.subjectName,
    required this.thumbprint,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activateDate': activateDate,
      'dnsNames': dnsNames,
      'expirationDate': expirationDate,
      'issuedDate': issuedDate,
      'issuer': issuer,
      'provisioningState': provisioningState,
      'subjectName': subjectName,
      'thumbprint': thumbprint,
      'type': type,
    };
  }

  factory ContentCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ContentCertificatePropertiesResponse(
      activateDate: (map['activateDate'] as String).input(),
      dnsNames: ((map['dnsNames'] as List).cast<String>()).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      issuedDate: (map['issuedDate'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subjectName: (map['subjectName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

