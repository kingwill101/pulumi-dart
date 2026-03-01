// ignore_for_file: unused_element, unnecessary_cast


class GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2 {
  /// The list of allowed Applications for the Default Authorisation Policy.
  final List<String> allowedApplications;
  /// The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  final List<String> allowedAudiences;
  /// The list of allowed Group Names for the Default Authorisation Policy.
  final List<String> allowedGroups;
  /// The list of allowed Identities for the Default Authorisation Policy.
  final List<String> allowedIdentities;
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final String clientId;
  /// The thumbprint of the certificate used for signing purposes.
  final String clientSecretCertificateThumbprint;
  /// The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  final String clientSecretSettingName;
  /// The list of Allowed Client Applications in the JWT Claim.
  final List<String> jwtAllowedClientApplications;
  /// The list of Allowed Groups in the JWT Claim.
  final List<String> jwtAllowedGroups;
  /// A map of key-value pairs sent to the Authorisation Endpoint when a user logs in.
  final Map<String, String> loginParameters;
  /// The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  final String tenantAuthEndpoint;
  /// Is the www-authenticate provider omitted from the request?
  final bool wwwAuthenticationDisabled;

  /// Creates a new [GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2].
  /// [allowedApplications] The list of allowed Applications for the Default Authorisation Policy.
  /// [allowedAudiences] The list of Allowed Audiences that are be requested as part of Microsoft Sign-In authentication.
  /// [allowedGroups] The list of allowed Group Names for the Default Authorisation Policy.
  /// [allowedIdentities] The list of allowed Identities for the Default Authorisation Policy.
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecretCertificateThumbprint] The thumbprint of the certificate used for signing purposes.
  /// [clientSecretSettingName] The app setting name containing the OAuth 2.0 client secret that was created for the app used for authentication.
  /// [jwtAllowedClientApplications] The list of Allowed Client Applications in the JWT Claim.
  /// [jwtAllowedGroups] The list of Allowed Groups in the JWT Claim.
  /// [loginParameters] A map of key-value pairs sent to the Authorisation Endpoint when a user logs in.
  /// [tenantAuthEndpoint] The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  /// [wwwAuthenticationDisabled] Is the www-authenticate provider omitted from the request?
  GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2({
    required this.allowedApplications,
    required this.allowedAudiences,
    required this.allowedGroups,
    required this.allowedIdentities,
    required this.clientId,
    required this.clientSecretCertificateThumbprint,
    required this.clientSecretSettingName,
    required this.jwtAllowedClientApplications,
    required this.jwtAllowedGroups,
    required this.loginParameters,
    required this.tenantAuthEndpoint,
    required this.wwwAuthenticationDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': allowedApplications,
      'allowedAudiences': allowedAudiences,
      'allowedGroups': allowedGroups,
      'allowedIdentities': allowedIdentities,
      'clientId': clientId,
      'clientSecretCertificateThumbprint': clientSecretCertificateThumbprint,
      'clientSecretSettingName': clientSecretSettingName,
      'jwtAllowedClientApplications': jwtAllowedClientApplications,
      'jwtAllowedGroups': jwtAllowedGroups,
      'loginParameters': loginParameters,
      'tenantAuthEndpoint': tenantAuthEndpoint,
      'wwwAuthenticationDisabled': wwwAuthenticationDisabled,
    };
  }

  factory GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2.fromMap(Map<String, dynamic> map) {
    return GetLinuxFunctionAppAuthSettingsV2ActiveDirectoryV2(
      allowedApplications: (map['allowedApplications'] as List).cast<String>(),
      allowedAudiences: (map['allowedAudiences'] as List).cast<String>(),
      allowedGroups: (map['allowedGroups'] as List).cast<String>(),
      allowedIdentities: (map['allowedIdentities'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecretCertificateThumbprint: map['clientSecretCertificateThumbprint'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] as String,
      jwtAllowedClientApplications: (map['jwtAllowedClientApplications'] as List).cast<String>(),
      jwtAllowedGroups: (map['jwtAllowedGroups'] as List).cast<String>(),
      loginParameters: (map['loginParameters'] as Map).cast<String, String>(),
      tenantAuthEndpoint: map['tenantAuthEndpoint'] as String,
      wwwAuthenticationDisabled: map['wwwAuthenticationDisabled'] as bool,
    );
  }
}

