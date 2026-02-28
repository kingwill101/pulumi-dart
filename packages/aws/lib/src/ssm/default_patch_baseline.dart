import 'package:pulumi/pulumi.dart' as pulumi;
import 'default_patch_baseline_args.dart';

/// Resource for registering an AWS Systems Manager Default Patch Baseline.
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
/// const examplePatchBaseline = new aws.ssm.PatchBaseline("example", {
///     name: "example",
///     approvedPatches: ["KB123456"],
/// });
/// const example = new aws.ssm.DefaultPatchBaseline("example", {
///     baselineId: examplePatchBaseline.id,
///     operatingSystem: examplePatchBaseline.operatingSystem,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_patch_baseline = aws.ssm.PatchBaseline("example",
///     name="example",
///     approved_patches=["KB123456"])
/// example = aws.ssm.DefaultPatchBaseline("example",
///     baseline_id=example_patch_baseline.id,
///     operating_system=example_patch_baseline.operating_system)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var examplePatchBaseline = new Aws.Ssm.PatchBaseline("example", new()
///     {
///         Name = "example",
///         ApprovedPatches = new[]
///         {
///             "KB123456",
///         },
///     });
///
///     var example = new Aws.Ssm.DefaultPatchBaseline("example", new()
///     {
///         BaselineId = examplePatchBaseline.Id,
///         OperatingSystem = examplePatchBaseline.OperatingSystem,
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
/// 		examplePatchBaseline, err := ssm.NewPatchBaseline(ctx, "example", &ssm.PatchBaselineArgs{
/// 			Name: pulumi.String("example"),
/// 			ApprovedPatches: pulumi.StringArray{
/// 				pulumi.String("KB123456"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ssm.NewDefaultPatchBaseline(ctx, "example", &ssm.DefaultPatchBaselineArgs{
/// 			BaselineId:      examplePatchBaseline.ID(),
/// 			OperatingSystem: examplePatchBaseline.OperatingSystem,
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
/// import com.pulumi.aws.ssm.PatchBaseline;
/// import com.pulumi.aws.ssm.PatchBaselineArgs;
/// import com.pulumi.aws.ssm.DefaultPatchBaseline;
/// import com.pulumi.aws.ssm.DefaultPatchBaselineArgs;
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
///         var examplePatchBaseline = new PatchBaseline("examplePatchBaseline", PatchBaselineArgs.builder()
///             .name("example")
///             .approvedPatches("KB123456")
///             .build());
///
///         var example = new DefaultPatchBaseline("example", DefaultPatchBaselineArgs.builder()
///             .baselineId(examplePatchBaseline.id())
///             .operatingSystem(examplePatchBaseline.operatingSystem())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ssm:DefaultPatchBaseline
///     properties:
///       baselineId: ${examplePatchBaseline.id}
///       operatingSystem: ${examplePatchBaseline.operatingSystem}
///   examplePatchBaseline:
///     type: aws:ssm:PatchBaseline
///     name: example
///     properties:
///       name: example
///       approvedPatches:
///         - KB123456
/// ```
///
///
/// ## Import
///
/// Using the patch baseline ARN:
///
///
/// Using the operating system value:
///
///
/// **Using `pulumi import` to import** the Systems Manager Default Patch Baseline using the patch baseline ID, patch baseline ARN, or the operating system value. For example:
///
/// Using the patch baseline ID:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example pb-1234567890abcdef1
/// ```
///
/// Using the patch baseline ARN:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example arn:aws:ssm:us-west-2:123456789012:patchbaseline/pb-1234567890abcdef1
/// ```
///
/// Using the operating system value:
///
/// ```sh
/// $ pulumi import aws:ssm/defaultPatchBaseline:DefaultPatchBaseline example CENTOS
/// ```
class DefaultPatchBaseline extends pulumi.CustomResource {
  /// ID of the patch baseline.
  /// Can be an ID or an ARN.
  /// When specifying an AWS-provided patch baseline, must be the ARN.
  late final pulumi.Output<String> baselineId;
  /// The operating system the patch baseline applies to.
  /// Valid values are
  /// `AMAZON_LINUX`,
  /// `AMAZON_LINUX_2`,
  /// `AMAZON_LINUX_2022`,
  /// `AMAZON_LINUX_2023`,
  /// `CENTOS`,
  /// `DEBIAN`,
  /// `MACOS`,
  /// `ORACLE_LINUX`,
  /// `RASPBIAN`,
  /// `REDHAT_ENTERPRISE_LINUX`,
  /// `ROCKY_LINUX`,
  /// `SUSE`,
  /// `UBUNTU`, and
  /// `WINDOWS`.
  late final pulumi.Output<String> operatingSystem;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [DefaultPatchBaseline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DefaultPatchBaseline]. {@macro pulumi_ssm_default_patch_baseline_default_patch_baseline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DefaultPatchBaseline(
    String name, {
    DefaultPatchBaselineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/defaultPatchBaseline:DefaultPatchBaseline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.baselineId = registerOutput<String>('baselineId');
    this.operatingSystem = registerOutput<String>('operatingSystem');
    this.region = registerOutput<String>('region');
  }
}
