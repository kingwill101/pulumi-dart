import 'package:pulumi/pulumi.dart' as pulumi;
import 'layer_version_args.dart';

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
/// const _default = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${_default.result}`});
/// // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// const defaultBucketObject = new alicloud.oss.BucketObject("default", {
///     bucket: defaultBucket.id,
///     key: "index.py",
///     content: `import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'`,
/// });
/// const example = new alicloud.fc.LayerVersion("example", {
///     layerName: `terraform-example-${_default.result}`,
///     compatibleRuntimes: ["python2.7"],
///     ossBucketName: defaultBucket.bucket,
///     ossObjectName: defaultBucketObject.key,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default['result']}")
/// # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// default_bucket_object = alicloud.oss.BucketObject("default",
///     bucket=default_bucket.id,
///     key="index.py",
///     content="""import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'""")
/// example = alicloud.fc.LayerVersion("example",
///     layer_name=f"terraform-example-{default['result']}",
///     compatible_runtimes=["python2.7"],
///     oss_bucket_name=default_bucket.bucket,
///     oss_object_name=default_bucket_object.key)
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///     });
///
///     // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///     var defaultBucketObject = new AliCloud.Oss.BucketObject("default", new()
///     {
///         Bucket = defaultBucket.Id,
///         Key = "index.py",
///         Content = @"import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'",
///     });
///
///     var example = new AliCloud.FC.LayerVersion("example", new()
///     {
///         LayerName = $"terraform-example-{@default.Result}",
///         CompatibleRuntimes = new[]
///         {
///             "python2.7",
///         },
///         OssBucketName = defaultBucket.BucketName,
///         OssObjectName = defaultBucketObject.Key,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/fc"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// If you upload the function by OSS Bucket, you need to specify path can't upload by content.
/// 		defaultBucketObject, err := oss.NewBucketObject(ctx, "default", &oss.BucketObjectArgs{
/// 			Bucket:  defaultBucket.ID(),
/// 			Key:     pulumi.String("index.py"),
/// 			Content: pulumi.String("import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = fc.NewLayerVersion(ctx, "example", &fc.LayerVersionArgs{
/// 			LayerName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			CompatibleRuntimes: pulumi.StringArray{
/// 				pulumi.String("python2.7"),
/// 			},
/// 			OssBucketName: defaultBucket.Bucket,
/// 			OssObjectName: defaultBucketObject.Key,
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
/// import com.pulumi.alicloud.oss.BucketObject;
/// import com.pulumi.alicloud.oss.BucketObjectArgs;
/// import com.pulumi.alicloud.fc.LayerVersion;
/// import com.pulumi.alicloud.fc.LayerVersionArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         // If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///         var defaultBucketObject = new BucketObject("defaultBucketObject", BucketObjectArgs.builder()
///             .bucket(defaultBucket.id())
///             .key("index.py")
///             .content("""
/// import logging
/// def handler(event, context):
/// logger = logging.getLogger()
/// logger.info('hello world')
/// return 'hello world'            """)
///             .build());
///
///         var example = new LayerVersion("example", LayerVersionArgs.builder()
///             .layerName(String.format("terraform-example-%s", default_.result()))
///             .compatibleRuntimes("python2.7")
///             .ossBucketName(defaultBucket.bucket())
///             .ossObjectName(defaultBucketObject.key())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       max: 99999
///       min: 10000
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${default.result}
///   # If you upload the function by OSS Bucket, you need to specify path can't upload by content.
///   defaultBucketObject:
///     type: alicloud:oss:BucketObject
///     name: default
///     properties:
///       bucket: ${defaultBucket.id}
///       key: index.py
///       content: "import logging \ndef handler(event, context): \nlogger = logging.getLogger() \nlogger.info('hello world') \nreturn 'hello world'"
///   example:
///     type: alicloud:fc:LayerVersion
///     properties:
///       layerName: terraform-example-${default.result}
///       compatibleRuntimes:
///         - python2.7
///       ossBucketName: ${defaultBucket.bucket}
///       ossObjectName: ${defaultBucketObject.key}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Function Compute Layer Version can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:fc/layerVersion:LayerVersion example my_function
/// ```
class LayerVersion extends pulumi.CustomResource {
  /// The access mode of Layer Version.
  late final pulumi.Output<String> acl;
  /// The arn of Layer Version.
  late final pulumi.Output<String> arn;
  /// The checksum of the layer code package.
  late final pulumi.Output<String> codeCheckSum;
  /// The list of runtime environments that are supported by the layer. Valid values: `nodejs14`, `nodejs12`, `nodejs10`, `nodejs8`, `nodejs6`, `python3.9`, `python3`, `python2.7`, `java11`, `java8`, `php7.2`, `go1`,`dotnetcore2.1`, `custom`.
  late final pulumi.Output<List<String>> compatibleRuntimes;
  /// The description of the layer version.
  late final pulumi.Output<String?> description;
  /// The name of the layer.
  late final pulumi.Output<String> layerName;
  /// The name of the OSS bucket that stores the ZIP package of the function code.
  late final pulumi.Output<String?> ossBucketName;
  /// The name of the OSS object (ZIP package) that contains the function code.
  late final pulumi.Output<String?> ossObjectName;
  /// Whether to retain the old version of a previously deployed Lambda Layer. Default is `false`. When this is not set to `true`, changing any of `compatible_runtimes`, `description`, `layer_name`, `oss_bucket_name`,  `oss_object_name`, or `zip_file` forces deletion of the existing layer version and creation of a new layer version.
  late final pulumi.Output<bool?> skipDestroy;
  /// The version of Layer Version.
  late final pulumi.Output<String> version;
  /// The ZIP package of the function code that is encoded in the Base64 format.
  ///
  /// > **NOTE:** `zip_file` and `oss_bucket_name`, `oss_object_name` cannot be used together.
  late final pulumi.Output<String?> zipFile;

  /// Creates a new [LayerVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LayerVersion]. {@macro pulumi_fc_layer_version_layer_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LayerVersion(
    String name, {
    LayerVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:fc/layerVersion:LayerVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acl = registerOutput<String>('acl');
    this.arn = registerOutput<String>('arn');
    this.codeCheckSum = registerOutput<String>('codeCheckSum');
    this.compatibleRuntimes = registerOutput<List<String>>('compatibleRuntimes');
    this.description = registerOutput<String?>('description');
    this.layerName = registerOutput<String>('layerName');
    this.ossBucketName = registerOutput<String?>('ossBucketName');
    this.ossObjectName = registerOutput<String?>('ossObjectName');
    this.skipDestroy = registerOutput<bool?>('skipDestroy');
    this.version = registerOutput<String>('version');
    this.zipFile = registerOutput<String?>('zipFile');
  }
}
