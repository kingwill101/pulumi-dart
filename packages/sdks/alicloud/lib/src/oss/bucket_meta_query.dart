import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_meta_query_args.dart';
import 'bucket_meta_query_state.dart';

/// Provides a OSS Bucket Meta Query resource. Enables the metadata management feature for a bucket.
///
/// For information about OSS Bucket Meta Query and how to use it, see [What is Bucket Meta Query](https://www.alibabacloud.com/help/en/oss/developer-reference/openmetaquery).
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
/// const defaultBucketMetaQuery = new alicloud.oss.BucketMetaQuery("default", {bucket: createBucket.bucket});
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
/// default_bucket_meta_query = alicloud.oss.BucketMetaQuery("default", bucket=create_bucket.bucket)
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
///     var defaultBucketMetaQuery = new AliCloud.Oss.BucketMetaQuery("default", new()
///     {
///         Bucket = createBucket.BucketName,
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
/// 		_, err = oss.NewBucketMetaQuery(ctx, "default", &oss.BucketMetaQueryArgs{
/// 			Bucket: createBucket.Bucket,
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
/// import com.pulumi.alicloud.oss.BucketMetaQuery;
/// import com.pulumi.alicloud.oss.BucketMetaQueryArgs;
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
///         var defaultBucketMetaQuery = new BucketMetaQuery("defaultBucketMetaQuery", BucketMetaQueryArgs.builder()
///             .bucket(createBucket.bucket())
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
///   defaultBucketMetaQuery:
///     type: alicloud:oss:BucketMetaQuery
///     name: default
///     properties:
///       bucket: ${createBucket.bucket}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Meta Query can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketMetaQuery:BucketMetaQuery example <id>
/// ```
class BucketMetaQuery extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// The creation time of the metadata index database. The format is mm:ss + TIMEZONE in the YYYY-MM-DDTHH format of RFC 3339. Where YYYY-MM-DD indicates the year, month and day, T indicates the beginning of the time element, HH:mm:ss indicates the hour, minute and second, and TIMEZONE indicates the time zone.
  late final pulumi.Output<String> createTime;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [BucketMetaQuery].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketMetaQuery]. {@macro pulumi_oss_bucket_meta_query_bucket_meta_query_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketMetaQuery(
    String name, {
    BucketMetaQueryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketMetaQuery:BucketMetaQuery',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [BucketMetaQuery] resource's state with the given [name] and [id].
  static BucketMetaQuery get(
    String name,
    pulumi.Input<String> id, {
    BucketMetaQueryState? state,
  }) {
    return BucketMetaQuery._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketMetaQuery._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketMetaQuery:BucketMetaQuery',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.status = registerOutput<String>('status');
  }
}
