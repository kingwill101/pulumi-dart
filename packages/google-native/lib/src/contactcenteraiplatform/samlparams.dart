// ignore_for_file: unused_element, unnecessary_cast

/// Message storing SAML params to enable Google as IDP.
class SAMLParams {
  /// SAML certificate
  final String? certificate;

  /// IdP field that maps to the user’s email address
  final String? emailMapping;

  /// Entity id URL
  final String? entityId;

  /// Single sign-on URL
  final String? ssoUri;

  /// Email address of the first admin users.
  final String? userEmail;

  /// Creates a new [SAMLParams].
  /// [certificate] SAML certificate
  /// [emailMapping] IdP field that maps to the user’s email address
  /// [entityId] Entity id URL
  /// [ssoUri] Single sign-on URL
  /// [userEmail] Email address of the first admin users.
  SAMLParams({
    this.certificate,
    this.emailMapping,
    this.entityId,
    this.ssoUri,
    this.userEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'emailMapping': ?emailMapping,
      'entityId': ?entityId,
      'ssoUri': ?ssoUri,
      'userEmail': ?userEmail,
    };
  }

  factory SAMLParams.fromMap(Map<String, dynamic> map) {
    return SAMLParams(
      certificate: map['certificate'] == null
          ? null
          : map['certificate'] as String,
      emailMapping: map['emailMapping'] == null
          ? null
          : map['emailMapping'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      ssoUri: map['ssoUri'] == null ? null : map['ssoUri'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
