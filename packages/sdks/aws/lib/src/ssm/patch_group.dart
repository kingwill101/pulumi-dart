import 'package:pulumi/pulumi.dart' as pulumi;
import 'patch_group_args.dart';
import 'patch_group_state.dart';

/// Provides an SSM Patch Group resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ssm.PatchBaseline("example", {
///     name: "patch-baseline",
///     approvedPatches: ["KB123456"],
/// });
/// const examplePatchGroup = new aws.ssm.PatchGroup("example", {
///     baselineId: example.id,
///     patchGroup: "patch-group-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ssm.PatchBaseline("example",
///     name="patch-baseline",
///     approved_patches=["KB123456"])
/// example_patch_group = aws.ssm.PatchGroup("example",
///     baseline_id=example.id,
///     patch_group="patch-group-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ssm.PatchBaseline("example", new()
///     {
///         Name = "patch-baseline",
///         ApprovedPatches = new[]
///         {
///             "KB123456",
///         },
///     });
///
///     var examplePatchGroup = new Aws.Ssm.PatchGroup("example", new()
///     {
///         BaselineId = example.Id,
///         PatchGroupName = "patch-group-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ssm.NewPatchBaseline(ctx, "example", &ssm.PatchBaselineArgs{
/// 			Name: pulumi.String("patch-baseline"),
/// 			ApprovedPatches: pulumi.StringArray{
/// 				pulumi.String("KB123456"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewPatchGroup(ctx, "example", &ssm.PatchGroupArgs{
/// 			BaselineId: example.ID().ToIDOutput().ToStringOutput(),
/// 			PatchGroup: pulumi.String("patch-group-name"),
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
/// resource "aws_ssm_patchbaseline" "example" {
///   name             = "patch-baseline"
///   approved_patches = ["KB123456"]
/// }
/// resource "aws_ssm_patchgroup" "example" {
///   baseline_id = aws_ssm_patchbaseline.example.id
///   patch_group = "patch-group-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
/// import com.pulumi.aws.ssm.PatchGroup;
/// import com.pulumi.aws.ssm.PatchGroupArgs;
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
///         var example = new PatchBaseline("example", PatchBaselineArgs.builder()
///             .name("patch-baseline")
///             .approvedPatches("KB123456")
///             .build());
///
///         var examplePatchGroup = new PatchGroup("examplePatchGroup", PatchGroupArgs.builder()
///             .baselineId(example.id())
///             .patchGroup("patch-group-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:PatchBaseline
///     properties:
///       name: patch-baseline
///       approvedPatches:
///         - KB123456
///   examplePatchGroup:
///     type: aws:ssm:PatchGroup
///     name: example
///     properties:
///       baselineId: ${example.id}
///       patchGroup: patch-group-name
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `baselineId` (String) The ID of the patch baseline.
/// * `patchGroup` (String) The name of the patch group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import an SSM Patch Group using the `patchGroup` and `baselineId` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ssm/patchGroup:PatchGroup example patch-group-name,pb-1234567890abcdef0
/// ```
class PatchGroup extends pulumi.CustomResource {
  /// The ID of the patch baseline to register the patch group with.
  late final pulumi.Output<String> baselineId;
  /// The name of the patch group that should be registered with the patch baseline.
  late final pulumi.Output<String> patchGroup;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [PatchGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PatchGroup]. {@macro pulumi_ssm_patch_group_patch_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PatchGroup(
    String name, {
    PatchGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchGroup:PatchGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    baselineId = registerOutput<String>('baselineId');
    patchGroup = registerOutput<String>('patchGroup');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [PatchGroup] resource's state with the given [name] and [id].
  static PatchGroup get(
    String name,
    pulumi.Input<String> id, {
    PatchGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PatchGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PatchGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchGroup:PatchGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    baselineId = registerOutput<String>('baselineId');
    patchGroup = registerOutput<String>('patchGroup');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [PatchGroup] resource.
  PatchGroup.reference(String urn)
    : super(
        'aws:ssm/patchGroup:PatchGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    baselineId = registerOutput<String>('baselineId');
    patchGroup = registerOutput<String>('patchGroup');
    region = registerOutput<String>('region');
  }
}
