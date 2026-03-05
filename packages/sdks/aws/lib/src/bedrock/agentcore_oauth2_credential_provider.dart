import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_oauth2_credential_provider_args.dart';
import 'agentcore_oauth2_credential_provider_oauth2_provider_config.dart';
import 'agentcore_oauth2_credential_provider_state.dart';

/// Manages an AWS Bedrock AgentCore OAuth2 Credential Provider. OAuth2 credential providers enable secure authentication with external OAuth2/OpenID Connect identity providers for agent runtimes.
///
/// &gt; **Note:** Write-Only arguments `client_id_wo` and `client_secret_wo` are available to use in place of `client_id` and `client_secret`. Write-Only arguments are supported in HashiCorp Terraform 1.11.0 and later. Learn more.
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
///     name: "github-oauth-provider",
///     credentialProviderVendor: "GithubOauth2",
///     oauth2ProviderConfig: {
///         githubOauth2ProviderConfig: {
///             clientId: "your-github-client-id",
///             clientSecret: "your-github-client-secret",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// github = aws.bedrock.AgentcoreOauth2CredentialProvider("github",
///     name="github-oauth-provider",
///     credential_provider_vendor="GithubOauth2",
///     oauth2_provider_config={
///         "github_oauth2_provider_config": {
///             "client_id": "your-github-client-id",
///             "client_secret": "your-github-client-secret",
///         },
///     })
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
///         Name = "github-oauth-provider",
///         CredentialProviderVendor = "GithubOauth2",
///         Oauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs
///         {
///             GithubOauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs
///             {
///                 ClientId = "your-github-client-id",
///                 ClientSecret = "your-github-client-secret",
///             },
///         },
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
/// 			Name:                     pulumi.String("github-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("GithubOauth2"),
/// 			Oauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs{
/// 				GithubOauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs{
/// 					ClientId:     pulumi.String("your-github-client-id"),
/// 					ClientSecret: pulumi.String("your-github-client-secret"),
/// 				},
/// 			},
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
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs;
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
///         var github = new AgentcoreOauth2CredentialProvider("github", AgentcoreOauth2CredentialProviderArgs.builder()
///             .name("github-oauth-provider")
///             .credentialProviderVendor("GithubOauth2")
///             .oauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs.builder()
///                 .githubOauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigGithubOauth2ProviderConfigArgs.builder()
///                     .clientId("your-github-client-id")
///                     .clientSecret("your-github-client-secret")
///                     .build())
///                 .build())
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
///       name: github-oauth-provider
///       credentialProviderVendor: GithubOauth2
///       oauth2ProviderConfig:
///         githubOauth2ProviderConfig:
///           clientId: your-github-client-id
///           clientSecret: your-github-client-secret
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
///     name: "auth0-oauth-provider",
///     credentialProviderVendor: "CustomOauth2",
///     customOauth2ProviderConfig: [{
///         custom: [{
///             clientIdWo: "auth0-client-id",
///             clientSecretWo: "auth0-client-secret",
///             clientCredentialsWoVersion: 1,
///             oauthDiscovery: [{
///                 discoveryUrl: "https://dev-company.auth0.com/.well-known/openid-configuration",
///             }],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// auth0 = aws.bedrock.AgentcoreOauth2CredentialProvider("auth0",
///     name="auth0-oauth-provider",
///     credential_provider_vendor="CustomOauth2",
///     custom_oauth2_provider_config=[{
///         "custom": [{
///             "clientIdWo": "auth0-client-id",
///             "clientSecretWo": "auth0-client-secret",
///             "clientCredentialsWoVersion": 1,
///             "oauthDiscovery": [{
///                 "discoveryUrl": "https://dev-company.auth0.com/.well-known/openid-configuration",
///             }],
///         }],
///     }])
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
///         Name = "auth0-oauth-provider",
///         CredentialProviderVendor = "CustomOauth2",
///         CustomOauth2ProviderConfig = new[]
///         {
///
///             {
///                 { "custom", new[]
///                 {
///
///                     {
///                         { "clientIdWo", "auth0-client-id" },
///                         { "clientSecretWo", "auth0-client-secret" },
///                         { "clientCredentialsWoVersion", 1 },
///                         { "oauthDiscovery", new[]
///                         {
///
///                             {
///                                 { "discoveryUrl", "https://dev-company.auth0.com/.well-known/openid-configuration" },
///                             },
///                         } },
///                     },
///                 } },
///             },
///         },
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
/// 			Name:                     pulumi.String("auth0-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("CustomOauth2"),
/// 			CustomOauth2ProviderConfig: []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"custom": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"clientIdWo":                 "auth0-client-id",
/// 							"clientSecretWo":             "auth0-client-secret",
/// 							"clientCredentialsWoVersion": 1,
/// 							"oauthDiscovery": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"discoveryUrl": "https://dev-company.auth0.com/.well-known/openid-configuration",
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
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
///         var auth0 = new AgentcoreOauth2CredentialProvider("auth0", AgentcoreOauth2CredentialProviderArgs.builder()
///             .name("auth0-oauth-provider")
///             .credentialProviderVendor("CustomOauth2")
///             .customOauth2ProviderConfig(List.of(Map.of("custom", List.of(Map.ofEntries(
///                 Map.entry("clientIdWo", "auth0-client-id"),
///                 Map.entry("clientSecretWo", "auth0-client-secret"),
///                 Map.entry("clientCredentialsWoVersion", 1),
///                 Map.entry("oauthDiscovery", List.of(Map.of("discoveryUrl", "https://dev-company.auth0.com/.well-known/openid-configuration")))
///             )))))
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
///       name: auth0-oauth-provider
///       credentialProviderVendor: CustomOauth2
///       customOauth2ProviderConfig:
///         - custom:
///             - clientIdWo: auth0-client-id
///               clientSecretWo: auth0-client-secret
///               clientCredentialsWoVersion: 1
///               oauthDiscovery:
///                 - discoveryUrl: https://dev-company.auth0.com/.well-known/openid-configuration
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
///     name: "keycloak-oauth-provider",
///     credentialProviderVendor: "CustomOauth2",
///     oauth2ProviderConfig: {
///         customOauth2ProviderConfig: {
///             clientIdWo: "keycloak-client-id",
///             clientSecretWo: "keycloak-client-secret",
///             clientCredentialsWoVersion: 1,
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
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// keycloak = aws.bedrock.AgentcoreOauth2CredentialProvider("keycloak",
///     name="keycloak-oauth-provider",
///     credential_provider_vendor="CustomOauth2",
///     oauth2_provider_config={
///         "custom_oauth2_provider_config": {
///             "client_id_wo": "keycloak-client-id",
///             "client_secret_wo": "keycloak-client-secret",
///             "client_credentials_wo_version": 1,
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
///         },
///     })
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
///         Name = "keycloak-oauth-provider",
///         CredentialProviderVendor = "CustomOauth2",
///         Oauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs
///         {
///             CustomOauth2ProviderConfig = new Aws.Bedrock.Inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs
///             {
///                 ClientIdWo = "keycloak-client-id",
///                 ClientSecretWo = "keycloak-client-secret",
///                 ClientCredentialsWoVersion = 1,
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
///             },
///         },
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
/// 			Name:                     pulumi.String("keycloak-oauth-provider"),
/// 			CredentialProviderVendor: pulumi.String("CustomOauth2"),
/// 			Oauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs{
/// 				CustomOauth2ProviderConfig: &bedrock.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs{
/// 					ClientIdWo:                 pulumi.String("keycloak-client-id"),
/// 					ClientSecretWo:             pulumi.String("keycloak-client-secret"),
/// 					ClientCredentialsWoVersion: pulumi.Int(1),
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
/// 				},
/// 			},
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
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProvider;
/// import com.pulumi.aws.bedrock.AgentcoreOauth2CredentialProviderArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryArgs;
/// import com.pulumi.aws.bedrock.inputs.AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigOauthDiscoveryAuthorizationServerMetadataArgs;
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
///         var keycloak = new AgentcoreOauth2CredentialProvider("keycloak", AgentcoreOauth2CredentialProviderArgs.builder()
///             .name("keycloak-oauth-provider")
///             .credentialProviderVendor("CustomOauth2")
///             .oauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigArgs.builder()
///                 .customOauth2ProviderConfig(AgentcoreOauth2CredentialProviderOauth2ProviderConfigCustomOauth2ProviderConfigArgs.builder()
///                     .clientIdWo("keycloak-client-id")
///                     .clientSecretWo("keycloak-client-secret")
///                     .clientCredentialsWoVersion(1)
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
///                     .build())
///                 .build())
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
///       name: keycloak-oauth-provider
///       credentialProviderVendor: CustomOauth2
///       oauth2ProviderConfig:
///         customOauth2ProviderConfig:
///           clientIdWo: keycloak-client-id
///           clientSecretWo: keycloak-client-secret
///           clientCredentialsWoVersion: 1
///           oauthDiscovery:
///             authorizationServerMetadata:
///               issuer: https://auth.company.com/realms/production
///               authorizationEndpoint: https://auth.company.com/realms/production/protocol/openid-connect/auth
///               tokenEndpoint: https://auth.company.com/realms/production/protocol/openid-connect/token
///               responseTypes:
///                 - code
///                 - id_token
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
  late final pulumi.Output<List<Map<String, dynamic>>> clientSecretArns;

  /// ARN of the OAuth2 credential provider.
  late final pulumi.Output<String> credentialProviderArn;

  /// Vendor of the OAuth2 credential provider. Valid values: `CustomOauth2`, `GithubOauth2`, `GoogleOauth2`, `Microsoft`, `SalesforceOauth2`, `SlackOauth2`.
  late final pulumi.Output<String> credentialProviderVendor;

  /// Name of the OAuth2 credential provider.
  late final pulumi.Output<String> name;

  /// OAuth2 provider configuration. Must contain exactly one provider type. See `oauth2_provider_config` below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<
    AgentcoreOauth2CredentialProviderOauth2ProviderConfig?
  >
  oauth2ProviderConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

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
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientSecretArns = registerOutput<List<Map<String, dynamic>>>(
      'clientSecretArns',
    );
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    credentialProviderVendor = registerOutput<String>(
      'credentialProviderVendor',
    );
    this.name = registerOutput<String>('name');
    oauth2ProviderConfig =
        registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>(
          'oauth2ProviderConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AgentcoreOauth2CredentialProvider] resource's state with the given [name] and [id].
  static AgentcoreOauth2CredentialProvider get(
    String name,
    pulumi.Input<String> id, {
    AgentcoreOauth2CredentialProviderState? state,
  }) {
    return AgentcoreOauth2CredentialProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
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
    clientSecretArns = registerOutput<List<Map<String, dynamic>>>(
      'clientSecretArns',
    );
    credentialProviderArn = registerOutput<String>('credentialProviderArn');
    credentialProviderVendor = registerOutput<String>(
      'credentialProviderVendor',
    );
    this.name = registerOutput<String>('name');
    oauth2ProviderConfig =
        registerOutput<AgentcoreOauth2CredentialProviderOauth2ProviderConfig?>(
          'oauth2ProviderConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return AgentcoreOauth2CredentialProviderOauth2ProviderConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
  }
}
