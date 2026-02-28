import 'package:pulumi/pulumi.dart' as pulumi;
import 'maintenance_window_args.dart';

/// Provides an SSM Maintenance Window resource
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const production = new aws.ssm.MaintenanceWindow("production", {
///     name: "maintenance-window-application",
///     schedule: "cron(0 16 ? * TUE *)",
///     duration: 3,
///     cutoff: 1,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// production = aws.ssm.MaintenanceWindow("production",
///     name="maintenance-window-application",
///     schedule="cron(0 16 ? * TUE *)",
///     duration=3,
///     cutoff=1)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var production = new Aws.Ssm.MaintenanceWindow("production", new()
///     {
///         Name = "maintenance-window-application",
///         Schedule = "cron(0 16 ? * TUE *)",
///         Duration = 3,
///         Cutoff = 1,
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
/// 		_, err := ssm.NewMaintenanceWindow(ctx, "production", &ssm.MaintenanceWindowArgs{
/// 			Name:     pulumi.String("maintenance-window-application"),
/// 			Schedule: pulumi.String("cron(0 16 ? * TUE *)"),
/// 			Duration: pulumi.Int(3),
/// 			Cutoff:   pulumi.Int(1),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var production = new MaintenanceWindow("production", MaintenanceWindowArgs.builder()
///             .name("maintenance-window-application")
///             .schedule("cron(0 16 ? * TUE *)")
///             .duration(3)
///             .cutoff(1)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   production:
///     type: aws:ssm:MaintenanceWindow
///     properties:
///       name: maintenance-window-application
///       schedule: cron(0 16 ? * TUE *)
///       duration: 3
///       cutoff: 1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` - (String) ID of the maintenance window.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import SSM  Maintenance Windows using the maintenance window `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ssm/maintenanceWindow:MaintenanceWindow example mw-0123456789
/// ```
class MaintenanceWindow extends pulumi.CustomResource {
  /// Whether targets must be registered with the Maintenance Window before tasks can be defined for those targets.
  late final pulumi.Output<bool?> allowUnassociatedTargets;

  /// The number of hours before the end of the Maintenance Window that Systems Manager stops scheduling new tasks for execution.
  late final pulumi.Output<int> cutoff;

  /// A description for the maintenance window.
  late final pulumi.Output<String?> description;

  /// The duration of the Maintenance Window in hours.
  late final pulumi.Output<int> duration;

  /// Whether the maintenance window is enabled. Default: `true`.
  late final pulumi.Output<bool?> enabled;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to no longer run the maintenance window.
  late final pulumi.Output<String?> endDate;

  /// The name of the maintenance window.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The schedule of the Maintenance Window in the form of a [cron or rate expression](https://docs.aws.amazon.com/systems-manager/latest/userguide/reference-cron-and-rate-expressions.html).
  late final pulumi.Output<String> schedule;

  /// The number of days to wait after the date and time specified by a CRON expression before running the maintenance window. Valid range is `1` to `6`.
  late final pulumi.Output<int?> scheduleOffset;

  /// Timezone for schedule in [Internet Assigned Numbers Authority (IANA) Time Zone Database format](https://www.iana.org/time-zones). For example: `America/Los_Angeles`, `etc/UTC`, or `Asia/Seoul`.
  late final pulumi.Output<String?> scheduleTimezone;

  /// Timestamp in [ISO-8601 extended format](https://www.iso.org/iso-8601-date-and-time-format.html) when to begin the maintenance window.
  late final pulumi.Output<String?> startDate;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [MaintenanceWindow].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MaintenanceWindow]. {@macro pulumi_ssm_maintenance_window_maintenance_window_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MaintenanceWindow(
    String name, {
    MaintenanceWindowArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ssm/maintenanceWindow:MaintenanceWindow',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allowUnassociatedTargets =
        registerOutput<bool?>('allowUnassociatedTargets');
    this.cutoff = registerOutput<int>('cutoff');
    this.description = registerOutput<String?>('description');
    this.duration = registerOutput<int>('duration');
    this.enabled = registerOutput<bool?>('enabled');
    this.endDate = registerOutput<String?>('endDate');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<String>('schedule');
    this.scheduleOffset = registerOutput<int?>('scheduleOffset');
    this.scheduleTimezone = registerOutput<String?>('scheduleTimezone');
    this.startDate = registerOutput<String?>('startDate');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
