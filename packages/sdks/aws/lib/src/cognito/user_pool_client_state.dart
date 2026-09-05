// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_client_analytics_configuration.dart';
import 'user_pool_client_refresh_token_rotation.dart';
import 'user_pool_client_token_validity_units.dart';

/// Input properties used for looking up and filtering UserPoolClient resources.
class UserPoolClientState {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  final pulumi.Input<int?>? accessTokenValidity;
  /// List of allowed OAuth flows, including `code`, `implicit`, and `clientCredentials`. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>?>? allowedOauthFlows;
  /// Whether the client is allowed to use OAuth 2.0 features. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure the following arguments: `callbackUrls`, `logoutUrls`, `allowedOauthScopes` and `allowedOauthFlows`.
  final pulumi.Input<bool?>? allowedOauthFlowsUserPoolClient;
  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>?>? allowedOauthScopes;
  /// Configuration block for AWS End User Messaging analytics that collects metrics for this user pool. See details below.
  final pulumi.Input<UserPoolClientAnalyticsConfiguration?>? analyticsConfiguration;
  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `authSessionValidity` are between `3` and `15`, with a default value of `3`.
  final pulumi.Input<int?>? authSessionValidity;
  /// List of allowed callback URLs for the identity providers. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>?>? callbackUrls;
  /// Client secret of the user pool client.
  final pulumi.Input<String?>? clientSecret;
  /// Default redirect URI and must be included in the list of callback URLs.
  final pulumi.Input<String?>? defaultRedirectUri;
  /// Enables the propagation of additional user context data.
  final pulumi.Input<bool?>? enablePropagateAdditionalUserContextData;
  /// Enables or disables token revocation.
  final pulumi.Input<bool?>? enableTokenRevocation;
  /// List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  final pulumi.Input<List<String>?>? explicitAuthFlows;
  /// Boolean flag indicating whether an application secret should be generated.
  final pulumi.Input<bool?>? generateSecret;
  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  final pulumi.Input<int?>? idTokenValidity;
  /// List of allowed logout URLs for the identity providers. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  final pulumi.Input<List<String>?>? logoutUrls;
  /// Name of the application client.
  final pulumi.Input<String?>? name;
  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  final pulumi.Input<String?>? preventUserExistenceErrors;
  /// List of user pool attributes that the application client can read from.
  final pulumi.Input<List<String>?>? readAttributes;
  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  final pulumi.Input<UserPoolClientRefreshTokenRotation?>? refreshTokenRotation;
  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  final pulumi.Input<int?>? refreshTokenValidity;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of provider names for the identity providers that are supported on this client. It uses the `providerName` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  final pulumi.Input<List<String>?>? supportedIdentityProviders;
  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  final pulumi.Input<UserPoolClientTokenValidityUnits?>? tokenValidityUnits;
  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? userPoolId;
  /// List of user pool attributes that the application client can write to.
  final pulumi.Input<List<String>?>? writeAttributes;

  /// Creates a new [UserPoolClientState].
  /// [accessTokenValidity] Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  /// [allowedOauthFlows] List of allowed OAuth flows, including `code`, `implicit`, and `clientCredentials`. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  /// [allowedOauthFlowsUserPoolClient] Whether the client is allowed to use OAuth 2.0 features. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure the following arguments: `callbackUrls`, `logoutUrls`, `allowedOauthScopes` and `allowedOauthFlows`.
  /// [allowedOauthScopes] List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  /// [analyticsConfiguration] Configuration block for AWS End User Messaging analytics that collects metrics for this user pool. See details below.
  /// [authSessionValidity] Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `authSessionValidity` are between `3` and `15`, with a default value of `3`.
  /// [callbackUrls] List of allowed callback URLs for the identity providers. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  /// [clientSecret] Client secret of the user pool client.
  /// [defaultRedirectUri] Default redirect URI and must be included in the list of callback URLs.
  /// [enablePropagateAdditionalUserContextData] Enables the propagation of additional user context data.
  /// [enableTokenRevocation] Enables or disables token revocation.
  /// [explicitAuthFlows] List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  /// [generateSecret] Boolean flag indicating whether an application secret should be generated.
  /// [idTokenValidity] Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  /// [logoutUrls] List of allowed logout URLs for the identity providers. `allowedOauthFlowsUserPoolClient` must be set to `true` before you can configure this option.
  /// [name] Name of the application client.
  /// [preventUserExistenceErrors] Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  /// [readAttributes] List of user pool attributes that the application client can read from.
  /// [refreshTokenRotation] A block that specifies the configuration of refresh token rotation. Detailed below.
  /// [refreshTokenValidity] Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [supportedIdentityProviders] List of provider names for the identity providers that are supported on this client. It uses the `providerName` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  /// [tokenValidityUnits] Configuration block for representing the validity times in units. See details below. Detailed below.
  /// [userPoolId] User pool the client belongs to.
  /// [writeAttributes] List of user pool attributes that the application client can write to.
  const UserPoolClientState({
    this.accessTokenValidity,
    this.allowedOauthFlows,
    this.allowedOauthFlowsUserPoolClient,
    this.allowedOauthScopes,
    this.analyticsConfiguration,
    this.authSessionValidity,
    this.callbackUrls,
    this.clientSecret,
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
    this.userPoolId,
    this.writeAttributes,
  });

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
      accessTokenValidity: (() { final guardedValue = map['accessTokenValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      allowedOauthFlows: (() { final guardedValue = map['allowedOauthFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOauthFlowsUserPoolClient: (() { final guardedValue = map['allowedOauthFlowsUserPoolClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedOauthScopes: (() { final guardedValue = map['allowedOauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      analyticsConfiguration: (() { final guardedValue = map['analyticsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolClientAnalyticsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authSessionValidity: (() { final guardedValue = map['authSessionValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      callbackUrls: (() { final guardedValue = map['callbackUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultRedirectUri: (() { final guardedValue = map['defaultRedirectUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePropagateAdditionalUserContextData: (() { final guardedValue = map['enablePropagateAdditionalUserContextData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enableTokenRevocation: (() { final guardedValue = map['enableTokenRevocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      explicitAuthFlows: (() { final guardedValue = map['explicitAuthFlows']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      generateSecret: (() { final guardedValue = map['generateSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idTokenValidity: (() { final guardedValue = map['idTokenValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      logoutUrls: (() { final guardedValue = map['logoutUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preventUserExistenceErrors: (() { final guardedValue = map['preventUserExistenceErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readAttributes: (() { final guardedValue = map['readAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      refreshTokenRotation: (() { final guardedValue = map['refreshTokenRotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolClientRefreshTokenRotation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      refreshTokenValidity: (() { final guardedValue = map['refreshTokenValidity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      supportedIdentityProviders: (() { final guardedValue = map['supportedIdentityProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tokenValidityUnits: (() { final guardedValue = map['tokenValidityUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolClientTokenValidityUnits.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeAttributes: (() { final guardedValue = map['writeAttributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
