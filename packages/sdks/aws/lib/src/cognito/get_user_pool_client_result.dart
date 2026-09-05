// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_client_analytics_configuration.dart';
import 'get_user_pool_client_refresh_token_rotation.dart';
import 'get_user_pool_client_token_validity_unit.dart';

/// Result data returned by getUserPoolClient.
class GetUserPoolClientResult {
  /// (Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `tokenValidityUnits`.
  final int? accessTokenValidity;
  /// (Optional) List of allowed OAuth flows (code, implicit, client_credentials).
  final List<String>? allowedOauthFlows;
  /// (Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
  final bool? allowedOauthFlowsUserPoolClient;
  /// (Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin).
  final List<String>? allowedOauthScopes;
  /// (Optional) Configuration block for AWS End User Messaging analytics for collecting metrics for this user pool. Detailed below.
  final List<GetUserPoolClientAnalyticsConfiguration>? analyticsConfigurations;
  /// (Optional) List of allowed callback URLs for the identity providers.
  final List<String>? callbackUrls;
  final String? clientId;
  /// Client secret of the user pool client.
  final String? clientSecret;
  /// (Optional) Default redirect URI. Must be in the list of callback URLs.
  final String? defaultRedirectUri;
  final bool? enablePropagateAdditionalUserContextData;
  /// (Optional) Enables or disables token revocation.
  final bool? enableTokenRevocation;
  /// (Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH).
  final List<String>? explicitAuthFlows;
  /// (Optional) Should an application secret be generated.
  final bool? generateSecret;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// (Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `tokenValidityUnits`.
  final int? idTokenValidity;
  /// (Optional) List of allowed logout URLs for the identity providers.
  final List<String>? logoutUrls;
  final String? name;
  /// (Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to `ENABLED` and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to `LEGACY`, those APIs will return a `UserNotFoundException` exception if the user does not exist in the user pool.
  final String? preventUserExistenceErrors;
  /// (Optional) List of user pool attributes the application client can read from.
  final List<String>? readAttributes;
  /// (Optional) A block that specifies the configuration of refresh token rotation. Detailed below.
  final List<GetUserPoolClientRefreshTokenRotation>? refreshTokenRotations;
  /// (Optional) Time limit in days refresh tokens are valid for.
  final int? refreshTokenValidity;
  final String? region;
  /// (Optional) List of provider names for the identity providers that are supported on this client. Uses the `providerName` attribute of `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  final List<String>? supportedIdentityProviders;
  /// (Optional) Configuration block for units in which the validity times are represented in. Detailed below.
  final List<GetUserPoolClientTokenValidityUnit>? tokenValidityUnits;
  final String? userPoolId;
  /// (Optional) List of user pool attributes the application client can write to.
  final List<String>? writeAttributes;

