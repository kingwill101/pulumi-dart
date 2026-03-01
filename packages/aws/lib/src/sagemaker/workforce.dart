import 'package:pulumi/pulumi.dart' as pulumi;
import 'workforce_args.dart';
import 'workforce_cognito_config.dart';
import 'workforce_oidc_config.dart';
import 'workforce_source_ip_config.dart';
import 'workforce_workforce_vpc_config.dart';

/// Provides a SageMaker AI Workforce resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleUserPool = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleUserPoolClient = new aws.cognito.UserPoolClient("example", {
///     name: "example",
///     generateSecret: true,
///     userPoolId: exampleUserPool.id,
/// });
/// const exampleUserPoolDomain = new aws.cognito.UserPoolDomain("example", {
///     domain: "example",
///     userPoolId: exampleUserPool.id,
/// });
/// const example = new aws.sagemaker.Workforce("example", {
///     workforceName: "example",
///     cognitoConfig: {
///         clientId: exampleUserPoolClient.id,
///         userPool: exampleUserPoolDomain.userPoolId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_user_pool = aws.cognito.UserPool("example", name="example")
/// example_user_pool_client = aws.cognito.UserPoolClient("example",
///     name="example",
///     generate_secret=True,
///     user_pool_id=example_user_pool.id)
/// example_user_pool_domain = aws.cognito.UserPoolDomain("example",
///     domain="example",
///     user_pool_id=example_user_pool.id)
/// example = aws.sagemaker.Workforce("example",
///     workforce_name="example",
///     cognito_config={
///         "client_id": example_user_pool_client.id,
///         "user_pool": example_user_pool_domain.user_pool_id,
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
///     var exampleUserPool = new Aws.Cognito.UserPool("example", new()
///     {
///         Name = "example",
///     });
///
///     var exampleUserPoolClient = new Aws.Cognito.UserPoolClient("example", new()
///     {
///         Name = "example",
///         GenerateSecret = true,
///         UserPoolId = exampleUserPool.Id,
///     });
///
///     var exampleUserPoolDomain = new Aws.Cognito.UserPoolDomain("example", new()
///     {
///         Domain = "example",
///         UserPoolId = exampleUserPool.Id,
///     });
///
///     var example = new Aws.Sagemaker.Workforce("example", new()
///     {
///         WorkforceName = "example",
///         CognitoConfig = new Aws.Sagemaker.Inputs.WorkforceCognitoConfigArgs
///         {
///             ClientId = exampleUserPoolClient.Id,
///             UserPool = exampleUserPoolDomain.UserPoolId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleUserPool, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// 			Name: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolClient, err := cognito.NewUserPoolClient(ctx, "example", &cognito.UserPoolClientArgs{
/// 			Name:           pulumi.String("example"),
/// 			GenerateSecret: pulumi.Bool(true),
/// 			UserPoolId:     exampleUserPool.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserPoolDomain, err := cognito.NewUserPoolDomain(ctx, "example", &cognito.UserPoolDomainArgs{
/// 			Domain:     pulumi.String("example"),
/// 			UserPoolId: exampleUserPool.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sagemaker.NewWorkforce(ctx, "example", &sagemaker.WorkforceArgs{
/// 			WorkforceName: pulumi.String("example"),
/// 			CognitoConfig: &sagemaker.WorkforceCognitoConfigArgs{
/// 				ClientId: exampleUserPoolClient.ID(),
/// 				UserPool: exampleUserPoolDomain.UserPoolId,
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
/// import com.pulumi.aws.cognito.UserPool;
/// import com.pulumi.aws.cognito.UserPoolArgs;
/// import com.pulumi.aws.cognito.UserPoolClient;
/// import com.pulumi.aws.cognito.UserPoolClientArgs;
/// import com.pulumi.aws.cognito.UserPoolDomain;
/// import com.pulumi.aws.cognito.UserPoolDomainArgs;
/// import com.pulumi.aws.sagemaker.Workforce;
/// import com.pulumi.aws.sagemaker.WorkforceArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkforceCognitoConfigArgs;
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
///         var exampleUserPool = new UserPool("exampleUserPool", UserPoolArgs.builder()
///             .name("example")
///             .build());
///
///         var exampleUserPoolClient = new UserPoolClient("exampleUserPoolClient", UserPoolClientArgs.builder()
///             .name("example")
///             .generateSecret(true)
///             .userPoolId(exampleUserPool.id())
///             .build());
///
///         var exampleUserPoolDomain = new UserPoolDomain("exampleUserPoolDomain", UserPoolDomainArgs.builder()
///             .domain("example")
///             .userPoolId(exampleUserPool.id())
///             .build());
///
///         var example = new Workforce("example", WorkforceArgs.builder()
///             .workforceName("example")
///             .cognitoConfig(WorkforceCognitoConfigArgs.builder()
///                 .clientId(exampleUserPoolClient.id())
///                 .userPool(exampleUserPoolDomain.userPoolId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Workforce
///     properties:
///       workforceName: example
///       cognitoConfig:
///         clientId: ${exampleUserPoolClient.id}
///         userPool: ${exampleUserPoolDomain.userPoolId}
///   exampleUserPool:
///     type: aws:cognito:UserPool
///     name: example
///     properties:
///       name: example
///   exampleUserPoolClient:
///     type: aws:cognito:UserPoolClient
///     name: example
///     properties:
///       name: example
///       generateSecret: true
///       userPoolId: ${exampleUserPool.id}
///   exampleUserPoolDomain:
///     type: aws:cognito:UserPoolDomain
///     name: example
///     properties:
///       domain: example
///       userPoolId: ${exampleUserPool.id}
/// ```
///
///
/// ### Oidc Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workforce("example", {
///     workforceName: "example",
///     oidcConfig: {
///         authorizationEndpoint: "https://example.com",
///         clientId: "example",
///         clientSecret: "example",
///         issuer: "https://example.com",
///         jwksUri: "https://example.com",
///         logoutEndpoint: "https://example.com",
///         tokenEndpoint: "https://example.com",
///         userInfoEndpoint: "https://example.com",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workforce("example",
///     workforce_name="example",
///     oidc_config={
///         "authorization_endpoint": "https://example.com",
///         "client_id": "example",
///         "client_secret": "example",
///         "issuer": "https://example.com",
///         "jwks_uri": "https://example.com",
///         "logout_endpoint": "https://example.com",
///         "token_endpoint": "https://example.com",
///         "user_info_endpoint": "https://example.com",
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
///     var example = new Aws.Sagemaker.Workforce("example", new()
///     {
///         WorkforceName = "example",
///         OidcConfig = new Aws.Sagemaker.Inputs.WorkforceOidcConfigArgs
///         {
///             AuthorizationEndpoint = "https://example.com",
///             ClientId = "example",
///             ClientSecret = "example",
///             Issuer = "https://example.com",
///             JwksUri = "https://example.com",
///             LogoutEndpoint = "https://example.com",
///             TokenEndpoint = "https://example.com",
///             UserInfoEndpoint = "https://example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewWorkforce(ctx, "example", &sagemaker.WorkforceArgs{
/// 			WorkforceName: pulumi.String("example"),
/// 			OidcConfig: &sagemaker.WorkforceOidcConfigArgs{
/// 				AuthorizationEndpoint: pulumi.String("https://example.com"),
/// 				ClientId:              pulumi.String("example"),
/// 				ClientSecret:          pulumi.String("example"),
/// 				Issuer:                pulumi.String("https://example.com"),
/// 				JwksUri:               pulumi.String("https://example.com"),
/// 				LogoutEndpoint:        pulumi.String("https://example.com"),
/// 				TokenEndpoint:         pulumi.String("https://example.com"),
/// 				UserInfoEndpoint:      pulumi.String("https://example.com"),
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
/// import com.pulumi.aws.sagemaker.Workforce;
/// import com.pulumi.aws.sagemaker.WorkforceArgs;
/// import com.pulumi.aws.sagemaker.inputs.WorkforceOidcConfigArgs;
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
///         var example = new Workforce("example", WorkforceArgs.builder()
///             .workforceName("example")
///             .oidcConfig(WorkforceOidcConfigArgs.builder()
///                 .authorizationEndpoint("https://example.com")
///                 .clientId("example")
///                 .clientSecret("example")
///                 .issuer("https://example.com")
///                 .jwksUri("https://example.com")
///                 .logoutEndpoint("https://example.com")
///                 .tokenEndpoint("https://example.com")
///                 .userInfoEndpoint("https://example.com")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:Workforce
///     properties:
///       workforceName: example
///       oidcConfig:
///         authorizationEndpoint: https://example.com
///         clientId: example
///         clientSecret: example
///         issuer: https://example.com
///         jwksUri: https://example.com
///         logoutEndpoint: https://example.com
///         tokenEndpoint: https://example.com
///         userInfoEndpoint: https://example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workforces using the `workforce_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workforce:Workforce example example
/// ```
class Workforce extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
  late final pulumi.Output<String> arn;

  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with `oidc_config`. see Cognito Config details below.
  late final pulumi.Output<WorkforceCognitoConfig?> cognitoConfig;

  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with `cognito_config`. see OIDC Config details below.
  late final pulumi.Output<WorkforceOidcConfig?> oidcConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  late final pulumi.Output<WorkforceSourceIpConfig> sourceIpConfig;

  /// The subdomain for your OIDC Identity Provider.
  late final pulumi.Output<String> subdomain;

  /// The name of the Workforce (must be unique).
  late final pulumi.Output<String> workforceName;

  /// configure a workforce using VPC. see Workforce VPC Config details below.
  late final pulumi.Output<WorkforceWorkforceVpcConfig?> workforceVpcConfig;

  /// Creates a new [Workforce].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Workforce]. {@macro pulumi_sagemaker_workforce_workforce_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Workforce(
    String name, {
    WorkforceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/workforce:Workforce',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.cognitoConfig = registerOutput<WorkforceCognitoConfig?>(
      'cognitoConfig',
    );
    this.oidcConfig = registerOutput<WorkforceOidcConfig?>('oidcConfig');
    this.region = registerOutput<String>('region');
    this.sourceIpConfig = registerOutput<WorkforceSourceIpConfig>(
      'sourceIpConfig',
    );
    this.subdomain = registerOutput<String>('subdomain');
    this.workforceName = registerOutput<String>('workforceName');
    this.workforceVpcConfig = registerOutput<WorkforceWorkforceVpcConfig?>(
      'workforceVpcConfig',
    );
  }
}
