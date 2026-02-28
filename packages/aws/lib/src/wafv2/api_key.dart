import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_key_args.dart';

/// Provides an AWS WAFv2 API Key resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.wafv2.ApiKey("example", {
///     scope: "REGIONAL",
///     tokenDomains: ["example.com"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.wafv2.ApiKey("example",
///     scope="REGIONAL",
///     token_domains=["example.com"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.WafV2.ApiKey("example", new()
///     {
///         Scope = "REGIONAL",
///         TokenDomains = new[]
///         {
///             "example.com",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/wafv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := wafv2.NewApiKey(ctx, "example", &wafv2.ApiKeyArgs{
/// 			Scope: pulumi.String("REGIONAL"),
/// 			TokenDomains: pulumi.StringArray{
/// 				pulumi.String("example.com"),
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
/// import com.pulumi.aws.wafv2.ApiKey;
/// import com.pulumi.aws.wafv2.ApiKeyArgs;
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
///         var example = new ApiKey("example", ApiKeyArgs.builder()
///             .scope("REGIONAL")
///             .tokenDomains("example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:wafv2:ApiKey
///     properties:
///       scope: REGIONAL
///       tokenDomains:
///         - example.com
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import WAFv2 API Key using `api_key,scope`. For example:
///
/// ```sh
/// $ pulumi import aws:wafv2/apiKey:ApiKey example a1b2c3d4-5678-90ab-cdef-EXAMPLE11111,REGIONAL
/// ```
class ApiKey extends pulumi.CustomResource {
  /// The generated API key. This value is sensitive.
  late final pulumi.Output<String> apiKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies whether this is for an AWS CloudFront distribution or for a regional application. Valid values are `CLOUDFRONT` or `REGIONAL`. Changing this forces a new resource to be created. **NOTE:** WAFv2 API Keys deployed for `CLOUDFRONT` must be created within the `us-east-1` region.
  late final pulumi.Output<String> scope;

  /// The domains that you want to be able to use the API key with, for example `example.com`. You can specify up to 5 domains. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>> tokenDomains;

  /// Creates a new [ApiKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiKey]. {@macro pulumi_wafv2_api_key_api_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiKey(
    String name, {
    ApiKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:wafv2/apiKey:ApiKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.apiKey = registerOutput<String>('apiKey');
    this.region = registerOutput<String>('region');
    this.scope = registerOutput<String>('scope');
    this.tokenDomains = registerOutput<List<String>>('tokenDomains');
  }
}
