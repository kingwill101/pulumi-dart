// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../user_pool_client_analytics_configuration/user_pool_client_analytics_configuration.dart';
import '../user_pool_client_refresh_token_rotation/user_pool_client_refresh_token_rotation.dart';
import '../user_pool_client_token_validity_units/user_pool_client_token_validity_units.dart';

/// The set of arguments for UserPoolClient.
class UserPoolClientArgs {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  final Input<int>? accessTokenValidity;

  /// List of allowed OAuth flows, including <span pulumi-lang-nodejs="`code`" pulumi-lang-dotnet="`Code`" pulumi-lang-go="`code`" pulumi-lang-python="`code`" pulumi-lang-yaml="`code`" pulumi-lang-java="`code`">`code`</span>, <span pulumi-lang-nodejs="`implicit`" pulumi-lang-dotnet="`Implicit`" pulumi-lang-go="`implicit`" pulumi-lang-python="`implicit`" pulumi-lang-yaml="`implicit`" pulumi-lang-java="`implicit`">`implicit`</span>, and <span pulumi-lang-nodejs="`clientCredentials`" pulumi-lang-dotnet="`ClientCredentials`" pulumi-lang-go="`clientCredentials`" pulumi-lang-python="`client_credentials`" pulumi-lang-yaml="`clientCredentials`" pulumi-lang-java="`clientCredentials`">`client_credentials`</span>. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  final Input<List<String>>? allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure the following arguments: <span pulumi-lang-nodejs="`callbackUrls`" pulumi-lang-dotnet="`CallbackUrls`" pulumi-lang-go="`callbackUrls`" pulumi-lang-python="`callback_urls`" pulumi-lang-yaml="`callbackUrls`" pulumi-lang-java="`callbackUrls`">`callback_urls`</span>, <span pulumi-lang-nodejs="`logoutUrls`" pulumi-lang-dotnet="`LogoutUrls`" pulumi-lang-go="`logoutUrls`" pulumi-lang-python="`logout_urls`" pulumi-lang-yaml="`logoutUrls`" pulumi-lang-java="`logoutUrls`">`logout_urls`</span>, <span pulumi-lang-nodejs="`allowedOauthScopes`" pulumi-lang-dotnet="`AllowedOauthScopes`" pulumi-lang-go="`allowedOauthScopes`" pulumi-lang-python="`allowed_oauth_scopes`" pulumi-lang-yaml="`allowedOauthScopes`" pulumi-lang-java="`allowedOauthScopes`">`allowed_oauth_scopes`</span> and <span pulumi-lang-nodejs="`allowedOauthFlows`" pulumi-lang-dotnet="`AllowedOauthFlows`" pulumi-lang-go="`allowedOauthFlows`" pulumi-lang-python="`allowed_oauth_flows`" pulumi-lang-yaml="`allowedOauthFlows`" pulumi-lang-java="`allowedOauthFlows`">`allowed_oauth_flows`</span>.
  final Input<bool>? allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including <span pulumi-lang-nodejs="`phone`" pulumi-lang-dotnet="`Phone`" pulumi-lang-go="`phone`" pulumi-lang-python="`phone`" pulumi-lang-yaml="`phone`" pulumi-lang-java="`phone`">`phone`</span>, <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, <span pulumi-lang-nodejs="`openid`" pulumi-lang-dotnet="`Openid`" pulumi-lang-go="`openid`" pulumi-lang-python="`openid`" pulumi-lang-yaml="`openid`" pulumi-lang-java="`openid`">`openid`</span>, <span pulumi-lang-nodejs="`profile`" pulumi-lang-dotnet="`Profile`" pulumi-lang-go="`profile`" pulumi-lang-python="`profile`" pulumi-lang-yaml="`profile`" pulumi-lang-java="`profile`">`profile`</span>, and `aws.cognito.signin.user.admin`. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  final Input<List<String>>? allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  final Input<UserPoolClientAnalyticsConfiguration>? analyticsConfiguration;

  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for <span pulumi-lang-nodejs="`authSessionValidity`" pulumi-lang-dotnet="`AuthSessionValidity`" pulumi-lang-go="`authSessionValidity`" pulumi-lang-python="`auth_session_validity`" pulumi-lang-yaml="`authSessionValidity`" pulumi-lang-java="`authSessionValidity`">`auth_session_validity`</span> are between <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span> and <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>, with a default value of <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  final Input<int>? authSessionValidity;

  /// List of allowed callback URLs for the identity providers. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  final Input<List<String>>? callbackUrls;

  /// Default redirect URI and must be included in the list of callback URLs.
  final Input<String>? defaultRedirectUri;

  /// Enables the propagation of additional user context data.
  final Input<bool>? enablePropagateAdditionalUserContextData;

  /// Enables or disables token revocation.
  final Input<bool>? enableTokenRevocation;

  /// List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  final Input<List<String>>? explicitAuthFlows;

  /// Boolean flag indicating whether an application secret should be generated.
  final Input<bool>? generateSecret;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  final Input<int>? idTokenValidity;

  /// List of allowed logout URLs for the identity providers. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  final Input<List<String>>? logoutUrls;

