import 'package:pulumi/pulumi.dart';
import 'maintenance_window_args.dart';

/// Provides an SSM Maintenance Window resource
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.MaintenanceWindow("production", {
/// name: "maintenance-window-application",
/// schedule: "cron(0 16 ? * TUE *)",
/// duration: 3,
/// cutoff: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.MaintenanceWindow("production",
/// name="maintenance-window-application",
/// schedule="cron(0 16 ? * TUE *)",
/// duration=3,
/// cutoff=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var production = new Aws.Ssm.MaintenanceWindow("production", new()
/// {
/// Name = "maintenance-window-application",
/// Schedule = "cron(0 16 ? * TUE *)",
/// Duration = 3,
/// Cutoff = 1,
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
/// _, err := ssm.NewMaintenanceWindow(ctx, "production", &ssm.MaintenanceWindowArgs{
/// Name:     pulumi.String("maintenance-window-application"),
/// Schedule: pulumi.String("cron(0 16 ? * TUE *)"),
/// Duration: pulumi.Int(3),
/// Cutoff:   pulumi.Int(1),
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
/// var production = new MaintenanceWindow("production", MaintenanceWindowArgs.builder()
/// .name("maintenance-window-application")
/// .schedule("cron(0 16 ? * TUE *)")
/// .duration(3)
/// .cutoff(1)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// production:
/// type: aws:ssm:MaintenanceWindow
/// properties:
/// name: maintenance-window-application
/// schedule: cron(0 16 ? * TUE *)
/// duration: 3
/// cutoff: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the maintenance window.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM  Maintenance Windows using the maintenance window <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindow:MaintenanceWindow example mw-0123456789
/// ```
class MaintenanceWindow extends CustomResource {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  late final Output<bool?> allowUnassociatedTargets;

  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  late final Output<int> cutoff;

  /// A description for the maintenance window.
  late final Output<String?> description;

  /// The duration of the Maintenance Window in hours.
  late final Output<int> duration;

  /// Whether the maintenance window is enabled. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> enabled;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  late final Output<String?> endDate;

  /// The name of the maintenance window.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  late final Output<String> schedule;

  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> to <span pulumi-lang-nodejs="`6`" pulumi-lang-dotnet="`6`" pulumi-lang-go="`6`" pulumi-lang-python="`6`" pulumi-lang-yaml="`6`" pulumi-lang-java="`6`">`6`</span>.
  late final Output<int?> scheduleOffset;

  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  late final Output<String?> scheduleTimezone;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  late final Output<String?> startDate;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  MaintenanceWindow(
    String name, {
    MaintenanceWindowArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindow:MaintenanceWindow',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.allowUnassociatedTargets = Output.createUnknown<bool?>();
    this.cutoff = Output.createUnknown<int>();
    this.description = Output.createUnknown<String?>();
    this.duration = Output.createUnknown<int>();
    this.enabled = Output.createUnknown<bool?>();
    this.endDate = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.schedule = Output.createUnknown<String>();
    this.scheduleOffset = Output.createUnknown<int?>();
    this.scheduleTimezone = Output.createUnknown<String?>();
    this.startDate = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
