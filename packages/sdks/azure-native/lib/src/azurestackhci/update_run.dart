import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'update_run_args.dart';

/// Details of an Update run
///
/// Uses Azure REST API version 2024-04-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01.
///
/// Other available API versions: 2022-12-15-preview, 2023-02-01, 2023-03-01, 2023-06-01, 2023-08-01, 2023-08-01-preview, 2023-11-01-preview, 2024-01-01, 2024-02-15-preview, 2024-09-01-preview, 2024-12-01-preview, 2025-02-01-preview, 2025-09-15-preview, 2025-10-01, 2025-11-01-preview, 2025-12-01-preview, 2026-02-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurestackhci [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Get Update runs under cluster resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var updateRun = new AzureNative.AzureStackHCI.UpdateRun("updateRun", new()
///     {
///         ClusterName = "testcluster",
///         Description = "Update Azure Stack.",
///         EndTimeUtc = "2022-04-06T13:58:42.969006+00:00",
///         ErrorMessage = "",
///         LastUpdatedTimeUtc = "2022-04-06T13:58:42.969006+00:00",
///         Name = "Unnamed step",
///         ResourceGroupName = "testrg",
///         StartTimeUtc = "2022-04-06T01:36:33.3876751+00:00",
///         Status = "Success",
///         Steps = new[]
///         {
///             new AzureNative.AzureStackHCI.Inputs.StepArgs
///             {
///                 Description = "Prepare for SSU update",
///                 EndTimeUtc = "2022-04-06T01:37:16.8728314+00:00",
///                 ErrorMessage = "",
///                 LastUpdatedTimeUtc = "2022-04-06T01:37:16.8728314+00:00",
///                 Name = "PreUpdate Cloud",
///                 StartTimeUtc = "2022-04-06T01:36:33.3876751+00:00",
///                 Status = "Success",
///                 Steps = new() { },
///             },
///         },
///         UpdateName = "Microsoft4.2203.2.32",
///         UpdateRunName = "23b779ba-0d52-4a80-8571-45ca74664ec3",
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
/// 	azurestackhci "github.com/pulumi/pulumi-azure-native-sdk/azurestackhci/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurestackhci.NewUpdateRun(ctx, "updateRun", &azurestackhci.UpdateRunArgs{
/// 			ClusterName:        pulumi.String("testcluster"),
/// 			Description:        pulumi.String("Update Azure Stack."),
/// 			EndTimeUtc:         pulumi.String("2022-04-06T13:58:42.969006+00:00"),
/// 			ErrorMessage:       pulumi.String(""),
/// 			LastUpdatedTimeUtc: pulumi.String("2022-04-06T13:58:42.969006+00:00"),
/// 			Name:               pulumi.String("Unnamed step"),
/// 			ResourceGroupName:  pulumi.String("testrg"),
/// 			StartTimeUtc:       pulumi.String("2022-04-06T01:36:33.3876751+00:00"),
/// 			Status:             pulumi.String("Success"),
/// 			Steps: azurestackhci.StepArray{
/// 				&azurestackhci.StepArgs{
/// 					Description:        pulumi.String("Prepare for SSU update"),
/// 					EndTimeUtc:         pulumi.String("2022-04-06T01:37:16.8728314+00:00"),
/// 					ErrorMessage:       pulumi.String(""),
/// 					LastUpdatedTimeUtc: pulumi.String("2022-04-06T01:37:16.8728314+00:00"),
/// 					Name:               pulumi.String("PreUpdate Cloud"),
/// 					StartTimeUtc:       pulumi.String("2022-04-06T01:36:33.3876751+00:00"),
/// 					Status:             pulumi.String("Success"),
/// 					Steps:              azurestackhci.StepArray{},
/// 				},
/// 			},
/// 			UpdateName:    pulumi.String("Microsoft4.2203.2.32"),
/// 			UpdateRunName: pulumi.String("23b779ba-0d52-4a80-8571-45ca74664ec3"),
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
/// import com.pulumi.azurenative.azurestackhci.UpdateRun;
/// import com.pulumi.azurenative.azurestackhci.UpdateRunArgs;
/// import com.pulumi.azurenative.azurestackhci.inputs.StepArgs;
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
///         var updateRun = new UpdateRun("updateRun", UpdateRunArgs.builder()
///             .clusterName("testcluster")
///             .description("Update Azure Stack.")
///             .endTimeUtc("2022-04-06T13:58:42.969006+00:00")
///             .errorMessage("")
///             .lastUpdatedTimeUtc("2022-04-06T13:58:42.969006+00:00")
///             .name("Unnamed step")
///             .resourceGroupName("testrg")
///             .startTimeUtc("2022-04-06T01:36:33.3876751+00:00")
///             .status("Success")
///             .steps(StepArgs.builder()
///                 .description("Prepare for SSU update")
///                 .endTimeUtc("2022-04-06T01:37:16.8728314+00:00")
///                 .errorMessage("")
///                 .lastUpdatedTimeUtc("2022-04-06T01:37:16.8728314+00:00")
///                 .name("PreUpdate Cloud")
///                 .startTimeUtc("2022-04-06T01:36:33.3876751+00:00")
///                 .status("Success")
///                 .steps()
///                 .build())
///             .updateName("Microsoft4.2203.2.32")
///             .updateRunName("23b779ba-0d52-4a80-8571-45ca74664ec3")
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
/// const updateRun = new azure_native.azurestackhci.UpdateRun("updateRun", {
///     clusterName: "testcluster",
///     description: "Update Azure Stack.",
///     endTimeUtc: "2022-04-06T13:58:42.969006+00:00",
///     errorMessage: "",
///     lastUpdatedTimeUtc: "2022-04-06T13:58:42.969006+00:00",
///     name: "Unnamed step",
///     resourceGroupName: "testrg",
///     startTimeUtc: "2022-04-06T01:36:33.3876751+00:00",
///     status: "Success",
///     steps: [{
///         description: "Prepare for SSU update",
///         endTimeUtc: "2022-04-06T01:37:16.8728314+00:00",
///         errorMessage: "",
///         lastUpdatedTimeUtc: "2022-04-06T01:37:16.8728314+00:00",
///         name: "PreUpdate Cloud",
///         startTimeUtc: "2022-04-06T01:36:33.3876751+00:00",
///         status: "Success",
///         steps: [],
///     }],
///     updateName: "Microsoft4.2203.2.32",
///     updateRunName: "23b779ba-0d52-4a80-8571-45ca74664ec3",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// update_run = azure_native.azurestackhci.UpdateRun("updateRun",
///     cluster_name="testcluster",
///     description="Update Azure Stack.",
///     end_time_utc="2022-04-06T13:58:42.969006+00:00",
///     error_message="",
///     last_updated_time_utc="2022-04-06T13:58:42.969006+00:00",
///     name="Unnamed step",
///     resource_group_name="testrg",
///     start_time_utc="2022-04-06T01:36:33.3876751+00:00",
///     status="Success",
///     steps=[{
///         "description": "Prepare for SSU update",
///         "end_time_utc": "2022-04-06T01:37:16.8728314+00:00",
///         "error_message": "",
///         "last_updated_time_utc": "2022-04-06T01:37:16.8728314+00:00",
///         "name": "PreUpdate Cloud",
///         "start_time_utc": "2022-04-06T01:36:33.3876751+00:00",
///         "status": "Success",
///         "steps": [],
///     }],
///     update_name="Microsoft4.2203.2.32",
///     update_run_name="23b779ba-0d52-4a80-8571-45ca74664ec3")
///
/// ```
///
/// ```yaml
/// resources:
///   updateRun:
///     type: azure-native:azurestackhci:UpdateRun
///     properties:
///       clusterName: testcluster
///       description: Update Azure Stack.
///       endTimeUtc: 2022-04-06T13:58:42.969006+00:00
///       errorMessage: ""
///       lastUpdatedTimeUtc: 2022-04-06T13:58:42.969006+00:00
///       name: Unnamed step
///       resourceGroupName: testrg
///       startTimeUtc: 2022-04-06T01:36:33.3876751+00:00
///       status: Success
///       steps:
///         - description: Prepare for SSU update
///           endTimeUtc: 2022-04-06T01:37:16.8728314+00:00
///           errorMessage: ""
///           lastUpdatedTimeUtc: 2022-04-06T01:37:16.8728314+00:00
///           name: PreUpdate Cloud
///           startTimeUtc: 2022-04-06T01:36:33.3876751+00:00
///           status: Success
///           steps: []
///       updateName: Microsoft4.2203.2.32
///       updateRunName: 23b779ba-0d52-4a80-8571-45ca74664ec3
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
/// $ pulumi import azure-native:azurestackhci:UpdateRun Microsoft4.2203.2.32/23b779ba-0d52-4a80-8571-45ca74664ec3 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureStackHCI/clusters/{clusterName}/updates/{updateName}/updateRuns/{updateRunName}
/// ```
class UpdateRun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// More detailed description of the step.
  late final pulumi.Output<String?> description;
  /// Duration of the update run.
  late final pulumi.Output<String?> duration;
  /// When the step reached a terminal state.
  late final pulumi.Output<String?> endTimeUtc;
  /// Error message, specified if the step is in a failed state.
  late final pulumi.Output<String?> errorMessage;
  /// Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  late final pulumi.Output<String?> expectedExecutionTime;
  /// Timestamp of the most recently completed step in the update run.
  late final pulumi.Output<String?> lastUpdatedTime;
  /// Completion time of this step or the last completed sub-step.
  late final pulumi.Output<String?> lastUpdatedTimeUtc;
  /// The geo-location where the resource lives
  late final pulumi.Output<String?> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Provisioning state of the UpdateRuns proxy resource.
  late final pulumi.Output<String> provisioningState;
  /// When the step started, or empty if it has not started executing.
  late final pulumi.Output<String?> startTimeUtc;
  /// State of the update run.
  late final pulumi.Output<String?> state;
  /// Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  late final pulumi.Output<String?> status;
  /// Recursive model for child steps of this step.
  late final pulumi.Output<List<Map<String, dynamic>>?> steps;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Timestamp of the update run was started.
  late final pulumi.Output<String?> timeStarted;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [UpdateRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UpdateRun]. {@macro pulumi_azurestackhci_update_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UpdateRun(
    String name, {
    UpdateRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:azurestackhci:UpdateRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    duration = registerOutput<String?>('duration');
    endTimeUtc = registerOutput<String?>('endTimeUtc');
    errorMessage = registerOutput<String?>('errorMessage');
    expectedExecutionTime = registerOutput<String?>('expectedExecutionTime');
    lastUpdatedTime = registerOutput<String?>('lastUpdatedTime');
    lastUpdatedTimeUtc = registerOutput<String?>('lastUpdatedTimeUtc');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    startTimeUtc = registerOutput<String?>('startTimeUtc');
    state = registerOutput<String?>('state');
    status = registerOutput<String?>('status');
    steps = registerOutput<List<Map<String, dynamic>>?>('steps');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeStarted = registerOutput<String?>('timeStarted');
    type = registerOutput<String>('type');
  }
}
