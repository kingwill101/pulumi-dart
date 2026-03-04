import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_user_pool_client_analytics_configuration.dart';
import 'managed_user_pool_client_args.dart';
import 'managed_user_pool_client_refresh_token_rotation.dart';
import 'managed_user_pool_client_state.dart';
import 'managed_user_pool_client_token_validity_units.dart';

/// Use the `aws.cognito.UserPoolClient` resource to manage a Cognito User Pool Client.
///
/// **This resource is advanced** and has special caveats to consider before use. Please read this document completely before using the resource.
///
/// Use the `aws.cognito.ManagedUserPoolClient` resource to manage a Cognito User Pool Client that is automatically created by an AWS service. For instance, when [configuring an OpenSearch Domain to use Cognito authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html), the OpenSearch service creates the User Pool Client during setup and removes it when it is no longer required. As a result, the `aws.cognito.ManagedUserPoolClient` resource does not create or delete this resource, but instead assumes management of it.
///
/// Use the `aws.cognito.UserPoolClient` resource to manage Cognito User Pool Clients for normal use cases.
///
/// ## Example Usage
///
/// ### Using Name Pattern
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.ManagedUserPoolClient("example", {
///     namePattern: "^AmazonOpenSearchService-example-(\\w+)$",
///     userPoolId: exampleAwsCognitoUserPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.ManagedUserPoolClient("example",
///     name_pattern="^AmazonOpenSearchService-example-(\\w+)$",
///     user_pool_id=example_aws_cognito_user_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cognito.ManagedUserPoolClient("example", new()
///     {
///         NamePattern = "^AmazonOpenSearchService-example-(\\w+)$",
///         UserPoolId = exampleAwsCognitoUserPool.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognito.NewManagedUserPoolClient(ctx, "example", &cognito.ManagedUserPoolClientArgs{
/// 			NamePattern: pulumi.String("^AmazonOpenSearchService-example-(\\w+)$"),
/// 			UserPoolId:  pulumi.Any(exampleAwsCognitoUserPool.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cognito.ManagedUserPoolClient;
/// import com.pulumi.aws.cognito.ManagedUserPoolClientArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ManagedUserPoolClient("example", ManagedUserPoolClientArgs.builder()
///             .namePattern("^AmazonOpenSearchService-example-(\\w+)$")
///             .userPoolId(exampleAwsCognitoUserPool.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cognito:ManagedUserPoolClient
///     properties:
///       namePattern: ^AmazonOpenSearchService-example-(\w+)$
///       userPoolId: ${exampleAwsCognitoUserPool.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Clients using the `id` of the Cognito User Pool and the `id` of the Cognito User Pool Client. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/managedUserPoolClient:ManagedUserPoolClient client us-west-2_abc123/3ho4ek12345678909nh3fmhpko
/// ```
class ManagedUserPoolClient extends pulumi.CustomResource {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  late final pulumi.Output<int> accessTokenValidity;

  /// List of allowed OAuth flows, including `code`, `implicit`, and `client_credentials`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure the following arguments: `callback_urls`, `logout_urls`, `allowed_oauth_scopes` and `allowed_oauth_flows`.
  late final pulumi.Output<bool> allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including `phone`, `email`, `openid`, `profile`, and `aws.cognito.signin.user.admin`. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  late final pulumi.Output<ManagedUserPoolClientAnalyticsConfiguration?>
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

  /// List of authentication flows. The available options include ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, and ALLOW_REFRESH_TOKEN_AUTH.
  late final pulumi.Output<List<String>> explicitAuthFlows;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  late final pulumi.Output<int> idTokenValidity;

  /// List of allowed logout URLs for the identity providers. `allowed_oauth_flows_user_pool_client` must be set to `true` before you can configure this option.
  late final pulumi.Output<List<String>> logoutUrls;

  /// Name of the user pool client.
  late final pulumi.Output<String> name;

  /// Regular expression that matches the name of the existing User Pool Client to be managed. It must only match one User Pool Client.
  late final pulumi.Output<String?> namePattern;

  /// String that matches the beginning of the name of the  existing User Pool Client to be managed. It must match only one User Pool Client.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String?> namePrefix;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  late final pulumi.Output<String> preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  late final pulumi.Output<List<String>> readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  late final pulumi.Output<ManagedUserPoolClientRefreshTokenRotation?>
  refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  late final pulumi.Output<int> refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of provider names for the identity providers that are supported on this client. It uses the `provider_name` attribute of the `aws.cognito.IdentityProvider` resource(s), or the equivalent string(s).
  late final pulumi.Output<List<String>> supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  late final pulumi.Output<ManagedUserPoolClientTokenValidityUnits?>
  tokenValidityUnits;

  /// User pool that the client belongs to.
  late final pulumi.Output<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  late final pulumi.Output<List<String>> writeAttributes;

  /// Creates a new [ManagedUserPoolClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedUserPoolClient]. {@macro pulumi_cognito_managed_user_pool_client_managed_user_pool_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedUserPoolClient(
    String name, {
    ManagedUserPoolClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/managedUserPoolClient:ManagedUserPoolClient',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessTokenValidity = registerOutput<int>('accessTokenValidity');
    allowedOauthFlows = registerOutput<List<String>>('allowedOauthFlows');
    allowedOauthFlowsUserPoolClient = registerOutput<bool>(
      'allowedOauthFlowsUserPoolClient',
    );
    allowedOauthScopes = registerOutput<List<String>>('allowedOauthScopes');
    analyticsConfiguration =
        registerOutput<ManagedUserPoolClientAnalyticsConfiguration?>(
          'analyticsConfiguration',
        );
    authSessionValidity = registerOutput<int>('authSessionValidity');
    callbackUrls = registerOutput<List<String>>('callbackUrls');
    clientSecret = registerOutput<String>('clientSecret');
    defaultRedirectUri = registerOutput<String>('defaultRedirectUri');
    enablePropagateAdditionalUserContextData = registerOutput<bool>(
      'enablePropagateAdditionalUserContextData',
    );
    enableTokenRevocation = registerOutput<bool>('enableTokenRevocation');
    explicitAuthFlows = registerOutput<List<String>>('explicitAuthFlows');
    idTokenValidity = registerOutput<int>('idTokenValidity');
    logoutUrls = registerOutput<List<String>>('logoutUrls');
    this.name = registerOutput<String>('name');
    namePattern = registerOutput<String?>('namePattern');
    namePrefix = registerOutput<String?>('namePrefix');
    preventUserExistenceErrors = registerOutput<String>(
      'preventUserExistenceErrors',
    );
    readAttributes = registerOutput<List<String>>('readAttributes');
    refreshTokenRotation =
        registerOutput<ManagedUserPoolClientRefreshTokenRotation?>(
          'refreshTokenRotation',
        );
    refreshTokenValidity = registerOutput<int>('refreshTokenValidity');
    region = registerOutput<String>('region');
    supportedIdentityProviders = registerOutput<List<String>>(
      'supportedIdentityProviders',
    );
    tokenValidityUnits =
        registerOutput<ManagedUserPoolClientTokenValidityUnits?>(
          'tokenValidityUnits',
        );
    userPoolId = registerOutput<String>('userPoolId');
    writeAttributes = registerOutput<List<String>>('writeAttributes');
  }

  /// Gets an existing [ManagedUserPoolClient] resource's state with the given [name] and [id].
  static ManagedUserPoolClient get(
    String name,
    pulumi.Input<String> id, {
    ManagedUserPoolClientState? state,
  }) {
    return ManagedUserPoolClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ManagedUserPoolClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cognito/managedUserPoolClient:ManagedUserPoolClient',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accessTokenValidity = registerOutput<int>('accessTokenValidity');
    allowedOauthFlows = registerOutput<List<String>>('allowedOauthFlows');
    allowedOauthFlowsUserPoolClient = registerOutput<bool>(
      'allowedOauthFlowsUserPoolClient',
    );
    allowedOauthScopes = registerOutput<List<String>>('allowedOauthScopes');
    analyticsConfiguration =
        registerOutput<ManagedUserPoolClientAnalyticsConfiguration?>(
          'analyticsConfiguration',
        );
    authSessionValidity = registerOutput<int>('authSessionValidity');
    callbackUrls = registerOutput<List<String>>('callbackUrls');
    clientSecret = registerOutput<String>('clientSecret');
    defaultRedirectUri = registerOutput<String>('defaultRedirectUri');
    enablePropagateAdditionalUserContextData = registerOutput<bool>(
      'enablePropagateAdditionalUserContextData',
    );
    enableTokenRevocation = registerOutput<bool>('enableTokenRevocation');
    explicitAuthFlows = registerOutput<List<String>>('explicitAuthFlows');
    idTokenValidity = registerOutput<int>('idTokenValidity');
    logoutUrls = registerOutput<List<String>>('logoutUrls');
    this.name = registerOutput<String>('name');
    namePattern = registerOutput<String?>('namePattern');
    namePrefix = registerOutput<String?>('namePrefix');
    preventUserExistenceErrors = registerOutput<String>(
      'preventUserExistenceErrors',
    );
    readAttributes = registerOutput<List<String>>('readAttributes');
    refreshTokenRotation =
        registerOutput<ManagedUserPoolClientRefreshTokenRotation?>(
          'refreshTokenRotation',
        );
    refreshTokenValidity = registerOutput<int>('refreshTokenValidity');
    region = registerOutput<String>('region');
    supportedIdentityProviders = registerOutput<List<String>>(
      'supportedIdentityProviders',
    );
    tokenValidityUnits =
        registerOutput<ManagedUserPoolClientTokenValidityUnits?>(
          'tokenValidityUnits',
        );
    userPoolId = registerOutput<String>('userPoolId');
    writeAttributes = registerOutput<List<String>>('writeAttributes');
  }
}
