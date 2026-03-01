// ignore_for_file: unused_element, unnecessary_cast


class AppFlexConsumptionAuthSettingsV2ActiveDirectoryV2 {
  /// The list of allowed Applications for the Default Authorisation Policy.
  final List<String>? allowedApplications;
  /// Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  ///
  /// > **Note:** This is configured on the Authentication Provider side and is Read Only here.
  final List<String>? allowedAudiences;
  /// The list of allowed Group Names for the Default Authorisation Policy.
  final List<String>? allowedGroups;
  /// The list of allowed Identities for the Default Authorisation Policy.
  final List<String>? allowedIdentities;
  /// The ID of the Client to use to authenticate with Azure Active Directory.
  final String clientId;
  /// The thumbprint of the certificate used for signing purposes.
  ///
  /// !> **Note:** If one `client_secret_setting_name` or `client_secret_certificate_thumbprint` is specified, terraform won't write the client secret or secret certificate thumbprint back to `app_setting`, so make sure they are existed in `app_settings` to function correctly.
  final String? clientSecretCertificateThumbprint;
  /// The App Setting name that contains the client secret of the Client.
  ///
  /// !> **Note:** A setting with this name must exist in `app_settings` to function correctly.
  final String? clientSecretSettingName;
  /// A list of Allowed Client Applications in the JWT Claim.
  final List<String>? jwtAllowedClientApplications;
  /// A list of Allowed Groups in the JWT Claim.
  final List<String>? jwtAllowedGroups;
  /// A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
  final Map<String, String>? loginParameters;
  /// The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  ///
  /// > **Note:** [Here](https://learn.microsoft.com/en-us/entra/identity-platform/authentication-national-cloud#microsoft-entra-authentication-endpoints) is a list of possible authentication endpoints based on the cloud environment. [Here](https://learn.microsoft.com/en-us/azure/app-service/configure-authentication-provider-aad?tabs=workforce-tenant) is more information to better understand how to configure authentication for Azure App Service or Azure Functions.
  final String tenantAuthEndpoint;
  /// Should the www-authenticate provider should be omitted from the request? Defaults to `false`.
  final bool? wwwAuthenticationDisabled;

  /// Creates a new [AppFlexConsumptionAuthSettingsV2ActiveDirectoryV2].
  /// [allowedApplications] The list of allowed Applications for the Default Authorisation Policy.
  /// [allowedAudiences] Specifies a list of Allowed audience values to consider when validating JWTs issued by Azure Active Directory.
  /// [allowedGroups] The list of allowed Group Names for the Default Authorisation Policy.
  /// [allowedIdentities] The list of allowed Identities for the Default Authorisation Policy.
  /// [clientId] The ID of the Client to use to authenticate with Azure Active Directory.
  /// [clientSecretCertificateThumbprint] The thumbprint of the certificate used for signing purposes.
  /// [clientSecretSettingName] The App Setting name that contains the client secret of the Client.
  /// [jwtAllowedClientApplications] A list of Allowed Client Applications in the JWT Claim.
  /// [jwtAllowedGroups] A list of Allowed Groups in the JWT Claim.
  /// [loginParameters] A map of key-value pairs to send to the Authorisation Endpoint when a user logs in.
  /// [tenantAuthEndpoint] The Azure Tenant Endpoint for the Authenticating Tenant. e.g. `https://login.microsoftonline.com/{tenant-guid}/v2.0/`
  /// [wwwAuthenticationDisabled] Should the www-authenticate provider should be omitted from the request? Defaults to `false`.
  AppFlexConsumptionAuthSettingsV2ActiveDirectoryV2({
    this.allowedApplications,
    this.allowedAudiences,
    this.allowedGroups,
    this.allowedIdentities,
    required this.clientId,
    this.clientSecretCertificateThumbprint,
    this.clientSecretSettingName,
    this.jwtAllowedClientApplications,
    this.jwtAllowedGroups,
    this.loginParameters,
    required this.tenantAuthEndpoint,
    this.wwwAuthenticationDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedApplications': ?allowedApplications,
      'allowedAudiences': ?allowedAudiences,
      'allowedGroups': ?allowedGroups,
      'allowedIdentities': ?allowedIdentities,
      'clientId': clientId,
      'clientSecretCertificateThumbprint': ?clientSecretCertificateThumbprint,
      'clientSecretSettingName': ?clientSecretSettingName,
      'jwtAllowedClientApplications': ?jwtAllowedClientApplications,
      'jwtAllowedGroups': ?jwtAllowedGroups,
      'loginParameters': ?loginParameters,
      'tenantAuthEndpoint': tenantAuthEndpoint,
      'wwwAuthenticationDisabled': ?wwwAuthenticationDisabled,
    };
  }

  factory AppFlexConsumptionAuthSettingsV2ActiveDirectoryV2.fromMap(Map<String, dynamic> map) {
    return AppFlexConsumptionAuthSettingsV2ActiveDirectoryV2(
      allowedApplications: map['allowedApplications'] == null ? null : (map['allowedApplications'] as List).cast<String>(),
      allowedAudiences: map['allowedAudiences'] == null ? null : (map['allowedAudiences'] as List).cast<String>(),
      allowedGroups: map['allowedGroups'] == null ? null : (map['allowedGroups'] as List).cast<String>(),
      allowedIdentities: map['allowedIdentities'] == null ? null : (map['allowedIdentities'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecretCertificateThumbprint: map['clientSecretCertificateThumbprint'] == null ? null : map['clientSecretCertificateThumbprint'] as String,
      clientSecretSettingName: map['clientSecretSettingName'] == null ? null : map['clientSecretSettingName'] as String,
      jwtAllowedClientApplications: map['jwtAllowedClientApplications'] == null ? null : (map['jwtAllowedClientApplications'] as List).cast<String>(),
      jwtAllowedGroups: map['jwtAllowedGroups'] == null ? null : (map['jwtAllowedGroups'] as List).cast<String>(),
      loginParameters: map['loginParameters'] == null ? null : (map['loginParameters'] as Map).cast<String, String>(),
      tenantAuthEndpoint: map['tenantAuthEndpoint'] as String,
      wwwAuthenticationDisabled: map['wwwAuthenticationDisabled'] == null ? null : map['wwwAuthenticationDisabled'] as bool,
    );
  }
}

