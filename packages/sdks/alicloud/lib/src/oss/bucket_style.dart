import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_style_args.dart';
import 'bucket_style_state.dart';

/// Provides a OSS Bucket Style resource.
///
/// Image styles that contain single or multiple image processing parameters.
///
/// For information about OSS Bucket Style and how to use it, see [What is Bucket Style](https://next.api.alibabacloud.com/document/Oss/2019-05-17/PutStyle).
///
/// &gt; **NOTE:** Available since v1.245.0.
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
/// const defaultBucketStyle = new alicloud.oss.BucketStyle("default", {
///     bucket: createBucket.id,
///     styleName: "style-933",
///     content: "image/resize,p_75,w_75",
///     category: "document",
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
/// default_bucket_style = alicloud.oss.BucketStyle("default",
///     bucket=create_bucket.id,
///     style_name="style-933",
///     content="image/resize,p_75,w_75",
///     category="document")
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
///     var defaultBucketStyle = new AliCloud.Oss.BucketStyle("default", new()
///     {
///         Bucket = createBucket.Id,
///         StyleName = "style-933",
///         Content = "image/resize,p_75,w_75",
///         Category = "document",
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
/// 		_, err = oss.NewBucketStyle(ctx, "default", &oss.BucketStyleArgs{
/// 			Bucket:    createBucket.ID(),
/// 			StyleName: pulumi.String("style-933"),
/// 			Content:   pulumi.String("image/resize,p_75,w_75"),
/// 			Category:  pulumi.String("document"),
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
/// import com.pulumi.alicloud.oss.BucketStyle;
/// import com.pulumi.alicloud.oss.BucketStyleArgs;
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
///         var defaultBucketStyle = new BucketStyle("defaultBucketStyle", BucketStyleArgs.builder()
///             .bucket(createBucket.id())
///             .styleName("style-933")
///             .content("image/resize,p_75,w_75")
///             .category("document")
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
///   defaultBucketStyle:
///     type: alicloud:oss:BucketStyle
///     name: default
///     properties:
///       bucket: ${createBucket.id}
///       styleName: style-933
///       content: image/resize,p_75,w_75
///       category: document
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Style can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketStyle:BucketStyle example <bucket>:<style_name>
/// ```
class BucketStyle extends pulumi.CustomResource {
  /// Storage space to which the picture style belongs
  late final pulumi.Output<String> bucket;
  /// Style category, valid values: image, document, video.
  late final pulumi.Output<String> category;
  /// The Image style content can contain single or multiple image processing parameters.
  late final pulumi.Output<String> content;
  /// Image Style Creation Time
  late final pulumi.Output<String> createTime;
  /// Image Style Name
  late final pulumi.Output<String> styleName;

  /// Creates a new [BucketStyle].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketStyle]. {@macro pulumi_oss_bucket_style_bucket_style_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketStyle(
    String name, {
    BucketStyleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketStyle:BucketStyle',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    category = registerOutput<String>('category');
    content = registerOutput<String>('content');
    createTime = registerOutput<String>('createTime');
    styleName = registerOutput<String>('styleName');
  }

  /// Gets an existing [BucketStyle] resource's state with the given [name] and [id].
  static BucketStyle get(
    String name,
    pulumi.Input<String> id, {
    BucketStyleState? state,
  }) {
    return BucketStyle._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketStyle._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketStyle:BucketStyle',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    category = registerOutput<String>('category');
    content = registerOutput<String>('content');
    createTime = registerOutput<String>('createTime');
    styleName = registerOutput<String>('styleName');
  }
}
