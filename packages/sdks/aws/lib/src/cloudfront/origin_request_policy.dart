import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_request_policy_args.dart';
import 'origin_request_policy_cookies_config.dart';
import 'origin_request_policy_headers_config.dart';
import 'origin_request_policy_query_strings_config.dart';
import 'origin_request_policy_state.dart';

/// ## Example Usage
///
/// The following example below creates a CloudFront origin request policy.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.OriginRequestPolicy("example", {
///     cookiesConfig: {
///         cookies: {
///             items: ["example"],
///         },
///         cookieBehavior: "whitelist",
///     },
///     headersConfig: {
///         headers: {
///             items: ["example"],
///         },
///         headerBehavior: "whitelist",
///     },
///     queryStringsConfig: {
///         queryStrings: {
///             items: ["example"],
///         },
///         queryStringBehavior: "whitelist",
///     },
///     name: "example-policy",
///     comment: "example comment",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.OriginRequestPolicy("example",
///     cookies_config={
///         "cookies": {
///             "items": ["example"],
///         },
///         "cookie_behavior": "whitelist",
///     },
///     headers_config={
///         "headers": {
///             "items": ["example"],
///         },
///         "header_behavior": "whitelist",
///     },
///     query_strings_config={
///         "query_strings": {
///             "items": ["example"],
///         },
///         "query_string_behavior": "whitelist",
///     },
///     name="example-policy",
///     comment="example comment")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.OriginRequestPolicy("example", new()
///     {
///         CookiesConfig = new Aws.CloudFront.Inputs.OriginRequestPolicyCookiesConfigArgs
///         {
///             Cookies = new Aws.CloudFront.Inputs.OriginRequestPolicyCookiesConfigCookiesArgs
///             {
///                 Items = new[]
///                 {
///                     "example",
///                 },
///             },
///             CookieBehavior = "whitelist",
///         },
///         HeadersConfig = new Aws.CloudFront.Inputs.OriginRequestPolicyHeadersConfigArgs
///         {
///             Headers = new Aws.CloudFront.Inputs.OriginRequestPolicyHeadersConfigHeadersArgs
///             {
///                 Items = new[]
///                 {
///                     "example",
///                 },
///             },
///             HeaderBehavior = "whitelist",
///         },
///         QueryStringsConfig = new Aws.CloudFront.Inputs.OriginRequestPolicyQueryStringsConfigArgs
///         {
///             QueryStrings = new Aws.CloudFront.Inputs.OriginRequestPolicyQueryStringsConfigQueryStringsArgs
///             {
///                 Items = new[]
///                 {
///                     "example",
///                 },
///             },
///             QueryStringBehavior = "whitelist",
///         },
///         Name = "example-policy",
///         Comment = "example comment",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewOriginRequestPolicy(ctx, "example", &cloudfront.OriginRequestPolicyArgs{
/// 			CookiesConfig: &cloudfront.OriginRequestPolicyCookiesConfigArgs{
/// 				Cookies: &cloudfront.OriginRequestPolicyCookiesConfigCookiesArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("example"),
/// 					},
/// 				},
/// 				CookieBehavior: pulumi.String("whitelist"),
/// 			},
/// 			HeadersConfig: &cloudfront.OriginRequestPolicyHeadersConfigArgs{
/// 				Headers: &cloudfront.OriginRequestPolicyHeadersConfigHeadersArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("example"),
/// 					},
/// 				},
/// 				HeaderBehavior: pulumi.String("whitelist"),
/// 			},
/// 			QueryStringsConfig: &cloudfront.OriginRequestPolicyQueryStringsConfigArgs{
/// 				QueryStrings: &cloudfront.OriginRequestPolicyQueryStringsConfigQueryStringsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("example"),
/// 					},
/// 				},
/// 				QueryStringBehavior: pulumi.String("whitelist"),
/// 			},
/// 			Name:    pulumi.String("example-policy"),
/// 			Comment: pulumi.String("example comment"),
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
/// resource "aws_cloudfront_originrequestpolicy" "example" {
///   cookies_config = {
///     cookies = {
///       items = ["example"]
///     }
///     cookie_behavior = "whitelist"
///   }
///   headers_config = {
///     headers = {
///       items = ["example"]
///     }
///     header_behavior = "whitelist"
///   }
///   query_strings_config = {
///     query_strings = {
///       items = ["example"]
///     }
///     query_string_behavior = "whitelist"
///   }
///   name    = "example-policy"
///   comment = "example comment"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.OriginRequestPolicy;
/// import com.pulumi.aws.cloudfront.OriginRequestPolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyCookiesConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyCookiesConfigCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyHeadersConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyHeadersConfigHeadersArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyQueryStringsConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.OriginRequestPolicyQueryStringsConfigQueryStringsArgs;
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
///         var example = new OriginRequestPolicy("example", OriginRequestPolicyArgs.builder()
///             .cookiesConfig(OriginRequestPolicyCookiesConfigArgs.builder()
///                 .cookies(OriginRequestPolicyCookiesConfigCookiesArgs.builder()
///                     .items("example")
///                     .build())
///                 .cookieBehavior("whitelist")
///                 .build())
///             .headersConfig(OriginRequestPolicyHeadersConfigArgs.builder()
///                 .headers(OriginRequestPolicyHeadersConfigHeadersArgs.builder()
///                     .items("example")
///                     .build())
///                 .headerBehavior("whitelist")
///                 .build())
///             .queryStringsConfig(OriginRequestPolicyQueryStringsConfigArgs.builder()
///                 .queryStrings(OriginRequestPolicyQueryStringsConfigQueryStringsArgs.builder()
///                     .items("example")
///                     .build())
///                 .queryStringBehavior("whitelist")
///                 .build())
///             .name("example-policy")
///             .comment("example comment")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:OriginRequestPolicy
///     properties:
///       cookiesConfig:
///         cookies:
///           items:
///             - example
///         cookieBehavior: whitelist
///       headersConfig:
///         headers:
///           items:
///             - example
///         headerBehavior: whitelist
///       queryStringsConfig:
///         queryStrings:
///           items:
///             - example
///         queryStringBehavior: whitelist
///       name: example-policy
///       comment: example comment
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Cloudfront Origin Request Policies using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/originRequestPolicy:OriginRequestPolicy policy ccca32ef-dce3-4df3-80df-1bd3000bc4d3
/// ```
class OriginRequestPolicy extends pulumi.CustomResource {
  /// The origin request policy ARN.
  late final pulumi.Output<String> arn;
  /// Comment to describe the origin request policy.
  late final pulumi.Output<String?> comment;
  /// Object that determines whether any cookies in viewer requests (and if so, which cookies) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Cookies Config for more information.
  late final pulumi.Output<OriginRequestPolicyCookiesConfig> cookiesConfig;
  /// The current version of the origin request policy.
  late final pulumi.Output<String> etag;
  /// Object that determines whether any HTTP headers (and if so, which headers) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Headers Config for more information.
  late final pulumi.Output<OriginRequestPolicyHeadersConfig> headersConfig;
  /// Unique name to identify the origin request policy.
  late final pulumi.Output<String> name;
  /// Object that determines whether any URL query strings in viewer requests (and if so, which query strings) are included in the origin request key and automatically included in requests that CloudFront sends to the origin. See Query String Config for more information.
  late final pulumi.Output<OriginRequestPolicyQueryStringsConfig> queryStringsConfig;

