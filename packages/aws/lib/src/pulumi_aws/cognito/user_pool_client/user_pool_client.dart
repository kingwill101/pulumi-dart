import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_pool_client_analytics_configuration/user_pool_client_analytics_configuration.dart';
import '../user_pool_client_refresh_token_rotation/user_pool_client_refresh_token_rotation.dart';
import '../user_pool_client_token_validity_units/user_pool_client_token_validity_units.dart';
import 'user_pool_client_args.dart';

/// Provides a Cognito User Pool Client resource.
///
/// To manage a User Pool Client created by another service, such as when [configuring an OpenSearch Domain to use Cognito authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html),
/// use the `aws.cognito.ManagedUserPoolClient` resource instead.
///
/// ## Example Usage
///
/// ### Create a basic user pool client
///
///
///
/// ### Create a user pool client with no SRP authentication
///
///
///
/// ### Create a user pool client with pinpoint analytics
///
///
///
/// ### Create a user pool client with Cognito as the identity provider
///
///
///
/// ### Create a user pool client with refresh token rotation
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Clients using the `id` of the Cognito User Pool, and the `id` of the Cognito User Pool Client. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolClient:UserPoolClient client us-west-2_abc123/3ho4ek12345678909nh3fmhpko
/// ```
class UserPoolClient extends pulumi.CustomResource {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  late final pulumi.Output<int> accessTokenValidity;

  /// List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  late final pulumi.Output<bool> allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  late final pulumi.Output<UserPoolClientAnalyticsConfiguration?>
      analyticsConfiguration;

  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for `auth_session_validity` are between `3` and `15`, with a default value of `3`.
  late final pulumi.Output<int> authSessionValidity;

  /// List of allowed callback URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> callbackUrls;

  /// Client secret of the user pool client.
  late final pulumi.Output<String> clientSecret;

  /// Default redirect URI and must be included in the list of callback URLs.
  late final pulumi.Output<String> defaultRedirectUri;

  /// Enables the propagation of additional user context data.
  late final pulumi.Output<bool> enablePropagateAdditionalUserContextData;

  /// Enables or disables token revocation.
  late final pulumi.Output<bool> enableTokenRevocation;

  /// List of authentication flows. The available options include `ADMIN_NO_SRP_AUTH`, `CUSTOM_AUTH_FLOW_ONLY`, `USER_PASSWORD_AUTH`, `ALLOW_ADMIN_USER_PASSWORD_AUTH`, `ALLOW_CUSTOM_AUTH`, `ALLOW_USER_PASSWORD_AUTH`, `ALLOW_USER_SRP_AUTH`, `ALLOW_REFRESH_TOKEN_AUTH`, and `ALLOW_USER_AUTH`.
  late final pulumi.Output<List<String>> explicitAuthFlows;

  /// Boolean flag indicating whether an application secret should be generated.
  late final pulumi.Output<bool?> generateSecret;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  late final pulumi.Output<int> idTokenValidity;

  /// List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> logoutUrls;

  /// Name of the application client.
  late final pulumi.Output<String> name;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  late final pulumi.Output<String> preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  late final pulumi.Output<List<String>> readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  late final pulumi.Output<UserPoolClientRefreshTokenRotation?>
      refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  late final pulumi.Output<int> refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  late final pulumi.Output<List<String>> supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  late final pulumi.Output<UserPoolClientTokenValidityUnits?>
      tokenValidityUnits;

  /// User pool the client belongs to.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  late final pulumi.Output<List<String>> writeAttributes;

  UserPoolClient(
    String name, {
    UserPoolClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolClient:UserPoolClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessTokenValidity = registerOutput<int>('accessTokenValidity');
    this.allowedOauthFlows = registerOutput<List<String>>('allowedOauthFlows');
    this.allowedOauthFlowsUserPoolClient =
        registerOutput<bool>('allowedOauthFlowsUserPoolClient');
    this.allowedOauthScopes =
        registerOutput<List<String>>('allowedOauthScopes');
    this.analyticsConfiguration =
        registerOutput<UserPoolClientAnalyticsConfiguration?>(
            'analyticsConfiguration');
    this.authSessionValidity = registerOutput<int>('authSessionValidity');
    this.callbackUrls = registerOutput<List<String>>('callbackUrls');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.defaultRedirectUri = registerOutput<String>('defaultRedirectUri');
    this.enablePropagateAdditionalUserContextData =
        registerOutput<bool>('enablePropagateAdditionalUserContextData');
    this.enableTokenRevocation = registerOutput<bool>('enableTokenRevocation');
    this.explicitAuthFlows = registerOutput<List<String>>('explicitAuthFlows');
    this.generateSecret = registerOutput<bool?>('generateSecret');
    this.idTokenValidity = registerOutput<int>('idTokenValidity');
    this.logoutUrls = registerOutput<List<String>>('logoutUrls');
    this.name = registerOutput<String>('name');
    this.preventUserExistenceErrors =
        registerOutput<String>('preventUserExistenceErrors');
    this.readAttributes = registerOutput<List<String>>('readAttributes');
    this.refreshTokenRotation =
        registerOutput<UserPoolClientRefreshTokenRotation?>(
            'refreshTokenRotation');
    this.refreshTokenValidity = registerOutput<int>('refreshTokenValidity');
    this.region = registerOutput<String>('region');
    this.supportedIdentityProviders =
        registerOutput<List<String>>('supportedIdentityProviders');
    this.tokenValidityUnits =
        registerOutput<UserPoolClientTokenValidityUnits?>('tokenValidityUnits');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.writeAttributes = registerOutput<List<String>>('writeAttributes');
  }
}
