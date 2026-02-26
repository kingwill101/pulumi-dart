import 'package:pulumi/pulumi.dart';
import '../managed_user_pool_client_analytics_configuration/managed_user_pool_client_analytics_configuration.dart';
import '../managed_user_pool_client_refresh_token_rotation/managed_user_pool_client_refresh_token_rotation.dart';
import '../managed_user_pool_client_token_validity_units/managed_user_pool_client_token_validity_units.dart';
import 'managed_user_pool_client_args.dart';

/// Use the <span pulumi-lang-nodejs="`aws.cognito.UserPoolClient`" pulumi-lang-dotnet="`aws.cognito.UserPoolClient`" pulumi-lang-go="`cognito.UserPoolClient`" pulumi-lang-python="`cognito.UserPoolClient`" pulumi-lang-yaml="`aws.cognito.UserPoolClient`" pulumi-lang-java="`aws.cognito.UserPoolClient`">`aws.cognito.UserPoolClient`</span> resource to manage a Cognito User Pool Client.
///
/// **This resource is advanced** and has special caveats to consider before use. Please read this document completely before using the resource.
///
/// Use the <span pulumi-lang-nodejs="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-dotnet="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-go="`cognito.ManagedUserPoolClient`" pulumi-lang-python="`cognito.ManagedUserPoolClient`" pulumi-lang-yaml="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-java="`aws.cognito.ManagedUserPoolClient`">`aws.cognito.ManagedUserPoolClient`</span> resource to manage a Cognito User Pool Client that is automatically created by an AWS service. For instance, when [configuring an OpenSearch Domain to use Cognito authentication](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/cognito-auth.html), the OpenSearch service creates the User Pool Client during setup and removes it when it is no longer required. As a result, the <span pulumi-lang-nodejs="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-dotnet="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-go="`cognito.ManagedUserPoolClient`" pulumi-lang-python="`cognito.ManagedUserPoolClient`" pulumi-lang-yaml="`aws.cognito.ManagedUserPoolClient`" pulumi-lang-java="`aws.cognito.ManagedUserPoolClient`">`aws.cognito.ManagedUserPoolClient`</span> resource does not create or delete this resource, but instead assumes management of it.
///
/// Use the <span pulumi-lang-nodejs="`aws.cognito.UserPoolClient`" pulumi-lang-dotnet="`aws.cognito.UserPoolClient`" pulumi-lang-go="`cognito.UserPoolClient`" pulumi-lang-python="`cognito.UserPoolClient`" pulumi-lang-yaml="`aws.cognito.UserPoolClient`" pulumi-lang-java="`aws.cognito.UserPoolClient`">`aws.cognito.UserPoolClient`</span> resource to manage Cognito User Pool Clients for normal use cases.
///
/// ## Example Usage
///
/// ### Using Name Pattern
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cognito.ManagedUserPoolClient("example", {
/// namePattern: "^AmazonOpenSearchService-example-(\\w+)$",
/// userPoolId: exampleAwsCognitoUserPool.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cognito.ManagedUserPoolClient("example",
/// name_pattern="^AmazonOpenSearchService-example-(\\w+)$",
/// user_pool_id=example_aws_cognito_user_pool["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Cognito.ManagedUserPoolClient("example", new()
/// {
/// NamePattern = "^AmazonOpenSearchService-example-(\\w+)$",
/// UserPoolId = exampleAwsCognitoUserPool.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cognito.NewManagedUserPoolClient(ctx, "example", &cognito.ManagedUserPoolClientArgs{
/// NamePattern: pulumi.String("^AmazonOpenSearchService-example-(\\w+)$"),
/// UserPoolId:  pulumi.Any(exampleAwsCognitoUserPool.Id),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ManagedUserPoolClient("example", ManagedUserPoolClientArgs.builder()
/// .namePattern("^AmazonOpenSearchService-example-(\\w+)$")
/// .userPoolId(exampleAwsCognitoUserPool.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cognito:ManagedUserPoolClient
/// properties:
/// namePattern: ^AmazonOpenSearchService-example-(\w+)$
/// userPoolId: ${exampleAwsCognitoUserPool.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool Clients using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the Cognito User Pool and the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> of the Cognito User Pool Client. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/managedUserPoolClient:ManagedUserPoolClient client us-west-2_abc123/3ho4ek12345678909nh3fmhpko
/// ```
class ManagedUserPoolClient extends CustomResource {
  /// Time limit, between 5 minutes and 1 day, after which the access token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.access_token`.
  late final Output<int> accessTokenValidity;

  /// List of allowed OAuth flows, including <span pulumi-lang-nodejs="`code`" pulumi-lang-dotnet="`Code`" pulumi-lang-go="`code`" pulumi-lang-python="`code`" pulumi-lang-yaml="`code`" pulumi-lang-java="`code`">`code`</span>, <span pulumi-lang-nodejs="`implicit`" pulumi-lang-dotnet="`Implicit`" pulumi-lang-go="`implicit`" pulumi-lang-python="`implicit`" pulumi-lang-yaml="`implicit`" pulumi-lang-java="`implicit`">`implicit`</span>, and <span pulumi-lang-nodejs="`clientCredentials`" pulumi-lang-dotnet="`ClientCredentials`" pulumi-lang-go="`clientCredentials`" pulumi-lang-python="`client_credentials`" pulumi-lang-yaml="`clientCredentials`" pulumi-lang-java="`clientCredentials`">`client_credentials`</span>. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  late final Output<List<String>> allowedOauthFlows;

  /// Whether the client is allowed to use OAuth 2.0 features. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure the following arguments: <span pulumi-lang-nodejs="`callbackUrls`" pulumi-lang-dotnet="`CallbackUrls`" pulumi-lang-go="`callbackUrls`" pulumi-lang-python="`callback_urls`" pulumi-lang-yaml="`callbackUrls`" pulumi-lang-java="`callbackUrls`">`callback_urls`</span>, <span pulumi-lang-nodejs="`logoutUrls`" pulumi-lang-dotnet="`LogoutUrls`" pulumi-lang-go="`logoutUrls`" pulumi-lang-python="`logout_urls`" pulumi-lang-yaml="`logoutUrls`" pulumi-lang-java="`logoutUrls`">`logout_urls`</span>, <span pulumi-lang-nodejs="`allowedOauthScopes`" pulumi-lang-dotnet="`AllowedOauthScopes`" pulumi-lang-go="`allowedOauthScopes`" pulumi-lang-python="`allowed_oauth_scopes`" pulumi-lang-yaml="`allowedOauthScopes`" pulumi-lang-java="`allowedOauthScopes`">`allowed_oauth_scopes`</span> and <span pulumi-lang-nodejs="`allowedOauthFlows`" pulumi-lang-dotnet="`AllowedOauthFlows`" pulumi-lang-go="`allowedOauthFlows`" pulumi-lang-python="`allowed_oauth_flows`" pulumi-lang-yaml="`allowedOauthFlows`" pulumi-lang-java="`allowedOauthFlows`">`allowed_oauth_flows`</span>.
  late final Output<bool> allowedOauthFlowsUserPoolClient;

  /// List of allowed OAuth scopes, including <span pulumi-lang-nodejs="`phone`" pulumi-lang-dotnet="`Phone`" pulumi-lang-go="`phone`" pulumi-lang-python="`phone`" pulumi-lang-yaml="`phone`" pulumi-lang-java="`phone`">`phone`</span>, <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span>, <span pulumi-lang-nodejs="`openid`" pulumi-lang-dotnet="`Openid`" pulumi-lang-go="`openid`" pulumi-lang-python="`openid`" pulumi-lang-yaml="`openid`" pulumi-lang-java="`openid`">`openid`</span>, <span pulumi-lang-nodejs="`profile`" pulumi-lang-dotnet="`Profile`" pulumi-lang-go="`profile`" pulumi-lang-python="`profile`" pulumi-lang-yaml="`profile`" pulumi-lang-java="`profile`">`profile`</span>, and `aws.cognito.signin.user.admin`. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  late final Output<List<String>> allowedOauthScopes;

  /// Configuration block for Amazon Pinpoint analytics that collects metrics for this user pool. See details below.
  late final Output<ManagedUserPoolClientAnalyticsConfiguration?>
      analyticsConfiguration;

  /// Duration, in minutes, of the session token created by Amazon Cognito for each API request in an authentication flow. The session token must be responded to by the native user of the user pool before it expires. Valid values for <span pulumi-lang-nodejs="`authSessionValidity`" pulumi-lang-dotnet="`AuthSessionValidity`" pulumi-lang-go="`authSessionValidity`" pulumi-lang-python="`auth_session_validity`" pulumi-lang-yaml="`authSessionValidity`" pulumi-lang-java="`authSessionValidity`">`auth_session_validity`</span> are between <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span> and <span pulumi-lang-nodejs="`15`" pulumi-lang-dotnet="`15`" pulumi-lang-go="`15`" pulumi-lang-python="`15`" pulumi-lang-yaml="`15`" pulumi-lang-java="`15`">`15`</span>, with a default value of <span pulumi-lang-nodejs="`3`" pulumi-lang-dotnet="`3`" pulumi-lang-go="`3`" pulumi-lang-python="`3`" pulumi-lang-yaml="`3`" pulumi-lang-java="`3`">`3`</span>.
  late final Output<int> authSessionValidity;

  /// List of allowed callback URLs for the identity providers. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  late final Output<List<String>> callbackUrls;

  /// Client secret of the user pool client.
  late final Output<String> clientSecret;

  /// Default redirect URI and must be included in the list of callback URLs.
  late final Output<String> defaultRedirectUri;

  /// Enables the propagation of additional user context data.
  late final Output<bool> enablePropagateAdditionalUserContextData;

  /// Enables or disables token revocation.
  late final Output<bool> enableTokenRevocation;

  /// List of authentication flows. The available options include ADMIN_NO_SRP_AUTH, CUSTOM_AUTH_FLOW_ONLY, USER_PASSWORD_AUTH, ALLOW_ADMIN_USER_PASSWORD_AUTH, ALLOW_CUSTOM_AUTH, ALLOW_USER_PASSWORD_AUTH, ALLOW_USER_SRP_AUTH, and ALLOW_REFRESH_TOKEN_AUTH.
  late final Output<List<String>> explicitAuthFlows;

  /// Time limit, between 5 minutes and 1 day, after which the ID token is no longer valid and cannot be used. By default, the unit is hours. The unit can be overridden by a value in `token_validity_units.id_token`.
  late final Output<int> idTokenValidity;

  /// List of allowed logout URLs for the identity providers. <span pulumi-lang-nodejs="`allowedOauthFlowsUserPoolClient`" pulumi-lang-dotnet="`AllowedOauthFlowsUserPoolClient`" pulumi-lang-go="`allowedOauthFlowsUserPoolClient`" pulumi-lang-python="`allowed_oauth_flows_user_pool_client`" pulumi-lang-yaml="`allowedOauthFlowsUserPoolClient`" pulumi-lang-java="`allowedOauthFlowsUserPoolClient`">`allowed_oauth_flows_user_pool_client`</span> must be set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> before you can configure this option.
  late final Output<List<String>> logoutUrls;

  /// Name of the user pool client.
  late final Output<String> name;

  /// Regular expression that matches the name of the existing User Pool Client to be managed. It must only match one User Pool Client.
  late final Output<String?> namePattern;

  /// String that matches the beginning of the name of the  existing User Pool Client to be managed. It must match only one User Pool Client.
  ///
  /// The following arguments are optional:
  late final Output<String?> namePrefix;

  /// Setting determines the errors and responses returned by Cognito APIs when a user does not exist in the user pool during authentication, account confirmation, and password recovery.
  late final Output<String> preventUserExistenceErrors;

  /// List of user pool attributes that the application client can read from.
  late final Output<List<String>> readAttributes;

  /// A block that specifies the configuration of refresh token rotation. Detailed below.
  late final Output<ManagedUserPoolClientRefreshTokenRotation?>
      refreshTokenRotation;

  /// Time limit, between 60 minutes and 10 years, after which the refresh token is no longer valid and cannot be used. By default, the unit is days. The unit can be overridden by a value in `token_validity_units.refresh_token`.
  late final Output<int> refreshTokenValidity;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of provider names for the identity providers that are supported on this client. It uses the <span pulumi-lang-nodejs="`providerName`" pulumi-lang-dotnet="`ProviderName`" pulumi-lang-go="`providerName`" pulumi-lang-python="`provider_name`" pulumi-lang-yaml="`providerName`" pulumi-lang-java="`providerName`">`provider_name`</span> attribute of the <span pulumi-lang-nodejs="`aws.cognito.IdentityProvider`" pulumi-lang-dotnet="`aws.cognito.IdentityProvider`" pulumi-lang-go="`cognito.IdentityProvider`" pulumi-lang-python="`cognito.IdentityProvider`" pulumi-lang-yaml="`aws.cognito.IdentityProvider`" pulumi-lang-java="`aws.cognito.IdentityProvider`">`aws.cognito.IdentityProvider`</span> resource(s), or the equivalent string(s).
  late final Output<List<String>> supportedIdentityProviders;

  /// Configuration block for representing the validity times in units. See details below. Detailed below.
  late final Output<ManagedUserPoolClientTokenValidityUnits?>
      tokenValidityUnits;

  /// User pool that the client belongs to.
  late final Output<String> userPoolId;

  /// List of user pool attributes that the application client can write to.
  late final Output<List<String>> writeAttributes;

  ManagedUserPoolClient(
    String name, {
    ManagedUserPoolClientArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/managedUserPoolClient:ManagedUserPoolClient',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessTokenValidity = registerOutput<int>('accessTokenValidity');
    this.allowedOauthFlows = registerOutput<List<String>>('allowedOauthFlows');
    this.allowedOauthFlowsUserPoolClient =
        registerOutput<bool>('allowedOauthFlowsUserPoolClient');
    this.allowedOauthScopes =
        registerOutput<List<String>>('allowedOauthScopes');
    this.analyticsConfiguration =
        registerOutput<ManagedUserPoolClientAnalyticsConfiguration?>(
            'analyticsConfiguration');
    this.authSessionValidity = registerOutput<int>('authSessionValidity');
    this.callbackUrls = registerOutput<List<String>>('callbackUrls');
    this.clientSecret = registerOutput<String>('clientSecret');
    this.defaultRedirectUri = registerOutput<String>('defaultRedirectUri');
    this.enablePropagateAdditionalUserContextData =
        registerOutput<bool>('enablePropagateAdditionalUserContextData');
    this.enableTokenRevocation = registerOutput<bool>('enableTokenRevocation');
    this.explicitAuthFlows = registerOutput<List<String>>('explicitAuthFlows');
    this.idTokenValidity = registerOutput<int>('idTokenValidity');
    this.logoutUrls = registerOutput<List<String>>('logoutUrls');
    this.name = registerOutput<String>('name');
    this.namePattern = registerOutput<String?>('namePattern');
    this.namePrefix = registerOutput<String?>('namePrefix');
    this.preventUserExistenceErrors =
        registerOutput<String>('preventUserExistenceErrors');
    this.readAttributes = registerOutput<List<String>>('readAttributes');
    this.refreshTokenRotation =
        registerOutput<ManagedUserPoolClientRefreshTokenRotation?>(
            'refreshTokenRotation');
    this.refreshTokenValidity = registerOutput<int>('refreshTokenValidity');
    this.region = registerOutput<String>('region');
    this.supportedIdentityProviders =
        registerOutput<List<String>>('supportedIdentityProviders');
    this.tokenValidityUnits =
        registerOutput<ManagedUserPoolClientTokenValidityUnits?>(
            'tokenValidityUnits');
    this.userPoolId = registerOutput<String>('userPoolId');
    this.writeAttributes = registerOutput<List<String>>('writeAttributes');
  }
}
