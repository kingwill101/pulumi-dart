import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_args.dart';
import 'agentcore_oauth2_credential_provider_client_secret_arn.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_state.dart';

/// Manages an AWS Bedrock AgentCore OAuth2 Credential Provider. OAuth2 credential providers enable secure authentication with external OAuth2/OpenID Connect identity providers for agent runtimes.
///
/// &gt; **Note:** Write-Only arguments `clientIdWo` and `clientSecretWo` are available to use in place of `clientId` and `clientSecret`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
///
/// ## Example Usage
///
/// ### GitHub OAuth Provider
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const github = new aws.bedrock.AgentcoreOauth2CredentialProvider("github", {
///     oauth2ProviderConfig: {
///         githubOauth2ProviderConfig: {
///             clientId: "your-github-client-id",
///             clientSecret: "your-github-client-secret",
///         },
///     },
///     name: "github-oauth-provider",
///     credentialProviderVendor: "GithubOauth2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// github = aws.bedrock.AgentcoreOauth2CredentialProvider("github",
///     oauth2_provider_config={
///         "github_oauth2_provider_config": {
///             "client_id": "your-github-client-id",
///             "client_secret": "your-github-client-secret",
///         },
///     },
///     name="github-oauth-provider",
///     credential_provider_vendor="GithubOauth2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var github = new Aws.Bedrock.AgentcoreOauth2CredentialProvider("github", new()
///     {
///         Oauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs
///         {
///             GithubOauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs
///             {
///                 ClientId = "your-github-client-id",
///                 ClientSecret = "your-github-client-secret",
///             },
///         },
///         Name = "github-oauth-provider",
///         CredentialProviderVendor = "GithubOauth2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreOauth2CredentialProvider(ctx, "github", &bedrock.AgentcoreOauth2CredentialProviderArgs{
/// 			Oauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs{
/// 				GithubOauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs{
/// 					ClientId:     pulumi.String("your-github-client-id"),
/// 					ClientSecret: pulumi.String("your-github-client-secret"),
/// 				},
/// 			},
/// 			Name:                     pulumi.String("github-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("GithubOauth2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreoauth2credentialprovider" "github" {
///   oauth2_provider_config = {
///     github_oauth2_provider_config = {
///       client_id     = "your-github-client-id"
///       client_secret = "your-github-client-secret"
///     }
///   }
///   name                       = "github-oauth-provider"
///   credential_provider_vendor = "GithubOauth2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var github = new AgentcoreOauth2CredentialProvider("github", AgentcoreOauth2CredentialProviderArgs.builder()
///             .oauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs.builder()
///                 .githubOauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs.builder()
///                     .clientId("your-github-client-id")
///                     .clientSecret("your-github-client-secret")
///                     .build())
///                 .build())
///             .name("github-oauth-provider")
///             .credentialProviderVendor("GithubOauth2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   github:
///     type: aws:bedrock:AgentcoreOauth2CredentialProvider
///     properties:
///       oauth2ProviderConfig:
///         githubOauth2ProviderConfig:
///           clientId: your-github-client-id
///           clientSecret: your-github-client-secret
///       name: github-oauth-provider
///       credentialProviderVendor: GithubOauth2
/// ```
///
///
/// ### Custom OAuth Provider with Discovery URL
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const auth0 = new aws.bedrock.AgentcoreOauth2CredentialProvider("auth0", {
///     customOauth2ProviderConfig: [{
///         custom: [{
///             oauthDiscovery: [{
///                 discoveryUrl: "https://dev-company.auth0.com/.well-known/openid-configuration",
///             }],
///             clientIdWo: "auth0-client-id",
///             clientSecretWo: "auth0-client-secret",
///             clientCredentialsWoVersion: 1,
///         }],
///     }],
///     name: "auth0-oauth-provider",
///     credentialProviderVendor: "CustomOauth2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// auth0 = aws.bedrock.AgentcoreOauth2CredentialProvider("auth0",
///     custom_oauth2_provider_config=[{
///         "custom": [{
///             "oauthDiscovery": [{
///                 "discoveryUrl": "https://dev-company.auth0.com/.well-known/openid-configuration",
///             }],
///             "clientIdWo": "auth0-client-id",
///             "clientSecretWo": "auth0-client-secret",
///             "clientCredentialsWoVersion": 1,
///         }],
///     }],
///     name="auth0-oauth-provider",
///     credential_provider_vendor="CustomOauth2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var auth0 = new Aws.Bedrock.AgentcoreOauth2CredentialProvider("auth0", new()
///     {
///         CustomOauth2ProviderConfig = new[]
///         {
///
///             {
///                 { "custom", new[]
///                 {
///
///                     {
///                         { "oauthDiscovery", new[]
///                         {
///
///                             {
///                                 { "discoveryUrl", "https://dev-company.auth0.com/.well-known/openid-configuration" },
///                             },
///                         } },
///                         { "clientIdWo", "auth0-client-id" },
///                         { "clientSecretWo", "auth0-client-secret" },
///                         { "clientCredentialsWoVersion", 1 },
///                     },
///                 } },
///             },
///         },
///         Name = "auth0-oauth-provider",
///         CredentialProviderVendor = "CustomOauth2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreOauth2CredentialProvider(ctx, "auth0", &bedrock.AgentcoreOauth2CredentialProviderArgs{
/// 			CustomOauth2ProviderConfig: []map[string][]map[string]interface{}{
/// 				map[string][]map[string]interface{}{
/// 					"custom": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"oauthDiscovery": []map[string]string{
/// 								{
/// 									"discoveryUrl": "https://dev-company.auth0.com/.well-known/openid-configuration",
/// 								},
/// 							},
/// 							"clientIdWo":                 "auth0-client-id",
/// 							"clientSecretWo":             "auth0-client-secret",
/// 							"clientCredentialsWoVersion": 1,
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Name:                     pulumi.String("auth0-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("CustomOauth2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreoauth2credentialprovider" "auth0" {
///   custom_oauth2_provider_config = [{
///     "custom" = [{
///       "oauthDiscovery" = [{
///         "discoveryUrl" = "https://dev-company.auth0.com/.well-known/openid-configuration"
///       }]
///       "clientIdWo"                 = "auth0-client-id"
///       "clientSecretWo"             = "auth0-client-secret"
///       "clientCredentialsWoVersion" = 1
///     }]
///   }]
///   name                       = "auth0-oauth-provider"
///   credential_provider_vendor = "CustomOauth2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var auth0 = new AgentcoreOauth2CredentialProvider("auth0", AgentcoreOauth2CredentialProviderArgs.builder()
///             .customOauth2ProviderConfig(Arrays.asList(Map.of("custom", Arrays.asList(Map.ofEntries(
///                 Map.entry("oauthDiscovery", Arrays.asList(Map.of("discoveryUrl", "https://dev-company.auth0.com/.well-known/openid-configuration"))),
///                 Map.entry("clientIdWo", "auth0-client-id"),
///                 Map.entry("clientSecretWo", "auth0-client-secret"),
///                 Map.entry("clientCredentialsWoVersion", 1)
///             )))))
///             .name("auth0-oauth-provider")
///             .credentialProviderVendor("CustomOauth2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   auth0:
///     type: aws:bedrock:AgentcoreOauth2CredentialProvider
///     properties:
///       customOauth2ProviderConfig:
///         - custom:
///             - oauthDiscovery:
///                 - discoveryUrl: https://dev-company.auth0.com/.well-known/openid-configuration
///               clientIdWo: auth0-client-id
///               clientSecretWo: auth0-client-secret
///               clientCredentialsWoVersion: 1
///       name: auth0-oauth-provider
///       credentialProviderVendor: CustomOauth2
/// ```
///
///
/// ### Custom OAuth Provider with Authorization Server Metadata
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const keycloak = new aws.bedrock.AgentcoreOauth2CredentialProvider("keycloak", {
///     oauth2ProviderConfig: {
///         customOauth2ProviderConfig: {
///             oauthDiscovery: {
///                 authorizationServerMetadata: {
///                     issuer: "https://auth.company.com/realms/production",
///                     authorizationEndpoint: "https://auth.company.com/realms/production/protocol/openid-connect/auth",
///                     tokenEndpoint: "https://auth.company.com/realms/production/protocol/openid-connect/token",
///                     responseTypes: [
///                         "code",
///                         "id_token",
///                     ],
///                 },
///             },
///             clientIdWo: "keycloak-client-id",
///             clientSecretWo: "keycloak-client-secret",
///             clientCredentialsWoVersion: 1,
///         },
///     },
///     name: "keycloak-oauth-provider",
///     credentialProviderVendor: "CustomOauth2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// keycloak = aws.bedrock.AgentcoreOauth2CredentialProvider("keycloak",
///     oauth2_provider_config={
///         "custom_oauth2_provider_config": {
///             "oauth_discovery": {
///                 "authorization_server_metadata": {
///                     "issuer": "https://auth.company.com/realms/production",
///                     "authorization_endpoint": "https://auth.company.com/realms/production/protocol/openid-connect/auth",
///                     "token_endpoint": "https://auth.company.com/realms/production/protocol/openid-connect/token",
///                     "response_types": [
///                         "code",
///                         "id_token",
///                     ],
///                 },
///             },
///             "client_id_wo": "keycloak-client-id",
///             "client_secret_wo": "keycloak-client-secret",
///             "client_credentials_wo_version": 1,
///         },
///     },
///     name="keycloak-oauth-provider",
///     credential_provider_vendor="CustomOauth2")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var keycloak = new Aws.Bedrock.AgentcoreOauth2CredentialProvider("keycloak", new()
///     {
///         Oauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs
///         {
///             CustomOauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs
///             {
///                 OauthDiscovery = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryArgs
///                 {
///                     AuthorizationServerMetadata = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadataArgs
///                     {
///                         Issuer = "https://auth.company.com/realms/production",
///                         AuthorizationEndpoint = "https://auth.company.com/realms/production/protocol/openid-connect/auth",
///                         TokenEndpoint = "https://auth.company.com/realms/production/protocol/openid-connect/token",
///                         ResponseTypes = new[]
///                         {
///                             "code",
///                             "id_token",
///                         },
///                     },
///                 },
///                 ClientIdWo = "keycloak-client-id",
///                 ClientSecretWo = "keycloak-client-secret",
///                 ClientCredentialsWoVersion = 1,
///             },
///         },
///         Name = "keycloak-oauth-provider",
///         CredentialProviderVendor = "CustomOauth2",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewAgentcoreOauth2CredentialProvider(ctx, "keycloak", &bedrock.AgentcoreOauth2CredentialProviderArgs{
/// 			Oauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs{
/// 				CustomOauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs{
/// 					OauthDiscovery: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryArgs{
/// 						AuthorizationServerMetadata: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadataArgs{
/// 							Issuer:                pulumi.String("https://auth.company.com/realms/production"),
/// 							AuthorizationEndpoint: pulumi.String("https://auth.company.com/realms/production/protocol/openid-connect/auth"),
/// 							TokenEndpoint:         pulumi.String("https://auth.company.com/realms/production/protocol/openid-connect/token"),
/// 							ResponseTypes: pulumi.StringArray{
/// 								pulumi.String("code"),
/// 								pulumi.String("id_token"),
/// 							},
/// 						},
/// 					},
/// 					ClientIdWo:                 pulumi.String("keycloak-client-id"),
/// 					ClientSecretWo:             pulumi.String("keycloak-client-secret"),
/// 					ClientCredentialsWoVersion: pulumi.Int(1),
/// 				},
/// 			},
/// 			Name:                     pulumi.String("keycloak-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("CustomOauth2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_agentcoreoauth2credentialprovider" "keycloak" {
///   oauth2_provider_config = {
///     custom_oauth2_provider_config = {
///       oauth_discovery = {
///         authorization_server_metadata = {
///           issuer                 = "https://auth.company.com/realms/production"
///           authorization_endpoint = "https://auth.company.com/realms/production/protocol/openid-connect/auth"
///           token_endpoint         = "https://auth.company.com/realms/production/protocol/openid-connect/token"
///           response_types         = ["code", "id_token"]
///         }
///       }
///       client_id_wo                  = "keycloak-client-id"
///       client_secret_wo              = "keycloak-client-secret"
///       client_credentials_wo_version = 1
///     }
///   }
///   name                       = "keycloak-oauth-provider"
///   credential_provider_vendor = "CustomOauth2"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadataArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var keycloak = new AgentcoreOauth2CredentialProvider("keycloak", AgentcoreOauth2CredentialProviderArgs.builder()
///             .oauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs.builder()
///                 .customOauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs.builder()
///                     .oauthDiscovery(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryArgs.builder()
///                         .authorizationServerMetadata(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadataArgs.builder()
///                             .issuer("https://auth.company.com/realms/production")
///                             .authorizationEndpoint("https://auth.company.com/realms/production/protocol/openid-connect/auth")
///                             .tokenEndpoint("https://auth.company.com/realms/production/protocol/openid-connect/token")
///                             .responseTypes(
///                                 "code",
///                                 "id_token")
///                             .build())
///                         .build())
///                     .clientIdWo("keycloak-client-id")
///                     .clientSecretWo("keycloak-client-secret")
///                     .clientCredentialsWoVersion(1)
///                     .build())
///                 .build())
///             .name("keycloak-oauth-provider")
///             .credentialProviderVendor("CustomOauth2")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   keycloak:
///     type: aws:bedrock:AgentcoreOauth2CredentialProvider
///     properties:
///       oauth2ProviderConfig:
///         customOauth2ProviderConfig:
///           oauthDiscovery:
///             authorizationServerMetadata:
///               issuer: https://auth.company.com/realms/production
///               authorizationEndpoint: https://auth.company.com/realms/production/protocol/openid-connect/auth
///               tokenEndpoint: https://auth.company.com/realms/production/protocol/openid-connect/token
///               responseTypes:
///                 - code
///                 - id_token
///           clientIdWo: keycloak-client-id
///           clientSecretWo: keycloak-client-secret
///           clientCredentialsWoVersion: 1
///       name: keycloak-oauth-provider
///       credentialProviderVendor: CustomOauth2
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore OAuth2 Credential Provider using the provider name. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider example oauth2-provider-name
/// ```
class AgentcoreOauth2CredentialProvider extends pulumi.CustomResource {
  /// ARN of the AWS Secrets Manager secret containing the client secret.
  late final pulumi.Output<List<AgentcoreOauth2CredentialProviderClientSecretArn>> clientSecretArns;
  /// ARN of the OAuth2 credential provider.
  late final pulumi.Output<String> credentialProviderArn;
  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  late final pulumi.Output<String> credentialProviderVendor;
  /// Name of the OAuth2 credential provider.
  late final pulumi.Output<String> name;
  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2ProviderConfig` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?> oauth2ProviderConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [AgentcoreOauth2CredentialProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AgentcoreOauth2CredentialProvider]. {@macro pulumi_bedrock_agentcore_oauth2_credential_provider_agentcore_oauth2_credential_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AgentcoreOauth2CredentialProvider(
    String name, {
    AgentcoreOauth2CredentialProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    clientSecretArns = registerOutput<List<AgentcoreOauth2CredentialProviderClientSecretArn>>('clientSecretArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(guardedValue, (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>())); });
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    credentialProviderVendor = registerOutput<String>('credentialProviderVendor');
    this.name = registerOutput<String>('name');
    oauth2ProviderConfig = registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>('oauth2ProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [AgentcoreOauth2CredentialProvider] resource's state with the given [name] and [id].
  static AgentcoreOauth2CredentialProvider get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreOauth2CredentialProviderState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AgentcoreOauth2CredentialProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AgentcoreOauth2CredentialProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    clientSecretArns = registerOutput<List<AgentcoreOauth2CredentialProviderClientSecretArn>>('clientSecretArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(guardedValue, (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>())); });
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    credentialProviderVendor = registerOutput<String>('credentialProviderVendor');
    this.name = registerOutput<String>('name');
    oauth2ProviderConfig = registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>('oauth2ProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [AgentcoreOauth2CredentialProvider] resource.
  AgentcoreOauth2CredentialProvider.reference(String urn)
    : super(
        'aws:bedrock/agentcoreOauth2CredentialProvider:AgentcoreOauth2CredentialProvider',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    clientSecretArns = registerOutput<List<AgentcoreOauth2CredentialProviderClientSecretArn>>('clientSecretArns', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AgentcoreOauth2CredentialProviderClientSecretArn>(guardedValue, (value) => AgentcoreOauth2CredentialProviderClientSecretArn.fromMap((value as Map).cast<String, dynamic>())); });
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    credentialProviderVendor = registerOutput<String>('credentialProviderVendor');
    this.name = registerOutput<String>('name');
    oauth2ProviderConfig = registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>('oauth2ProviderConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
