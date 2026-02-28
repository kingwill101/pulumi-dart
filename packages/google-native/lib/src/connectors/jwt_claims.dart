// ignore_for_file: unused_element, unnecessary_cast

/// JWT claims used for the jwt-bearer authorization grant.
class JwtClaims {
  /// Value for the "aud" claim.
  final String? audience;

  /// Value for the "iss" claim.
  final String? issuer;

  /// Value for the "sub" claim.
  final String? subject;

  /// Creates a new [JwtClaims].
  /// [audience] Value for the "aud" claim.
  /// [issuer] Value for the "iss" claim.
  /// [subject] Value for the "sub" claim.
  JwtClaims({
    this.audience,
    this.issuer,
    this.subject,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final audienceValue = audience;
    if (audienceValue != null) {
      map['audience'] = audienceValue;
    }
    final issuerValue = issuer;
    if (issuerValue != null) {
      map['issuer'] = issuerValue;
    }
    final subjectValue = subject;
    if (subjectValue != null) {
      map['subject'] = subjectValue;
    }
    return map;
  }

  factory JwtClaims.fromMap(Map<String, dynamic> map) {
    return JwtClaims(
      audience: map['audience'] == null ? null : map['audience'] as String,
      issuer: map['issuer'] == null ? null : map['issuer'] as String,
      subject: map['subject'] == null ? null : map['subject'] as String,
    );
  }
}
