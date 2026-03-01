import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_public_access_block_args.dart';

/// Provides a OSS Bucket Public Access Block resource. Blocking public access at the bucket-level.
///
/// For information about OSS Bucket Public Access Block and how to use it, see [What is Bucket Public Access Block](https://www.alibabacloud.com/help/en/oss/developer-reference/putbucketpublicaccessblock).
///
/// > **NOTE:** Available since v1.224.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     storageClass: "Standard",
///     bucket: `${name}-${_default.result}`,
/// });
/// const defaultBucketPublicAccessBlock = new alicloud.oss.BucketPublicAccessBlock("default", {
///     bucket: createBucket.bucket,
///     blockPublicAccess: true,
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
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     storage_class="Standard",
///     bucket=f"{name}-{default['result']}")
/// default_bucket_public_access_block = alicloud.oss.BucketPublicAccessBlock("default",
///     bucket=create_bucket.bucket,
///     block_public_access=True)
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = $"{name}-{@default.Result}",
///     });
///
///     var defaultBucketPublicAccessBlock = new AliCloud.Oss.BucketPublicAccessBlock("default", new()
///     {
///         Bucket = createBucket.BucketName,
///         BlockPublicAccess = true,
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
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
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
/// 		_, err = oss.NewBucketPublicAccessBlock(ctx, "default", &oss.BucketPublicAccessBlockArgs{
/// 			Bucket:            createBucket.Bucket,
/// 			BlockPublicAccess: pulumi.Bool(true),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketPublicAccessBlock;
/// import com.pulumi.alicloud.oss.BucketPublicAccessBlockArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket(String.format("%s-%s", name,default_.result()))
///             .build());
///
///         var defaultBucketPublicAccessBlock = new BucketPublicAccessBlock("defaultBucketPublicAccessBlock", BucketPublicAccessBlockArgs.builder()
///             .bucket(createBucket.bucket())
///             .blockPublicAccess(true)
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
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///       bucket: ${name}-${default.result}
///   defaultBucketPublicAccessBlock:
///     type: alicloud:oss:BucketPublicAccessBlock
///     name: default
///     properties:
///       bucket: ${createBucket.bucket}
///       blockPublicAccess: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Public Access Block can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketPublicAccessBlock:BucketPublicAccessBlock example <id>
/// ```
class BucketPublicAccessBlock extends pulumi.CustomResource {
  /// Whether AlibabaCloud OSS should block public bucket policies and ACL for this bucket.
  late final pulumi.Output<bool> blockPublicAccess;
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;

  /// Creates a new [BucketPublicAccessBlock].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketPublicAccessBlock]. {@macro pulumi_oss_bucket_public_access_block_bucket_public_access_block_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketPublicAccessBlock(
    String name, {
    BucketPublicAccessBlockArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketPublicAccessBlock:BucketPublicAccessBlock',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.blockPublicAccess = registerOutput<bool>('blockPublicAccess');
    this.bucket = registerOutput<String>('bucket');
  }
}
