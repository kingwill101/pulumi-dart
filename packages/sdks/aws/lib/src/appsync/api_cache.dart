import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_cache_args.dart';
import 'api_cache_state.dart';

/// Provides an AppSync API Cache.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.appsync.GraphQLApi("example", {
///     authenticationType: "API_KEY",
///     name: "example",
/// });
/// const exampleApiCache = new aws.appsync.ApiCache("example", {
///     apiId: example.id,
///     apiCachingBehavior: "FULL_REQUEST_CACHING",
///     type: "LARGE",
///     ttl: 900,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appsync.GraphQLApi("example",
///     authentication_type="API_KEY",
///     name="example")
/// example_api_cache = aws.appsync.ApiCache("example",
///     api_id=example.id,
///     api_caching_behavior="FULL_REQUEST_CACHING",
///     type="LARGE",
///     ttl=900)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.AppSync.GraphQLApi("example", new()
///     {
///         AuthenticationType = "API_KEY",
///         Name = "example",
///     });
///
///     var exampleApiCache = new Aws.AppSync.ApiCache("example", new()
///     {
///         ApiId = example.Id,
///         ApiCachingBehavior = "FULL_REQUEST_CACHING",
///         Type = "LARGE",
///         Ttl = 900,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appsync"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := appsync.NewGraphQLApi(ctx, "example", &appsync.GraphQLApiArgs{
/// 			AuthenticationType: pulumi.String("API_KEY"),
/// 			Name:               pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appsync.NewApiCache(ctx, "example", &appsync.ApiCacheArgs{
/// 			ApiId:              example.ID(),
/// 			ApiCachingBehavior: pulumi.String("FULL_REQUEST_CACHING"),
/// 			Type:               pulumi.String("LARGE"),
/// 			Ttl:                pulumi.Int(900),
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
/// import com.pulumi.aws.appsync.GraphQLApi;
/// import com.pulumi.aws.appsync.GraphQLApiArgs;
/// import com.pulumi.aws.appsync.ApiCache;
/// import com.pulumi.aws.appsync.ApiCacheArgs;
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
///         var example = new GraphQLApi("example", GraphQLApiArgs.builder()
///             .authenticationType("API_KEY")
///             .name("example")
///             .build());
///
///         var exampleApiCache = new ApiCache("exampleApiCache", ApiCacheArgs.builder()
///             .apiId(example.id())
///             .apiCachingBehavior("FULL_REQUEST_CACHING")
///             .type("LARGE")
///             .ttl(900)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:appsync:GraphQLApi
///     properties:
///       authenticationType: API_KEY
///       name: example
///   exampleApiCache:
///     type: aws:appsync:ApiCache
///     name: example
///     properties:
///       apiId: ${example.id}
///       apiCachingBehavior: FULL_REQUEST_CACHING
///       type: LARGE
///       ttl: 900
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appsync.ApiCache` using the AppSync API ID. For example:
///
/// ```sh
/// $ pulumi import aws:appsync/apiCache:ApiCache example xxxxx
/// ```
class ApiCache extends pulumi.CustomResource {
  /// Caching behavior. Valid values are `FULL_REQUEST_CACHING` and `PER_RESOLVER_CACHING`.
  late final pulumi.Output<String> apiCachingBehavior;
  /// GraphQL API ID.
  late final pulumi.Output<String> apiId;
  /// At-rest encryption flag for cache. You cannot update this setting after creation.
  late final pulumi.Output<bool> atRestEncryptionEnabled;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Transit encryption flag when connecting to cache. You cannot update this setting after creation.
  late final pulumi.Output<bool> transitEncryptionEnabled;
  /// TTL in seconds for cache entries.
  late final pulumi.Output<int> ttl;
  /// Cache instance type. Valid values are `SMALL`, `MEDIUM`, `LARGE`, `XLARGE`, `LARGE_2X`, `LARGE_4X`, `LARGE_8X`, `LARGE_12X`, `T2_SMALL`, `T2_MEDIUM`, `R4_LARGE`, `R4_XLARGE`, `R4_2XLARGE`, `R4_4XLARGE`, `R4_8XLARGE`.
  late final pulumi.Output<String> type;

  /// Creates a new [ApiCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApiCache]. {@macro pulumi_appsync_api_cache_api_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApiCache(
    String name, {
    ApiCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/apiCache:ApiCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiCachingBehavior = registerOutput<String>('apiCachingBehavior');
    apiId = registerOutput<String>('apiId');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    region = registerOutput<String>('region');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [ApiCache] resource's state with the given [name] and [id].
  static ApiCache get(
    String name,
    pulumi.Input<String> id, {
    ApiCacheState? state,
  }) {
    return ApiCache._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ApiCache._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appsync/apiCache:ApiCache',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiCachingBehavior = registerOutput<String>('apiCachingBehavior');
    apiId = registerOutput<String>('apiId');
    atRestEncryptionEnabled = registerOutput<bool>('atRestEncryptionEnabled');
    region = registerOutput<String>('region');
    transitEncryptionEnabled = registerOutput<bool>('transitEncryptionEnabled');
    ttl = registerOutput<int>('ttl');
    type = registerOutput<String>('type');
  }
}
