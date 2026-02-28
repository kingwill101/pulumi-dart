// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_template_identity_constraints_cel_expression.dart';

class CertificateTemplateIdentityConstraints {
  /// Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  final bool allowSubjectAltNamesPassthrough;

  /// Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  final bool allowSubjectPassthrough;

  /// Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  /// Structure is documented below.
  final CertificateTemplateIdentityConstraintsCelExpression? celExpression;

  /// Creates a new [CertificateTemplateIdentityConstraints].
  /// [allowSubjectAltNamesPassthrough] Required. If this is true, the SubjectAltNames extension may be copied from a certificate request into the signed certificate. Otherwise, the requested SubjectAltNames will be discarded.
  /// [allowSubjectPassthrough] Required. If this is true, the Subject field may be copied from a certificate request into the signed certificate. Otherwise, the requested Subject will be discarded.
  /// [celExpression] Optional. A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a certificate is signed. To see the full allowed syntax and some examples, see https://cloud.google.com/certificate-authority-service/docs/using-cel
  CertificateTemplateIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowSubjectAltNamesPassthrough'] = allowSubjectAltNamesPassthrough;
    map['allowSubjectPassthrough'] = allowSubjectPassthrough;
    final celExpressionValue = celExpression;
    if (celExpressionValue != null) {
      map['celExpression'] = celExpressionValue.toMap();
    }
    return map;
  }

  factory CertificateTemplateIdentityConstraints.fromMap(
      Map<String, dynamic> map) {
    return CertificateTemplateIdentityConstraints(
      allowSubjectAltNamesPassthrough:
          map['allowSubjectAltNamesPassthrough'] as bool,
      allowSubjectPassthrough: map['allowSubjectPassthrough'] as bool,
      celExpression: map['celExpression'] == null
          ? null
          : CertificateTemplateIdentityConstraintsCelExpression.fromMap(
              (map['celExpression'] as Map).cast<String, dynamic>()),
    );
  }
}
