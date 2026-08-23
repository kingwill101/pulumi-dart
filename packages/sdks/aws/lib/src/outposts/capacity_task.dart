import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_task_args.dart';
import 'capacity_task_instances_to_exclude.dart';
import 'capacity_task_state.dart';
import 'capacity_task_timeouts.dart';

/// Resource for managing an AWS Outposts Capacity Task.
///
/// A capacity task redistributes the instance pools available on an Outpost rack or server to match the `instancePool` configuration declared in the resource. Starting a capacity task is a long-running, asynchronous operation — Terraform waits for it to reach a terminal state (`COMPLETED`, `CANCELLED`, or `FAILED`) before finishing the apply.
///
/// Because every argument of this resource is marked as forces-new, any change to the configuration results in destroying and re-creating the capacity task. Tasks that are already in a terminal state (`COMPLETED` or `CANCELLED`) are left in place on destroy and only removed from Terraform state; tasks still in flight are cancelled and Terraform waits for them to reach `CANCELLED`. If a task reaches the terminal state `FAILED` during `delete`, the provider tolerates the "already in a terminal state" error returned by `CancelCapacityTask` and considers the resource successfully destroyed. If a create operation produces a `FAILED` task, the resource is not written to Terraform state (the `failureReason` is surfaced in the diagnostic instead), so no follow-up destroy is required.
///
/// ## Example Usage
///
/// ### Minimal
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getOutposts({});
/// const exampleCapacityTask = new aws.outposts.CapacityTask("example", {
///     outpostIdentifier: example.then(example => example.arns?.[0]),
///     instancePools: [{
///         instanceType: "m5.large",
///         count: 2,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_outposts()
/// example_capacity_task = aws.outposts.CapacityTask("example",
///     outpost_identifier=example.arns[0],
///     instance_pools=[{
///         "instance_type": "m5.large",
///         "count": 2,
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetOutposts.Invoke();
///
///     var exampleCapacityTask = new Aws.Outposts.CapacityTask("example", new()
///     {
///         OutpostIdentifier = example.Apply(getOutpostsResult => getOutpostsResult.Arns[0]),
///         InstancePools = new[]
///         {
///             new Aws.Outposts.Inputs.CapacityTaskInstancePoolArgs
///             {
///                 InstanceType = "m5.large",
///                 Count = 2,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := outposts.GetOutposts(ctx, &outposts.GetOutpostsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = outposts.NewCapacityTask(ctx, "example", &outposts.CapacityTaskArgs{
/// 			OutpostIdentifier: pulumi.String(example.Arns[0]),
/// 			InstancePools: outposts.CapacityTaskInstancePoolArray{
/// 				&outposts.CapacityTaskInstancePoolArgs{
/// 					InstanceType: pulumi.String("m5.large"),
/// 					Count:        pulumi.Int(2),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_outposts_getoutposts" "example" {
/// }
///
/// resource "aws_outposts_capacitytask" "example" {
///   outpost_identifier = data.aws_outposts_getoutposts.example.arns[0]
///   instance_pools {
///     instance_type = "m5.large"
///     count         = 2
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetOutpostsArgs;
/// import com.pulumi.aws.outposts.CapacityTask;
/// import com.pulumi.aws.outposts.CapacityTaskArgs;
/// import com.pulumi.aws.outposts.inputs.CapacityTaskInstancePoolArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = OutpostsFunctions.getOutposts(GetOutpostsArgs.builder()
///             .build());
///
///         var exampleCapacityTask = new CapacityTask("exampleCapacityTask", CapacityTaskArgs.builder()
///             .outpostIdentifier(example.arns()[0])
///             .instancePools(CapacityTaskInstancePoolArgs.builder()
///                 .instanceType("m5.large")
///                 .count(2)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCapacityTask:
///     type: aws:outposts:CapacityTask
///     name: example
///     properties:
///       outpostIdentifier: ${example.arns[0]}
///       instancePools:
///         - instanceType: m5.large
///           count: 2
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getOutposts
///       arguments: {}
/// ```
///
///
/// ### Multiple instance pools, excluded instances, and a specified blocking-instance action
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.outposts.getAssets({
///     arn: "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// });
/// const exampleCapacityTask = new aws.outposts.CapacityTask("example", {
///     outpostIdentifier: "op-1234567890abcdef",
///     taskActionOnBlockingInstances: "WAIT_FOR_EVACUATION",
///     assetId: example.then(example => example.assetIds?.[0]),
///     instancePools: [
///         {
///             instanceType: "m5.large",
///             count: 4,
///         },
///         {
///             instanceType: "c5.xlarge",
///             count: 2,
///         },
///     ],
///     instancesToExclude: {
///         instances: [
///             "i-0123456789abcdef0",
///             "i-0fedcba9876543210",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.outposts.get_assets(arn="arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
/// example_capacity_task = aws.outposts.CapacityTask("example",
///     outpost_identifier="op-1234567890abcdef",
///     task_action_on_blocking_instances="WAIT_FOR_EVACUATION",
///     asset_id=example.asset_ids[0],
///     instance_pools=[
///         {
///             "instance_type": "m5.large",
///             "count": 4,
///         },
///         {
///             "instance_type": "c5.xlarge",
///             "count": 2,
///         },
///     ],
///     instances_to_exclude={
///         "instances": [
///             "i-0123456789abcdef0",
///             "i-0fedcba9876543210",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Outposts.GetAssets.Invoke(new()
///     {
///         Arn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
///     });
///
///     var exampleCapacityTask = new Aws.Outposts.CapacityTask("example", new()
///     {
///         OutpostIdentifier = "op-1234567890abcdef",
///         TaskActionOnBlockingInstances = "WAIT_FOR_EVACUATION",
///         AssetId = example.Apply(getAssetsResult => getAssetsResult.AssetIds[0]),
///         InstancePools = new[]
///         {
///             new Aws.Outposts.Inputs.CapacityTaskInstancePoolArgs
///             {
///                 InstanceType = "m5.large",
///                 Count = 4,
///             },
///             new Aws.Outposts.Inputs.CapacityTaskInstancePoolArgs
///             {
///                 InstanceType = "c5.xlarge",
///                 Count = 2,
///             },
///         },
///         InstancesToExclude = new Aws.Outposts.Inputs.CapacityTaskInstancesToExcludeArgs
///         {
///             Instances = new[]
///             {
///                 "i-0123456789abcdef0",
///                 "i-0fedcba9876543210",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/outposts"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := outposts.GetAssets(ctx, &outposts.GetAssetsArgs{
/// 			Arn: "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = outposts.NewCapacityTask(ctx, "example", &outposts.CapacityTaskArgs{
/// 			OutpostIdentifier:             pulumi.String("op-1234567890abcdef"),
/// 			TaskActionOnBlockingInstances: pulumi.String("WAIT_FOR_EVACUATION"),
/// 			AssetId:                       pulumi.String(example.AssetIds[0]),
/// 			InstancePools: outposts.CapacityTaskInstancePoolArray{
/// 				&outposts.CapacityTaskInstancePoolArgs{
/// 					InstanceType: pulumi.String("m5.large"),
/// 					Count:        pulumi.Int(4),
/// 				},
/// 				&outposts.CapacityTaskInstancePoolArgs{
/// 					InstanceType: pulumi.String("c5.xlarge"),
/// 					Count:        pulumi.Int(2),
/// 				},
/// 			},
/// 			InstancesToExclude: &outposts.CapacityTaskInstancesToExcludeArgs{
/// 				Instances: pulumi.StringArray{
/// 					pulumi.String("i-0123456789abcdef0"),
/// 					pulumi.String("i-0fedcba9876543210"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_outposts_getassets" "example" {
///   arn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"
/// }
///
/// resource "aws_outposts_capacitytask" "example" {
///   outpost_identifier                = "op-1234567890abcdef"
///   task_action_on_blocking_instances = "WAIT_FOR_EVACUATION"
///   asset_id                          = data.aws_outposts_getassets.example.asset_ids[0]
///   instance_pools {
///     instance_type = "m5.large"
///     count         = 4
///   }
///   instance_pools {
///     instance_type = "c5.xlarge"
///     count         = 2
///   }
///   instances_to_exclude = {
///     instances = ["i-0123456789abcdef0", "i-0fedcba9876543210"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.outposts.OutpostsFunctions;
/// import com.pulumi.aws.outposts.inputs.GetAssetsArgs;
/// import com.pulumi.aws.outposts.CapacityTask;
/// import com.pulumi.aws.outposts.CapacityTaskArgs;
/// import com.pulumi.aws.outposts.inputs.CapacityTaskInstancePoolArgs;
/// import com.pulumi.aws.outposts.inputs.CapacityTaskInstancesToExcludeArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         final var example = OutpostsFunctions.getAssets(GetAssetsArgs.builder()
///             .arn("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
///             .build());
///
///         var exampleCapacityTask = new CapacityTask("exampleCapacityTask", CapacityTaskArgs.builder()
///             .outpostIdentifier("op-1234567890abcdef")
///             .taskActionOnBlockingInstances("WAIT_FOR_EVACUATION")
///             .assetId(example.assetIds()[0])
///             .instancePools(
///                 CapacityTaskInstancePoolArgs.builder()
///                     .instanceType("m5.large")
///                     .count(4)
///                     .build(),
///                 CapacityTaskInstancePoolArgs.builder()
///                     .instanceType("c5.xlarge")
///                     .count(2)
///                     .build())
///             .instancesToExclude(CapacityTaskInstancesToExcludeArgs.builder()
///                 .instances(
///                     "i-0123456789abcdef0",
///                     "i-0fedcba9876543210")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCapacityTask:
///     type: aws:outposts:CapacityTask
///     name: example
///     properties:
///       outpostIdentifier: op-1234567890abcdef
///       taskActionOnBlockingInstances: WAIT_FOR_EVACUATION
///       assetId: ${example.assetIds[0]}
///       instancePools:
///         - instanceType: m5.large
///           count: 4
///         - instanceType: c5.xlarge
///           count: 2
///       instancesToExclude:
///         instances:
///           - i-0123456789abcdef0
///           - i-0fedcba9876543210
/// variables:
///   example:
///     fn::invoke:
///       function: aws:outposts:getAssets
///       arguments:
///         arn: arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `outpostIdentifier` (String) Outpost identifier supplied when the task was created (ID or ARN).
/// * `capacityTaskId` (String) AWS-assigned capacity task ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a Capacity Task using the same composite ID. For example:
///
/// ```sh
/// $ pulumi import aws:outposts/capacityTask:CapacityTask example op-1234567890abcdef/cap-1a2b3c4d5e6f7g8h9
/// ```
class CapacityTask extends pulumi.CustomResource {
  /// ID of a specific Outposts asset (hardware server) to target for the capacity task. If omitted, AWS selects an appropriate asset automatically. Discover valid asset IDs with the `aws.outposts.getAssets` data source. Changing this value forces a new resource.
  late final pulumi.Output<String> assetId;
  /// ID assigned by AWS to the capacity task (for example, `cap-1a2b3c4d5e6f7g8h9`).
  late final pulumi.Output<String> capacityTaskId;
  /// RFC 3339 timestamp at which the capacity task reached a terminal state (if any).
  late final pulumi.Output<String> completionDate;
  /// RFC 3339 timestamp at which the capacity task was created.
  late final pulumi.Output<String> creationDate;
  /// Human-readable reason reported by AWS when the capacity task failed. `null` unless the terminal state is `FAILED`.
  late final pulumi.Output<String> failureReason;
  /// One or more `instancePool` blocks defining the desired instance-type layout for the Outpost. See below. At least one block is required. Changing any value forces a new resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> instancePools;
  /// Single `instancesToExclude` block specifying user-owned running instances that must not be stopped to free up capacity. See below. Note: AWS does not return this value via the Get/Describe API; after import, you must add the block back to your configuration manually — see Import.
  late final pulumi.Output<CapacityTaskInstancesToExclude?> instancesToExclude;
  /// ID of the Amazon Web Services Outposts order associated with the capacity task. Changing this value forces a new resource.
  late final pulumi.Output<String> orderId;
  /// ID or ARN of the Outpost on which to run the capacity task. Both forms are accepted; the provider normalizes the value internally. Changing this value forces a new resource.
  late final pulumi.Output<String> outpostIdentifier;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current status of the capacity task. One of `REQUESTED`, `IN_PROGRESS`, `WAITING_FOR_EVACUATION`, `CANCELLATION_IN_PROGRESS`, `COMPLETED`, `CANCELLED`, or `FAILED`. See the [AWS documentation](https://docs.aws.amazon.com/outposts/latest/APIReference/API_GetCapacityTask.html) for semantics.
  late final pulumi.Output<String> status;
  /// Action to take if running instances block the capacity task. Valid values are `WAIT_FOR_EVACUATION` and `FAIL_TASK`. Changing this value forces a new resource.
  late final pulumi.Output<String> taskActionOnBlockingInstances;
  /// Configuration block with timeouts. See below.
  late final pulumi.Output<CapacityTaskTimeouts?> timeouts;

  /// Creates a new [CapacityTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CapacityTask]. {@macro pulumi_outposts_capacity_task_capacity_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CapacityTask(
    String name, {
    CapacityTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:outposts/capacityTask:CapacityTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetId = registerOutput<String>('assetId');
    capacityTaskId = registerOutput<String>('capacityTaskId');
    completionDate = registerOutput<String>('completionDate');
    creationDate = registerOutput<String>('creationDate');
    failureReason = registerOutput<String>('failureReason');
    instancePools = registerOutput<List<Map<String, dynamic>>?>('instancePools');
    instancesToExclude = registerOutput<CapacityTaskInstancesToExclude?>('instancesToExclude', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityTaskInstancesToExclude.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderId = registerOutput<String>('orderId');
    outpostIdentifier = registerOutput<String>('outpostIdentifier');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    taskActionOnBlockingInstances = registerOutput<String>('taskActionOnBlockingInstances');
    timeouts = registerOutput<CapacityTaskTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityTaskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [CapacityTask] resource's state with the given [name] and [id].
  static CapacityTask get(
    String name,
    pulumi.Input<String> id, {
    CapacityTaskState? state,
  }) {
    return CapacityTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CapacityTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:outposts/capacityTask:CapacityTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    assetId = registerOutput<String>('assetId');
    capacityTaskId = registerOutput<String>('capacityTaskId');
    completionDate = registerOutput<String>('completionDate');
    creationDate = registerOutput<String>('creationDate');
    failureReason = registerOutput<String>('failureReason');
    instancePools = registerOutput<List<Map<String, dynamic>>?>('instancePools');
    instancesToExclude = registerOutput<CapacityTaskInstancesToExclude?>('instancesToExclude', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityTaskInstancesToExclude.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    orderId = registerOutput<String>('orderId');
    outpostIdentifier = registerOutput<String>('outpostIdentifier');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    taskActionOnBlockingInstances = registerOutput<String>('taskActionOnBlockingInstances');
    timeouts = registerOutput<CapacityTaskTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CapacityTaskTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
