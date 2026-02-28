import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_ip_pool_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Dedicated IP Pool.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.DedicatedIpPool("example", {poolName: "my-pool"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpPool("example", pool_name="my-pool")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.DedicatedIpPool("example", new()
///     {
///         PoolName = "my-pool",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewDedicatedIpPool(ctx, "example", &sesv2.DedicatedIpPoolArgs{
/// 			PoolName: pulumi.String("my-pool"),
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
/// import com.pulumi.aws.sesv2.DedicatedIpPool;
/// import com.pulumi.aws.sesv2.DedicatedIpPoolArgs;
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
///         var example = new DedicatedIpPool("example", DedicatedIpPoolArgs.builder()
///             .poolName("my-pool")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:DedicatedIpPool
///     properties:
///       poolName: my-pool
/// ```
///
///
/// ### Managed Pool
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sesv2.DedicatedIpPool("example", {
///     poolName: "my-managed-pool",
///     scalingMode: "MANAGED",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sesv2.DedicatedIpPool("example",
///     pool_name="my-managed-pool",
///     scaling_mode="MANAGED")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.SesV2.DedicatedIpPool("example", new()
///     {
///         PoolName = "my-managed-pool",
///         ScalingMode = "MANAGED",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sesv2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sesv2.NewDedicatedIpPool(ctx, "example", &sesv2.DedicatedIpPoolArgs{
/// 			PoolName:    pulumi.String("my-managed-pool"),
/// 			ScalingMode: pulumi.String("MANAGED"),
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
/// import com.pulumi.aws.sesv2.DedicatedIpPool;
/// import com.pulumi.aws.sesv2.DedicatedIpPoolArgs;
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
///         var example = new DedicatedIpPool("example", DedicatedIpPoolArgs.builder()
///             .poolName("my-managed-pool")
///             .scalingMode("MANAGED")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sesv2:DedicatedIpPool
///     properties:
///       poolName: my-managed-pool
///       scalingMode: MANAGED
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Dedicated IP Pool using the `pool_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/dedicatedIpPool:DedicatedIpPool example my-pool
/// ```
class DedicatedIpPool extends pulumi.CustomResource {
  /// ARN of the Dedicated IP Pool.
  late final pulumi.Output<String> arn;
  /// Name of the dedicated IP pool.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> poolName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// IP pool scaling mode. Valid values: `STANDARD`, `MANAGED`. If omitted, the AWS API will default to a standard pool.
  late final pulumi.Output<String> scalingMode;
  /// A map of tags to assign to the pool. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [DedicatedIpPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedIpPool]. {@macro pulumi_sesv2_dedicated_ip_pool_dedicated_ip_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedIpPool(
    String name, {
    DedicatedIpPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/dedicatedIpPool:DedicatedIpPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.poolName = registerOutput<String>('poolName');
    this.region = registerOutput<String>('region');
    this.scalingMode = registerOutput<String>('scalingMode');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