  /// Creates a new [GetUserPoolClientResult].
  /// [accessTokenValidity] (Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `tokenValidityUnits`.
  /// [allowedOauthFlows] (Optional) List of allowed OAuth flows (code, implicit, client_credentials).
  /// [allowedOauthFlowsUserPoolClient] (Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
  /// [allowedOauthScopes] (Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin).
  /// [analyticsConfigurations] (Optional) Configuration block for AWS End User Messaging analytics for collecting metrics for this user pool. Detailed below.
  /// [callbackUrls] (Optional) List of allowed callback URLs for the identity providers.
  /// [clientId] Optional.
  /// [clientSecret] Client secret of the user pool client.
  /// [defaultRedirectUri] (Optional) Default redirect URI. Must be in the list of callback URLs.
  /// [enablePropagateAdditionalUserContextData] Optional.
  /// [enableTokenRevocation] (Optional) Enables or disables token revocation.
  /// [explicitAuthFlows] (Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH).
  /// [generateSecret] (Optional) Should an application secret be generated.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idTokenValidity] (Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `tokenValidityUnits`.
  /// [logoutUrls] (Optional) List of allowed logout URLs for the identity providers.
  /// [name] Optional.
  /// [preventUserExistenceErrors] (Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to `ENABLED` and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to `LEGACY`, those APIs will return a `UserNotFoundException` exception if the user does not exist in the user pool.
  /// [readAttributes] (Optional) List of user pool attributes the application client can read from.
  /// [refreshTokenRotations] (Optional) A block that specifies the configuration of refresh token rotation. Detailed below.
  /// [refreshTokenValidity] (Optional) Time limit in days refresh tokens are valid for.
  /// [region] Optional.
  /// [supportedIdentityProviders] (Optional) List of provider names for the identity providers that are supported on this client. Uses the `providerName` attribute of `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  /// [tokenValidityUnits] (Optional) Configuration block for units in which the validity times are represented in. Detailed below.
  /// [userPoolId] Optional.
  /// [writeAttributes] (Optional) List of user pool attributes the application client can write to.
  const GetUserPoolClientResult({
    this.accessTokenValidity,
    this.allowedOauthFlows,
    this.allowedOauthFlowsUserPoolClient,
    this.allowedOauthScopes,
    this.analyticsConfigurations,
    this.callbackUrls,
    this.clientId,
    this.clientSecret,
    this.defaultRedirectUri,
    this.enablePropagateAdditionalUserContextData,
    this.enableTokenRevocation,
    this.explicitAuthFlows,
    this.generateSecret,
    this.id,
    this.idTokenValidity,
    this.logoutUrls,
    this.name,
    this.preventUserExistenceErrors,
    this.readAttributes,
    this.refreshTokenRotations,
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
      'analyticsConfigurations': ?(() { final guardedValue = analyticsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolClientAnalyticsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'callbackUrls': ?callbackUrls,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'defaultRedirectUri': ?defaultRedirectUri,
      'enablePropagateAdditionalUserContextData': ?enablePropagateAdditionalUserContextData,
      'enableTokenRevocation': ?enableTokenRevocation,
      'explicitAuthFlows': ?explicitAuthFlows,
      'generateSecret': ?generateSecret,
      'id': ?id,
      'idTokenValidity': ?idTokenValidity,
      'logoutUrls': ?logoutUrls,
      'name': ?name,
      'preventUserExistenceErrors': ?preventUserExistenceErrors,
      'readAttributes': ?readAttributes,
      'refreshTokenRotations': ?(() { final guardedValue = refreshTokenRotations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolClientRefreshTokenRotation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'refreshTokenValidity': ?refreshTokenValidity,
      'region': ?region,
      'supportedIdentityProviders': ?supportedIdentityProviders,
      'tokenValidityUnits': ?(() { final guardedValue = tokenValidityUnits; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetUserPoolClientTokenValidityUnit, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'userPoolId': ?userPoolId,
      'writeAttributes': ?writeAttributes,
    };
  }

  factory GetUserPoolClientResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientResult(
      accessTokenValidity: (() { final guardedValue = map['accessTokenValidity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      allowedOauthFlows: (() { final guardedValue = map['allowedOauthFlows']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allowedOauthFlowsUserPoolClient: (() { final guardedValue = map['allowedOauthFlowsUserPoolClient']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowedOauthScopes: (() { final guardedValue = map['allowedOauthScopes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      analyticsConfigurations: (() { final guardedValue = map['analyticsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolClientAnalyticsConfiguration>(guardedValue, (value) => GetUserPoolClientAnalyticsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      callbackUrls: (() { final guardedValue = map['callbackUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultRedirectUri: (() { final guardedValue = map['defaultRedirectUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enablePropagateAdditionalUserContextData: (() { final guardedValue = map['enablePropagateAdditionalUserContextData']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableTokenRevocation: (() { final guardedValue = map['enableTokenRevocation']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      explicitAuthFlows: (() { final guardedValue = map['explicitAuthFlows']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      generateSecret: (() { final guardedValue = map['generateSecret']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      idTokenValidity: (() { final guardedValue = map['idTokenValidity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      logoutUrls: (() { final guardedValue = map['logoutUrls']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preventUserExistenceErrors: (() { final guardedValue = map['preventUserExistenceErrors']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readAttributes: (() { final guardedValue = map['readAttributes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      refreshTokenRotations: (() { final guardedValue = map['refreshTokenRotations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolClientRefreshTokenRotation>(guardedValue, (value) => GetUserPoolClientRefreshTokenRotation.fromMap((value as Map).cast<String, dynamic>())); })(),
      refreshTokenValidity: (() { final guardedValue = map['refreshTokenValidity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedIdentityProviders: (() { final guardedValue = map['supportedIdentityProviders']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tokenValidityUnits: (() { final guardedValue = map['tokenValidityUnits']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetUserPoolClientTokenValidityUnit>(guardedValue, (value) => GetUserPoolClientTokenValidityUnit.fromMap((value as Map).cast<String, dynamic>())); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      writeAttributes: (() { final guardedValue = map['writeAttributes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
