// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_client_analytics_configuration.dart';
import 'user_pool_client_refresh_token_rotation.dart';
import 'user_pool_client_token_validity_units.dart';

/// Input properties used for looking up and filtering UserPoolClient resources.
class UserPoolClientState {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  final pulumi.Input<int>? accessTokenValidity;
  /// List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? allowedOauthFlows;
  /// Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  final pulumi.Input<bool>? allowedOauthFlowsUserPoolClient;
  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? allowedOauthScopes;
  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  final pulumi.Input<UserPoolClientAnalyticsConfiguration>? analyticsConfiguration;
  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `auth_session_validity` are between `3` and `15`, with a default value of `3`.
  final pulumi.Input<int>? authSessionValidity;
  /// List of allowed callback URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? callbackUrls;
  /// Client secret of the user pool client.
  final pulumi.Input<String>? clientSecret;
  /// Default redirect URI and must be included in the list of callback URLs.
  final pulumi.Input<String>? defaultRedirectUri;
  /// Enables the propagation of additional user context data.
  final pulumi.Input<bool>? enablePropagateAdditionalUserContextData;
  /// Enables or disables token revocation.
  final pulumi.Input<bool>? enableTokenRevocation;
  /// List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  final pulumi.Input<List<String>>? explicitAuthFlows;
  /// Boolean flag indicating whether an application secret should be generated.
  final pulumi.Input<bool>? generateSecret;
  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  final pulumi.Input<int>? idTokenValidity;
  /// List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>>? logoutUrls;
  /// Name of the application client.
  final pulumi.Input<String>? name;
  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  final pulumi.Input<String>? preventUserExistenceErrors;
  /// List of user pool attributes that the application client can read from.
  final pulumi.Input<List<String>>? readAttributes;
  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  final pulumi.Input<UserPoolClientRefreshTokenRotation>? refreshTokenRotation;
  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  final pulumi.Input<int>? refreshTokenValidity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  final pulumi.Input<List<String>>? supportedIdentityProviders;
  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  final pulumi.Input<UserPoolClientTokenValidityUnits>? tokenValidityUnits;
  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? userPoolId;
  /// List of user pool attributes that the application client can write to.
  final pulumi.Input<List<String>>? writeAttributes;

