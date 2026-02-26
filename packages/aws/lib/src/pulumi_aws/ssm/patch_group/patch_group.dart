import 'package:pulumi/pulumi.dart';
import 'patch_group_args.dart';

/// Provides an SSM Patch Group resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.PatchBaseline("production", {
/// name: "patch-baseline",
/// approvedPatches: ["KB123456"],
/// });
/// const patchgroup = new aws.ssm.PatchGroup("patchgroup", {
/// baselineId: production.id,
/// patchGroup: "patch-group-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.PatchBaseline("production",
/// name="patch-baseline",
/// approved_patches=["KB123456"])
/// patchgroup = aws.ssm.PatchGroup("patchgroup",
/// baseline_id=production.id,
/// patch_group="patch-group-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var production = new Aws.Ssm.PatchBaseline("production", new()
/// {
/// Name = "patch-baseline",
/// ApprovedPatches = new[]
/// {
/// "KB123456",
/// },
/// });
///
/// var patchgroup = new Aws.Ssm.PatchGroup("patchgroup", new()
/// {
/// BaselineId = production.Id,
/// PatchGroupName = "patch-group-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// production, err := ssm.NewPatchBaseline(ctx, "production", &ssm.PatchBaselineArgs{
/// Name: pulumi.String("patch-baseline"),
/// ApprovedPatches: pulumi.StringArray{
/// pulumi.String("KB123456"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssm.NewPatchGroup(ctx, "patchgroup", &ssm.PatchGroupArgs{
/// BaselineId: production.ID(),
/// PatchGroup: pulumi.String("patch-group-name"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var production = new PatchBaseline("production", PatchBaselineArgs.builder()
/// .name("patch-baseline")
/// .approvedPatches("KB123456")
/// .build());
///
/// var patchgroup = new PatchGroup("patchgroup", PatchGroupArgs.builder()
/// .baselineId(production.id())
/// .patchGroup("patch-group-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production:
/// type: aws:ssm:PatchBaseline
/// properties:
/// name: patch-baseline
/// approvedPatches:
/// - KB123456
/// patchgroup:
/// type: aws:ssm:PatchGroup
/// properties:
/// baselineId: ${production.id}
/// patchGroup: patch-group-name
/// ```
/// <!--End PulumiCodeChooser -->
class PatchGroup extends CustomResource {
  /// The ID of the patch baseline to register the patch group with.
  late final Output<String> baselineId;

  /// The name of the patch group that should be registered with the patch baseline.
  late final Output<String> patchGroup;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  PatchGroup(
    String name, {
    PatchGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/patchGroup:PatchGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.baselineId = Output.createUnknown<String>();
    this.patchGroup = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
