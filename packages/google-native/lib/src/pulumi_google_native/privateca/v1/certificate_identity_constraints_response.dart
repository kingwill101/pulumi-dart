// ignore_for_file: unused_element, unnecessary_cast

import 'expr_response_privateca_v1.dart';

/// Describes constraints on a Certificate's Subject and SubjectAltNames.
class CertificateIdentityConstraintsResponse {
  /// If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  final bool allowSubjectAltNamesPassthrough;

  /// If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  final bool allowSubjectPassthrough;

  /// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  final ExprResponsePrivatecaV1 celExpression;

  CertificateIdentityConstraintsResponse({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    required this.celExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowSubjectAltNamesPassthrough'] = allowSubjectAltNamesPassthrough;
    map['allowSubjectPassthrough'] = allowSubjectPassthrough;
    map['celExpression'] = celExpression.toMap();
    return map;
  }

  factory CertificateIdentityConstraintsResponse.fromMap(
      Map<String, dynamic> map) {
    return CertificateIdentityConstraintsResponse(
      allowSubjectAltNamesPassthrough:
          map['allowSubjectAltNamesPassthrough'] as bool,
      allowSubjectPassthrough: map['allowSubjectPassthrough'] as bool,
      celExpression: ExprResponsePrivatecaV1.fromMap(
          (map['celExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
