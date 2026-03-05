import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_schedule_args.dart';
import 'runbook_association_property_response.dart';
import 'schedule_association_property_response.dart';

/// Definition of the job schedule.
///
/// Uses Azure REST API version 2023-11-01. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a job schedule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var jobSchedule = new AzureNative.Automation.JobSchedule("jobSchedule", new()
///     {
///         AutomationAccountName = "ContoseAutomationAccount",
///         JobScheduleId = "0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc",
///         Parameters =
///         {
///             { "jobscheduletag01", "jobschedulevalue01" },
///             { "jobscheduletag02", "jobschedulevalue02" },
///         },
///         ResourceGroupName = "rg",
///         Runbook = new AzureNative.Automation.Inputs.RunbookAssociationPropertyArgs
///         {
///             Name = "TestRunbook",
///         },
///         Schedule = new AzureNative.Automation.Inputs.ScheduleAssociationPropertyArgs
///         {
///             Name = "ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2",
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	automation "github.com/pulumi/pulumi-azure-native-sdk/automation/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := automation.NewJobSchedule(ctx, "jobSchedule", &automation.JobScheduleArgs{
/// 			AutomationAccountName: pulumi.String("ContoseAutomationAccount"),
/// 			JobScheduleId:         pulumi.String("0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc"),
/// 			Parameters: pulumi.StringMap{
/// 				"jobscheduletag01": pulumi.String("jobschedulevalue01"),
/// 				"jobscheduletag02": pulumi.String("jobschedulevalue02"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Runbook: &automation.RunbookAssociationPropertyArgs{
/// 				Name: pulumi.String("TestRunbook"),
/// 			},
/// 			Schedule: &automation.ScheduleAssociationPropertyArgs{
/// 				Name: pulumi.String("ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.automation.JobSchedule;
/// import com.pulumi.azurenative.automation.JobScheduleArgs;
/// import com.pulumi.azurenative.automation.inputs.RunbookAssociationPropertyArgs;
/// import com.pulumi.azurenative.automation.inputs.ScheduleAssociationPropertyArgs;
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
///         var jobSchedule = new JobSchedule("jobSchedule", JobScheduleArgs.builder()
///             .automationAccountName("ContoseAutomationAccount")
///             .jobScheduleId("0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc")
///             .parameters(Map.ofEntries(
///                 Map.entry("jobscheduletag01", "jobschedulevalue01"),
///                 Map.entry("jobscheduletag02", "jobschedulevalue02")
///             ))
///             .resourceGroupName("rg")
///             .runbook(RunbookAssociationPropertyArgs.builder()
///                 .name("TestRunbook")
///                 .build())
///             .schedule(ScheduleAssociationPropertyArgs.builder()
///                 .name("ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2")
///                 .build())
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const jobSchedule = new azure_native.automation.JobSchedule("jobSchedule", {
///     automationAccountName: "ContoseAutomationAccount",
///     jobScheduleId: "0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc",
///     parameters: {
///         jobscheduletag01: "jobschedulevalue01",
///         jobscheduletag02: "jobschedulevalue02",
///     },
///     resourceGroupName: "rg",
///     runbook: {
///         name: "TestRunbook",
///     },
///     schedule: {
///         name: "ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job_schedule = azure_native.automation.JobSchedule("jobSchedule",
///     automation_account_name="ContoseAutomationAccount",
///     job_schedule_id="0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc",
///     parameters={
///         "jobscheduletag01": "jobschedulevalue01",
///         "jobscheduletag02": "jobschedulevalue02",
///     },
///     resource_group_name="rg",
///     runbook={
///         "name": "TestRunbook",
///     },
///     schedule={
///         "name": "ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   jobSchedule:
///     type: azure-native:automation:JobSchedule
///     properties:
///       automationAccountName: ContoseAutomationAccount
///       jobScheduleId: 0fa462ba-3aa2-4138-83ca-9ebc3bc55cdc
///       parameters:
///         jobscheduletag01: jobschedulevalue01
///         jobscheduletag02: jobschedulevalue02
///       resourceGroupName: rg
///       runbook:
///         name: TestRunbook
///       schedule:
///         name: ScheduleNameGoesHere332204b5-debe-4348-a5c7-6357457189f2
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:automation:JobSchedule myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/jobSchedules/{jobScheduleId}
/// ```
class JobSchedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Gets or sets the id of job schedule.
  late final pulumi.Output<String?> jobScheduleId;

  /// Gets the name of the variable.
  late final pulumi.Output<String> name;

  /// Gets or sets the parameters of the job schedule.
  late final pulumi.Output<Map<String, String>?> parameters;

  /// Gets or sets the hybrid worker group that the scheduled job should run on.
  late final pulumi.Output<String?> runOn;

  /// Gets or sets the runbook.
  late final pulumi.Output<RunbookAssociationPropertyResponse?> runbook;

  /// Gets or sets the schedule.
  late final pulumi.Output<ScheduleAssociationPropertyResponse?> schedule;

  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [JobSchedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [JobSchedule]. {@macro pulumi_automation_job_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  JobSchedule(
    String name, {
    JobScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:automation:JobSchedule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    jobScheduleId = registerOutput<String?>('jobScheduleId');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<Map<String, String>?>('parameters');
    runOn = registerOutput<String?>('runOn');
    runbook = registerOutput<RunbookAssociationPropertyResponse?>(
      'runbook',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RunbookAssociationPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    schedule = registerOutput<ScheduleAssociationPropertyResponse?>(
      'schedule',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ScheduleAssociationPropertyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
