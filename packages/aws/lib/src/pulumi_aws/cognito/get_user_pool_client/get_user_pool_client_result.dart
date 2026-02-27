// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_user_pool_client_analytics_configuration/get_user_pool_client_analytics_configuration.dart';
import '../get_user_pool_client_refresh_token_rotation/get_user_pool_client_refresh_token_rotation.dart';
import '../get_user_pool_client_token_validity_unit/get_user_pool_client_token_validity_unit.dart';

/// Result data returned by getUserPoolClient.
class GetUserPoolClientResult {
  /// (Optional) Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `token_validity_units`.
  final int accessTokenValidity;

  /// (Optional) List of allowed OAuth flows (code, implicit, client_credentials).
  final List<String> allowedOauthFlows;

  /// (Optional) Whether the client is allowed to follow the OAuth protocol when interacting with Cognito user pools.
  final bool allowedOauthFlowsUserPoolClient;

  /// (Optional) List of allowed OAuth scopes (phone, email, openid, profile, and aws.cognito.signin.user.admin).
  final List<String> allowedOauthScopes;

  /// (Optional) Configuration block for Amazon Pinpoint analytics for collecting metrics for this user pool. Detailed below.
  final List<GetUserPoolClientAnalyticsConfiguration> analyticsConfigurations;

  /// (Optional) List of allowed callback URLs for the identity providers.
  final List<String> callbackUrls;
  final String clientId;

  /// Client secret of the user pool client.
  final String clientSecret;

  /// (Optional) Default redirect URI. Must be in the list of callback URLs.
  final String defaultRedirectUri;
  final bool enablePropagateAdditionalUserContextData;

  /// (Optional) Enables or disables token revocation.
  final bool enableTokenRevocation;

  /// (Optional) List of authentication flows (ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, ALLOW_REFRESH_TOKEN_AUTH).
  final List<String> explicitAuthFlows;

