import 'package:pulumi/pulumi.dart';
import '../trusted_token_issuer_trusted_token_issuer_configuration/trusted_token_issuer_trusted_token_issuer_configuration.dart';
import 'trusted_token_issuer_args.dart';

/// Resource for managing an AWS SSO Admin Trusted Token Issuer.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ssoadmin.getInstances({});
/// const exampleTrustedTokenIssuer = new aws.ssoadmin.TrustedTokenIssuer("example", {
/// name: "example",
/// instanceArn: example.then(example => example.arns?.[0]),
/// trustedTokenIssuerType: "OIDC_JWT",
/// trustedTokenIssuerConfiguration: {
/// oidcJwtConfiguration: {
/// claimAttributePath: "email",
/// identityStoreAttributePath: "emails.value",
/// issuerUrl: "https://example.com",
/// jwksRetrievalOption: "OPEN_ID_DISCOVERY",
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssoadmin.get_instances()
/// example_trusted_token_issuer = aws.ssoadmin.TrustedTokenIssuer("example",
/// name="example",
/// instance_arn=example.arns[0],
/// trusted_token_issuer_type="OIDC_JWT",
/// trusted_token_issuer_configuration={
/// "oidc_jwt_configuration": {
/// "claim_attribute_path": "email",
/// "identity_store_attribute_path": "emails.value",
/// "issuer_url": "https://example.com",
/// "jwks_retrieval_option": "OPEN_ID_DISCOVERY",
/// },
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
/// var example = Aws.SsoAdmin.GetInstances.Invoke();
///
/// var exampleTrustedTokenIssuer = new Aws.SsoAdmin.TrustedTokenIssuer("example", new()
/// {
/// Name = "example",
/// InstanceArn = example.Apply(getInstancesResult => getInstancesResult.Arns[0]),
/// TrustedTokenIssuerType = "OIDC_JWT",
/// TrustedTokenIssuerConfiguration = new Aws.SsoAdmin.Inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs
/// {
/// OidcJwtConfiguration = new Aws.SsoAdmin.Inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs
/// {
/// ClaimAttributePath = "email",
/// IdentityStoreAttributePath = "emails.value",
/// IssuerUrl = "https://example.com",
/// JwksRetrievalOption = "OPEN_ID_DISCOVERY",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssoadmin"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ssoadmin.GetInstances(ctx, &ssoadmin.GetInstancesArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssoadmin.NewTrustedTokenIssuer(ctx, "example", &ssoadmin.TrustedTokenIssuerArgs{
/// Name:                   pulumi.String("example"),
/// InstanceArn:            pulumi.String(example.Arns[0]),
/// TrustedTokenIssuerType: pulumi.String("OIDC_JWT"),
/// TrustedTokenIssuerConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs{
/// OidcJwtConfiguration: &ssoadmin.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs{
/// ClaimAttributePath:         pulumi.String("email"),
/// IdentityStoreAttributePath: pulumi.String("emails.value"),
/// IssuerUrl:                  pulumi.String("https://example.com"),
/// JwksRetrievalOption:        pulumi.String("OPEN_ID_DISCOVERY"),
/// },
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
/// import com.pulumi.aws.ssoadmin.SsoadminFunctions;
/// import com.pulumi.aws.ssoadmin.inputs.GetInstancesArgs;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuer;
/// import com.pulumi.aws.ssoadmin.TrustedTokenIssuerArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs;
/// import com.pulumi.aws.ssoadmin.inputs.TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs;
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
/// final var example = SsoadminFunctions.getInstances(GetInstancesArgs.builder()
/// .build());
///
/// var exampleTrustedTokenIssuer = new TrustedTokenIssuer("exampleTrustedTokenIssuer", TrustedTokenIssuerArgs.builder()
/// .name("example")
/// .instanceArn(example.arns()[0])
/// .trustedTokenIssuerType("OIDC_JWT")
/// .trustedTokenIssuerConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationArgs.builder()
/// .oidcJwtConfiguration(TrustedTokenIssuerTrustedTokenIssuerConfigurationOidcJwtConfigurationArgs.builder()
/// .claimAttributePath("email")
/// .identityStoreAttributePath("emails.value")
/// .issuerUrl("https://example.com")
/// .jwksRetrievalOption("OPEN_ID_DISCOVERY")
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleTrustedTokenIssuer:
/// type: aws:ssoadmin:TrustedTokenIssuer
/// name: example
/// properties:
/// name: example
/// instanceArn: ${example.arns[0]}
/// trustedTokenIssuerType: OIDC_JWT
/// trustedTokenIssuerConfiguration:
/// oidcJwtConfiguration:
/// claimAttributePath: email
/// identityStoreAttributePath: emails.value
/// issuerUrl: https://example.com
/// jwksRetrievalOption: OPEN_ID_DISCOVERY
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ssoadmin:getInstances
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import SSO Admin Trusted Token Issuer using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer example arn:aws:sso::123456789012:trustedTokenIssuer/ssoins-lu1ye3gew4mbc7ju/tti-2657c556-9707-11ee-b9d1-0242ac120002
/// ```
class TrustedTokenIssuer extends CustomResource {
  /// ARN of the trusted token issuer.
  late final Output<String> arn;

  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  late final Output<String?> clientToken;

  /// ARN of the instance of IAM Identity Center.
  late final Output<String> instanceArn;

  /// Name of the trusted token issuer.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A block that specifies settings that apply to the trusted token issuer, these change depending on the type you specify in <span pulumi-lang-nodejs="`trustedTokenIssuerType`" pulumi-lang-dotnet="`TrustedTokenIssuerType`" pulumi-lang-go="`trustedTokenIssuerType`" pulumi-lang-python="`trusted_token_issuer_type`" pulumi-lang-yaml="`trustedTokenIssuerType`" pulumi-lang-java="`trustedTokenIssuerType`">`trusted_token_issuer_type`</span>. Documented below.
  late final Output<TrustedTokenIssuerTrustedTokenIssuerConfiguration>
      trustedTokenIssuerConfiguration;

  /// Specifies the type of the trusted token issuer. Valid values are `OIDC_JWT`
  ///
  /// The following arguments are optional:
  late final Output<String> trustedTokenIssuerType;

  TrustedTokenIssuer(
    String name, {
    TrustedTokenIssuerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssoadmin/trustedTokenIssuer:TrustedTokenIssuer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.clientToken = Output.createUnknown<String?>();
    this.instanceArn = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.trustedTokenIssuerConfiguration = Output.createUnknown<
        TrustedTokenIssuerTrustedTokenIssuerConfiguration>();
    this.trustedTokenIssuerType = Output.createUnknown<String>();
  }
}
