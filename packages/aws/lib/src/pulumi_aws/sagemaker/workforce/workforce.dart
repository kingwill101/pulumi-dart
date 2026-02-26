import 'package:pulumi/pulumi.dart';
import '../workforce_cognito_config/workforce_cognito_config.dart';
import '../workforce_oidc_config/workforce_oidc_config.dart';
import '../workforce_source_ip_config/workforce_source_ip_config.dart';
import '../workforce_workforce_vpc_config/workforce_workforce_vpc_config.dart';
import 'workforce_args.dart';

/// Provides a SageMaker AI Workforce resource.
///
/// ## Example Usage
///
/// ### Cognito Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleUserPool = new aws.cognito.UserPool("example", {name: "example"});
/// const exampleUserPoolClient = new aws.cognito.UserPoolClient("example", {
/// name: "example",
/// generateSecret: true,
/// userPoolId: exampleUserPool.id,
/// });
/// const exampleUserPoolDomain = new aws.cognito.UserPoolDomain("example", {
/// domain: "example",
/// userPoolId: exampleUserPool.id,
/// });
/// const example = new aws.sagemaker.Workforce("example", {
/// workforceName: "example",
/// cognitoConfig: {
/// clientId: exampleUserPoolClient.id,
/// userPool: exampleUserPoolDomain.userPoolId,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_user_pool = aws.cognito.UserPool("example", name="example")
/// example_user_pool_client = aws.cognito.UserPoolClient("example",
/// name="example",
/// generate_secret=True,
/// user_pool_id=example_user_pool.id)
/// example_user_pool_domain = aws.cognito.UserPoolDomain("example",
/// domain="example",
/// user_pool_id=example_user_pool.id)
/// example = aws.sagemaker.Workforce("example",
/// workforce_name="example",
/// cognito_config={
/// "client_id": example_user_pool_client.id,
/// "user_pool": example_user_pool_domain.user_pool_id,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleUserPool = new Aws.Cognito.UserPool("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleUserPoolClient = new Aws.Cognito.UserPoolClient("example", new()
/// {
/// Name = "example",
/// GenerateSecret = true,
/// UserPoolId = exampleUserPool.Id,
/// });
///
/// var exampleUserPoolDomain = new Aws.Cognito.UserPoolDomain("example", new()
/// {
/// Domain = "example",
/// UserPoolId = exampleUserPool.Id,
/// });
///
/// var example = new Aws.Sagemaker.Workforce("example", new()
/// {
/// WorkforceName = "example",
/// CognitoConfig = new Aws.Sagemaker.Inputs.WorkforceCognitoConfigArgs
/// {
/// ClientId = exampleUserPoolClient.Id,
/// UserPool = exampleUserPoolDomain.UserPoolId,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cognito"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleUserPool, err := cognito.NewUserPool(ctx, "example", &cognito.UserPoolArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleUserPoolClient, err := cognito.NewUserPoolClient(ctx, "example", &cognito.UserPoolClientArgs{
/// Name:           pulumi.String("example"),
/// GenerateSecret: pulumi.Bool(true),
/// UserPoolId:     exampleUserPool.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// exampleUserPoolDomain, err := cognito.NewUserPoolDomain(ctx, "example", &cognito.UserPoolDomainArgs{
/// Domain:     pulumi.String("example"),
/// UserPoolId: exampleUserPool.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = sagemaker.NewWorkforce(ctx, "example", &sagemaker.WorkforceArgs{
/// WorkforceName: pulumi.String("example"),
/// CognitoConfig: &sagemaker.WorkforceCognitoConfigArgs{
/// ClientId: exampleUserPoolClient.ID(),
/// UserPool: exampleUserPoolDomain.UserPoolId,
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var exampleUserPool = new UserPool("exampleUserPool", UserPoolArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleUserPoolClient = new UserPoolClient("exampleUserPoolClient", UserPoolClientArgs.builder()
/// .name("example")
/// .generateSecret(true)
/// .userPoolId(exampleUserPool.id())
/// .build());
///
/// var exampleUserPoolDomain = new UserPoolDomain("exampleUserPoolDomain", UserPoolDomainArgs.builder()
/// .domain("example")
/// .userPoolId(exampleUserPool.id())
/// .build());
///
/// var example = new Workforce("example", WorkforceArgs.builder()
/// .workforceName("example")
/// .cognitoConfig(WorkforceCognitoConfigArgs.builder()
/// .clientId(exampleUserPoolClient.id())
/// .userPool(exampleUserPoolDomain.userPoolId())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:Workforce
/// properties:
/// workforceName: example
/// cognitoConfig:
/// clientId: ${exampleUserPoolClient.id}
/// userPool: ${exampleUserPoolDomain.userPoolId}
/// exampleUserPool:
/// type: aws:cognito:UserPool
/// name: example
/// properties:
/// name: example
/// exampleUserPoolClient:
/// type: aws:cognito:UserPoolClient
/// name: example
/// properties:
/// name: example
/// generateSecret: true
/// userPoolId: ${exampleUserPool.id}
/// exampleUserPoolDomain:
/// type: aws:cognito:UserPoolDomain
/// name: example
/// properties:
/// domain: example
/// userPoolId: ${exampleUserPool.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Oidc Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Workforce("example", {
/// workforceName: "example",
/// oidcConfig: {
/// authorizationEndpoint: "https://example.com",
/// clientId: "example",
/// clientSecret: "example",
/// issuer: "https://example.com",
/// jwksUri: "https://example.com",
/// logoutEndpoint: "https://example.com",
/// tokenEndpoint: "https://example.com",
/// userInfoEndpoint: "https://example.com",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Workforce("example",
/// workforce_name="example",
/// oidc_config={
/// "authorization_endpoint": "https://example.com",
/// "client_id": "example",
/// "client_secret": "example",
/// "issuer": "https://example.com",
/// "jwks_uri": "https://example.com",
/// "logout_endpoint": "https://example.com",
/// "token_endpoint": "https://example.com",
/// "user_info_endpoint": "https://example.com",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Sagemaker.Workforce("example", new()
/// {
/// WorkforceName = "example",
/// OidcConfig = new Aws.Sagemaker.Inputs.WorkforceOidcConfigArgs
/// {
/// AuthorizationEndpoint = "https://example.com",
/// ClientId = "example",
/// ClientSecret = "example",
/// Issuer = "https://example.com",
/// JwksUri = "https://example.com",
/// LogoutEndpoint = "https://example.com",
/// TokenEndpoint = "https://example.com",
/// UserInfoEndpoint = "https://example.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewWorkforce(ctx, "example", &sagemaker.WorkforceArgs{
/// WorkforceName: pulumi.String("example"),
/// OidcConfig: &sagemaker.WorkforceOidcConfigArgs{
/// AuthorizationEndpoint: pulumi.String("https://example.com"),
/// ClientId:              pulumi.String("example"),
/// ClientSecret:          pulumi.String("example"),
/// Issuer:                pulumi.String("https://example.com"),
/// JwksUri:               pulumi.String("https://example.com"),
/// LogoutEndpoint:        pulumi.String("https://example.com"),
/// TokenEndpoint:         pulumi.String("https://example.com"),
/// UserInfoEndpoint:      pulumi.String("https://example.com"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Workforce("example", WorkforceArgs.builder()
/// .workforceName("example")
/// .oidcConfig(WorkforceOidcConfigArgs.builder()
/// .authorizationEndpoint("https://example.com")
/// .clientId("example")
/// .clientSecret("example")
/// .issuer("https://example.com")
/// .jwksUri("https://example.com")
/// .logoutEndpoint("https://example.com")
/// .tokenEndpoint("https://example.com")
/// .userInfoEndpoint("https://example.com")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:Workforce
/// properties:
/// workforceName: example
/// oidcConfig:
/// authorizationEndpoint: https://example.com
/// clientId: example
/// clientSecret: example
/// issuer: https://example.com
/// jwksUri: https://example.com
/// logoutEndpoint: https://example.com
/// tokenEndpoint: https://example.com
/// userInfoEndpoint: https://example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SageMaker AI Workforces using the <span pulumi-lang-nodejs="`workforceName`" pulumi-lang-dotnet="`WorkforceName`" pulumi-lang-go="`workforceName`" pulumi-lang-python="`workforce_name`" pulumi-lang-yaml="`workforceName`" pulumi-lang-java="`workforceName`">`workforce_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/workforce:Workforce example example
/// ```
class Workforce extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Workforce.
  late final Output<String> arn;

  /// Use this parameter to configure an Amazon Cognito private workforce. A single Cognito workforce is created using and corresponds to a single Amazon Cognito user pool. Conflicts with <span pulumi-lang-nodejs="`oidcConfig`" pulumi-lang-dotnet="`OidcConfig`" pulumi-lang-go="`oidcConfig`" pulumi-lang-python="`oidc_config`" pulumi-lang-yaml="`oidcConfig`" pulumi-lang-java="`oidcConfig`">`oidc_config`</span>. see Cognito Config details below.
  late final Output<WorkforceCognitoConfig?> cognitoConfig;

  /// Use this parameter to configure a private workforce using your own OIDC Identity Provider. Conflicts with <span pulumi-lang-nodejs="`cognitoConfig`" pulumi-lang-dotnet="`CognitoConfig`" pulumi-lang-go="`cognitoConfig`" pulumi-lang-python="`cognito_config`" pulumi-lang-yaml="`cognitoConfig`" pulumi-lang-java="`cognitoConfig`">`cognito_config`</span>. see OIDC Config details below.
  late final Output<WorkforceOidcConfig?> oidcConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of IP address ranges Used to create an allow list of IP addresses for a private workforce. By default, a workforce isn't restricted to specific IP addresses. see Source Ip Config details below.
  late final Output<WorkforceSourceIpConfig> sourceIpConfig;

  /// The subdomain for your OIDC Identity Provider.
  late final Output<String> subdomain;

  /// The name of the Workforce (must be unique).
  late final Output<String> workforceName;

  /// configure a workforce using VPC. see Workforce VPC Config details below.
  late final Output<WorkforceWorkforceVpcConfig?> workforceVpcConfig;

  Workforce(
    String name, {
    WorkforceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/workforce:Workforce',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.cognitoConfig =
        registerOutput<WorkforceCognitoConfig?>('cognitoConfig');
    this.oidcConfig = registerOutput<WorkforceOidcConfig?>('oidcConfig');
    this.region = registerOutput<String>('region');
    this.sourceIpConfig =
        registerOutput<WorkforceSourceIpConfig>('sourceIpConfig');
    this.subdomain = registerOutput<String>('subdomain');
    this.workforceName = registerOutput<String>('workforceName');
    this.workforceVpcConfig =
        registerOutput<WorkforceWorkforceVpcConfig?>('workforceVpcConfig');
  }
}
