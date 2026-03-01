// ignore_for_file: unused_element, unnecessary_cast

import 'ca_pool_issuance_policy_identity_constraints_cel_expression.dart';

class CaPoolIssuancePolicyIdentityConstraints {
  /// If this is set, the SubjectAltNames extension may be copied from a certificate request into the signed certificate.
  /// Otherwise, the requested SubjectAltNames will be discarded.
  final bool allowSubjectAltNamesPassthrough;

  /// If this is set, the Subject field may be copied from a certificate request into the signed certificate.
  /// Otherwise, the requested Subject will be discarded.
  final bool allowSubjectPassthrough;

  /// A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a
  /// certificate is signed. To see the full allowed syntax and some examples,
  /// see https://cloud.google.com/certificate-authority-service/docs/cel-guide
  /// Structure is documented below.
  final CaPoolIssuancePolicyIdentityConstraintsCelExpression? celExpression;

  /// Creates a new [CaPoolIssuancePolicyIdentityConstraints].
  /// [allowSubjectAltNamesPassthrough] If this is set, the SubjectAltNames extension may be copied from a certificate request into the signed certificate.
  /// [allowSubjectPassthrough] If this is set, the Subject field may be copied from a certificate request into the signed certificate.
  /// [celExpression] A CEL expression that may be used to validate the resolved X.509 Subject and/or Subject Alternative Name before a
  CaPoolIssuancePolicyIdentityConstraints({
    required this.allowSubjectAltNamesPassthrough,
    required this.allowSubjectPassthrough,
    this.celExpression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowSubjectAltNamesPassthrough': allowSubjectAltNamesPassthrough,
      'allowSubjectPassthrough': allowSubjectPassthrough,
      'celExpression': ?celExpression == null ? null : celExpression!.toMap(),
    };
  }

  factory CaPoolIssuancePolicyIdentityConstraints.fromMap(
    Map<String, dynamic> map,
  ) {
    return CaPoolIssuancePolicyIdentityConstraints(
      allowSubjectAltNamesPassthrough:
          map['allowSubjectAltNamesPassthrough'] as bool,
      allowSubjectPassthrough: map['allowSubjectPassthrough'] as bool,
      celExpression: map['celExpression'] == null
          ? null
          : CaPoolIssuancePolicyIdentityConstraintsCelExpression.fromMap(
              (map['celExpression'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
