import 'package:pulumi/pulumi.dart' as pulumi;
import 'resiliency_policy_args.dart';
import 'resiliency_policy_policy.dart';
import 'resiliency_policy_timeouts.dart';

/// Resource for managing an AWS Resilience Hub Resiliency Policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.ResiliencyPolicy("example", {
///     name: "testexample",
///     description: "testexample",
///     tier: "NonCritical",
///     dataLocationConstraint: "AnyLocation",
///     policy: {
///         region: {
///             rpo: "24h",
///             rto: "24h",
///         },
///         az: {
///             rpo: "24h",
///             rto: "24h",
///         },
///         hardware: {
///             rpo: "24h",
///             rto: "24h",
///         },
///         software: {
///             rpo: "24h",
///             rto: "24h",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.ResiliencyPolicy("example",
///     name="testexample",
///     description="testexample",
///     tier="NonCritical",
///     data_location_constraint="AnyLocation",
///     policy={
///         "region": {
///             "rpo": "24h",
///             "rto": "24h",
///         },
///         "az": {
///             "rpo": "24h",
///             "rto": "24h",
///         },
///         "hardware": {
///             "rpo": "24h",
///             "rto": "24h",
///         },
///         "software": {
///             "rpo": "24h",
///             "rto": "24h",
///         },
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
///     var example = new Aws.ResilienceHub.ResiliencyPolicy("example", new()
///     {
///         Name = "testexample",
///         Description = "testexample",
///         Tier = "NonCritical",
///         DataLocationConstraint = "AnyLocation",
///         Policy = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyArgs
///         {
///             Region = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyRegionArgs
///             {
///                 Rpo = "24h",
///                 Rto = "24h",
///             },
///             Az = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyAzArgs
///             {
///                 Rpo = "24h",
///                 Rto = "24h",
///             },
///             Hardware = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicyHardwareArgs
///             {
///                 Rpo = "24h",
///                 Rto = "24h",
///             },
///             Software = new Aws.ResilienceHub.Inputs.ResiliencyPolicyPolicySoftwareArgs
///             {
///                 Rpo = "24h",
///                 Rto = "24h",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resiliencehub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := resiliencehub.NewResiliencyPolicy(ctx, "example", &resiliencehub.ResiliencyPolicyArgs{
/// 			Name:                   pulumi.String("testexample"),
/// 			Description:            pulumi.String("testexample"),
/// 			Tier:                   pulumi.String("NonCritical"),
/// 			DataLocationConstraint: pulumi.String("AnyLocation"),
/// 			Policy: &resiliencehub.ResiliencyPolicyPolicyArgs{
/// 				Region: &resiliencehub.ResiliencyPolicyPolicyRegionArgs{
/// 					Rpo: pulumi.String("24h"),
/// 					Rto: pulumi.String("24h"),
/// 				},
/// 				Az: &resiliencehub.ResiliencyPolicyPolicyAzArgs{
/// 					Rpo: pulumi.String("24h"),
/// 					Rto: pulumi.String("24h"),
/// 				},
/// 				Hardware: &resiliencehub.ResiliencyPolicyPolicyHardwareArgs{
/// 					Rpo: pulumi.String("24h"),
/// 					Rto: pulumi.String("24h"),
/// 				},
/// 				Software: &resiliencehub.ResiliencyPolicyPolicySoftwareArgs{
/// 					Rpo: pulumi.String("24h"),
/// 					Rto: pulumi.String("24h"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.ResiliencyPolicy;
/// import com.pulumi.aws.resiliencehub.ResiliencyPolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyRegionArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyAzArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicyHardwareArgs;
/// import com.pulumi.aws.resiliencehub.inputs.ResiliencyPolicyPolicySoftwareArgs;
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
///         var example = new ResiliencyPolicy("example", ResiliencyPolicyArgs.builder()
///             .name("testexample")
///             .description("testexample")
///             .tier("NonCritical")
///             .dataLocationConstraint("AnyLocation")
///             .policy(ResiliencyPolicyPolicyArgs.builder()
///                 .region(ResiliencyPolicyPolicyRegionArgs.builder()
///                     .rpo("24h")
///                     .rto("24h")
///                     .build())
///                 .az(ResiliencyPolicyPolicyAzArgs.builder()
///                     .rpo("24h")
///                     .rto("24h")
///                     .build())
///                 .hardware(ResiliencyPolicyPolicyHardwareArgs.builder()
///                     .rpo("24h")
///                     .rto("24h")
///                     .build())
///                 .software(ResiliencyPolicyPolicySoftwareArgs.builder()
///                     .rpo("24h")
///                     .rto("24h")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:ResiliencyPolicy
///     properties:
///       name: testexample
///       description: testexample
///       tier: NonCritical
///       dataLocationConstraint: AnyLocation
///       policy:
///         region:
///           rpo: 24h
///           rto: 24h
///         az:
///           rpo: 24h
///           rto: 24h
///         hardware:
///           rpo: 24h
///           rto: 24h
///         software:
///           rpo: 24h
///           rto: 24h
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Resilience Hub Resiliency Policy using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy example arn:aws:resiliencehub:us-east-1:123456789012:resiliency-policy/8c1cfa29-d1dd-4421-aa68-c9f64cced4c2
/// ```
class ResiliencyPolicy extends pulumi.CustomResource {
  /// ARN of the Resiliency Policy.
  late final pulumi.Output<String> arn;

  /// Data Location Constraint of the Policy.
  /// Valid values are `AnyLocation`, `SameContinent`, and `SameCountry`.
  late final pulumi.Output<String> dataLocationConstraint;

  /// Description of Resiliency Policy.
  late final pulumi.Output<String?> description;

  /// Estimated Cost Tier of the Resiliency Policy.
  late final pulumi.Output<String> estimatedCostTier;

  /// Name of Resiliency Policy.
  /// Must be between 2 and 60 characters long.
  /// Must start with an alphanumeric character and contain alphanumeric characters, underscores, or hyphens.
  late final pulumi.Output<String> name;

  /// The type of resiliency policy to be created, including the recovery time objective (RTO) and recovery point objective (RPO) in seconds. See `policy`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ResiliencyPolicyPolicy?> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Resiliency Policy Tier.
  /// Valid values are `MissionCritical`, `Critical`, `Important`, `CoreServices`, `NonCritical`, and `NotApplicable`.
  late final pulumi.Output<String> tier;
  late final pulumi.Output<ResiliencyPolicyTimeouts?> timeouts;

  /// Creates a new [ResiliencyPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResiliencyPolicy]. {@macro pulumi_resiliencehub_resiliency_policy_resiliency_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResiliencyPolicy(
    String name, {
    ResiliencyPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:resiliencehub/resiliencyPolicy:ResiliencyPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.dataLocationConstraint = registerOutput<String>(
      'dataLocationConstraint',
    );
    this.description = registerOutput<String?>('description');
    this.estimatedCostTier = registerOutput<String>('estimatedCostTier');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<ResiliencyPolicyPolicy?>('policy');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tier = registerOutput<String>('tier');
    this.timeouts = registerOutput<ResiliencyPolicyTimeouts?>('timeouts');
  }
}
