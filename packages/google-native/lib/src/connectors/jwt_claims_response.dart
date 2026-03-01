// ignore_for_file: unused_element, unnecessary_cast

/// JWT claims used for the jwt-bearer authorization grant.
class JwtClaimsResponse {
  /// Value for the "aud" claim.
  final String audience;

  /// Value for the "iss" claim.
  final String issuer;

  /// Value for the "sub" claim.
  final String subject;

  /// Creates a new [JwtClaimsResponse].
  /// [audience] Value for the "aud" claim.
  /// [issuer] Value for the "iss" claim.
  /// [subject] Value for the "sub" claim.
  JwtClaimsResponse({
    required this.audience,
    required this.issuer,
    required this.subject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audience': audience,
      'issuer': issuer,
      'subject': subject,
    };
  }

  factory JwtClaimsResponse.fromMap(Map<String, dynamic> map) {
    return JwtClaimsResponse(
      audience: map['audience'] as String,
      issuer: map['issuer'] as String,
      subject: map['subject'] as String,
    );
  }
}
