import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_data_redundancy_transition_args.dart';
import 'bucket_data_redundancy_transition_state.dart';

/// Provides a OSS Bucket Data Redundancy Transition resource. Create a storage redundancy transition task to convert local redundant storage(LRS) to zone redundant storage(ZRS).
///
/// For information about OSS Bucket Data Redundancy Transition and how to use it, see [What is Bucket Data Redundancy Transition](https://www.alibabacloud.com/help/en/oss/developer-reference/createbucketdataredundancytransition).
///
/// &gt; **NOTE:** Available since v1.224.0.
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
/// const defaultBucketDataRedundancyTransition = new alicloud.oss.BucketDataRedundancyTransition("default", {bucket: createBucket.bucket});
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
/// default_bucket_data_redundancy_transition = alicloud.oss.BucketDataRedundancyTransition("default", bucket=create_bucket.bucket)
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
///     var defaultBucketDataRedundancyTransition = new AliCloud.Oss.BucketDataRedundancyTransition("default", new()
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
/// 		_, err = oss.NewBucketDataRedundancyTransition(ctx, "default", &oss.BucketDataRedundancyTransitionArgs{
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
/// import com.pulumi.alicloud.oss.BucketDataRedundancyTransition;
/// import com.pulumi.alicloud.oss.BucketDataRedundancyTransitionArgs;
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
///         var defaultBucketDataRedundancyTransition = new BucketDataRedundancyTransition("defaultBucketDataRedundancyTransition", BucketDataRedundancyTransitionArgs.builder()
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
///   defaultBucketDataRedundancyTransition:
///     type: alicloud:oss:BucketDataRedundancyTransition
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
/// OSS Bucket Data Redundancy Transition can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:oss/bucketDataRedundancyTransition:BucketDataRedundancyTransition example <bucket>:<task_id>
/// ```
class BucketDataRedundancyTransition extends pulumi.CustomResource {
  /// Storage space name.
  late final pulumi.Output<String> bucket;
  /// Stores the creation time of the redundant transformation task.
  late final pulumi.Output<String> createTime;
  /// Stores the state of the redundant translation task. The values are as follows:  Queueing: in the queue.  Processing: In progress.  Finished: Finished.
  late final pulumi.Output<String> status;
  /// Unique identification of the storage redundancy conversion task.
  late final pulumi.Output<String> taskId;

  /// Creates a new [BucketDataRedundancyTransition].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketDataRedundancyTransition]. {@macro pulumi_oss_bucket_data_redundancy_transition_bucket_data_redundancy_transition_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketDataRedundancyTransition(
    String name, {
    BucketDataRedundancyTransitionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketDataRedundancyTransition:BucketDataRedundancyTransition',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    status = registerOutput<String>('status');
    taskId = registerOutput<String>('taskId');
  }

  /// Gets an existing [BucketDataRedundancyTransition] resource's state with the given [name] and [id].
  static BucketDataRedundancyTransition get(
    String name,
    pulumi.Input<String> id, {
    BucketDataRedundancyTransitionState? state,
  }) {
    return BucketDataRedundancyTransition._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  BucketDataRedundancyTransition._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:oss/bucketDataRedundancyTransition:BucketDataRedundancyTransition',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    createTime = registerOutput<String>('createTime');
    status = registerOutput<String>('status');
    taskId = registerOutput<String>('taskId');
  }
}
