import 'package:pulumi/pulumi.dart';
import '../identity_pool_cognito_identity_provider/identity_pool_cognito_identity_provider.dart';
import 'identity_pool_args.dart';

/// Provides an AWS Cognito Identity Pool.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const _default = new aws.iam.SamlProvider("default", {
/// name: "my-saml-provider",
/// samlMetadataDocument: std.file({
/// input: "saml-metadata.xml",
/// }).then(invoke => invoke.result),
/// });
/// const main = new aws.cognito.IdentityPool("main", {
/// identityPoolName: "identity pool",
/// allowUnauthenticatedIdentities: false,
/// allowClassicFlow: false,
/// cognitoIdentityProviders: [
/// {
/// clientId: "6lhlkkfbfb4q5kpp90urffae",
/// providerName: "cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ",
/// serverSideTokenCheck: false,
/// },
/// {
/// clientId: "7kodkvfqfb4qfkp39eurffae",
/// providerName: "cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu",
/// serverSideTokenCheck: false,
/// },
/// ],
/// supportedLoginProviders: {
/// "graph.facebook.com": "7346241598935552",
/// "accounts.google.com": "123456789012.apps.googleusercontent.com",
/// },
/// samlProviderArns: [_default.arn],
/// openidConnectProviderArns: ["arn:aws:iam::123456789012:oidc-provider/id.example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// default = aws.iam.SamlProvider("default",
/// name="my-saml-provider",
/// saml_metadata_document=std.file(input="saml-metadata.xml").result)
/// main = aws.cognito.IdentityPool("main",
/// identity_pool_name="identity pool",
/// allow_unauthenticated_identities=False,
/// allow_classic_flow=False,
/// cognito_identity_providers=[
/// {
/// "client_id": "6lhlkkfbfb4q5kpp90urffae",
/// "provider_name": "cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ",
/// "server_side_token_check": False,
/// },
/// {
/// "client_id": "7kodkvfqfb4qfkp39eurffae",
/// "provider_name": "cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu",
/// "server_side_token_check": False,
/// },
/// ],
/// supported_login_providers={
/// "graph.facebook.com": "7346241598935552",
/// "accounts.google.com": "123456789012.apps.googleusercontent.com",
/// },
/// saml_provider_arns=[default.arn],
/// openid_connect_provider_arns=["arn:aws:iam::123456789012:oidc-provider/id.example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Iam.SamlProvider("default", new()
/// {
/// Name = "my-saml-provider",
/// SamlMetadataDocument = Std.File.Invoke(new()
/// {
/// Input = "saml-metadata.xml",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// var main = new Aws.Cognito.IdentityPool("main", new()
/// {
/// IdentityPoolName = "identity pool",
/// AllowUnauthenticatedIdentities = false,
/// AllowClassicFlow = false,
/// CognitoIdentityProviders = new[]
/// {
/// new Aws.Cognito.Inputs.IdentityPoolCognitoIdentityProviderArgs
/// {
/// ClientId = "6lhlkkfbfb4q5kpp90urffae",
/// ProviderName = "cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ",
/// ServerSideTokenCheck = false,
/// },
/// new Aws.Cognito.Inputs.IdentityPoolCognitoIdentityProviderArgs
/// {
/// ClientId = "7kodkvfqfb4qfkp39eurffae",
/// ProviderName = "cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu",
/// ServerSideTokenCheck = false,
/// },
/// },
/// SupportedLoginProviders =
/// {
/// { "graph.facebook.com", "7346241598935552" },
/// { "accounts.google.com", "123456789012.apps.googleusercontent.com" },
/// },
/// SamlProviderArns = new[]
/// {
/// @default.Arn,
/// },
/// OpenidConnectProviderArns = new[]
/// {
/// "arn:aws:iam::123456789012:oidc-provider/id.example.com",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "saml-metadata.xml",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _default, err := iam.NewSamlProvider(ctx, "default", &iam.SamlProviderArgs{
/// Name:                 pulumi.String("my-saml-provider"),
/// SamlMetadataDocument: pulumi.String(invokeFile.Result),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cognito.NewIdentityPool(ctx, "main", &cognito.IdentityPoolArgs{
/// IdentityPoolName:               pulumi.String("identity pool"),
/// AllowUnauthenticatedIdentities: pulumi.Bool(false),
/// AllowClassicFlow:               pulumi.Bool(false),
/// CognitoIdentityProviders: cognito.IdentityPoolCognitoIdentityProviderArray{
/// &cognito.IdentityPoolCognitoIdentityProviderArgs{
/// ClientId:             pulumi.String("6lhlkkfbfb4q5kpp90urffae"),
/// ProviderName:         pulumi.String("cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ"),
/// ServerSideTokenCheck: pulumi.Bool(false),
/// },
/// &cognito.IdentityPoolCognitoIdentityProviderArgs{
/// ClientId:             pulumi.String("7kodkvfqfb4qfkp39eurffae"),
/// ProviderName:         pulumi.String("cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu"),
/// ServerSideTokenCheck: pulumi.Bool(false),
/// },
/// },
/// SupportedLoginProviders: pulumi.StringMap{
/// "graph.facebook.com":  pulumi.String("7346241598935552"),
/// "accounts.google.com": pulumi.String("123456789012.apps.googleusercontent.com"),
/// },
/// SamlProviderArns: pulumi.StringArray{
/// _default.Arn,
/// },
/// OpenidConnectProviderArns: pulumi.StringArray{
/// pulumi.String("arn:aws:iam::123456789012:oidc-provider/id.example.com"),
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
/// import com.pulumi.aws.iam.SamlProvider;
/// import com.pulumi.aws.iam.SamlProviderArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.aws.cognito.IdentityPool;
/// import com.pulumi.aws.cognito.IdentityPoolArgs;
/// import com.pulumi.aws.cognito.inputs.IdentityPoolCognitoIdentityProviderArgs;
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
/// var default_ = new SamlProvider("default", SamlProviderArgs.builder()
/// .name("my-saml-provider")
/// .samlMetadataDocument(StdFunctions.file(FileArgs.builder()
/// .input("saml-metadata.xml")
/// .build()).result())
/// .build());
///
/// var main = new IdentityPool("main", IdentityPoolArgs.builder()
/// .identityPoolName("identity pool")
/// .allowUnauthenticatedIdentities(false)
/// .allowClassicFlow(false)
/// .cognitoIdentityProviders(
/// IdentityPoolCognitoIdentityProviderArgs.builder()
/// .clientId("6lhlkkfbfb4q5kpp90urffae")
/// .providerName("cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ")
/// .serverSideTokenCheck(false)
/// .build(),
/// IdentityPoolCognitoIdentityProviderArgs.builder()
/// .clientId("7kodkvfqfb4qfkp39eurffae")
/// .providerName("cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu")
/// .serverSideTokenCheck(false)
/// .build())
/// .supportedLoginProviders(Map.ofEntries(
/// Map.entry("graph.facebook.com", "7346241598935552"),
/// Map.entry("accounts.google.com", "123456789012.apps.googleusercontent.com")
/// ))
/// .samlProviderArns(default_.arn())
/// .openidConnectProviderArns("arn:aws:iam::123456789012:oidc-provider/id.example.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:iam:SamlProvider
/// properties:
/// name: my-saml-provider
/// samlMetadataDocument:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: saml-metadata.xml
/// return: result
/// main:
/// type: aws:cognito:IdentityPool
/// properties:
/// identityPoolName: identity pool
/// allowUnauthenticatedIdentities: false
/// allowClassicFlow: false
/// cognitoIdentityProviders:
/// - clientId: 6lhlkkfbfb4q5kpp90urffae
/// providerName: cognito-idp.us-east-1.amazonaws.com/us-east-1_Tv0493apJ
/// serverSideTokenCheck: false
/// - clientId: 7kodkvfqfb4qfkp39eurffae
/// providerName: cognito-idp.us-east-1.amazonaws.com/eu-west-1_Zr231apJu
/// serverSideTokenCheck: false
/// supportedLoginProviders:
/// graph.facebook.com: '7346241598935552'
/// accounts.google.com: 123456789012.apps.googleusercontent.com
/// samlProviderArns:
/// - ${default.arn}
/// openidConnectProviderArns:
/// - arn:aws:iam::123456789012:oidc-provider/id.example.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Cognito Identity Pool using its ID. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/identityPool:IdentityPool mypool us-west-2:1a234567-8901-234b-5cde-f6789g01h2i3
/// ```
class IdentityPool extends CustomResource {
  /// Enables or disables the classic / basic authentication flow. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> allowClassicFlow;

