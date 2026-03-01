import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_logging_args.dart';
import 'bucket_logging_state.dart';

/// Provides a OSS Bucket Logging resource.
///
/// After you enable and configure logging for a bucket, Object Storage Service (OSS) generates log objects based on a predefined naming convention. This way, access logs are generated and stored in the specified bucket on an hourly basis.
///
/// For information about OSS Bucket Logging and how to use it, see [What is Bucket Logging](https://next.api.alibabacloud.com/document/Oss/2019-05-17/PutBucketLogging).
///
/// > **NOTE:** Available since v1.222.0.
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const createBucket = new alicloud.oss.Bucket("CreateBucket", {
///     storageClass: "Standard",
///     bucket: "resource-example-logging-806",
/// });
/// const createLoggingBucket = new alicloud.oss.Bucket("CreateLoggingBucket", {
///     storageClass: "Standard",
///     bucket: "resource-example-logging-153",
/// });
/// const _default = new alicloud.oss.BucketLogging("default", {
///     bucket: createBucket.id,
///     targetBucket: createBucket.id,
///     targetPrefix: "log/",
///     loggingRole: "example-role",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// create_bucket = alicloud.oss.Bucket("CreateBucket",
///     storage_class="Standard",
///     bucket="resource-example-logging-806")
/// create_logging_bucket = alicloud.oss.Bucket("CreateLoggingBucket",
///     storage_class="Standard",
///     bucket="resource-example-logging-153")
/// default = alicloud.oss.BucketLogging("default",
///     bucket=create_bucket.id,
///     target_bucket=create_bucket.id,
///     target_prefix="log/",
///     logging_role="example-role")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var createBucket = new AliCloud.Oss.Bucket("CreateBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = "resource-example-logging-806",
///     });
///
///     var createLoggingBucket = new AliCloud.Oss.Bucket("CreateLoggingBucket", new()
///     {
///         StorageClass = "Standard",
///         BucketName = "resource-example-logging-153",
///     });
///
///     var @default = new AliCloud.Oss.BucketLogging("default", new()
///     {
///         Bucket = createBucket.Id,
///         TargetBucket = createBucket.Id,
///         TargetPrefix = "log/",
///         LoggingRole = "example-role",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		createBucket, err := oss.NewBucket(ctx, "CreateBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.String("resource-example-logging-806"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucket(ctx, "CreateLoggingBucket", &oss.BucketArgs{
/// 			StorageClass: pulumi.String("Standard"),
/// 			Bucket:       pulumi.String("resource-example-logging-153"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = oss.NewBucketLogging(ctx, "default", &oss.BucketLoggingArgs{
/// 			Bucket:       createBucket.ID(),
/// 			TargetBucket: createBucket.ID(),
/// 			TargetPrefix: pulumi.String("log/"),
/// 			LoggingRole:  pulumi.String("example-role"),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.oss.BucketLogging;
/// import com.pulumi.alicloud.oss.BucketLoggingArgs;
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
///         var createBucket = new Bucket("createBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket("resource-example-logging-806")
///             .build());
///
///         var createLoggingBucket = new Bucket("createLoggingBucket", BucketArgs.builder()
///             .storageClass("Standard")
///             .bucket("resource-example-logging-153")
///             .build());
///
///         var default_ = new BucketLogging("default", BucketLoggingArgs.builder()
///             .bucket(createBucket.id())
///             .targetBucket(createBucket.id())
///             .targetPrefix("log/")
///             .loggingRole("example-role")
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
///   createBucket:
///     type: alicloud:oss:Bucket
///     name: CreateBucket
///     properties:
///       storageClass: Standard
///       bucket: resource-example-logging-806
///   createLoggingBucket:
///     type: alicloud:oss:Bucket
///     name: CreateLoggingBucket
///     properties:
///       storageClass: Standard
///       bucket: resource-example-logging-153
///   default:
///     type: alicloud:oss:BucketLogging
///     properties:
///       bucket: ${createBucket.id}
///       targetBucket: ${createBucket.id}
///       targetPrefix: log/
///       loggingRole: example-role
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// OSS Bucket Logging can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketLogging:BucketLogging example <id>
/// ```
class BucketLoggingOss extends pulumi.CustomResource {
  /// The name of the bucket
  late final pulumi.Output<String> bucket;
  /// Authorization role used for bucket logging
  late final pulumi.Output<String?> loggingRole;
  /// The bucket that stores access logs.
  late final pulumi.Output<String> targetBucket;
  /// The prefix of the saved log objects. This element can be left empty.
  late final pulumi.Output<String?> targetPrefix;

  /// Creates a new [BucketLoggingOss].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketLoggingOss]. {@macro pulumi_oss_bucket_logging_bucket_logging_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketLoggingOss(
    String name, {
    BucketLoggingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketLogging:BucketLogging',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.loggingRole = registerOutput<String?>('loggingRole');
    this.targetBucket = registerOutput<String>('targetBucket');
    this.targetPrefix = registerOutput<String?>('targetPrefix');
  }

  /// Gets an existing [BucketLoggingOss] resource's state with the given [name] and [id].
  static BucketLoggingOss get(
    String name,
    pulumi.Input<String> id, {
    BucketLoggingState? state,
  }) {
    return BucketLoggingOss._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketLoggingOss._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketLogging:BucketLogging',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.loggingRole = registerOutput<String?>('loggingRole');
    this.targetBucket = registerOutput<String>('targetBucket');
    this.targetPrefix = registerOutput<String?>('targetPrefix');
  }
}
