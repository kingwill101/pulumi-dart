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
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue;
    }
    final emailMappingValue = emailMapping;
    if (emailMappingValue != null) {
      map['emailMapping'] = emailMappingValue;
    }
    final entityIdValue = entityId;
    if (entityIdValue != null) {
      map['entityId'] = entityIdValue;
    }
    final ssoUriValue = ssoUri;
    if (ssoUriValue != null) {
      map['ssoUri'] = ssoUriValue;
    }
    final userEmailValue = userEmail;
    if (userEmailValue != null) {
      map['userEmail'] = userEmailValue;
    }
    return map;
  }

  factory SAMLParams.fromMap(Map<String, dynamic> map) {
    return SAMLParams(
      certificate:
          map['certificate'] == null ? null : map['certificate'] as String,
      emailMapping:
          map['emailMapping'] == null ? null : map['emailMapping'] as String,
      entityId: map['entityId'] == null ? null : map['entityId'] as String,
      ssoUri: map['ssoUri'] == null ? null : map['ssoUri'] as String,
      userEmail: map['userEmail'] == null ? null : map['userEmail'] as String,
    );
  }
}