  /// Name of the application client.
  final Input<String>? name;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  final Input<String>? preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  final Input<List<String>>? readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  final Input<UserPoolClientRefreshTokenRotation>? refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  final Input<int>? refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of provider names for the identity providers that are supported on this client. It uses the <span pulumi-lang-nodejs="`providerName`" pulumi-lang-dotnet="`ProviderName`" pulumi-lang-go="`providerName`" pulumi-lang-python="`provider_name`" pulumi-lang-yaml="`providerName`" pulumi-lang-java="`providerName`">`provider_name`</span> attribute of the <span pulumi-lang-nodejs="`aws.cognito.IdentityProvider`" pulumi-lang-dotnet="`aws.cognito.IdentityProvider`" pulumi-lang-go="`cognito.IdentityProvider`" pulumi-lang-python="`cognito.IdentityProvider`" pulumi-lang-yaml="`aws.cognito.IdentityProvider`" pulumi-lang-java="`aws.cognito.IdentityProvider`">`aws.cognito.IdentityProvider`</span> resource(s), or the equivalent string(s).
  final Input<List<String>>? supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  final Input<UserPoolClientTokenValidityUnits>? tokenValidityUnits;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final Input<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  final Input<List<String>>? writeAttributes;

  UserPoolClientArgs({
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
    this.generateSecret,
    this.idTokenValidity,
    this.logoutUrls,
    this.name,
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
      map['analyticsConfiguration'] = Input.mapOptionalInputValue<
              UserPoolClientAnalyticsConfiguration, Map<String, dynamic>>(
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
    final generateSecretValue = generateSecret;
    if (generateSecretValue != null) {
      map['generateSecret'] = generateSecretValue;
    }
    final idTokenValidityValue = idTokenValidity;
    if (idTokenValidityValue != null) {
      map['idTokenValidity'] = idTokenValidityValue;
    }
    final logoutUrlsValue = logoutUrls;
    if (logoutUrlsValue != null) {
      map['logoutUrls'] = logoutUrlsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
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
      map['refreshTokenRotation'] = Input.mapOptionalInputValue<
              UserPoolClientRefreshTokenRotation, Map<String, dynamic>>(
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
      map['tokenValidityUnits'] = Input.mapOptionalInputValue<
              UserPoolClientTokenValidityUnits, Map<String, dynamic>>(
          tokenValidityUnitsValue, (value) => value.toMap());
    }
    map['userPoolId'] = userPoolId;
    final writeAttributesValue = writeAttributes;
    if (writeAttributesValue != null) {
      map['writeAttributes'] = writeAttributesValue;
    }
    return map;
  }

  factory UserPoolClientArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolClientArgs(
      accessTokenValidity:
          Input.asOptionalInput<int>(map['accessTokenValidity']),
      allowedOauthFlows:
          Input.asOptionalInput<List<String>>(map['allowedOauthFlows']),
      allowedOauthFlowsUserPoolClient:
          Input.asOptionalInput<bool>(map['allowedOauthFlowsUserPoolClient']),
      allowedOauthScopes:
          Input.asOptionalInput<List<String>>(map['allowedOauthScopes']),
      analyticsConfiguration:
          Input.asOptionalInput<UserPoolClientAnalyticsConfiguration>(
              map['analyticsConfiguration']),
      authSessionValidity:
          Input.asOptionalInput<int>(map['authSessionValidity']),
      callbackUrls: Input.asOptionalInput<List<String>>(map['callbackUrls']),
      defaultRedirectUri:
          Input.asOptionalInput<String>(map['defaultRedirectUri']),
      enablePropagateAdditionalUserContextData: Input.asOptionalInput<bool>(
          map['enablePropagateAdditionalUserContextData']),
      enableTokenRevocation:
          Input.asOptionalInput<bool>(map['enableTokenRevocation']),
      explicitAuthFlows:
          Input.asOptionalInput<List<String>>(map['explicitAuthFlows']),
      generateSecret: Input.asOptionalInput<bool>(map['generateSecret']),
      idTokenValidity: Input.asOptionalInput<int>(map['idTokenValidity']),
      logoutUrls: Input.asOptionalInput<List<String>>(map['logoutUrls']),
      name: Input.asOptionalInput<String>(map['name']),
      preventUserExistenceErrors:
          Input.asOptionalInput<String>(map['preventUserExistenceErrors']),
      readAttributes:
          Input.asOptionalInput<List<String>>(map['readAttributes']),
      refreshTokenRotation:
          Input.asOptionalInput<UserPoolClientRefreshTokenRotation>(
              map['refreshTokenRotation']),
      refreshTokenValidity:
          Input.asOptionalInput<int>(map['refreshTokenValidity']),
      region: Input.asOptionalInput<String>(map['region']),
      supportedIdentityProviders: Input.asOptionalInput<List<String>>(
          map['supportedIdentityProviders']),
      tokenValidityUnits:
          Input.asOptionalInput<UserPoolClientTokenValidityUnits>(
              map['tokenValidityUnits']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
      writeAttributes:
          Input.asOptionalInput<List<String>>(map['writeAttributes']),
    );
  }
}
