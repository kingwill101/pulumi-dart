// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../managed_user_pool_client_analytics_configuration/managed_user_pool_client_analytics_configuration.dart';
import '../managed_user_pool_client_refresh_token_rotation/managed_user_pool_client_refresh_token_rotation.dart';
import '../managed_user_pool_client_token_validity_units/managed_user_pool_client_token_validity_units.dart';

/// The set of arguments for ManagedUserPoolClient.
class ManagedUserPoolClientArgs {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  final pulumi.Input<int>? accessTokenValidity;

  /// List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  final pulumi.Input<bool>? allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  final pulumi.Input<ManagedUserPoolClientAnalyticsConfiguration>?
      analyticsConfiguration;

  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `auth_session_validity` are between `3` and `15`, with a default value of `3`.
  final pulumi.Input<int>? authSessionValidity;

  /// List of allowed callback URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? callbackUrls;

  /// Default redirect URI and must be included in the list of callback URLs.
  final pulumi.Input<String>? defaultRedirectUri;

  /// Enables the propagation of additional user context data.
  final pulumi.Input<bool>? enablePropagateAdditionalUserContextData;

  /// Enables or disables token revocation.
  final pulumi.Input<bool>? enableTokenRevocation;

  /// List of authentication flows. The available options include ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, and ALLOW_REFRESH_TOKEN_AUTH.
  final pulumi.Input<List<String>>? explicitAuthFlows;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  final pulumi.Input<int>? idTokenValidity;

  /// List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? logoutUrls;

  /// Regular expression that matches the name of the existing User Pool Client to be managed. It must only match one User Pool Client.
  final pulumi.Input<String>? namePattern;

  /// String that matches the beginning of the name of the  existing User Pool Client to be managed. It must match only one User Pool Client.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? namePrefix;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  final pulumi.Input<String>? preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  final pulumi.Input<List<String>>? readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  final pulumi.Input<ManagedUserPoolClientRefreshTokenRotation>?
      refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  final pulumi.Input<int>? refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  final pulumi.Input<List<String>>? supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  final pulumi.Input<ManagedUserPoolClientTokenValidityUnits>?
      tokenValidityUnits;

  /// User pool that the client belongs to.
  final pulumi.Input<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  final pulumi.Input<List<String>>? writeAttributes;

