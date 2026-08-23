import 'package:pulumi/pulumi.dart' as pulumi;
import 'recurrence_pattern_response.dart';
import 'resource_operation_error_response.dart';
import 'schedule_args.dart';
import 'system_data_response.dart';

/// Schedule for automatically turning virtual machines in a lab on and off at specified times.
///
/// Uses Azure REST API version 2023-06-07. In version 2.x of the Azure Native provider, it used API version 2022-08-01.
///
/// Other available API versions: 2021-10-01-preview, 2021-11-15-preview, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native labservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### putSchedule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var schedule = new AzureNative.LabServices.Schedule("schedule", new()
///     {
///         LabName = "testlab",
///         Notes = "Schedule 1 for students",
///         RecurrencePattern = new AzureNative.LabServices.Inputs.RecurrencePatternArgs
///         {
///             ExpirationDate = "2020-08-14T23:59:59Z",
///             Frequency = AzureNative.LabServices.RecurrenceFrequency.Daily,
///             Interval = 2,
///         },
///         ResourceGroupName = "testrg123",
///         ScheduleName = "schedule1",
///         StartAt = "2020-05-26T12:00:00Z",
///         StopAt = "2020-05-26T18:00:00Z",
///         TimeZoneId = "America/Los_Angeles",
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
/// 	labservices "github.com/pulumi/pulumi-azure-native-sdk/labservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := labservices.NewSchedule(ctx, "schedule", &labservices.ScheduleArgs{
/// 			LabName: pulumi.String("testlab"),
/// 			Notes:   pulumi.String("Schedule 1 for students"),
/// 			RecurrencePattern: &labservices.RecurrencePatternArgs{
/// 				ExpirationDate: pulumi.String("2020-08-14T23:59:59Z"),
/// 				Frequency:      labservices.RecurrenceFrequencyDaily,
/// 				Interval:       pulumi.Int(2),
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg123"),
/// 			ScheduleName:      pulumi.String("schedule1"),
/// 			StartAt:           pulumi.String("2020-05-26T12:00:00Z"),
/// 			StopAt:            pulumi.String("2020-05-26T18:00:00Z"),
/// 			TimeZoneId:        pulumi.String("America/Los_Angeles"),
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
/// resource "azure-native_labservices_schedule" "schedule" {
///   lab_name = "testlab"
///   notes    = "Schedule 1 for students"
///   recurrence_pattern = {
///     expiration_date = "2020-08-14T23:59:59Z"
///     frequency       = "Daily"
///     interval        = 2
///   }
///   resource_group_name = "testrg123"
///   schedule_name       = "schedule1"
///   start_at            = "2020-05-26T12:00:00Z"
///   stop_at             = "2020-05-26T18:00:00Z"
///   time_zone_id        = "America/Los_Angeles"
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
/// import com.pulumi.azurenative.labservices.Schedule;
/// import com.pulumi.azurenative.labservices.ScheduleArgs;
/// import com.pulumi.azurenative.labservices.inputs.RecurrencePatternArgs;
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
///             .labName("testlab")
///             .notes("Schedule 1 for students")
///             .recurrencePattern(RecurrencePatternArgs.builder()
///                 .expirationDate("2020-08-14T23:59:59Z")
///                 .frequency("Daily")
///                 .interval(2)
///                 .build())
///             .resourceGroupName("testrg123")
///             .scheduleName("schedule1")
///             .startAt("2020-05-26T12:00:00Z")
///             .stopAt("2020-05-26T18:00:00Z")
///             .timeZoneId("America/Los_Angeles")
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
/// const schedule = new azure_native.labservices.Schedule("schedule", {
///     labName: "testlab",
///     notes: "Schedule 1 for students",
///     recurrencePattern: {
///         expirationDate: "2020-08-14T23:59:59Z",
///         frequency: azure_native.labservices.RecurrenceFrequency.Daily,
///         interval: 2,
///     },
///     resourceGroupName: "testrg123",
///     scheduleName: "schedule1",
///     startAt: "2020-05-26T12:00:00Z",
///     stopAt: "2020-05-26T18:00:00Z",
///     timeZoneId: "America/Los_Angeles",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// schedule = azure_native.labservices.Schedule("schedule",
///     lab_name="testlab",
///     notes="Schedule 1 for students",
///     recurrence_pattern={
///         "expiration_date": "2020-08-14T23:59:59Z",
///         "frequency": azure_native.labservices.RecurrenceFrequency.DAILY,
///         "interval": 2,
///     },
///     resource_group_name="testrg123",
///     schedule_name="schedule1",
///     start_at="2020-05-26T12:00:00Z",
///     stop_at="2020-05-26T18:00:00Z",
///     time_zone_id="America/Los_Angeles")
///
/// ```
///
/// ```yaml
/// resources:
///   schedule:
///     type: azure-native:labservices:Schedule
///     properties:
///       labName: testlab
///       notes: Schedule 1 for students
///       recurrencePattern:
///         expirationDate: 2020-08-14T23:59:59Z
///         frequency: Daily
///         interval: 2
///       resourceGroupName: testrg123
///       scheduleName: schedule1
///       startAt: 2020-05-26T12:00:00Z
///       stopAt: 2020-05-26T18:00:00Z
///       timeZoneId: America/Los_Angeles
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
/// $ pulumi import azure-native:labservices:Schedule schedule1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.LabServices/labs/{labName}/schedules/{scheduleName}
/// ```
class Schedule extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Notes for this schedule.
  late final pulumi.Output<String?> notes;
  /// Current provisioning state of the schedule.
  late final pulumi.Output<String> provisioningState;
  /// The recurrence pattern of the scheduled actions.
  late final pulumi.Output<RecurrencePatternResponse?> recurrencePattern;
  /// Error details of last operation done on schedule.
  late final pulumi.Output<ResourceOperationErrorResponse> resourceOperationError;
  /// When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  late final pulumi.Output<String?> startAt;
  /// When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  late final pulumi.Output<String> stopAt;
  /// Metadata pertaining to creation and last modification of the schedule.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The IANA timezone id for the schedule.
  late final pulumi.Output<String> timeZoneId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Schedule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Schedule]. {@macro pulumi_labservices_schedule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Schedule(
    String name, {
    ScheduleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:labservices:Schedule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    notes = registerOutput<String?>('notes');
    provisioningState = registerOutput<String>('provisioningState');
    recurrencePattern = registerOutput<RecurrencePatternResponse?>('recurrencePattern', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RecurrencePatternResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resourceOperationError = registerOutput<ResourceOperationErrorResponse>('resourceOperationError', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceOperationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    startAt = registerOutput<String?>('startAt');
    stopAt = registerOutput<String>('stopAt');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeZoneId = registerOutput<String>('timeZoneId');
    type = registerOutput<String>('type');
  }
}
