import 'package:pulumi/pulumi.dart' as pulumi;
import 'v2_user_journey_args.dart';
import 'v2_user_journey_state.dart';

/// Resource for managing an AWS Resilience Hub V2 User Journey.
///
/// A user journey describes a critical end-user path or business capability within a system (e.g., "Path to purchase", "Order fulfillment"). User journeys reference services and can have resilience policies applied at the journey level.
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
/// const example = new aws.resiliencehub.V2System("example", {name: "example-system"});
/// const exampleV2UserJourney = new aws.resiliencehub.V2UserJourney("example", {
///     systemArn: example.arn,
///     name: "example-user-journey",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2System("example", name="example-system")
/// example_v2_user_journey = aws.resiliencehub.V2UserJourney("example",
///     system_arn=example.arn,
///     name="example-user-journey")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2System("example", new()
///     {
///         Name = "example-system",
///     });
///
///     var exampleV2UserJourney = new Aws.ResilienceHub.V2UserJourney("example", new()
///     {
///         SystemArn = example.Arn,
///         Name = "example-user-journey",
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
/// 		example, err := resiliencehub.NewV2System(ctx, "example", &resiliencehub.V2SystemArgs{
/// 			Name: pulumi.String("example-system"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resiliencehub.NewV2UserJourney(ctx, "example", &resiliencehub.V2UserJourneyArgs{
/// 			SystemArn: example.Arn,
/// 			Name:      pulumi.String("example-user-journey"),
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
/// resource "aws_resiliencehub_v2system" "example" {
///   name = "example-system"
/// }
/// resource "aws_resiliencehub_v2userjourney" "example" {
///   system_arn = aws_resiliencehub_v2system.example.arn
///   name       = "example-user-journey"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2System;
/// import com.pulumi.aws.resiliencehub.V2SystemArgs;
/// import com.pulumi.aws.resiliencehub.V2UserJourney;
/// import com.pulumi.aws.resiliencehub.V2UserJourneyArgs;
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
///         var example = new V2System("example", V2SystemArgs.builder()
///             .name("example-system")
///             .build());
///
///         var exampleV2UserJourney = new V2UserJourney("exampleV2UserJourney", V2UserJourneyArgs.builder()
///             .systemArn(example.arn())
///             .name("example-user-journey")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2System
///     properties:
///       name: example-system
///   exampleV2UserJourney:
///     type: aws:resiliencehub:V2UserJourney
///     name: example
///     properties:
///       systemArn: ${example.arn}
///       name: example-user-journey
/// ```
///
///
/// ### With Policy
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.resiliencehub.V2System("example", {name: "example-system"});
/// const exampleV2Policy = new aws.resiliencehub.V2Policy("example", {
///     name: "example-policy",
///     availabilitySlo: {
///         target: 99.9,
///     },
/// });
/// const exampleV2UserJourney = new aws.resiliencehub.V2UserJourney("example", {
///     systemArn: example.arn,
///     name: "checkout-flow",
///     description: "End-to-end checkout user journey",
///     policyArn: exampleV2Policy.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.resiliencehub.V2System("example", name="example-system")
/// example_v2_policy = aws.resiliencehub.V2Policy("example",
///     name="example-policy",
///     availability_slo={
///         "target": 99.9,
///     })
/// example_v2_user_journey = aws.resiliencehub.V2UserJourney("example",
///     system_arn=example.arn,
///     name="checkout-flow",
///     description="End-to-end checkout user journey",
///     policy_arn=example_v2_policy.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ResilienceHub.V2System("example", new()
///     {
///         Name = "example-system",
///     });
///
///     var exampleV2Policy = new Aws.ResilienceHub.V2Policy("example", new()
///     {
///         Name = "example-policy",
///         AvailabilitySlo = new Aws.ResilienceHub.Inputs.V2PolicyAvailabilitySloArgs
///         {
///             Target = 99.9,
///         },
///     });
///
///     var exampleV2UserJourney = new Aws.ResilienceHub.V2UserJourney("example", new()
///     {
///         SystemArn = example.Arn,
///         Name = "checkout-flow",
///         Description = "End-to-end checkout user journey",
///         PolicyArn = exampleV2Policy.Arn,
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
/// 		example, err := resiliencehub.NewV2System(ctx, "example", &resiliencehub.V2SystemArgs{
/// 			Name: pulumi.String("example-system"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleV2Policy, err := resiliencehub.NewV2Policy(ctx, "example", &resiliencehub.V2PolicyArgs{
/// 			Name: pulumi.String("example-policy"),
/// 			AvailabilitySlo: &resiliencehub.V2PolicyAvailabilitySloArgs{
/// 				Target: pulumi.Float64(99.9),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resiliencehub.NewV2UserJourney(ctx, "example", &resiliencehub.V2UserJourneyArgs{
/// 			SystemArn:   example.Arn,
/// 			Name:        pulumi.String("checkout-flow"),
/// 			Description: pulumi.String("End-to-end checkout user journey"),
/// 			PolicyArn:   exampleV2Policy.Arn,
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
/// resource "aws_resiliencehub_v2system" "example" {
///   name = "example-system"
/// }
/// resource "aws_resiliencehub_v2policy" "example" {
///   name = "example-policy"
///   availability_slo = {
///     target = 99.9
///   }
/// }
/// resource "aws_resiliencehub_v2userjourney" "example" {
///   system_arn  = aws_resiliencehub_v2system.example.arn
///   name        = "checkout-flow"
///   description = "End-to-end checkout user journey"
///   policy_arn  = aws_resiliencehub_v2policy.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.resiliencehub.V2System;
/// import com.pulumi.aws.resiliencehub.V2SystemArgs;
/// import com.pulumi.aws.resiliencehub.V2Policy;
/// import com.pulumi.aws.resiliencehub.V2PolicyArgs;
/// import com.pulumi.aws.resiliencehub.inputs.V2PolicyAvailabilitySloArgs;
/// import com.pulumi.aws.resiliencehub.V2UserJourney;
/// import com.pulumi.aws.resiliencehub.V2UserJourneyArgs;
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
///         var example = new V2System("example", V2SystemArgs.builder()
///             .name("example-system")
///             .build());
///
///         var exampleV2Policy = new V2Policy("exampleV2Policy", V2PolicyArgs.builder()
///             .name("example-policy")
///             .availabilitySlo(V2PolicyAvailabilitySloArgs.builder()
///                 .target(99.9)
///                 .build())
///             .build());
///
///         var exampleV2UserJourney = new V2UserJourney("exampleV2UserJourney", V2UserJourneyArgs.builder()
///             .systemArn(example.arn())
///             .name("checkout-flow")
///             .description("End-to-end checkout user journey")
///             .policyArn(exampleV2Policy.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:resiliencehub:V2System
///     properties:
///       name: example-system
///   exampleV2Policy:
///     type: aws:resiliencehub:V2Policy
///     name: example
///     properties:
///       name: example-policy
///       availabilitySlo:
///         target: 99.9
///   exampleV2UserJourney:
///     type: aws:resiliencehub:V2UserJourney
///     name: example
///     properties:
///       systemArn: ${example.arn}
///       name: checkout-flow
///       description: End-to-end checkout user journey
///       policyArn: ${exampleV2Policy.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `systemArn` (String) ARN of the system this user journey belongs to.
/// * `userJourneyId` (String) Unique identifier of the user journey.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Resilience Hub V2 User Journey using the `systemArn` and `userJourneyId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resiliencehub/v2UserJourney:V2UserJourney example arn:aws:resiliencehub:us-west-2:123456789012:system/example-system:abc123,12345678-1234-1234-1234-123456789012
/// ```
class V2UserJourney extends pulumi.CustomResource {
  /// Description of the user journey.
  late final pulumi.Output<String?> description;
  /// Name of the user journey.
  late final pulumi.Output<String> name;
  /// ARN of the resilience policy to associate with this user journey.
  late final pulumi.Output<String?> policyArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the system this user journey belongs to. Changing this value requires creating a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> systemArn;
  /// Unique identifier of the user journey.
  late final pulumi.Output<String> userJourneyId;

  /// Creates a new [V2UserJourney].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [V2UserJourney]. {@macro pulumi_resiliencehub_v2_user_journey_v2_user_journey_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  V2UserJourney(
    String name, {
    V2UserJourneyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2UserJourney:V2UserJourney',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String?>('policyArn');
    region = registerOutput<String>('region');
    systemArn = registerOutput<String>('systemArn');
    userJourneyId = registerOutput<String>('userJourneyId');
  }

  /// Gets an existing [V2UserJourney] resource's state with the given [name] and [id].
  static V2UserJourney get(
    String name,
    pulumi.Input<String> id, {
    V2UserJourneyState? state,
  }) {
    return V2UserJourney._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  V2UserJourney._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:resiliencehub/v2UserJourney:V2UserJourney',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    policyArn = registerOutput<String?>('policyArn');
    region = registerOutput<String>('region');
    systemArn = registerOutput<String>('systemArn');
    userJourneyId = registerOutput<String>('userJourneyId');
  }
}