  /// Creates a new [UserPoolClientState].
  /// [accessTokenValidity] Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  /// [allowedOauthFlows] List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  /// [allowedOauthFlowsUserPoolClient] Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  /// [allowedOauthScopes] List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  /// [analyticsConfiguration] Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  /// [authSessionValidity] Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `auth_session_validity` are between `3` and `15`, with a default value of `3`.
  /// [callbackUrls] List of allowed callback URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  /// [clientSecret] Client secret of the user pool client.
  /// [defaultRedirectUri] Default redirect URI and must be included in the list of callback URLs.
  /// [enablePropagateAdditionalUserContextData] Enables the propagation of additional user context data.
  /// [enableTokenRevocation] Enables or disables token revocation.
  /// [explicitAuthFlows] List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  /// [generateSecret] Boolean flag indicating whether an application secret should be generated.
  /// [idTokenValidity] Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  /// [logoutUrls] List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  /// [name] Name of the application client.
  /// [preventUserExistenceErrors] Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  /// [readAttributes] List of user pool attributes that the application client can read from.
  /// [refreshTokenRotation] A block that specifies the configuration of refresh token rotation. Detailed below.
  /// [refreshTokenValidity] Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportedIdentityProviders] List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  /// [tokenValidityUnits] Configuration block for representing the validity times in units. See details below. Detailed below.
  /// [userPoolId] User pool the client belongs to.
  /// [writeAttributes] List of user pool attributes that the application client can write to.
  UserPoolClientState({
    pulumi.Output<int>? accessTokenValidity,
    pulumi.Output<List<String>>? allowedOauthFlows,
    pulumi.Output<bool>? allowedOauthFlowsUserPoolClient,
    pulumi.Output<List<String>>? allowedOauthScopes,
    pulumi.Output<UserPoolClientAnalyticsConfiguration>? analyticsConfiguration,
    pulumi.Output<int>? authSessionValidity,
    pulumi.Output<List<String>>? callbackUrls,
    pulumi.Output<String>? clientSecret,
    pulumi.Output<String>? defaultRedirectUri,
    pulumi.Output<bool>? enablePropagateAdditionalUserContextData,
    pulumi.Output<bool>? enableTokenRevocation,
    pulumi.Output<List<String>>? explicitAuthFlows,
    pulumi.Output<bool>? generateSecret,
    pulumi.Output<int>? idTokenValidity,
    pulumi.Output<List<String>>? logoutUrls,
    pulumi.Output<String>? name,
    pulumi.Output<String>? preventUserExistenceErrors,
    pulumi.Output<List<String>>? readAttributes,
    pulumi.Output<UserPoolClientRefreshTokenRotation>? refreshTokenRotation,
    pulumi.Output<int>? refreshTokenValidity,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? supportedIdentityProviders,
    pulumi.Output<UserPoolClientTokenValidityUnits>? tokenValidityUnits,
    pulumi.Output<String>? userPoolId,
    pulumi.Output<List<String>>? writeAttributes,
  }) :
      accessTokenValidity = pulumi.Input.asOptionalInput<int>(accessTokenValidity),
      allowedOauthFlows = pulumi.Input.asOptionalInput<List<String>>(allowedOauthFlows),
      allowedOauthFlowsUserPoolClient = pulumi.Input.asOptionalInput<bool>(allowedOauthFlowsUserPoolClient),
      allowedOauthScopes = pulumi.Input.asOptionalInput<List<String>>(allowedOauthScopes),
      analyticsConfiguration = pulumi.Input.asOptionalInput<UserPoolClientAnalyticsConfiguration>(analyticsConfiguration),
      authSessionValidity = pulumi.Input.asOptionalInput<int>(authSessionValidity),
      callbackUrls = pulumi.Input.asOptionalInput<List<String>>(callbackUrls),
      clientSecret = pulumi.Input.asOptionalInput<String>(clientSecret),
      defaultRedirectUri = pulumi.Input.asOptionalInput<String>(defaultRedirectUri),
      enablePropagateAdditionalUserContextData = pulumi.Input.asOptionalInput<bool>(enablePropagateAdditionalUserContextData),
      enableTokenRevocation = pulumi.Input.asOptionalInput<bool>(enableTokenRevocation),
      explicitAuthFlows = pulumi.Input.asOptionalInput<List<String>>(explicitAuthFlows),
      generateSecret = pulumi.Input.asOptionalInput<bool>(generateSecret),
      idTokenValidity = pulumi.Input.asOptionalInput<int>(idTokenValidity),
      logoutUrls = pulumi.Input.asOptionalInput<List<String>>(logoutUrls),
      name = pulumi.Input.asOptionalInput<String>(name),
      preventUserExistenceErrors = pulumi.Input.asOptionalInput<String>(preventUserExistenceErrors),
      readAttributes = pulumi.Input.asOptionalInput<List<String>>(readAttributes),
      refreshTokenRotation = pulumi.Input.asOptionalInput<UserPoolClientRefreshTokenRotation>(refreshTokenRotation),
      refreshTokenValidity = pulumi.Input.asOptionalInput<int>(refreshTokenValidity),
      region = pulumi.Input.asOptionalInput<String>(region),
      supportedIdentityProviders = pulumi.Input.asOptionalInput<List<String>>(supportedIdentityProviders),
      tokenValidityUnits = pulumi.Input.asOptionalInput<UserPoolClientTokenValidityUnits>(tokenValidityUnits),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId),
      writeAttributes = pulumi.Input.asOptionalInput<List<String>>(writeAttributes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessTokenValidity': ?accessTokenValidity,
      'allowedOauthFlows': ?allowedOauthFlows,
      'allowedOauthFlowsUserPoolClient': ?allowedOauthFlowsUserPoolClient,
      'allowedOauthScopes': ?allowedOauthScopes,
      'analyticsConfiguration': ?pulumi.Input.mapOptionalInputValue<UserPoolClientAnalyticsConfiguration, Map<String, dynamic>>(analyticsConfiguration, (value) => value.toMap()),
      'authSessionValidity': ?authSessionValidity,
      'callbackUrls': ?callbackUrls,
      'clientSecret': ?clientSecret,
      'defaultRedirectUri': ?defaultRedirectUri,
      'enablePropagateAdditionalUserContextData': ?enablePropagateAdditionalUserContextData,
      'enableTokenRevocation': ?enableTokenRevocation,
      'explicitAuthFlows': ?explicitAuthFlows,
      'generateSecret': ?generateSecret,
      'idTokenValidity': ?idTokenValidity,
      'logoutUrls': ?logoutUrls,
      'name': ?name,
      'preventUserExistenceErrors': ?preventUserExistenceErrors,
      'readAttributes': ?readAttributes,
      'refreshTokenRotation': ?pulumi.Input.mapOptionalInputValue<UserPoolClientRefreshTokenRotation, Map<String, dynamic>>(refreshTokenRotation, (value) => value.toMap()),
      'refreshTokenValidity': ?refreshTokenValidity,
      'region': ?region,
      'supportedIdentityProviders': ?supportedIdentityProviders,
      'tokenValidityUnits': ?pulumi.Input.mapOptionalInputValue<UserPoolClientTokenValidityUnits, Map<String, dynamic>>(tokenValidityUnits, (value) => value.toMap()),
      'userPoolId': ?userPoolId,
      'writeAttributes': ?writeAttributes,
    };
  }

  factory UserPoolClientState.fromMap(Map<String, dynamic> map) {
    return UserPoolClientState(
      accessTokenValidity: map['accessTokenValidity'] == null ? null : pulumi.Output.create<int>(map['accessTokenValidity'] as int),
      allowedOauthFlows: map['allowedOauthFlows'] == null ? null : pulumi.Output.create<List<String>>((map['allowedOauthFlows'] as List).cast<String>()),
      allowedOauthFlowsUserPoolClient: map['allowedOauthFlowsUserPoolClient'] == null ? null : pulumi.Output.create<bool>(map['allowedOauthFlowsUserPoolClient'] as bool),
      allowedOauthScopes: map['allowedOauthScopes'] == null ? null : pulumi.Output.create<List<String>>((map['allowedOauthScopes'] as List).cast<String>()),
      analyticsConfiguration: map['analyticsConfiguration'] == null ? null : pulumi.Output.create<UserPoolClientAnalyticsConfiguration>(UserPoolClientAnalyticsConfiguration.fromMap((map['analyticsConfiguration'] as Map).cast<String, dynamic>())),
      authSessionValidity: map['authSessionValidity'] == null ? null : pulumi.Output.create<int>(map['authSessionValidity'] as int),
      callbackUrls: map['callbackUrls'] == null ? null : pulumi.Output.create<List<String>>((map['callbackUrls'] as List).cast<String>()),
      clientSecret: map['clientSecret'] == null ? null : pulumi.Output.create<String>(map['clientSecret'] as String),
      defaultRedirectUri: map['defaultRedirectUri'] == null ? null : pulumi.Output.create<String>(map['defaultRedirectUri'] as String),
      enablePropagateAdditionalUserContextData: map['enablePropagateAdditionalUserContextData'] == null ? null : pulumi.Output.create<bool>(map['enablePropagateAdditionalUserContextData'] as bool),
      enableTokenRevocation: map['enableTokenRevocation'] == null ? null : pulumi.Output.create<bool>(map['enableTokenRevocation'] as bool),
      explicitAuthFlows: map['explicitAuthFlows'] == null ? null : pulumi.Output.create<List<String>>((map['explicitAuthFlows'] as List).cast<String>()),
      generateSecret: map['generateSecret'] == null ? null : pulumi.Output.create<bool>(map['generateSecret'] as bool),
      idTokenValidity: map['idTokenValidity'] == null ? null : pulumi.Output.create<int>(map['idTokenValidity'] as int),
      logoutUrls: map['logoutUrls'] == null ? null : pulumi.Output.create<List<String>>((map['logoutUrls'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      preventUserExistenceErrors: map['preventUserExistenceErrors'] == null ? null : pulumi.Output.create<String>(map['preventUserExistenceErrors'] as String),
      readAttributes: map['readAttributes'] == null ? null : pulumi.Output.create<List<String>>((map['readAttributes'] as List).cast<String>()),
      refreshTokenRotation: map['refreshTokenRotation'] == null ? null : pulumi.Output.create<UserPoolClientRefreshTokenRotation>(UserPoolClientRefreshTokenRotation.fromMap((map['refreshTokenRotation'] as Map).cast<String, dynamic>())),
      refreshTokenValidity: map['refreshTokenValidity'] == null ? null : pulumi.Output.create<int>(map['refreshTokenValidity'] as int),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      supportedIdentityProviders: map['supportedIdentityProviders'] == null ? null : pulumi.Output.create<List<String>>((map['supportedIdentityProviders'] as List).cast<String>()),
      tokenValidityUnits: map['tokenValidityUnits'] == null ? null : pulumi.Output.create<UserPoolClientTokenValidityUnits>(UserPoolClientTokenValidityUnits.fromMap((map['tokenValidityUnits'] as Map).cast<String, dynamic>())),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
      writeAttributes: map['writeAttributes'] == null ? null : pulumi.Output.create<List<String>>((map['writeAttributes'] as List).cast<String>()),
    );
  }
}

