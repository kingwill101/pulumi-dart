import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_policy_args.dart';
import 'cache_policy_parameters_in_cache_key_and_forwarded_to_origin.dart';
import 'cache_policy_state.dart';

/// ## Example Usage
///
/// Use the `aws.cloudfront.CachePolicy` resource to create a cache policy for CloudFront.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.CachePolicy("example", {
///     name: "example-policy",
///     comment: "test comment",
///     defaultTtl: 50,
///     maxTtl: 100,
///     minTtl: 1,
///     parametersInCacheKeyAndForwardedToOrigin: {
///         cookiesConfig: {
///             cookieBehavior: "whitelist",
///             cookies: {
///                 items: ["example"],
///             },
///         },
///         headersConfig: {
///             headerBehavior: "whitelist",
///             headers: {
///                 items: ["example"],
///             },
///         },
///         queryStringsConfig: {
///             queryStringBehavior: "whitelist",
///             queryStrings: {
///                 items: ["example"],
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.CachePolicy("example",
///     name="example-policy",
///     comment="test comment",
///     default_ttl=50,
///     max_ttl=100,
///     min_ttl=1,
///     parameters_in_cache_key_and_forwarded_to_origin={
///         "cookies_config": {
///             "cookie_behavior": "whitelist",
///             "cookies": {
///                 "items": ["example"],
///             },
///         },
///         "headers_config": {
///             "header_behavior": "whitelist",
///             "headers": {
///                 "items": ["example"],
///             },
///         },
///         "query_strings_config": {
///             "query_string_behavior": "whitelist",
///             "query_strings": {
///                 "items": ["example"],
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
///     var example = new Aws.CloudFront.CachePolicy("example", new()
///     {
///         Name = "example-policy",
///         Comment = "test comment",
///         DefaultTtl = 50,
///         MaxTtl = 100,
///         MinTtl = 1,
///         ParametersInCacheKeyAndForwardedToOrigin = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginArgs
///         {
///             CookiesConfig = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigArgs
///             {
///                 CookieBehavior = "whitelist",
///                 Cookies = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookiesArgs
///                 {
///                     Items = new[]
///                     {
///                         "example",
///                     },
///                 },
///             },
///             HeadersConfig = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigArgs
///             {
///                 HeaderBehavior = "whitelist",
///                 Headers = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeadersArgs
///                 {
///                     Items = new[]
///                     {
///                         "example",
///                     },
///                 },
///             },
///             QueryStringsConfig = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigArgs
///             {
///                 QueryStringBehavior = "whitelist",
///                 QueryStrings = new Aws.CloudFront.Inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringsArgs
///                 {
///                     Items = new[]
///                     {
///                         "example",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewCachePolicy(ctx, "example", &cloudfront.CachePolicyArgs{
/// 			Name:       pulumi.String("example-policy"),
/// 			Comment:    pulumi.String("test comment"),
/// 			DefaultTtl: pulumi.Int(50),
/// 			MaxTtl:     pulumi.Int(100),
/// 			MinTtl:     pulumi.Int(1),
/// 			ParametersInCacheKeyAndForwardedToOrigin: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginArgs{
/// 				CookiesConfig: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigArgs{
/// 					CookieBehavior: pulumi.String("whitelist"),
/// 					Cookies: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookiesArgs{
/// 						Items: pulumi.StringArray{
/// 							pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 				HeadersConfig: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigArgs{
/// 					HeaderBehavior: pulumi.String("whitelist"),
/// 					Headers: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeadersArgs{
/// 						Items: pulumi.StringArray{
/// 							pulumi.String("example"),
/// 						},
/// 					},
/// 				},
/// 				QueryStringsConfig: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigArgs{
/// 					QueryStringBehavior: pulumi.String("whitelist"),
/// 					QueryStrings: &cloudfront.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringsArgs{
/// 						Items: pulumi.StringArray{
/// 							pulumi.String("example"),
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
/// import com.pulumi.aws.cloudfront.CachePolicy;
/// import com.pulumi.aws.cloudfront.CachePolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeadersArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringsArgs;
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
///         var example = new CachePolicy("example", CachePolicyArgs.builder()
///             .name("example-policy")
///             .comment("test comment")
///             .defaultTtl(50)
///             .maxTtl(100)
///             .minTtl(1)
///             .parametersInCacheKeyAndForwardedToOrigin(CachePolicyParametersInCacheKeyAndForwardedToOriginArgs.builder()
///                 .cookiesConfig(CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigArgs.builder()
///                     .cookieBehavior("whitelist")
///                     .cookies(CachePolicyParametersInCacheKeyAndForwardedToOriginCookiesConfigCookiesArgs.builder()
///                         .items("example")
///                         .build())
///                     .build())
///                 .headersConfig(CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigArgs.builder()
///                     .headerBehavior("whitelist")
///                     .headers(CachePolicyParametersInCacheKeyAndForwardedToOriginHeadersConfigHeadersArgs.builder()
///                         .items("example")
///                         .build())
///                     .build())
///                 .queryStringsConfig(CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigArgs.builder()
///                     .queryStringBehavior("whitelist")
///                     .queryStrings(CachePolicyParametersInCacheKeyAndForwardedToOriginQueryStringsConfigQueryStringsArgs.builder()
///                         .items("example")
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
///   example:
///     type: aws:cloudfront:CachePolicy
///     properties:
///       name: example-policy
///       comment: test comment
///       defaultTtl: 50
///       maxTtl: 100
///       minTtl: 1
///       parametersInCacheKeyAndForwardedToOrigin:
///         cookiesConfig:
///           cookieBehavior: whitelist
///           cookies:
///             items:
///               - example
///         headersConfig:
///           headerBehavior: whitelist
///           headers:
///             items:
///               - example
///         queryStringsConfig:
///           queryStringBehavior: whitelist
///           queryStrings:
///             items:
///               - example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront cache policies using the `id` of the cache policy. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/cachePolicy:CachePolicy policy 658327ea-f89d-4fab-a63d-7e88639e58f6
/// ```
class CachePolicy extends pulumi.CustomResource {
  /// The cache policy ARN.
  late final pulumi.Output<String> arn;

  /// Description for the cache policy.
  late final pulumi.Output<String?> comment;

  /// Amount of time, in seconds, that objects are allowed to remain in the CloudFront cache before CloudFront sends a new request to the origin server to check if the object has been updated.
  late final pulumi.Output<int?> defaultTtl;

  /// Current version of the cache policy.
  late final pulumi.Output<String> etag;

  /// Maximum amount of time, in seconds, that objects stay in the CloudFront cache before CloudFront sends another request to the origin to see if the object has been updated.
  late final pulumi.Output<int?> maxTtl;

  /// Minimum amount of time, in seconds, that objects should remain in the CloudFront cache before a new request is sent to the origin to check for updates.
  late final pulumi.Output<int?> minTtl;

  /// Unique name used to identify the cache policy.
  late final pulumi.Output<String> name;

  /// Configuration for including HTTP headers, cookies, and URL query strings in the cache key. For more information, refer to the Parameters In Cache Key And Forwarded To Origin section.
  late final pulumi.Output<CachePolicyParametersInCacheKeyAndForwardedToOrigin>
  parametersInCacheKeyAndForwardedToOrigin;

  /// Creates a new [CachePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CachePolicy]. {@macro pulumi_cloudfront_cache_policy_cache_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CachePolicy(
    String name, {
    CachePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/cachePolicy:CachePolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    defaultTtl = registerOutput<int?>('defaultTtl');
    etag = registerOutput<String>('etag');
    maxTtl = registerOutput<int?>('maxTtl');
    minTtl = registerOutput<int?>('minTtl');
    this.name = registerOutput<String>('name');
    parametersInCacheKeyAndForwardedToOrigin =
        registerOutput<CachePolicyParametersInCacheKeyAndForwardedToOrigin>(
          'parametersInCacheKeyAndForwardedToOrigin',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }

  /// Gets an existing [CachePolicy] resource's state with the given [name] and [id].
  static CachePolicy get(
    String name,
    pulumi.Input<String> id, {
    CachePolicyState? state,
  }) {
    return CachePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CachePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudfront/cachePolicy:CachePolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    comment = registerOutput<String?>('comment');
    defaultTtl = registerOutput<int?>('defaultTtl');
    etag = registerOutput<String>('etag');
    maxTtl = registerOutput<int?>('maxTtl');
    minTtl = registerOutput<int?>('minTtl');
    this.name = registerOutput<String>('name');
    parametersInCacheKeyAndForwardedToOrigin =
        registerOutput<CachePolicyParametersInCacheKeyAndForwardedToOrigin>(
          'parametersInCacheKeyAndForwardedToOrigin',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return CachePolicyParametersInCacheKeyAndForwardedToOrigin.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
  }
}
