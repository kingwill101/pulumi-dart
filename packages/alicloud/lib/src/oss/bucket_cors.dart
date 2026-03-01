import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_cors_args.dart';
import 'bucket_cors_cors_rule.dart';

/// Provides a OSS Bucket Cors resource. Cross-Origin Resource Sharing (CORS) allows web applications to access resources in other regions.
///
/// For information about OSS Bucket Cors and how to use it, see [What is Bucket Cors](https://www.alibabacloud.com/help/en/oss/developer-reference/putbucketcors).
///
/// > **NOTE:** Available since v1.223.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new random.index.Uuid("default", {});
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     storageClass: "Standard",
///     bucket: `${name}-${_default.result}`,
/// });
/// const defaultBucketCors = new alicloud.oss.BucketCors("default", {
///     bucket: createBucket.bucket,
///     responseVary: true,
///     corsRules: [{
///         allowedMethods: ["GET"],
///         allowedOrigins: ["*"],
///         allowedHeaders: [
///             "x-oss-test",
///             "x-oss-abc",
///         ],
///         exposeHeaders: ["x-oss-request-id"],
///         maxAgeSeconds: 1000,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = random.index.Uuid("default")
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     storage_class="Standard",
///     bucket=f"{name}-{default['result']}")
/// default_bucket_cors = alicloud.oss.BucketCors("default",
///     bucket=create_bucket.bucket,
///     response_vary=True,
///     cors_rules=[{
///         "allowed_methods": ["GET"],
///         "allowed_origins": ["*"],
///         "allowed_headers": [
///             "x-oss-test",
///             "x-oss-abc",
///         ],
///         "expose_headers": ["x-oss-request-id"],
///         "max_age_seconds": 1000,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = new Random.Index.Uuid("default");
///
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var defaultBucketCors = new AliCloud.Oss.BucketCors("default", new()
///     {
///         Bucket = createBucket.BucketName,
///         ResponseVary = true,
///         CorsRules = new[]
///         {
///             new AliCloud.Oss.Inputs.BucketCorsCorsRuleArgs
///             {
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                 },
///                 AllowedOrigins = new[]
///                 {
///                     "*",
///                 },
///                 AllowedHeaders = new[]
///                 {
///                     "x-oss-test",
///                     "x-oss-abc",
///                 },
///                 ExposeHeaders = new[]
///                 {
///                     "x-oss-request-id",
///                 },
///                 MaxAgeSeconds = 1000,
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := random.NewUuid(ctx, "default", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.Sprintf("%v-%v", name, _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketCors(ctx, "default", &oss.BucketCorsArgs{
/// 			Bucket:       createBucket.Bucket,
/// 			ResponseVary: pulumi.Bool(true),
/// 			CorsRules: oss.BucketCorsCorsRuleArray{
/// 				&oss.BucketCorsCorsRuleArgs{
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 					},
/// 					AllowedOrigins: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 					AllowedHeaders: pulumi.StringArray{
/// 						pulumi.String("x-oss-test"),
/// 						pulumi.String("x-oss-abc"),
/// 					},
/// 					ExposeHeaders: pulumi.StringArray{
/// 						pulumi.String("x-oss-request-id"),
/// 					},
/// 					MaxAgeSeconds: pulumi.Int(1000),
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
/// import com.pulumi.random.Uuid;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketCors;
/// import com.pulumi.alicloud.oss.BucketCorsArgs;
/// import com.pulumi.alicloud.oss.inputs.BucketCorsCorsRuleArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         var default_ = new Uuid("default");
///
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultBucketCors = new BucketCors("defaultBucketCors", BucketCorsArgs.builder()
///             .bucket(createBucket.bucket())
///             .responseVary(true)
///             .corsRules(BucketCorsCorsRuleArgs.builder()
///                 .allowedMethods("GET")
///                 .allowedOrigins("*")
///                 .allowedHeaders(
///                     "x-oss-test",
///                     "x-oss-abc")
///                 .exposeHeaders("x-oss-request-id")
///                 .maxAgeSeconds(1000)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   default:
///     type: random:Uuid
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///       bucket: ${name}-${default.result}
///   defaultBucketCors:
///     type: alicloud:oss:BucketCors
///     name: default
///     properties:
///       bucket: ${createBucket.bucket}
///       responseVary: true
///       corsRules:
///         - allowedMethods:
///             - GET
///           allowedOrigins:
///             - '*'
///           allowedHeaders:
///             - x-oss-test
///             - x-oss-abc
///           exposeHeaders:
///             - x-oss-request-id
///           maxAgeSeconds: '1000'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Cors can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketCors:BucketCors example <id>
/// ```
class BucketCors extends pulumi.CustomResource {
  /// The name of the Bucket.
  late final pulumi.Output<String> bucket;
  /// The Cross-Origin Resource Sharing (CORS) configuration of the Bucket. See `cors_rule` below.
  late final pulumi.Output<List<BucketCorsCorsRule>> corsRules;
  /// Specifies whether to return the Vary: Origin header. Valid values: true: returns the Vary: Origin header, regardless of whether the request is a cross-origin request or whether the cross-origin request succeeds. false: does not return the Vary: Origin header. This element is valid only when at least one CORS rule is configured.
  late final pulumi.Output<bool> responseVary;

  /// Creates a new [BucketCors].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketCors]. {@macro pulumi_oss_bucket_cors_bucket_cors_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketCors(
    String name, {
    BucketCorsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketCors:BucketCors',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.corsRules = registerOutput<List<BucketCorsCorsRule>>('corsRules');
    this.responseVary = registerOutput<bool>('responseVary');
  }
}
