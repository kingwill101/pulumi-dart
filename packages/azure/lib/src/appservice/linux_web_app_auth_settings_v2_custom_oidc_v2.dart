// ignore_for_file: unused_element, unnecessary_cast


class LinuxWebAppAuthSettingsV2CustomOidcV2 {
  /// The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  final String? authorisationEndpoint;
  /// The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  final String? certificationUri;
  /// The Client Credential Method used.
  final String? clientCredentialMethod;
  /// The ID of the Client to use to authenticate with the Custom OIDC.
  final String clientId;
  /// The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
  final String? clientSecretSettingName;
  /// The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  final String? issuerEndpoint;
  /// The name of the Custom OIDC Authentication Provider.
  ///
  /// > **Note:** An `app_setting` matching this value in upper case with the suffix of `_PROVIDER_AUTHENTICATION_SECRET` is required. e.g. `MYOIDC_PROVIDER_AUTHENTICATION_SECRET` for a value of `myoidc`.
  final String name;
  /// The name of the claim that contains the users name.
  final String? nameClaimType;
  /// Specifies the endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  final String openidConfigurationEndpoint;
  /// The list of the scopes that should be requested while authenticating.
  final List<String>? scopes;
  /// The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  final String? tokenEndpoint;

  /// Creates a new [LinuxWebAppAuthSettingsV2CustomOidcV2].
  /// [authorisationEndpoint] The endpoint to make the Authorisation Request as supplied by `openid_configuration_endpoint` response.
  /// [certificationUri] The endpoint that provides the keys necessary to validate the token as supplied by `openid_configuration_endpoint` response.
  /// [clientCredentialMethod] The Client Credential Method used.
  /// [clientId] The ID of the Client to use to authenticate with the Custom OIDC.
  /// [clientSecretSettingName] The App Setting name that contains the secret for this Custom OIDC Client. This is generated from `name` above and suffixed with `_PROVIDER_AUTHENTICATION_SECRET`.
  /// [issuerEndpoint] The endpoint that issued the Token as supplied by `openid_configuration_endpoint` response.
  /// [name] The name of the Custom OIDC Authentication Provider.
  /// [nameClaimType] The name of the claim that contains the users name.
  /// [openidConfigurationEndpoint] Specifies the endpoint used for OpenID Connect Discovery. For example `https://example.com/.well-known/openid-configuration`.
  /// [scopes] The list of the scopes that should be requested while authenticating.
  /// [tokenEndpoint] The endpoint used to request a Token as supplied by `openid_configuration_endpoint` response.
  LinuxWebAppAuthSettingsV2CustomOidcV2({
    this.authorisationEndpoint,
    this.certificationUri,
    this.clientCredentialMethod,
    required this.clientId,
    this.clientSecretSettingName,
    this.issuerEndpoint,
    required this.name,
    this.nameClaimType,
    required this.openidConfigurationEndpoint,
    this.scopes,
    this.tokenEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorisationEndpoint': ?authorisationEndpoint,
      'certificationUri': ?certificationUri,
      'clientCredentialMethod': ?clientCredentialMethod,
      'clientId': clientId,
      'clientSecretSettingName': ?clientSecretSettingName,
      'issuerEndpoint': ?issuerEndpoint,
      'name': name,
      'nameClaimType': ?nameClaimType,
      'openidConfigurationEndpoint': openidConfigurationEndpoint,
      'scopes': ?scopes,
      'tokenEndpoint': ?tokenEndpoint,
    };
  }

  factory LinuxWebAppAuthSettingsV2CustomOidcV2.fromMap(Map<String, dynamic> map) {
    return LinuxWebAppAuthSettingsV2CustomOidcV2(
      authorisationEndpoint: map['authorisationEndpoint'] == null ? null : map['authorisationEndpoint'] as String,
      certificationUri: map['certificationUri'] == null ? null : map['certificationUri'] as String,
      clientCredentialMethod: map['clientCredentialMethod'] == null ? null : map['clientCredentialMethod'] as String,
      clientId: map['clientId'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
      issuerEndpoint: map['issuerEndpoint'] == null ? null : map['issuerEndpoint'] as String,
      name: map['name'] as String,
      nameClaimType: map['nameClaimType'] == null ? null : map['nameClaimType'] as String,
      openidConfigurationEndpoint: map['openidConfigurationEndpoint'] as String,
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
      tokenEndpoint: map['tokenEndpoint'] == null ? null : map['tokenEndpoint'] as String,
    );
  }
}