  /// Whether the identity pool supports unauthenticated logins or not.
  late final Output<bool?> allowUnauthenticatedIdentities;

  /// The ARN of the identity pool.
  late final Output<String> arn;

  /// An array of Amazon Cognito Identity user pools and their client IDs.
  late final Output<List<IdentityPoolCognitoIdentityProvider>?>
      cognitoIdentityProviders;

  /// The "domain" by which Cognito will refer to your users. This name acts as a placeholder that allows your
  /// backend and the Cognito service to communicate about the developer provider.
  late final Output<String?> developerProviderName;

  /// The Cognito Identity Pool name.
  late final Output<String> identityPoolName;

  /// Set of OpendID Connect provider ARNs.
  late final Output<List<String>?> openidConnectProviderArns;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// An array of Amazon Resource Names (ARNs) of the SAML provider for your identity.
  late final Output<List<String>?> samlProviderArns;

  /// Key-Value pairs mapping provider names to provider app IDs.
  late final Output<Map<String, String>?> supportedLoginProviders;

  /// A map of tags to assign to the Identity Pool. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  IdentityPool(
    String name, {
    IdentityPoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cognito/identityPool:IdentityPool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowClassicFlow = registerOutput<bool?>('allowClassicFlow');
    this.allowUnauthenticatedIdentities =
        registerOutput<bool?>('allowUnauthenticatedIdentities');
    this.arn = registerOutput<String>('arn');
    this.cognitoIdentityProviders =
        registerOutput<List<IdentityPoolCognitoIdentityProvider>?>(
            'cognitoIdentityProviders');
    this.developerProviderName =
        registerOutput<String?>('developerProviderName');
    this.identityPoolName = registerOutput<String>('identityPoolName');
    this.openidConnectProviderArns =
        registerOutput<List<String>?>('openidConnectProviderArns');
    this.region = registerOutput<String>('region');
    this.samlProviderArns = registerOutput<List<String>?>('samlProviderArns');
    this.supportedLoginProviders =
        registerOutput<Map<String, String>?>('supportedLoginProviders');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
