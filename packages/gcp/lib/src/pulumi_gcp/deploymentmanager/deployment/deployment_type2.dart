import 'package:pulumi/pulumi.dart';
import '../deployment_label/deployment_label.dart';
import '../deployment_target/deployment_target.dart';
import 'deployment_args2.dart';

/// A collection of resources that are deployed and managed together using
/// a configuration file
///
///
///
/// > **Warning:** This resource is intended only to manage a Deployment resource,
/// and attempts to manage the Deployment's resources in the provider as well
/// will likely result in errors or unexpected behavior as the two tools
/// fight over ownership. We strongly discourage doing so unless you are an
/// experienced user of both tools.
///
/// In addition, due to limitations of the API, the provider will treat
/// deployments in preview as recreate-only for any update operation other
/// than actually deploying an in-preview deployment (i.e. `preview=true` to
/// `preview=false`).
///
/// ## Example Usage
///
/// ### Deployment Manager Deployment Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const deployment = new gcp.deploymentmanager.Deployment("deployment", {
/// name: "my-deployment",
/// target: {
/// config: {
/// content: std.file({
/// input: "path/to/config.yml",
/// }).then(invoke => invoke.result),
/// },
/// },
/// labels: [{
/// key: "foo",
/// value: "bar",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// deployment = gcp.deploymentmanager.Deployment("deployment",
/// name="my-deployment",
/// target={
/// "config": {
/// "content": std.file(input="path/to/config.yml").result,
/// },
/// },
/// labels=[{
/// "key": "foo",
/// "value": "bar",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var deployment = new Gcp.DeploymentManager.Deployment("deployment", new()
/// {
/// Name = "my-deployment",
/// Target = new Gcp.DeploymentManager.Inputs.DeploymentTargetArgs
/// {
/// Config = new Gcp.DeploymentManager.Inputs.DeploymentTargetConfigArgs
/// {
/// Content = Std.File.Invoke(new()
/// {
/// Input = "path/to/config.yml",
/// }).Apply(invoke => invoke.Result),
/// },
/// },
/// Labels = new[]
/// {
/// new Gcp.DeploymentManager.Inputs.DeploymentLabelArgs
/// {
/// Key = "foo",
/// Value = "bar",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/deploymentmanager"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "path/to/config.yml",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = deploymentmanager.NewDeployment(ctx, "deployment", &deploymentmanager.DeploymentArgs{
/// Name: pulumi.String("my-deployment"),
/// Target: &deploymentmanager.DeploymentTargetArgs{
/// Config: &deploymentmanager.DeploymentTargetConfigArgs{
/// Content: pulumi.String(invokeFile.Result),
/// },
/// },
/// Labels: deploymentmanager.DeploymentLabelArray{
/// &deploymentmanager.DeploymentLabelArgs{
/// Key:   pulumi.String("foo"),
/// Value: pulumi.String("bar"),
/// },
/// },
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
/// import com.pulumi.gcp.deploymentmanager.Deployment;
/// import com.pulumi.gcp.deploymentmanager.DeploymentArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentTargetArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentTargetConfigArgs;
/// import com.pulumi.gcp.deploymentmanager.inputs.DeploymentLabelArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var deployment = new Deployment("deployment", DeploymentArgs.builder()
/// .name("my-deployment")
/// .target(DeploymentTargetArgs.builder()
/// .config(DeploymentTargetConfigArgs.builder()
/// .content(StdFunctions.file(FileArgs.builder()
/// .input("path/to/config.yml")
/// .build()).result())
/// .build())
/// .build())
/// .labels(DeploymentLabelArgs.builder()
/// .key("foo")
/// .value("bar")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// deployment:
/// type: gcp:deploymentmanager:Deployment
/// properties:
/// name: my-deployment
/// target:
/// config:
/// content:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: path/to/config.yml
/// return: result
/// labels:
/// - key: foo
/// value: bar
/// ```
/// <!--End PulumiCodeChooser -->
/// ## Import
///
/// Deployment can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/deployments/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Deployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default projects/{{project}}/deployments/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:deploymentmanager/deployment:Deployment default {{name}}
/// ```
class DeploymentType2 extends CustomResource {
  /// Set the policy to use for creating new resources. Only used on
  /// create and update. Valid values are `CREATE_OR_ACQUIRE` (default) or
  /// `ACQUIRE`. If set to `ACQUIRE` and resources do not already exist,
  /// the deployment will fail. Note that updating this field does not
  /// actually affect the deployment, just how it is updated.
  /// Default value is `CREATE_OR_ACQUIRE`.
  /// Possible values are: `ACQUIRE`, `CREATE_OR_ACQUIRE`.
  late final Output<String?> createPolicy;

  /// Set the policy to use for deleting new resources on update/delete.
  /// Valid values are `DELETE` (default) or `ABANDON`. If `DELETE`,
  /// resource is deleted after removal from Deployment Manager. If
  /// `ABANDON`, the resource is only removed from Deployment Manager
  /// and is not actually deleted. Note that updating this field does not
  /// actually change the deployment, just how it is updated.
  /// Default value is `DELETE`.
  /// Possible values are: `ABANDON`, `DELETE`.
  late final Output<String?> deletePolicy;

  /// Unique identifier for deployment. Output only.
  late final Output<String> deploymentId;

  /// Optional user-provided description of deployment.
  late final Output<String?> description;

  /// Key-value pairs to apply to this labels.
  /// Structure is documented below.
  late final Output<List<DeploymentLabel>?> labels;

  /// Output only. URL of the manifest representing the last manifest that
  /// was successfully deployed.
  late final Output<String> manifest;

  /// Unique name for the deployment
  late final Output<String> name;

  /// If set to true, a deployment is created with "shell" resources
  /// that are not actually instantiated. This allows you to preview a
  /// deployment. It can be updated to false to actually deploy
  /// with real resources.
  /// ~>**NOTE:** Deployment Manager does not allow update
  /// of a deployment in preview (unless updating to preview=false). Thus,
  /// the provider will force-recreate deployments if either preview is updated
  /// to true or if other fields are updated while preview is true.
  late final Output<bool?> preview;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Output only. Server defined URL for the resource.
  late final Output<String> selfLink;

  /// Parameters that define your deployment, including the deployment
  /// configuration and relevant templates.
  /// Structure is documented below.
  late final Output<DeploymentTarget> target;

  DeploymentType2(
    String name, {
    DeploymentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:deploymentmanager/deployment:Deployment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createPolicy = Output.createUnknown<String?>();
    this.deletePolicy = Output.createUnknown<String?>();
    this.deploymentId = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.labels = Output.createUnknown<List<DeploymentLabel>?>();
    this.manifest = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.preview = Output.createUnknown<bool?>();
    this.project = Output.createUnknown<String>();
    this.selfLink = Output.createUnknown<String>();
    this.target = Output.createUnknown<DeploymentTarget>();
  }
}
