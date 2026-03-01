import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_testing_plan_args.dart';
import 'restore_testing_plan_recovery_point_selection.dart';

/// Resource for managing an AWS Backup Restore Testing Plan.
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
/// const example = new aws.backup.RestoreTestingPlan("example", {
///     name: "example_restore_testing_plan",
///     recoveryPointSelection: {
///         algorithm: "LATEST_WITHIN_WINDOW",
///         includeVaults: ["*"],
///         recoveryPointTypes: ["CONTINUOUS"],
///     },
///     scheduleExpression: "cron(0 12 ? * * *)",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.backup.RestoreTestingPlan("example",
///     name="example_restore_testing_plan",
///     recovery_point_selection={
///         "algorithm": "LATEST_WITHIN_WINDOW",
///         "include_vaults": ["*"],
///         "recovery_point_types": ["CONTINUOUS"],
///     },
///     schedule_expression="cron(0 12 ? * * *)")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Backup.RestoreTestingPlan("example", new()
///     {
///         Name = "example_restore_testing_plan",
///         RecoveryPointSelection = new Aws.Backup.Inputs.RestoreTestingPlanRecoveryPointSelectionArgs
///         {
///             Algorithm = "LATEST_WITHIN_WINDOW",
///             IncludeVaults = new[]
///             {
///                 "*",
///             },
///             RecoveryPointTypes = new[]
///             {
///                 "CONTINUOUS",
///             },
///         },
///         ScheduleExpression = "cron(0 12 ? * * *)",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/backup"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := backup.NewRestoreTestingPlan(ctx, "example", &backup.RestoreTestingPlanArgs{
/// 			Name: pulumi.String("example_restore_testing_plan"),
/// 			RecoveryPointSelection: &backup.RestoreTestingPlanRecoveryPointSelectionArgs{
/// 				Algorithm: pulumi.String("LATEST_WITHIN_WINDOW"),
/// 				IncludeVaults: pulumi.StringArray{
/// 					pulumi.String("*"),
/// 				},
/// 				RecoveryPointTypes: pulumi.StringArray{
/// 					pulumi.String("CONTINUOUS"),
/// 				},
/// 			},
/// 			ScheduleExpression: pulumi.String("cron(0 12 ? * * *)"),
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
/// import com.pulumi.aws.backup.RestoreTestingPlan;
/// import com.pulumi.aws.backup.RestoreTestingPlanArgs;
/// import com.pulumi.aws.backup.inputs.RestoreTestingPlanRecoveryPointSelectionArgs;
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
///         var example = new RestoreTestingPlan("example", RestoreTestingPlanArgs.builder()
///             .name("example_restore_testing_plan")
///             .recoveryPointSelection(RestoreTestingPlanRecoveryPointSelectionArgs.builder()
///                 .algorithm("LATEST_WITHIN_WINDOW")
///                 .includeVaults("*")
///                 .recoveryPointTypes("CONTINUOUS")
///                 .build())
///             .scheduleExpression("cron(0 12 ? * * *)")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:backup:RestoreTestingPlan
///     properties:
///       name: example_restore_testing_plan
///       recoveryPointSelection:
///         algorithm: LATEST_WITHIN_WINDOW
///         includeVaults:
///           - '*'
///         recoveryPointTypes:
///           - CONTINUOUS
///       scheduleExpression: cron(0 12 ? * * *)
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Backup Restore Testing Plan using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:backup/restoreTestingPlan:RestoreTestingPlan example my_testing_plan
/// ```
class RestoreTestingPlan extends pulumi.CustomResource {
  /// ARN of the Restore Testing Plan.
  late final pulumi.Output<String> arn;
  /// The name of the restore testing plan. Must be between 1 and 50 characters long and contain only alphanumeric characters and underscores.
  late final pulumi.Output<String> name;
  /// Specifies the recovery point selection configuration. See RecoveryPointSelection section for more details.
  late final pulumi.Output<RestoreTestingPlanRecoveryPointSelection> recoveryPointSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The schedule expression for the restore testing plan.
  late final pulumi.Output<String> scheduleExpression;
  /// The timezone for the schedule expression. If not provided, the state value will be used.
  late final pulumi.Output<String> scheduleExpressionTimezone;
  /// The number of hours in the start window for the restore testing plan. Must be between 1 and 168.
  late final pulumi.Output<int> startWindowHours;
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [RestoreTestingPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RestoreTestingPlan]. {@macro pulumi_backup_restore_testing_plan_restore_testing_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RestoreTestingPlan(
    String name, {
    RestoreTestingPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:backup/restoreTestingPlan:RestoreTestingPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.recoveryPointSelection = registerOutput<RestoreTestingPlanRecoveryPointSelection>('recoveryPointSelection');
    this.region = registerOutput<String>('region');
    this.scheduleExpression = registerOutput<String>('scheduleExpression');
    this.scheduleExpressionTimezone = registerOutput<String>('scheduleExpressionTimezone');
    this.startWindowHours = registerOutput<int>('startWindowHours');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
