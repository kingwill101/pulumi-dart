import 'package:pulumi/pulumi.dart';
import '../maintenance_window_target_target/maintenance_window_target_target.dart';
import 'maintenance_window_target_args.dart';

/// Provides an SSM Maintenance Window Target resource
///
/// ## Example Usage
///
/// ### Instance Target
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const window = new aws.ssm.MaintenanceWindow("window", {
/// name: "maintenance-window-webapp",
/// schedule: "cron(0 16 ? * TUE *)",
/// duration: 3,
/// cutoff: 1,
/// });
/// const target1 = new aws.ssm.MaintenanceWindowTarget("target1", {
/// windowId: window.id,
/// name: "maintenance-window-target",
/// description: "This is a maintenance window target",
/// resourceType: "INSTANCE",
/// targets: [{
/// key: "tag:Name",
/// values: ["acceptance_test"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// window = aws.ssm.MaintenanceWindow("window",
/// name="maintenance-window-webapp",
/// schedule="cron(0 16 ? * TUE *)",
/// duration=3,
/// cutoff=1)
/// target1 = aws.ssm.MaintenanceWindowTarget("target1",
/// window_id=window.id,
/// name="maintenance-window-target",
/// description="This is a maintenance window target",
/// resource_type="INSTANCE",
/// targets=[{
/// "key": "tag:Name",
/// "values": ["acceptance_test"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var window = new Aws.Ssm.MaintenanceWindow("window", new()
/// {
/// Name = "maintenance-window-webapp",
/// Schedule = "cron(0 16 ? * TUE *)",
/// Duration = 3,
/// Cutoff = 1,
/// });
///
/// var target1 = new Aws.Ssm.MaintenanceWindowTarget("target1", new()
/// {
/// WindowId = window.Id,
/// Name = "maintenance-window-target",
/// Description = "This is a maintenance window target",
/// ResourceType = "INSTANCE",
/// Targets = new[]
/// {
/// new Aws.Ssm.Inputs.MaintenanceWindowTargetTargetArgs
/// {
/// Key = "tag:Name",
/// Values = new[]
/// {
/// "acceptance_test",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// window, err := ssm.NewMaintenanceWindow(ctx, "window", &ssm.MaintenanceWindowArgs{
/// Name:     pulumi.String("maintenance-window-webapp"),
/// Schedule: pulumi.String("cron(0 16 ? * TUE *)"),
/// Duration: pulumi.Int(3),
/// Cutoff:   pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssm.NewMaintenanceWindowTarget(ctx, "target1", &ssm.MaintenanceWindowTargetArgs{
/// WindowId:     window.ID(),
/// Name:         pulumi.String("maintenance-window-target"),
/// Description:  pulumi.String("This is a maintenance window target"),
/// ResourceType: pulumi.String("INSTANCE"),
/// Targets: ssm.MaintenanceWindowTargetTargetArray{
/// &ssm.MaintenanceWindowTargetTargetArgs{
/// Key: pulumi.String("tag:Name"),
/// Values: pulumi.StringArray{
/// pulumi.String("acceptance_test"),
/// },
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
/// import com.pulumi.aws.ssm.MaintenanceWindow;
/// import com.pulumi.aws.ssm.MaintenanceWindowArgs;
/// import com.pulumi.aws.ssm.MaintenanceWindowTarget;
/// import com.pulumi.aws.ssm.MaintenanceWindowTargetArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTargetTargetArgs;
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
/// var window = new MaintenanceWindow("window", MaintenanceWindowArgs.builder()
/// .name("maintenance-window-webapp")
/// .schedule("cron(0 16 ? * TUE *)")
/// .duration(3)
/// .cutoff(1)
/// .build());
///
/// var target1 = new MaintenanceWindowTarget("target1", MaintenanceWindowTargetArgs.builder()
/// .windowId(window.id())
/// .name("maintenance-window-target")
/// .description("This is a maintenance window target")
/// .resourceType("INSTANCE")
/// .targets(MaintenanceWindowTargetTargetArgs.builder()
/// .key("tag:Name")
/// .values("acceptance_test")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// window:
/// type: aws:ssm:MaintenanceWindow
/// properties:
/// name: maintenance-window-webapp
/// schedule: cron(0 16 ? * TUE *)
/// duration: 3
/// cutoff: 1
/// target1:
/// type: aws:ssm:MaintenanceWindowTarget
/// properties:
/// windowId: ${window.id}
/// name: maintenance-window-target
/// description: This is a maintenance window target
/// resourceType: INSTANCE
/// targets:
/// - key: tag:Name
/// values:
/// - acceptance_test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Resource Group Target
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const window = new aws.ssm.MaintenanceWindow("window", {
/// name: "maintenance-window-webapp",
/// schedule: "cron(0 16 ? * TUE *)",
/// duration: 3,
/// cutoff: 1,
/// });
/// const target1 = new aws.ssm.MaintenanceWindowTarget("target1", {
/// windowId: window.id,
/// name: "maintenance-window-target",
/// description: "This is a maintenance window target",
/// resourceType: "RESOURCE_GROUP",
/// targets: [{
/// key: "resource-groups:ResourceTypeFilters",
/// values: ["AWS::EC2::Instance"],
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// window = aws.ssm.MaintenanceWindow("window",
/// name="maintenance-window-webapp",
/// schedule="cron(0 16 ? * TUE *)",
/// duration=3,
/// cutoff=1)
/// target1 = aws.ssm.MaintenanceWindowTarget("target1",
/// window_id=window.id,
/// name="maintenance-window-target",
/// description="This is a maintenance window target",
/// resource_type="RESOURCE_GROUP",
/// targets=[{
/// "key": "resource-groups:ResourceTypeFilters",
/// "values": ["AWS::EC2::Instance"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var window = new Aws.Ssm.MaintenanceWindow("window", new()
/// {
/// Name = "maintenance-window-webapp",
/// Schedule = "cron(0 16 ? * TUE *)",
/// Duration = 3,
/// Cutoff = 1,
/// });
///
/// var target1 = new Aws.Ssm.MaintenanceWindowTarget("target1", new()
/// {
/// WindowId = window.Id,
/// Name = "maintenance-window-target",
/// Description = "This is a maintenance window target",
/// ResourceType = "RESOURCE_GROUP",
/// Targets = new[]
/// {
/// new Aws.Ssm.Inputs.MaintenanceWindowTargetTargetArgs
/// {
/// Key = "resource-groups:ResourceTypeFilters",
/// Values = new[]
/// {
/// "AWS::EC2::Instance",
/// },
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssm"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// window, err := ssm.NewMaintenanceWindow(ctx, "window", &ssm.MaintenanceWindowArgs{
/// Name:     pulumi.String("maintenance-window-webapp"),
/// Schedule: pulumi.String("cron(0 16 ? * TUE *)"),
/// Duration: pulumi.Int(3),
/// Cutoff:   pulumi.Int(1),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ssm.NewMaintenanceWindowTarget(ctx, "target1", &ssm.MaintenanceWindowTargetArgs{
/// WindowId:     window.ID(),
/// Name:         pulumi.String("maintenance-window-target"),
/// Description:  pulumi.String("This is a maintenance window target"),
/// ResourceType: pulumi.String("RESOURCE_GROUP"),
/// Targets: ssm.MaintenanceWindowTargetTargetArray{
/// &ssm.MaintenanceWindowTargetTargetArgs{
/// Key: pulumi.String("resource-groups:ResourceTypeFilters"),
/// Values: pulumi.StringArray{
/// pulumi.String("AWS::EC2::Instance"),
/// },
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
/// import com.pulumi.aws.ssm.MaintenanceWindow;
/// import com.pulumi.aws.ssm.MaintenanceWindowArgs;
/// import com.pulumi.aws.ssm.MaintenanceWindowTarget;
/// import com.pulumi.aws.ssm.MaintenanceWindowTargetArgs;
/// import com.pulumi.aws.ssm.inputs.MaintenanceWindowTargetTargetArgs;
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
/// var window = new MaintenanceWindow("window", MaintenanceWindowArgs.builder()
/// .name("maintenance-window-webapp")
/// .schedule("cron(0 16 ? * TUE *)")
/// .duration(3)
/// .cutoff(1)
/// .build());
///
/// var target1 = new MaintenanceWindowTarget("target1", MaintenanceWindowTargetArgs.builder()
/// .windowId(window.id())
/// .name("maintenance-window-target")
/// .description("This is a maintenance window target")
/// .resourceType("RESOURCE_GROUP")
/// .targets(MaintenanceWindowTargetTargetArgs.builder()
/// .key("resource-groups:ResourceTypeFilters")
/// .values("AWS::EC2::Instance")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// window:
/// type: aws:ssm:MaintenanceWindow
/// properties:
/// name: maintenance-window-webapp
/// schedule: cron(0 16 ? * TUE *)
/// duration: 3
/// cutoff: 1
/// target1:
/// type: aws:ssm:MaintenanceWindowTarget
/// properties:
/// windowId: ${window.id}
/// name: maintenance-window-target
/// description: This is a maintenance window target
/// resourceType: RESOURCE_GROUP
/// targets:
/// - key: resource-groups:ResourceTypeFilters
/// values:
/// - AWS::EC2::Instance
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`windowId`" pulumi-lang-dotnet="`WindowId`" pulumi-lang-go="`windowId`" pulumi-lang-python="`window_id`" pulumi-lang-yaml="`windowId`" pulumi-lang-java="`windowId`">`window_id`</span> - (String) ID of the maintenance window.
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the maintenance window target.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM Maintenance Window targets using `WINDOW_ID/WINDOW_TARGET_ID`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindowTarget:MaintenanceWindowTarget example mw-0c50858d01EXAMPLE/23639a0b-ddbc-4bca-9e72-78d96EXAMPLE
/// ```
class MaintenanceWindowTarget extends CustomResource {
  /// The description of the maintenance window target.
  late final Output<String?> description;

  /// The name of the maintenance window target.
  late final Output<String> name;

  /// User-provided value that will be included in any CloudWatch events raised while running tasks for these targets in this Maintenance Window.
  late final Output<String?> ownerInformation;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The type of target being registered with the Maintenance Window. Possible values are `INSTANCE` and `RESOURCE_GROUP`.
  late final Output<String> resourceType;

  /// The targets to register with the maintenance window. In other words, the instances to run commands on when the maintenance window runs. You can specify targets using instance IDs, resource group names, or tags that have been applied to instances. For more information about these examples formats see
  /// (https://docs.aws.amazon.com/systems-manager/latest/userguide/mw-cli-tutorial-targets-examples.html)
  late final Output<List<MaintenanceWindowTargetTarget>> targets;

  /// The Id of the maintenance window to register the target with.
  late final Output<String> windowId;

  MaintenanceWindowTarget(
    String name, {
    MaintenanceWindowTargetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindowTarget:MaintenanceWindowTarget',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.ownerInformation = registerOutput<String?>('ownerInformation');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String>('resourceType');
    this.targets =
        registerOutput<List<MaintenanceWindowTargetTarget>>('targets');
    this.windowId = registerOutput<String>('windowId');
  }
}
