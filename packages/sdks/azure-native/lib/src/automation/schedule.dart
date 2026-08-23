import 'package:pulumi/pulumi.dart' as pulumi;
import 'advanced_schedule_response.dart';
import 'schedule_args.dart';
import 'system_data_response.dart';

/// Definition of the schedule.
///
/// Uses Azure REST API version 2024-10-23. In version 2.x of the Azure Native provider, it used API version 2022-08-08.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2023-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update a schedule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedule = new AzureNative.Automation.Schedule("schedule", new()
///     {
///         AdvancedSchedule = null,
///         AutomationAccountName = "myAutomationAccount33",
///         Description = "my description of schedule goes here",
///         ExpiryTime = "2017-04-01T17:28:57.2494819Z",
///         Frequency = AzureNative.Automation.ScheduleFrequency.Hour,
///         Interval = 1,
///         Name = "mySchedule",
///         ResourceGroupName = "rg",
///         ScheduleName = "mySchedule",
///         StartTime = "2017-03-27T17:28:57.2494819Z",
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
/// 		_, err := automation.NewSchedule(ctx, "schedule", &automation.ScheduleArgs{
/// 			AdvancedSchedule:      &automation.AdvancedScheduleArgs{},
/// 			AutomationAccountName: pulumi.String("myAutomationAccount33"),
/// 			Description:           pulumi.String("my description of schedule goes here"),
/// 			ExpiryTime:            pulumi.String("2017-04-01T17:28:57.2494819Z"),
/// 			Frequency:             pulumi.String(automation.ScheduleFrequencyHour),
/// 			Interval:              pulumi.Any(1),
/// 			Name:                  pulumi.String("mySchedule"),
/// 			ResourceGroupName:     pulumi.String("rg"),
/// 			ScheduleName:          pulumi.String("mySchedule"),
/// 			StartTime:             pulumi.String("2017-03-27T17:28:57.2494819Z"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_automation_schedule" "schedule" {
///   advanced_schedule       = {}
///   automation_account_name = "myAutomationAccount33"
///   description             = "my description of schedule goes here"
///   expiry_time             = "2017-04-01T17:28:57.2494819Z"
///   frequency               = "Hour"
///   interval                = 1
///   name                    = "mySchedule"
///   resource_group_name     = "rg"
///   schedule_name           = "mySchedule"
///   start_time              = "2017-03-27T17:28:57.2494819Z"
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
/// import com.pulumi.azurenative.automation.Schedule;
/// import com.pulumi.azurenative.automation.ScheduleArgs;
/// import com.pulumi.azurenative.automation.inputs.AdvancedScheduleArgs;
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
///         var schedule = new Schedule("schedule", ScheduleArgs.builder()
///             .advancedSchedule(AdvancedScheduleArgs.builder()
///                 .build())
///             .automationAccountName("myAutomationAccount33")
///             .description("my description of schedule goes here")
///             .expiryTime("2017-04-01T17:28:57.2494819Z")
///             .frequency("Hour")
///             .interval(1)
///             .name("mySchedule")
///             .resourceGroupName("rg")
///             .scheduleName("mySchedule")
///             .startTime("2017-03-27T17:28:57.2494819Z")
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
/// const schedule = new azure_native.automation.Schedule("schedule", {
///     advancedSchedule: {},
///     automationAccountName: "myAutomationAccount33",
///     description: "my description of schedule goes here",
///     expiryTime: "2017-04-01T17:28:57.2494819Z",
///     frequency: azure_native.automation.ScheduleFrequency.Hour,
///     interval: 1,
///     name: "mySchedule",
///     resourceGroupName: "rg",
///     scheduleName: "mySchedule",
///     startTime: "2017-03-27T17:28:57.2494819Z",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schedule = azure_native.automation.Schedule("schedule",
///     advanced_schedule={},
///     automation_account_name="myAutomationAccount33",
///     description="my description of schedule goes here",
///     expiry_time="2017-04-01T17:28:57.2494819Z",
///     frequency=azure_native.automation.ScheduleFrequency.HOUR,
///     interval=1,
///     name="mySchedule",
///     resource_group_name="rg",
///     schedule_name="mySchedule",
///     start_time="2017-03-27T17:28:57.2494819Z")
///
/// ```
///
/// ```yaml
/// resources:
///   schedule:
///     type: azure-native:automation:Schedule
///     properties:
///       advancedSchedule: {}
///       automationAccountName: myAutomationAccount33
///       description: my description of schedule goes here
///       expiryTime: 2017-04-01T17:28:57.2494819Z
///       frequency: Hour
///       interval: 1
///       name: mySchedule
///       resourceGroupName: rg
///       scheduleName: mySchedule
///       startTime: 2017-03-27T17:28:57.2494819Z
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
/// $ pulumi import azure-native:automation:Schedule mySchedule /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/schedules/{scheduleName}
/// ```
class Schedule extends pulumi.CustomResource {
  /// Gets or sets the advanced schedule.
  late final pulumi.Output<AdvancedScheduleResponse?> advancedSchedule;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Gets or sets the creation time.
  late final pulumi.Output<String?> creationTime;
  /// Gets or sets the description.
  late final pulumi.Output<String?> description;
  /// Gets or sets the end time of the schedule.
  late final pulumi.Output<String?> expiryTime;
  /// Gets or sets the expiry time's offset in minutes.
  late final pulumi.Output<double?> expiryTimeOffsetMinutes;
  /// Gets or sets the frequency of the schedule.
  late final pulumi.Output<String?> frequency;
  /// Gets or sets the interval of the schedule.
  late final pulumi.Output<dynamic> interval;
  /// Gets or sets a value indicating whether this schedule is enabled.
  late final pulumi.Output<bool?> isEnabled;
  /// Gets or sets the last modified time.
  late final pulumi.Output<String?> lastModifiedTime;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Gets or sets the next run time of the schedule.
  late final pulumi.Output<String?> nextRun;
  /// Gets or sets the next run time's offset in minutes.
  late final pulumi.Output<double?> nextRunOffsetMinutes;
  /// Gets or sets the start time of the schedule.
  late final pulumi.Output<String?> startTime;
  /// Gets the start time's offset in minutes.
  late final pulumi.Output<double> startTimeOffsetMinutes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Gets or sets the time zone of the schedule.
  late final pulumi.Output<String?> timeZone;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_automation_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    advancedSchedule = registerOutput<AdvancedScheduleResponse?>('advancedSchedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AdvancedScheduleResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationTime = registerOutput<String?>('creationTime');
    description = registerOutput<String?>('description');
    expiryTime = registerOutput<String?>('expiryTime');
    expiryTimeOffsetMinutes = registerOutput<double?>('expiryTimeOffsetMinutes');
    frequency = registerOutput<String?>('frequency');
    interval = registerOutput<dynamic>('interval');
    isEnabled = registerOutput<bool?>('isEnabled');
    lastModifiedTime = registerOutput<String?>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    nextRun = registerOutput<String?>('nextRun');
    nextRunOffsetMinutes = registerOutput<double?>('nextRunOffsetMinutes');
    startTime = registerOutput<String?>('startTime');
    startTimeOffsetMinutes = registerOutput<double>('startTimeOffsetMinutes');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeZone = registerOutput<String?>('timeZone');
    type = registerOutput<String>('type');
  }
}
