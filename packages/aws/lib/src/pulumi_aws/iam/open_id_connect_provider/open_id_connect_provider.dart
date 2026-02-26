import 'package:pulumi/pulumi.dart';
import 'open_id_connect_provider_args.dart';

/// Provides an IAM OpenID Connect provider.
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
/// const _default = new aws.iam.OpenIdConnectProvider("default", {
/// url: "https://accounts.google.com",
/// clientIdLists: ["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
/// thumbprintLists: ["cf23df2207d99a74fbe169e3eba035e633b65d94"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.iam.OpenIdConnectProvider("default",
/// url="https://accounts.google.com",
/// client_id_lists=["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
/// thumbprint_lists=["cf23df2207d99a74fbe169e3eba035e633b65d94"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Iam.OpenIdConnectProvider("default", new()
/// {
/// Url = "https://accounts.google.com",
/// ClientIdLists = new[]
/// {
/// "266362248691-342342xasdasdasda-apps.googleusercontent.com",
/// },
/// ThumbprintLists = new[]
/// {
/// "cf23df2207d99a74fbe169e3eba035e633b65d94",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewOpenIdConnectProvider(ctx, "default", &iam.OpenIdConnectProviderArgs{
/// Url: pulumi.String("https://accounts.google.com"),
/// ClientIdLists: pulumi.StringArray{
/// pulumi.String("266362248691-342342xasdasdasda-apps.googleusercontent.com"),
/// },
/// ThumbprintLists: pulumi.StringArray{
/// pulumi.String("cf23df2207d99a74fbe169e3eba035e633b65d94"),
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
/// import com.pulumi.aws.iam.OpenIdConnectProvider;
/// import com.pulumi.aws.iam.OpenIdConnectProviderArgs;
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
/// var default_ = new OpenIdConnectProvider("default", OpenIdConnectProviderArgs.builder()
/// .url("https://accounts.google.com")
/// .clientIdLists("266362248691-342342xasdasdasda-apps.googleusercontent.com")
/// .thumbprintLists("cf23df2207d99a74fbe169e3eba035e633b65d94")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:iam:OpenIdConnectProvider
/// properties:
/// url: https://accounts.google.com
/// clientIdLists:
/// - 266362248691-342342xasdasdasda-apps.googleusercontent.com
/// thumbprintLists:
/// - cf23df2207d99a74fbe169e3eba035e633b65d94
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Without A Thumbprint
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.iam.OpenIdConnectProvider("default", {
/// url: "https://accounts.google.com",
/// clientIdLists: ["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.iam.OpenIdConnectProvider("default",
/// url="https://accounts.google.com",
/// client_id_lists=["266362248691-342342xasdasdasda-apps.googleusercontent.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var @default = new Aws.Iam.OpenIdConnectProvider("default", new()
/// {
/// Url = "https://accounts.google.com",
/// ClientIdLists = new[]
/// {
/// "266362248691-342342xasdasdasda-apps.googleusercontent.com",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := iam.NewOpenIdConnectProvider(ctx, "default", &iam.OpenIdConnectProviderArgs{
/// Url: pulumi.String("https://accounts.google.com"),
/// ClientIdLists: pulumi.StringArray{
/// pulumi.String("266362248691-342342xasdasdasda-apps.googleusercontent.com"),
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
/// import com.pulumi.aws.iam.OpenIdConnectProvider;
/// import com.pulumi.aws.iam.OpenIdConnectProviderArgs;
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
/// var default_ = new OpenIdConnectProvider("default", OpenIdConnectProviderArgs.builder()
/// .url("https://accounts.google.com")
/// .clientIdLists("266362248691-342342xasdasdasda-apps.googleusercontent.com")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:iam:OpenIdConnectProvider
/// properties:
/// url: https://accounts.google.com
/// clientIdLists:
/// - 266362248691-342342xasdasdasda-apps.googleusercontent.com
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the IAM OpenID Connect provider.
///
///
/// Using `pulumi import`, import IAM OpenID Connect Providers using the <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:iam/openIdConnectProvider:OpenIdConnectProvider default arn:aws:iam::123456789012:oidc-provider/accounts.google.com
/// ```
class OpenIdConnectProvider extends CustomResource {
  /// ARN assigned by AWS for this provider.
  late final Output<String> arn;

  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the <span pulumi-lang-nodejs="`clientId`" pulumi-lang-dotnet="`ClientId`" pulumi-lang-go="`clientId`" pulumi-lang-python="`client_id`" pulumi-lang-yaml="`clientId`" pulumi-lang-java="`clientId`">`client_id`</span> parameter in OAuth requests.
  late final Output<List<String>> clientIdLists;

  /// Map of resource tags for the IAM OIDC provider. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is retained in the configuration but not used for verification. For other IdPs, if no <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span> is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an <span pulumi-lang-nodejs="`aws.iam.OpenIdConnectProvider`" pulumi-lang-dotnet="`aws.iam.OpenIdConnectProvider`" pulumi-lang-go="`iam.OpenIdConnectProvider`" pulumi-lang-python="`iam.OpenIdConnectProvider`" pulumi-lang-yaml="`aws.iam.OpenIdConnectProvider`" pulumi-lang-java="`aws.iam.OpenIdConnectProvider`">`aws.iam.OpenIdConnectProvider`</span> without a <span pulumi-lang-nodejs="`thumbprintList`" pulumi-lang-dotnet="`ThumbprintList`" pulumi-lang-go="`thumbprintList`" pulumi-lang-python="`thumbprint_list`" pulumi-lang-yaml="`thumbprintList`" pulumi-lang-java="`thumbprintList`">`thumbprint_list`</span>.
  late final Output<List<String>> thumbprintLists;

  /// URL of the identity provider, corresponding to the <span pulumi-lang-nodejs="`iss`" pulumi-lang-dotnet="`Iss`" pulumi-lang-go="`iss`" pulumi-lang-python="`iss`" pulumi-lang-yaml="`iss`" pulumi-lang-java="`iss`">`iss`</span> claim.
  late final Output<String> url;

  OpenIdConnectProvider(
    String name, {
    OpenIdConnectProviderArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:iam/openIdConnectProvider:OpenIdConnectProvider',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clientIdLists = registerOutput<List<String>>('clientIdLists');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.thumbprintLists = registerOutput<List<String>>('thumbprintLists');
    this.url = registerOutput<String>('url');
  }
}