  ManagedUserPoolClientArgs({
    this.accessTokenValidity,
    this.allowedOauthFlows,
    this.allowedOauthFlowsUserPoolClient,
    this.allowedOauthScopes,
    this.analyticsConfiguration,
    this.authSessionValidity,
    this.callbackUrls,
    this.defaultRedirectUri,
    this.enablePropagateAdditionalUserContextData,
    this.enableTokenRevocation,
    this.explicitAuthFlows,
    this.idTokenValidity,
    this.logoutUrls,
    this.namePattern,
    this.namePrefix,
    this.preventUserExistenceErrors,
    this.readAttributes,
    this.refreshTokenRotation,
    this.refreshTokenValidity,
    this.region,
    this.supportedIdentityProviders,
    this.tokenValidityUnits,
    required this.userPoolId,
    this.writeAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessTokenValidityValue = accessTokenValidity;
    if (accessTokenValidityValue != null) {
      map['accessTokenValidity'] = accessTokenValidityValue;
    }
    final allowedOauthFlowsValue = allowedOauthFlows;
    if (allowedOauthFlowsValue != null) {
      map['allowedOauthFlows'] = allowedOauthFlowsValue;
    }
    final allowedOauthFlowsUserPoolClientValue =
        allowedOauthFlowsUserPoolClient;
    if (allowedOauthFlowsUserPoolClientValue != null) {
      map['allowedOauthFlowsUserPoolClient'] =
          allowedOauthFlowsUserPoolClientValue;
    }
    final allowedOauthScopesValue = allowedOauthScopes;
    if (allowedOauthScopesValue != null) {
      map['allowedOauthScopes'] = allowedOauthScopesValue;
    }
    final analyticsConfigurationValue = analyticsConfiguration;
    if (analyticsConfigurationValue != null) {
      map['analyticsConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ManagedUserPoolClientAnalyticsConfiguration,
              Map<String, dynamic>>(
          analyticsConfigurationValue, (value) => value.toMap());
    }
    final authSessionValidityValue = authSessionValidity;
    if (authSessionValidityValue != null) {
      map['authSessionValidity'] = authSessionValidityValue;
    }
    final callbackUrlsValue = callbackUrls;
    if (callbackUrlsValue != null) {
      map['callbackUrls'] = callbackUrlsValue;
    }
    final defaultRedirectUriValue = defaultRedirectUri;
    if (defaultRedirectUriValue != null) {
      map['defaultRedirectUri'] = defaultRedirectUriValue;
    }
    final enablePropagateAdditionalUserContextDataValue =
        enablePropagateAdditionalUserContextData;
    if (enablePropagateAdditionalUserContextDataValue != null) {
      map['enablePropagateAdditionalUserContextData'] =
          enablePropagateAdditionalUserContextDataValue;
    }
    final enableTokenRevocationValue = enableTokenRevocation;
    if (enableTokenRevocationValue != null) {
      map['enableTokenRevocation'] = enableTokenRevocationValue;
    }
    final explicitAuthFlowsValue = explicitAuthFlows;
    if (explicitAuthFlowsValue != null) {
      map['explicitAuthFlows'] = explicitAuthFlowsValue;
    }
    final idTokenValidityValue = idTokenValidity;
    if (idTokenValidityValue != null) {
      map['idTokenValidity'] = idTokenValidityValue;
    }
    final logoutUrlsValue = logoutUrls;
    if (logoutUrlsValue != null) {
      map['logoutUrls'] = logoutUrlsValue;
    }
    final namePatternValue = namePattern;
    if (namePatternValue != null) {
      map['namePattern'] = namePatternValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final preventUserExistenceErrorsValue = preventUserExistenceErrors;
    if (preventUserExistenceErrorsValue != null) {
      map['preventUserExistenceErrors'] = preventUserExistenceErrorsValue;
    }
    final readAttributesValue = readAttributes;
    if (readAttributesValue != null) {
      map['readAttributes'] = readAttributesValue;
    }
    final refreshTokenRotationValue = refreshTokenRotation;
    if (refreshTokenRotationValue != null) {
      map['refreshTokenRotation'] = pulumi.Input.mapOptionalInputValue<
              ManagedUserPoolClientRefreshTokenRotation, Map<String, dynamic>>(
          refreshTokenRotationValue, (value) => value.toMap());
    }
    final refreshTokenValidityValue = refreshTokenValidity;
    if (refreshTokenValidityValue != null) {
      map['refreshTokenValidity'] = refreshTokenValidityValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final supportedIdentityProvidersValue = supportedIdentityProviders;
    if (supportedIdentityProvidersValue != null) {
      map['supportedIdentityProviders'] = supportedIdentityProvidersValue;
    }
    final tokenValidityUnitsValue = tokenValidityUnits;
    if (tokenValidityUnitsValue != null) {
      map['tokenValidityUnits'] = pulumi.Input.mapOptionalInputValue<
              ManagedUserPoolClientTokenValidityUnits, Map<String, dynamic>>(
          tokenValidityUnitsValue, (value) => value.toMap());
    }
    map['userPoolId'] = userPoolId;
    final writeAttributesValue = writeAttributes;
    if (writeAttributesValue != null) {
      map['writeAttributes'] = writeAttributesValue;
    }
    return map;
  }

  factory ManagedUserPoolClientArgs.fromMap(Map<String, dynamic> map) {
    return ManagedUserPoolClientArgs(
      accessTokenValidity:
          pulumi.Input.asOptionalInput<int>(map['accessTokenValidity']),
      allowedOauthFlows:
          pulumi.Input.asOptionalInput<List<String>>(map['allowedOauthFlows']),
      allowedOauthFlowsUserPoolClient: pulumi.Input.asOptionalInput<bool>(
          map['allowedOauthFlowsUserPoolClient']),
      allowedOauthScopes:
          pulumi.Input.asOptionalInput<List<String>>(map['allowedOauthScopes']),
      analyticsConfiguration: pulumi.Input.asOptionalInput<
              ManagedUserPoolClientAnalyticsConfiguration>(
          map['analyticsConfiguration']),
      authSessionValidity:
          pulumi.Input.asOptionalInput<int>(map['authSessionValidity']),
      callbackUrls:
          pulumi.Input.asOptionalInput<List<String>>(map['callbackUrls']),
      defaultRedirectUri:
          pulumi.Input.asOptionalInput<String>(map['defaultRedirectUri']),
      enablePropagateAdditionalUserContextData:
          pulumi.Input.asOptionalInput<bool>(
              map['enablePropagateAdditionalUserContextData']),
      enableTokenRevocation:
          pulumi.Input.asOptionalInput<bool>(map['enableTokenRevocation']),
      explicitAuthFlows:
          pulumi.Input.asOptionalInput<List<String>>(map['explicitAuthFlows']),
      idTokenValidity:
          pulumi.Input.asOptionalInput<int>(map['idTokenValidity']),
      logoutUrls: pulumi.Input.asOptionalInput<List<String>>(map['logoutUrls']),
      namePattern: pulumi.Input.asOptionalInput<String>(map['namePattern']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      preventUserExistenceErrors: pulumi.Input.asOptionalInput<String>(
          map['preventUserExistenceErrors']),
      readAttributes:
          pulumi.Input.asOptionalInput<List<String>>(map['readAttributes']),
      refreshTokenRotation: pulumi.Input.asOptionalInput<
              ManagedUserPoolClientRefreshTokenRotation>(
          map['refreshTokenRotation']),
      refreshTokenValidity:
          pulumi.Input.asOptionalInput<int>(map['refreshTokenValidity']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      supportedIdentityProviders: pulumi.Input.asOptionalInput<List<String>>(
          map['supportedIdentityProviders']),
      tokenValidityUnits:
          pulumi.Input.asOptionalInput<ManagedUserPoolClientTokenValidityUnits>(
              map['tokenValidityUnits']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
      writeAttributes:
          pulumi.Input.asOptionalInput<List<String>>(map['writeAttributes']),
    );
  }
}
