import 'package:pulumi/pulumi.dart';
import '../trust_provider_device_options/trust_provider_device_options.dart';
import '../trust_provider_native_application_oidc_options/trust_provider_native_application_oidc_options.dart';
import '../trust_provider_oidc_options/trust_provider_oidc_options.dart';
import '../trust_provider_sse_specification/trust_provider_sse_specification.dart';
import 'trust_provider_args.dart';

/// Resource for managing a Verified Access Trust Provider.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.TrustProvider("example", {
/// policyReferenceName: "example",
/// trustProviderType: "user",
/// userTrustProviderType: "iam-identity-center",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.TrustProvider("example",
/// policy_reference_name="example",
/// trust_provider_type="user",
/// user_trust_provider_type="iam-identity-center")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.VerifiedAccess.TrustProvider("example", new()
/// {
/// PolicyReferenceName = "example",
/// TrustProviderType = "user",
/// UserTrustProviderType = "iam-identity-center",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := verifiedaccess.NewTrustProvider(ctx, "example", &verifiedaccess.TrustProviderArgs{
/// PolicyReferenceName:   pulumi.String("example"),
/// TrustProviderType:     pulumi.String("user"),
/// UserTrustProviderType: pulumi.String("iam-identity-center"),
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
/// import com.pulumi.aws.verifiedaccess.TrustProvider;
/// import com.pulumi.aws.verifiedaccess.TrustProviderArgs;
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
/// var example = new TrustProvider("example", TrustProviderArgs.builder()
/// .policyReferenceName("example")
/// .trustProviderType("user")
/// .userTrustProviderType("iam-identity-center")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:verifiedaccess:TrustProvider
/// properties:
/// policyReferenceName: example
/// trustProviderType: user
/// userTrustProviderType: iam-identity-center
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Transfer Workflows using the  <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/trustProvider:TrustProvider example vatp-8012925589
/// ```
class TrustProvider extends CustomResource {
  /// A description for the AWS Verified Access trust provider.
  late final Output<String?> description;

  /// A block of options for device identity based trust providers.
  late final Output<TrustProviderDeviceOptions?> deviceOptions;

  /// The type of device-based trust provider.
  late final Output<String?> deviceTrustProviderType;

  /// The OpenID Connect details for an Native Application OIDC, user-identity based trust provider.
  late final Output<TrustProviderNativeApplicationOidcOptions?>
      nativeApplicationOidcOptions;

  /// The OpenID Connect details for an oidc-type, user-identity based trust provider.
  late final Output<TrustProviderOidcOptions?> oidcOptions;

  /// The identifier to be used when working with policy rules.
  late final Output<String> policyReferenceName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<TrustProviderSseSpecification> sseSpecification;

  /// Key-value mapping of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;
  late final Output<Map<String, String>> tagsAll;

  /// The type of trust provider can be either user or device-based.
  ///
  /// The following arguments are optional:
  late final Output<String> trustProviderType;

  /// The type of user-based trust provider.
  late final Output<String?> userTrustProviderType;

  TrustProvider(
    String name, {
    TrustProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/trustProvider:TrustProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.deviceOptions =
        registerOutput<TrustProviderDeviceOptions?>('deviceOptions');
    this.deviceTrustProviderType =
        registerOutput<String?>('deviceTrustProviderType');
    this.nativeApplicationOidcOptions =
        registerOutput<TrustProviderNativeApplicationOidcOptions?>(
            'nativeApplicationOidcOptions');
    this.oidcOptions = registerOutput<TrustProviderOidcOptions?>('oidcOptions');
    this.policyReferenceName = registerOutput<String>('policyReferenceName');
    this.region = registerOutput<String>('region');
    this.sseSpecification =
        registerOutput<TrustProviderSseSpecification>('sseSpecification');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustProviderType = registerOutput<String>('trustProviderType');
    this.userTrustProviderType =
        registerOutput<String?>('userTrustProviderType');
  }
}
