// ignore_for_file: unused_element, unnecessary_cast


/// An Application configured in the Identity Provider used to access FHIR resources.
class SmartIdentityProviderApplicationResponse {
  /// The actions that are permitted to be performed on FHIR resources for the application.
  final List<String>? allowedDataActions;
  /// The audience that will be used to validate bearer tokens against the given authority.
  final String? audience;
  /// The application client id defined in the identity provider. This value will be used to validate bearer tokens against the given authority.
  final String? clientId;

  /// Creates a new [SmartIdentityProviderApplicationResponse].
  /// [allowedDataActions] The actions that are permitted to be performed on FHIR resources for the application.
  /// [audience] The audience that will be used to validate bearer tokens against the given authority.
  /// [clientId] The application client id defined in the identity provider. This value will be used to validate bearer tokens against the given authority.
  SmartIdentityProviderApplicationResponse({
    this.allowedDataActions,
    this.audience,
    this.clientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDataActions': ?allowedDataActions,
      'audience': ?audience,
      'clientId': ?clientId,
    };
  }

  factory SmartIdentityProviderApplicationResponse.fromMap(Map<String, dynamic> map) {
    return SmartIdentityProviderApplicationResponse(
      allowedDataActions: map['allowedDataActions'] == null ? null : (map['allowedDataActions'] as List).cast<String>(),
      audience: map['audience'] == null ? null : map['audience'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'] as String,
    );
  }
}