  /// (Optional) Should an application secret be generated.
  final bool generateSecret;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Optional) Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. This value will be overridden if you have entered a value in `token_validity_units`.
  final int idTokenValidity;

  /// (Optional) List of allowed logout URLs for the identity providers.
  final List<String> logoutUrls;
  final String name;

  /// (Optional) Choose which errors and responses are returned by Cognito APIs during authentication, account confirmation, and password recovery when the user does not exist in the user pool. When set to `ENABLED` and the user does not exist, authentication returns an error indicating either the username or password was incorrect, and account confirmation and password recovery return a response indicating a code was sent to a simulated destination. When set to `LEGACY`, those APIs will return a `UserNotFoundException` exception if the user does not exist in the user pool.
  final String preventUserExistenceErrors;

  /// (Optional) List of user pool attributes the application client can read from.
  final List<String> readAttributes;

  /// (Optional) A block that specifies the configuration of refresh token rotation. Detailed below.
  final List<GetUserPoolClientRefreshTokenRotation> refreshTokenRotations;

  /// (Optional) Time limit in days refresh tokens are valid for.
  final int refreshTokenValidity;
  final String region;

  /// (Optional) List of provider names for the identity providers that are supported on this client. Uses the `provider_name` attribute of `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  final List<String> supportedIdentityProviders;

  /// (Optional) Configuration block for units in which the validity times are represented in. Detailed below.
  final List<GetUserPoolClientTokenValidityUnit> tokenValidityUnits;
  final String userPoolId;

  /// (Optional) List of user pool attributes the application client can write to.
  final List<String> writeAttributes;

  GetUserPoolClientResult({
    required this.accessTokenValidity,
    required this.allowedOauthFlows,
    required this.allowedOauthFlowsUserPoolClient,
    required this.allowedOauthScopes,
    required this.analyticsConfigurations,
    required this.callbackUrls,
    required this.clientId,
    required this.clientSecret,
    required this.defaultRedirectUri,
    required this.enablePropagateAdditionalUserContextData,
    required this.enableTokenRevocation,
    required this.explicitAuthFlows,
    required this.generateSecret,
    required this.id,
    required this.idTokenValidity,
    required this.logoutUrls,
    required this.name,
    required this.preventUserExistenceErrors,
    required this.readAttributes,
    required this.refreshTokenRotations,
    required this.refreshTokenValidity,
    required this.region,
    required this.supportedIdentityProviders,
    required this.tokenValidityUnits,
    required this.userPoolId,
    required this.writeAttributes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessTokenValidity'] = accessTokenValidity;
    map['allowedOauthFlows'] = allowedOauthFlows;
    map['allowedOauthFlowsUserPoolClient'] = allowedOauthFlowsUserPoolClient;
    map['allowedOauthScopes'] = allowedOauthScopes;
    map['analyticsConfigurations'] = pulumi.Input.encodeList<
            GetUserPoolClientAnalyticsConfiguration, Map<String, dynamic>>(
        analyticsConfigurations, (value) => value.toMap());
    map['callbackUrls'] = callbackUrls;
    map['clientId'] = clientId;
    map['clientSecret'] = clientSecret;
    map['defaultRedirectUri'] = defaultRedirectUri;
    map['enablePropagateAdditionalUserContextData'] =
        enablePropagateAdditionalUserContextData;
    map['enableTokenRevocation'] = enableTokenRevocation;
    map['explicitAuthFlows'] = explicitAuthFlows;
    map['generateSecret'] = generateSecret;
    map['id'] = id;
    map['idTokenValidity'] = idTokenValidity;
    map['logoutUrls'] = logoutUrls;
    map['name'] = name;
    map['preventUserExistenceErrors'] = preventUserExistenceErrors;
    map['readAttributes'] = readAttributes;
    map['refreshTokenRotations'] = pulumi.Input.encodeList<
        GetUserPoolClientRefreshTokenRotation,
        Map<String, dynamic>>(refreshTokenRotations, (value) => value.toMap());
    map['refreshTokenValidity'] = refreshTokenValidity;
    map['region'] = region;
    map['supportedIdentityProviders'] = supportedIdentityProviders;
    map['tokenValidityUnits'] = pulumi.Input.encodeList<
        GetUserPoolClientTokenValidityUnit,
        Map<String, dynamic>>(tokenValidityUnits, (value) => value.toMap());
    map['userPoolId'] = userPoolId;
    map['writeAttributes'] = writeAttributes;
    return map;
  }

  factory GetUserPoolClientResult.fromMap(Map<String, dynamic> map) {
    return GetUserPoolClientResult(
      accessTokenValidity: map['accessTokenValidity'] as int,
      allowedOauthFlows: (map['allowedOauthFlows'] as List).cast<String>(),
      allowedOauthFlowsUserPoolClient:
          map['allowedOauthFlowsUserPoolClient'] as bool,
      allowedOauthScopes: (map['allowedOauthScopes'] as List).cast<String>(),
      analyticsConfigurations:
          pulumi.Input.decodeList<GetUserPoolClientAnalyticsConfiguration>(
              map['analyticsConfigurations'],
              (value) => GetUserPoolClientAnalyticsConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      callbackUrls: (map['callbackUrls'] as List).cast<String>(),
      clientId: map['clientId'] as String,
      clientSecret: map['clientSecret'] as String,
      defaultRedirectUri: map['defaultRedirectUri'] as String,
      enablePropagateAdditionalUserContextData:
          map['enablePropagateAdditionalUserContextData'] as bool,
      enableTokenRevocation: map['enableTokenRevocation'] as bool,
      explicitAuthFlows: (map['explicitAuthFlows'] as List).cast<String>(),
      generateSecret: map['generateSecret'] as bool,
      id: map['id'] as String,
      idTokenValidity: map['idTokenValidity'] as int,
      logoutUrls: (map['logoutUrls'] as List).cast<String>(),
      name: map['name'] as String,
      preventUserExistenceErrors: map['preventUserExistenceErrors'] as String,
      readAttributes: (map['readAttributes'] as List).cast<String>(),
      refreshTokenRotations:
          pulumi.Input.decodeList<GetUserPoolClientRefreshTokenRotation>(
              map['refreshTokenRotations'],
              (value) => GetUserPoolClientRefreshTokenRotation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      refreshTokenValidity: map['refreshTokenValidity'] as int,
      region: map['region'] as String,
      supportedIdentityProviders:
          (map['supportedIdentityProviders'] as List).cast<String>(),
      tokenValidityUnits:
          pulumi.Input.decodeList<GetUserPoolClientTokenValidityUnit>(
              map['tokenValidityUnits'],
              (value) => GetUserPoolClientTokenValidityUnit.fromMap(
                  (value as Map).cast<String, dynamic>())),
      userPoolId: map['userPoolId'] as String,
      writeAttributes: (map['writeAttributes'] as List).cast<String>(),
    );
  }
}
