import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_referer_args.dart';
import 'bucket_referer_state.dart';

/// Provides a OSS Bucket Referer resource. Bucket Referer configuration (Hotlink protection).
///
/// For information about OSS Bucket Referer and how to use it, see [What is Bucket Referer](https://www.alibabacloud.com/help/en/oss/user-guide/hotlink-protection).
///
/// &gt; **NOTE:** Available since v1.220.0.
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
/// const defaultBucketReferer = new alicloud.oss.BucketReferer("default", {
///     allowEmptyReferer: true,
///     refererBlacklists: ["*.forbidden.com"],
///     bucket: createBucket.bucket,
///     truncatePath: false,
///     allowTruncateQueryString: true,
///     refererLists: [
///         "*.aliyun.com",
///         "*.example.com",
///     ],
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
/// default_bucket_referer = alicloud.oss.BucketReferer("default",
///     allow_empty_referer=True,
///     referer_blacklists=["*.forbidden.com"],
///     bucket=create_bucket.bucket,
///     truncate_path=False,
///     allow_truncate_query_string=True,
///     referer_lists=[
///         "*.aliyun.com",
///         "*.example.com",
///     ])
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
///     var defaultBucketReferer = new AliCloud.Oss.BucketReferer("default", new()
///     {
///         AllowEmptyReferer = true,
///         RefererBlacklists = new[]
///         {
///             "*.forbidden.com",
///         },
///         Bucket = createBucket.BucketName,
///         TruncatePath = false,
///         AllowTruncateQueryString = true,
///         RefererLists = new[]
///         {
///             "*.aliyun.com",
///             "*.example.com",
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
/// 		_, err = oss.NewBucketReferer(ctx, "default", &oss.BucketRefererArgs{
/// 			AllowEmptyReferer: pulumi.Bool(true),
/// 			RefererBlacklists: pulumi.StringArray{
/// 				pulumi.String("*.forbidden.com"),
/// 			},
/// 			Bucket:                   createBucket.Bucket,
/// 			TruncatePath:             pulumi.Bool(false),
/// 			AllowTruncateQueryString: pulumi.Bool(true),
/// 			RefererLists: pulumi.StringArray{
/// 				pulumi.String("*.aliyun.com"),
/// 				pulumi.String("*.example.com"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketReferer;
/// import com.pulumi.alicloud.oss.BucketRefererArgs;
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
///         var defaultBucketReferer = new BucketReferer("defaultBucketReferer", BucketRefererArgs.builder()
///             .allowEmptyReferer(true)
///             .refererBlacklists("*.forbidden.com")
///             .bucket(createBucket.bucket())
///             .truncatePath(false)
///             .allowTruncateQueryString(true)
///             .refererLists(
///                 "*.aliyun.com",
///                 "*.example.com")
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
///   defaultBucketReferer:
///     type: alicloud:oss:BucketReferer
///     name: default
///     properties:
///       allowEmptyReferer: 'true'
///       refererBlacklists:
///         - '*.forbidden.com'
///       bucket: ${createBucket.bucket}
///       truncatePath: 'false'
///       allowTruncateQueryString: 'true'
///       refererLists:
///         - '*.aliyun.com'
///         - '*.example.com'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Referer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketReferer:BucketReferer example <id>
/// ```
class BucketReferer extends pulumi.CustomResource {
  /// Whether to allow empty Referer request headers.
  late final pulumi.Output<bool> allowEmptyReferer;
  /// Specifies whether to truncate the query string in the URL when the Referer is matched. Valid values: true, false.
  late final pulumi.Output<bool> allowTruncateQueryString;
  /// Name of the Bucket.
  late final pulumi.Output<String> bucket;
  /// The container that holds the Referer blacklist.
  late final pulumi.Output<List<String>?> refererBlacklists;
  /// The container that holds the Referer whitelist.
  late final pulumi.Output<List<String>?> refererLists;
  /// Specifies whether to truncate the path and parts that follow the path in the URL when the Referer is matched. Valid values: true, false. If TruncatePath is set to true, the value of AllowTruncateQueryString must be also true because the query string follows the path component. When the path is truncated, the query string is also truncated.
  late final pulumi.Output<bool?> truncatePath;

  /// Creates a new [BucketReferer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketReferer]. {@macro pulumi_oss_bucket_referer_bucket_referer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketReferer(
    String name, {
    BucketRefererArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketReferer:BucketReferer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowEmptyReferer = registerOutput<bool>('allowEmptyReferer');
    allowTruncateQueryString = registerOutput<bool>('allowTruncateQueryString');
    bucket = registerOutput<String>('bucket');
    refererBlacklists = registerOutput<List<String>?>('refererBlacklists');
    refererLists = registerOutput<List<String>?>('refererLists');
    truncatePath = registerOutput<bool?>('truncatePath');
  }

  /// Gets an existing [BucketReferer] resource's state with the given [name] and [id].
  static BucketReferer get(
    String name,
    pulumi.Input<String> id, {
    BucketRefererState? state,
  }) {
    return BucketReferer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketReferer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketReferer:BucketReferer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    allowEmptyReferer = registerOutput<bool>('allowEmptyReferer');
    allowTruncateQueryString = registerOutput<bool>('allowTruncateQueryString');
    bucket = registerOutput<String>('bucket');
    refererBlacklists = registerOutput<List<String>?>('refererBlacklists');
    refererLists = registerOutput<List<String>?>('refererLists');
    truncatePath = registerOutput<bool?>('truncatePath');
  }
}
