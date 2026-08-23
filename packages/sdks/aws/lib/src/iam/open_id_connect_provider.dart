import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_provider_args.dart';
import 'open_id_connect_provider_state.dart';

/// Provides an IAM OpenID Connect provider.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.iam.OpenIdConnectProvider("default", {
///     url: "https://accounts.google.com",
///     clientIdLists: ["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
///     thumbprintLists: ["cf23df2207d99a74fbe169e3eba035e633b65d94"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.iam.OpenIdConnectProvider("default",
///     url="https://accounts.google.com",
///     client_id_lists=["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
///     thumbprint_lists=["cf23df2207d99a74fbe169e3eba035e633b65d94"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Iam.OpenIdConnectProvider("default", new()
///     {
///         Url = "https://accounts.google.com",
///         ClientIdLists = new[]
///         {
///             "266362248691-342342xasdasdasda-apps.googleusercontent.com",
///         },
///         ThumbprintLists = new[]
///         {
///             "cf23df2207d99a74fbe169e3eba035e633b65d94",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewOpenIdConnectProvider(ctx, "default", &iam.OpenIdConnectProviderArgs{
/// 			Url: pulumi.String("https://accounts.google.com"),
/// 			ClientIdLists: pulumi.StringArray{
/// 				pulumi.String("266362248691-342342xasdasdasda-apps.googleusercontent.com"),
/// 			},
/// 			ThumbprintLists: pulumi.StringArray{
/// 				pulumi.String("cf23df2207d99a74fbe169e3eba035e633b65d94"),
/// 			},
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
/// resource "aws_iam_openidconnectprovider" "default" {
///   url              = "https://accounts.google.com"
///   client_id_lists  = ["266362248691-342342xasdasdasda-apps.googleusercontent.com"]
///   thumbprint_lists = ["cf23df2207d99a74fbe169e3eba035e633b65d94"]
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
///         var default_ = new OpenIdConnectProvider("default", OpenIdConnectProviderArgs.builder()
///             .url("https://accounts.google.com")
///             .clientIdLists("266362248691-342342xasdasdasda-apps.googleusercontent.com")
///             .thumbprintLists("cf23df2207d99a74fbe169e3eba035e633b65d94")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:iam:OpenIdConnectProvider
///     properties:
///       url: https://accounts.google.com
///       clientIdLists:
///         - 266362248691-342342xasdasdasda-apps.googleusercontent.com
///       thumbprintLists:
///         - cf23df2207d99a74fbe169e3eba035e633b65d94
/// ```
///
///
/// ### Without A Thumbprint
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.iam.OpenIdConnectProvider("default", {
///     url: "https://accounts.google.com",
///     clientIdLists: ["266362248691-342342xasdasdasda-apps.googleusercontent.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.iam.OpenIdConnectProvider("default",
///     url="https://accounts.google.com",
///     client_id_lists=["266362248691-342342xasdasdasda-apps.googleusercontent.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.Iam.OpenIdConnectProvider("default", new()
///     {
///         Url = "https://accounts.google.com",
///         ClientIdLists = new[]
///         {
///             "266362248691-342342xasdasdasda-apps.googleusercontent.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := iam.NewOpenIdConnectProvider(ctx, "default", &iam.OpenIdConnectProviderArgs{
/// 			Url: pulumi.String("https://accounts.google.com"),
/// 			ClientIdLists: pulumi.StringArray{
/// 				pulumi.String("266362248691-342342xasdasdasda-apps.googleusercontent.com"),
/// 			},
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
/// resource "aws_iam_openidconnectprovider" "default" {
///   url             = "https://accounts.google.com"
///   client_id_lists = ["266362248691-342342xasdasdasda-apps.googleusercontent.com"]
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
///         var default_ = new OpenIdConnectProvider("default", OpenIdConnectProviderArgs.builder()
///             .url("https://accounts.google.com")
///             .clientIdLists("266362248691-342342xasdasdasda-apps.googleusercontent.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:iam:OpenIdConnectProvider
///     properties:
///       url: https://accounts.google.com
///       clientIdLists:
///         - 266362248691-342342xasdasdasda-apps.googleusercontent.com
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the IAM OpenID Connect provider.
///
///
/// Using `pulumi import`, import IAM OpenID Connect Providers using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:iam/openIdConnectProvider:OpenIdConnectProvider default arn:aws:iam::123456789012:oidc-provider/accounts.google.com
/// ```
class OpenIdConnectProvider extends pulumi.CustomResource {
  /// ARN assigned by AWS for this provider.
  late final pulumi.Output<String> arn;
  /// List of client IDs (audiences) that identify the application registered with the OpenID Connect provider. This is the value sent as the `clientId` parameter in OAuth requests.
  late final pulumi.Output<List<String>> clientIdLists;
  /// Map of resource tags for the IAM OIDC provider. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of server certificate thumbprints for the OpenID Connect (OIDC) identity provider's server certificate(s). For certain OIDC identity providers (e.g., Auth0, GitHub, GitLab, Google, or those using an Amazon S3-hosted JWKS endpoint), AWS relies on its own library of trusted root certificate authorities (CAs) for validation instead of using any configured thumbprints. In these cases, any configured `thumbprintList` is retained in the configuration but not used for verification. For other IdPs, if no `thumbprintList` is provided, IAM automatically retrieves and uses the top intermediate CA thumbprint from the OIDC IdP server certificate. However, if a `thumbprintList` is initially configured and later removed, Terraform does not prompt IAM to retrieve a thumbprint the same way. Instead, it continues using the original thumbprint list from the initial configuration. This differs from the behavior when creating an `aws.iam.OpenIdConnectProvider` without a `thumbprintList`.
  late final pulumi.Output<List<String>> thumbprintLists;
  /// URL of the identity provider, corresponding to the `iss` claim.
  late final pulumi.Output<String> url;

  /// Creates a new [OpenIdConnectProvider].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OpenIdConnectProvider]. {@macro pulumi_iam_open_id_connect_provider_open_id_connect_provider_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OpenIdConnectProvider(
    String name, {
    OpenIdConnectProviderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/openIdConnectProvider:OpenIdConnectProvider',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientIdLists = registerOutput<List<String>>('clientIdLists');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    thumbprintLists = registerOutput<List<String>>('thumbprintLists');
    url = registerOutput<String>('url');
  }

  /// Gets an existing [OpenIdConnectProvider] resource's state with the given [name] and [id].
  static OpenIdConnectProvider get(
    String name,
    pulumi.Input<String> id, {
    OpenIdConnectProviderState? state,
  }) {
    return OpenIdConnectProvider._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OpenIdConnectProvider._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:iam/openIdConnectProvider:OpenIdConnectProvider',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clientIdLists = registerOutput<List<String>>('clientIdLists');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    thumbprintLists = registerOutput<List<String>>('thumbprintLists');
    url = registerOutput<String>('url');
  }
}
