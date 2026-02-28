// ignore_for_file: unused_element, unnecessary_cast

/// Message storing SAML params to enable Google as IDP.
class SAMLParamsResponse {
  /// SAML certificate
  final String certificate;

  /// IdP field that maps to the user’s email address
  final String emailMapping;

  /// Entity id URL
  final String entityId;

  /// Single sign-on URL
  final String ssoUri;

  /// Email address of the first admin users.
  final String userEmail;

  /// Creates a new [SAMLParamsResponse].
  /// [certificate] SAML certificate
  /// [emailMapping] IdP field that maps to the user’s email address
  /// [entityId] Entity id URL
  /// [ssoUri] Single sign-on URL
  /// [userEmail] Email address of the first admin users.
  SAMLParamsResponse({
    required this.certificate,
    required this.emailMapping,
    required this.entityId,
    required this.ssoUri,
    required this.userEmail,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['certificate'] = certificate;
    map['emailMapping'] = emailMapping;
    map['entityId'] = entityId;
    map['ssoUri'] = ssoUri;
    map['userEmail'] = userEmail;
    return map;
  }

  factory SAMLParamsResponse.fromMap(Map<String, dynamic> map) {
    return SAMLParamsResponse(
      certificate: map['certificate'] as String,
      emailMapping: map['emailMapping'] as String,
      entityId: map['entityId'] as String,
      ssoUri: map['ssoUri'] as String,
      userEmail: map['userEmail'] as String,
    );
  }
}