  /// Creates a new [OriginRequestPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginRequestPolicy]. {@macro pulumi_cloudfront_origin_request_policy_origin_request_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginRequestPolicy(
    String name, {
    OriginRequestPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originRequestPolicy:OriginRequestPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    cookiesConfig = registerOutput<OriginRequestPolicyCookiesConfig>('cookiesConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyCookiesConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    headersConfig = registerOutput<OriginRequestPolicyHeadersConfig>('headersConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    queryStringsConfig = registerOutput<OriginRequestPolicyQueryStringsConfig>('queryStringsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyQueryStringsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [OriginRequestPolicy] resource's state with the given [name] and [id].
  static OriginRequestPolicy get(
    String name,
    pulumi.Input<String> id, {
    OriginRequestPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OriginRequestPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OriginRequestPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/originRequestPolicy:OriginRequestPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    cookiesConfig = registerOutput<OriginRequestPolicyCookiesConfig>('cookiesConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyCookiesConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    headersConfig = registerOutput<OriginRequestPolicyHeadersConfig>('headersConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    queryStringsConfig = registerOutput<OriginRequestPolicyQueryStringsConfig>('queryStringsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyQueryStringsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [OriginRequestPolicy] resource.
  OriginRequestPolicy.reference(String urn)
    : super(
        'aws:cloudfront/originRequestPolicy:OriginRequestPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    cookiesConfig = registerOutput<OriginRequestPolicyCookiesConfig>('cookiesConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyCookiesConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    etag = registerOutput<String>('etag');
    headersConfig = registerOutput<OriginRequestPolicyHeadersConfig>('headersConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyHeadersConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    queryStringsConfig = registerOutput<OriginRequestPolicyQueryStringsConfig>('queryStringsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OriginRequestPolicyQueryStringsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
