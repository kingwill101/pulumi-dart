import 'package:pulumi/pulumi.dart' as pulumi;
import 'scheduling_policy_args.dart';
import 'scheduling_policy_fair_share_policy.dart';

/// Provides a Batch Scheduling Policy resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.batch.SchedulingPolicy("example", {
///     name: "example",
///     fairSharePolicy: {
///         computeReservation: 1,
///         shareDecaySeconds: 3600,
///         shareDistributions: [
///             {
///                 shareIdentifier: "A1*",
///                 weightFactor: 0.1,
///             },
///             {
///                 shareIdentifier: "A2",
///                 weightFactor: 0.2,
///             },
///         ],
///     },
///     tags: {
///         Name: "Example Batch Scheduling Policy",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.batch.SchedulingPolicy("example",
///     name="example",
///     fair_share_policy={
///         "compute_reservation": 1,
///         "share_decay_seconds": 3600,
///         "share_distributions": [
///             {
///                 "share_identifier": "A1*",
///                 "weight_factor": 0.1,
///             },
///             {
///                 "share_identifier": "A2",
///                 "weight_factor": 0.2,
///             },
///         ],
///     },
///     tags={
///         "Name": "Example Batch Scheduling Policy",
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
///     var example = new Aws.Batch.SchedulingPolicy("example", new()
///     {
///         Name = "example",
///         FairSharePolicy = new Aws.Batch.Inputs.SchedulingPolicyFairSharePolicyArgs
///         {
///             ComputeReservation = 1,
///             ShareDecaySeconds = 3600,
///             ShareDistributions = new[]
///             {
///                 new Aws.Batch.Inputs.SchedulingPolicyFairSharePolicyShareDistributionArgs
///                 {
///                     ShareIdentifier = "A1*",
///                     WeightFactor = 0.1,
///                 },
///                 new Aws.Batch.Inputs.SchedulingPolicyFairSharePolicyShareDistributionArgs
///                 {
///                     ShareIdentifier = "A2",
///                     WeightFactor = 0.2,
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Name", "Example Batch Scheduling Policy" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := batch.NewSchedulingPolicy(ctx, "example", &batch.SchedulingPolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			FairSharePolicy: &batch.SchedulingPolicyFairSharePolicyArgs{
/// 				ComputeReservation: pulumi.Int(1),
/// 				ShareDecaySeconds:  pulumi.Int(3600),
/// 				ShareDistributions: batch.SchedulingPolicyFairSharePolicyShareDistributionArray{
/// 					&batch.SchedulingPolicyFairSharePolicyShareDistributionArgs{
/// 						ShareIdentifier: pulumi.String("A1*"),
/// 						WeightFactor:    pulumi.Float64(0.1),
/// 					},
/// 					&batch.SchedulingPolicyFairSharePolicyShareDistributionArgs{
/// 						ShareIdentifier: pulumi.String("A2"),
/// 						WeightFactor:    pulumi.Float64(0.2),
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Batch Scheduling Policy"),
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
/// import com.pulumi.aws.batch.SchedulingPolicy;
/// import com.pulumi.aws.batch.SchedulingPolicyArgs;
/// import com.pulumi.aws.batch.inputs.SchedulingPolicyFairSharePolicyArgs;
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
///         var example = new SchedulingPolicy("example", SchedulingPolicyArgs.builder()
///             .name("example")
///             .fairSharePolicy(SchedulingPolicyFairSharePolicyArgs.builder()
///                 .computeReservation(1)
///                 .shareDecaySeconds(3600)
///                 .shareDistributions(
///                     SchedulingPolicyFairSharePolicyShareDistributionArgs.builder()
///                         .shareIdentifier("A1*")
///                         .weightFactor(0.1)
///                         .build(),
///                     SchedulingPolicyFairSharePolicyShareDistributionArgs.builder()
///                         .shareIdentifier("A2")
///                         .weightFactor(0.2)
///                         .build())
///                 .build())
///             .tags(Map.of("Name", "Example Batch Scheduling Policy"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:batch:SchedulingPolicy
///     properties:
///       name: example
///       fairSharePolicy:
///         computeReservation: 1
///         shareDecaySeconds: 3600
///         shareDistributions:
///           - shareIdentifier: A1*
///             weightFactor: 0.1
///           - shareIdentifier: A2
///             weightFactor: 0.2
///       tags:
///         Name: Example Batch Scheduling Policy
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Batch Scheduling Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:batch/schedulingPolicy:SchedulingPolicy test_policy arn:aws:batch:us-east-1:123456789012:scheduling-policy/sample
/// ```
class SchedulingPolicy extends pulumi.CustomResource {
  /// The Amazon Resource Name of the scheduling policy.
  late final pulumi.Output<String> arn;
  late final pulumi.Output<SchedulingPolicyFairSharePolicy?> fairSharePolicy;

  /// Specifies the name of the scheduling policy.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SchedulingPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SchedulingPolicy]. {@macro pulumi_batch_scheduling_policy_scheduling_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SchedulingPolicy(
    String name, {
    SchedulingPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:batch/schedulingPolicy:SchedulingPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.fairSharePolicy =
        registerOutput<SchedulingPolicyFairSharePolicy?>('fairSharePolicy');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
