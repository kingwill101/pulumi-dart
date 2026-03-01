// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppAuthSettingsV2CustomOidcV2 {
  /// The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  final String authorisationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  final String certificationUri;
  /// The Client Credential Method used.
  final String clientCredentialMethod;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecretSettingName;
  /// The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  final String issuerEndpoint;
  /// The name which should be used for this Linux Function App.
  final String name;
  /// The name of the claim that contains the users name.
  final String nameClaimType;
  /// The endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  final String openidConfigurationEndpoint;
  /// The list of the scopes that are requested while authenticating.
  final List<String> scopes;
  /// The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  final String tokenEndpoint;

  /// Creates a new [GetLinuxFunctionAppAuthSettingsV2CustomOidcV2].
  /// [authorisationEndpoint] The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  /// [clientCredentialMethod] The Client Credential Method used.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [issuerEndpoint] The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  /// [name] The name which should be used for this Linux Function App.
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [openidConfigurationEndpoint] The endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  /// [scopes] The list of the scopes that are requested while authenticating.
  /// [tokenEndpoint] The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  GetLinuxFunctionAppAuthSettingsV2CustomOidcV2({
    required this.authorisationEndpoint,
    required this.certificationUri,
    required this.clientCredentialMethod,
    required this.clientId,
    required this.clientSecretSettingName,
    required this.issuerEndpoint,
    required this.name,
    required this.nameClaimType,
    required this.openidConfigurationEndpoint,
    required this.scopes,
    required this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorisationEndpoint': authorisationEndpoint,
      'certificationUri': certificationUri,
      'clientCredentialMethod': clientCredentialMethod,
      'clientId': clientId,
      'clientSecretSettingName': clientSecretSettingName,
      'issuerEndpoint': issuerEndpoint,
      'name': name,
      'nameClaimType': nameClaimType,
      'openidConfigurationEndpoint': openidConfigurationEndpoint,
      'scopes': scopes,
      'tokenEndpoint': tokenEndpoint,
    };
  }

  factory GetLinuxFunctionAppAuthSettingsV2CustomOidcV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSettingsV2CustomOidcV2(
      authorisationEndpoint: map['authorisationEndpoint'] as String,
      certificationUri: map['certificationUri'] as String,
      clientCredentialMethod: map['clientCredentialMethod'] as String,
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      issuerEndpoint: map['issuerEndpoint'] as String,
      name: map['name'] as String,
      nameClaimType: map['nameClaimType'] as String,
      openidConfigurationEndpoint: map['openidConfigurationEndpoint'] as String,
      scopes: (map['scopes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] as String,
    );
  }
}

