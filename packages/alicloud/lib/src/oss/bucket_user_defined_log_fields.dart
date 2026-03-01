import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_user_defined_log_fields_args.dart';

/// Provides a OSS Bucket User Defined Log Fields resource. Used to personalize the user_defined_log_fields field in the Bucket real-time log.
///
/// For information about OSS Bucket User Defined Log Fields and how to use it, see [What is Bucket User Defined Log Fields](https://www.alibabacloud.com/help/en/oss/developer-reference/putuserdefinedlogfieldsconfig).
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
/// const defaultBucketUserDefinedLogFields = new alicloud.oss.BucketUserDefinedLogFields("default", {
///     bucket: createBucket.bucket,
///     paramSets: [
///         "oss-example",
///         "example-para",
///         "abc",
///     ],
///     headerSets: [
///         "def",
///         "example-header",
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
/// default_bucket_user_defined_log_fields = alicloud.oss.BucketUserDefinedLogFields("default",
///     bucket=create_bucket.bucket,
///     param_sets=[
///         "oss-example",
///         "example-para",
///         "abc",
///     ],
///     header_sets=[
///         "def",
///         "example-header",
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
///     var defaultBucketUserDefinedLogFields = new AliCloud.Oss.BucketUserDefinedLogFields("default", new()
///     {
///         Bucket = createBucket.BucketName,
///         ParamSets = new[]
///         {
///             "oss-example",
///             "example-para",
///             "abc",
///         },
///         HeaderSets = new[]
///         {
///             "def",
///             "example-header",
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
/// 		_, err = oss.NewBucketUserDefinedLogFields(ctx, "default", &oss.BucketUserDefinedLogFieldsArgs{
/// 			Bucket: createBucket.Bucket,
/// 			ParamSets: pulumi.StringArray{
/// 				pulumi.String("oss-example"),
/// 				pulumi.String("example-para"),
/// 				pulumi.String("abc"),
/// 			},
/// 			HeaderSets: pulumi.StringArray{
/// 				pulumi.String("def"),
/// 				pulumi.String("example-header"),
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
/// import com.pulumi.alicloud.oss.BucketUserDefinedLogFields;
/// import com.pulumi.alicloud.oss.BucketUserDefinedLogFieldsArgs;
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
///         var defaultBucketUserDefinedLogFields = new BucketUserDefinedLogFields("defaultBucketUserDefinedLogFields", BucketUserDefinedLogFieldsArgs.builder()
///             .bucket(createBucket.bucket())
///             .paramSets(
///                 "oss-example",
///                 "example-para",
///                 "abc")
///             .headerSets(
///                 "def",
///                 "example-header")
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
///   defaultBucketUserDefinedLogFields:
///     type: alicloud:oss:BucketUserDefinedLogFields
///     name: default
///     properties:
///       bucket: ${createBucket.bucket}
///       paramSets:
///         - oss-example
///         - example-para
///         - abc
///       headerSets:
///         - def
///         - example-header
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket User Defined Log Fields can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketUserDefinedLogFields:BucketUserDefinedLogFields example <id>
/// ```
class BucketUserDefinedLogFields extends pulumi.CustomResource {
  /// The name of the bucket.
  late final pulumi.Output<String> bucket;
  /// Container for custom request header configuration information.
  late final pulumi.Output<List<String>?> headerSets;
  /// Container for custom request parameters configuration information.
  late final pulumi.Output<List<String>?> paramSets;

  /// Creates a new [BucketUserDefinedLogFields].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketUserDefinedLogFields]. {@macro pulumi_oss_bucket_user_defined_log_fields_bucket_user_defined_log_fields_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketUserDefinedLogFields(
    String name, {
    BucketUserDefinedLogFieldsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketUserDefinedLogFields:BucketUserDefinedLogFields',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.headerSets = registerOutput<List<String>?>('headerSets');
    this.paramSets = registerOutput<List<String>?>('paramSets');
  }
}
