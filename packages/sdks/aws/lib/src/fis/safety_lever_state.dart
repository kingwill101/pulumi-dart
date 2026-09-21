import 'package:pulumi/pulumi.dart' as pulumi;
import 'safety_lever_state_args.dart';
import 'safety_lever_state_fis_state.dart';
import 'safety_lever_state_state.dart';
import 'safety_lever_state_timeouts.dart';

/// Manages the state of the AWS FIS (Fault Injection Simulator) safety lever for the account and Region. The safety lever is a single, account/Region-wide emergency stop: engaging it immediately stops all running experiments and blocks new ones from starting.
///
/// There is exactly one safety lever per account and Region, and it always exists — AWS does not provide APIs to create or delete it. Because of this, deleting this resource only removes it from Terraform state; it does not change the live value in AWS, so it never risks silently disengaging a safety control.
///
/// &gt; **Note:** AWS rejects a `reason` change unless `status` is also actually transitioning (for example, `engaged` to `disengaged`). Creating or updating this resource with a `status` that already matches the live safety lever succeeds only if the configured `reason` also matches the live `reason`; otherwise it fails at apply time. Pair a `reason` change with an actual `status` change.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.fis.SafetyLeverState("example", {state: {
///     status: "disengaged",
///     reason: "Managed by Pulumi",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fis.SafetyLeverState("example", state={
///     "status": "disengaged",
///     "reason": "Managed by Pulumi",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fis.SafetyLeverState("example", new()
///     {
///         State = new Aws.Fis.Inputs.SafetyLeverStateStateArgs
///         {
///             Status = "disengaged",
///             Reason = "Managed by Pulumi",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fis.NewSafetyLeverState(ctx, "example", &fis.SafetyLeverStateArgs{
/// 			State: &fis.SafetyLeverStateStateTypeArgs{
/// 				Status: pulumi.String("disengaged"),
/// 				Reason: pulumi.String("Managed by Pulumi"),
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
/// resource "aws_fis_safetyleverstate" "example" {
///   state = {
///     status = "disengaged"
///     reason = "Managed by Pulumi"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.fis.SafetyLeverState;
/// import com.pulumi.aws.fis.SafetyLeverStateArgs;
/// import com.pulumi.aws.fis.inputs.SafetyLeverStateStateArgs;
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
///         var example = new SafetyLeverState("example", SafetyLeverStateArgs.builder()
///             .state(SafetyLeverStateStateArgs.builder()
///                 .status("disengaged")
///                 .reason("Managed by Pulumi")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fis:SafetyLeverState
///     properties:
///       state:
///         status: disengaged
///         reason: Managed by Pulumi
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import the FIS safety lever state using the Region. For example:
///
/// ```sh
/// $ pulumi import aws:fis/safetyLeverState:SafetyLeverState example us-west-2
/// ```
class SafetyLeverState extends pulumi.CustomResource {
  /// ARN of the safety lever.
  late final pulumi.Output<String> arn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the safety lever. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<SafetyLeverStateState?> state;
  late final pulumi.Output<SafetyLeverStateTimeouts?> timeouts;

  /// Creates a new [SafetyLeverState].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SafetyLeverState]. {@macro pulumi_fis_safety_lever_state_safety_lever_state_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SafetyLeverState(
    String name, {
    SafetyLeverStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/safetyLeverState:SafetyLeverState',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    state = registerOutput<SafetyLeverStateState?>('state', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<SafetyLeverStateTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SafetyLeverState] resource's state with the given [name] and [id].
  static SafetyLeverState get(
    String name,
    pulumi.Input<String> id, {
    SafetyLeverStateFisState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SafetyLeverState._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SafetyLeverState._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/safetyLeverState:SafetyLeverState',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    this.state = registerOutput<SafetyLeverStateState?>('state', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<SafetyLeverStateTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SafetyLeverState] resource.
  SafetyLeverState.reference(String urn)
    : super(
        'aws:fis/safetyLeverState:SafetyLeverState',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    region = registerOutput<String>('region');
    state = registerOutput<SafetyLeverStateState?>('state', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateState.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<SafetyLeverStateTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SafetyLeverStateTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
