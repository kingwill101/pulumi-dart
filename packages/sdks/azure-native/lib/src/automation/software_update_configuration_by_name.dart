import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_response_response.dart';
import 'software_update_configuration_by_name_args.dart';
import 'software_update_configuration_tasks_response.dart';
import 'sucschedule_properties_response.dart';
import 'update_configuration_response.dart';

/// Software update configuration properties.
///
/// Uses Azure REST API version 2023-05-15-preview. In version 2.x of the Azure Native provider, it used API version 2019-06-01.
///
/// Other available API versions: 2017-05-15-preview, 2019-06-01, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create software update configuration
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var softwareUpdateConfigurationByName = new AzureNative.Automation.SoftwareUpdateConfigurationByName("softwareUpdateConfigurationByName", new()
///     {
///         AutomationAccountName = "myaccount",
///         ResourceGroupName = "mygroup",
///         ScheduleInfo = new AzureNative.Automation.Inputs.SUCSchedulePropertiesArgs
///         {
///             AdvancedSchedule = new AzureNative.Automation.Inputs.AdvancedScheduleArgs
///             {
///                 WeekDays = new[]
///                 {
///                     "Monday",
///                     "Thursday",
///                 },
///             },
///             ExpiryTime = "2018-11-09T11:22:57+00:00",
///             Frequency = AzureNative.Automation.ScheduleFrequency.Hour,
///             Interval = 1,
///             StartTime = "2017-10-19T12:22:57+00:00",
///             TimeZone = "America/Los_Angeles",
///         },
///         SoftwareUpdateConfigurationName = "testpatch",
///         Tasks = new AzureNative.Automation.Inputs.SoftwareUpdateConfigurationTasksArgs
///         {
///             PostTask = new AzureNative.Automation.Inputs.TaskPropertiesArgs
///             {
///                 Source = "GetCache",
///             },
///             PreTask = new AzureNative.Automation.Inputs.TaskPropertiesArgs
///             {
///                 Parameters =
///                 {
///                     { "COMPUTERNAME", "Computer1" },
///                 },
///                 Source = "HelloWorld",
///             },
///         },
///         UpdateConfiguration = new AzureNative.Automation.Inputs.UpdateConfigurationArgs
///         {
///             AzureVirtualMachines = new[]
///             {
///                 "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01",
///                 "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02",
///                 "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03",
///             },
///             Duration = "PT2H0M",
///             NonAzureComputerNames = new[]
///             {
///                 "box1.contoso.com",
///                 "box2.contoso.com",
///             },
///             OperatingSystem = AzureNative.Automation.OperatingSystemType.Windows,
///             Targets = new AzureNative.Automation.Inputs.TargetPropertiesArgs
///             {
///                 AzureQueries = new[]
///                 {
///                     new AzureNative.Automation.Inputs.AzureQueryPropertiesArgs
///                     {
///                         Locations = new[]
///                         {
///                             "Japan East",
///                             "UK South",
///                         },
///                         Scope = new[]
///                         {
///                             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources",
///                             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067",
///                         },
///                         TagSettings = new AzureNative.Automation.Inputs.TagSettingsPropertiesArgs
///                         {
///                             FilterOperator = AzureNative.Automation.TagOperators.All,
///                             Tags =
///                             {
///                                 { "tag1", new[]
///                                 {
///                                     "tag1Value1",
///                                     "tag1Value2",
///                                     "tag1Value3",
///                                 } },
///                                 { "tag2", new[]
///                                 {
///                                     "tag2Value1",
///                                     "tag2Value2",
///                                     "tag2Value3",
///                                 } },
///                             },
///                         },
///                     },
///                 },
///                 NonAzureQueries = new[]
///                 {
///                     new AzureNative.Automation.Inputs.NonAzureQueryPropertiesArgs
///                     {
///                         FunctionAlias = "SavedSearch1",
///                         WorkspaceId = "WorkspaceId1",
///                     },
///                     new AzureNative.Automation.Inputs.NonAzureQueryPropertiesArgs
///                     {
///                         FunctionAlias = "SavedSearch2",
///                         WorkspaceId = "WorkspaceId2",
///                     },
///                 },
///             },
///             Windows = new AzureNative.Automation.Inputs.WindowsPropertiesArgs
///             {
///                 ExcludedKbNumbers = new[]
///                 {
///                     "168934",
///                     "168973",
///                 },
///                 IncludedUpdateClassifications = AzureNative.Automation.WindowsUpdateClasses.Critical,
///                 RebootSetting = "IfRequired",
///             },
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
/// 		_, err := automation.NewSoftwareUpdateConfigurationByName(ctx, "softwareUpdateConfigurationByName", &automation.SoftwareUpdateConfigurationByNameArgs{
/// 			AutomationAccountName: pulumi.String("myaccount"),
/// 			ResourceGroupName:     pulumi.String("mygroup"),
/// 			ScheduleInfo: &automation.SUCSchedulePropertiesArgs{
/// 				AdvancedSchedule: &automation.AdvancedScheduleArgs{
/// 					WeekDays: pulumi.StringArray{
/// 						pulumi.String("Monday"),
/// 						pulumi.String("Thursday"),
/// 					},
/// 				},
/// 				ExpiryTime: pulumi.String("2018-11-09T11:22:57+00:00"),
/// 				Frequency:  pulumi.String(automation.ScheduleFrequencyHour),
/// 				Interval:   pulumi.Float64(1),
/// 				StartTime:  pulumi.String("2017-10-19T12:22:57+00:00"),
/// 				TimeZone:   pulumi.String("America/Los_Angeles"),
/// 			},
/// 			SoftwareUpdateConfigurationName: pulumi.String("testpatch"),
/// 			Tasks: &automation.SoftwareUpdateConfigurationTasksArgs{
/// 				PostTask: &automation.TaskPropertiesArgs{
/// 					Source: pulumi.String("GetCache"),
/// 				},
/// 				PreTask: &automation.TaskPropertiesArgs{
/// 					Parameters: pulumi.StringMap{
/// 						"COMPUTERNAME": pulumi.String("Computer1"),
/// 					},
/// 					Source: pulumi.String("HelloWorld"),
/// 				},
/// 			},
/// 			UpdateConfiguration: &automation.UpdateConfigurationArgs{
/// 				AzureVirtualMachines: pulumi.StringArray{
/// 					pulumi.String("/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01"),
/// 					pulumi.String("/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02"),
/// 					pulumi.String("/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03"),
/// 				},
/// 				Duration: pulumi.String("PT2H0M"),
/// 				NonAzureComputerNames: pulumi.StringArray{
/// 					pulumi.String("box1.contoso.com"),
/// 					pulumi.String("box2.contoso.com"),
/// 				},
/// 				OperatingSystem: automation.OperatingSystemTypeWindows,
/// 				Targets: &automation.TargetPropertiesArgs{
/// 					AzureQueries: automation.AzureQueryPropertiesArray{
/// 						&automation.AzureQueryPropertiesArgs{
/// 							Locations: pulumi.StringArray{
/// 								pulumi.String("Japan East"),
/// 								pulumi.String("UK South"),
/// 							},
/// 							Scope: pulumi.StringArray{
/// 								pulumi.String("/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources"),
/// 								pulumi.String("/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067"),
/// 							},
/// 							TagSettings: &automation.TagSettingsPropertiesArgs{
/// 								FilterOperator: automation.TagOperatorsAll,
/// 								Tags: pulumi.StringArrayMap{
/// 									"tag1": pulumi.StringArray{
/// 										pulumi.String("tag1Value1"),
/// 										pulumi.String("tag1Value2"),
/// 										pulumi.String("tag1Value3"),
/// 									},
/// 									"tag2": pulumi.StringArray{
/// 										pulumi.String("tag2Value1"),
/// 										pulumi.String("tag2Value2"),
/// 										pulumi.String("tag2Value3"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					NonAzureQueries: automation.NonAzureQueryPropertiesArray{
/// 						&automation.NonAzureQueryPropertiesArgs{
/// 							FunctionAlias: pulumi.String("SavedSearch1"),
/// 							WorkspaceId:   pulumi.String("WorkspaceId1"),
/// 						},
/// 						&automation.NonAzureQueryPropertiesArgs{
/// 							FunctionAlias: pulumi.String("SavedSearch2"),
/// 							WorkspaceId:   pulumi.String("WorkspaceId2"),
/// 						},
/// 					},
/// 				},
/// 				Windows: &automation.WindowsPropertiesArgs{
/// 					ExcludedKbNumbers: pulumi.StringArray{
/// 						pulumi.String("168934"),
/// 						pulumi.String("168973"),
/// 					},
/// 					IncludedUpdateClassifications: pulumi.String(automation.WindowsUpdateClassesCritical),
/// 					RebootSetting:                 pulumi.String("IfRequired"),
/// 				},
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
/// import com.pulumi.azurenative.automation.SoftwareUpdateConfigurationByName;
/// import com.pulumi.azurenative.automation.SoftwareUpdateConfigurationByNameArgs;
/// import com.pulumi.azurenative.automation.inputs.SUCSchedulePropertiesArgs;
/// import com.pulumi.azurenative.automation.inputs.AdvancedScheduleArgs;
/// import com.pulumi.azurenative.automation.inputs.SoftwareUpdateConfigurationTasksArgs;
/// import com.pulumi.azurenative.automation.inputs.TaskPropertiesArgs;
/// import com.pulumi.azurenative.automation.inputs.UpdateConfigurationArgs;
/// import com.pulumi.azurenative.automation.inputs.TargetPropertiesArgs;
/// import com.pulumi.azurenative.automation.inputs.WindowsPropertiesArgs;
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
///         var softwareUpdateConfigurationByName = new SoftwareUpdateConfigurationByName("softwareUpdateConfigurationByName", SoftwareUpdateConfigurationByNameArgs.builder()
///             .automationAccountName("myaccount")
///             .resourceGroupName("mygroup")
///             .scheduleInfo(SUCSchedulePropertiesArgs.builder()
///                 .advancedSchedule(AdvancedScheduleArgs.builder()
///                     .weekDays(
///                         "Monday",
///                         "Thursday")
///                     .build())
///                 .expiryTime("2018-11-09T11:22:57+00:00")
///                 .frequency("Hour")
///                 .interval(1.0)
///                 .startTime("2017-10-19T12:22:57+00:00")
///                 .timeZone("America/Los_Angeles")
///                 .build())
///             .softwareUpdateConfigurationName("testpatch")
///             .tasks(SoftwareUpdateConfigurationTasksArgs.builder()
///                 .postTask(TaskPropertiesArgs.builder()
///                     .source("GetCache")
///                     .build())
///                 .preTask(TaskPropertiesArgs.builder()
///                     .parameters(Map.of("COMPUTERNAME", "Computer1"))
///                     .source("HelloWorld")
///                     .build())
///                 .build())
///             .updateConfiguration(UpdateConfigurationArgs.builder()
///                 .azureVirtualMachines(
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01",
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02",
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03")
///                 .duration("PT2H0M")
///                 .nonAzureComputerNames(
///                     "box1.contoso.com",
///                     "box2.contoso.com")
///                 .operatingSystem("Windows")
///                 .targets(TargetPropertiesArgs.builder()
///                     .azureQueries(AzureQueryPropertiesArgs.builder()
///                         .locations(
///                             "Japan East",
///                             "UK South")
///                         .scope(
///                             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources",
///                             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067")
///                         .tagSettings(TagSettingsPropertiesArgs.builder()
///                             .filterOperator("All")
///                             .tags(Map.ofEntries(
///                                 Map.entry("tag1",
///                                     "tag1Value1",
///                                     "tag1Value2",
///                                     "tag1Value3"),
///                                 Map.entry("tag2",
///                                     "tag2Value1",
///                                     "tag2Value2",
///                                     "tag2Value3")
///                             ))
///                             .build())
///                         .build())
///                     .nonAzureQueries(
///                         NonAzureQueryPropertiesArgs.builder()
///                             .functionAlias("SavedSearch1")
///                             .workspaceId("WorkspaceId1")
///                             .build(),
///                         NonAzureQueryPropertiesArgs.builder()
///                             .functionAlias("SavedSearch2")
///                             .workspaceId("WorkspaceId2")
///                             .build())
///                     .build())
///                 .windows(WindowsPropertiesArgs.builder()
///                     .excludedKbNumbers(
///                         "168934",
///                         "168973")
///                     .includedUpdateClassifications("Critical")
///                     .rebootSetting("IfRequired")
///                     .build())
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
/// const softwareUpdateConfigurationByName = new azure_native.automation.SoftwareUpdateConfigurationByName("softwareUpdateConfigurationByName", {
///     automationAccountName: "myaccount",
///     resourceGroupName: "mygroup",
///     scheduleInfo: {
///         advancedSchedule: {
///             weekDays: [
///                 "Monday",
///                 "Thursday",
///             ],
///         },
///         expiryTime: "2018-11-09T11:22:57+00:00",
///         frequency: azure_native.automation.ScheduleFrequency.Hour,
///         interval: 1,
///         startTime: "2017-10-19T12:22:57+00:00",
///         timeZone: "America/Los_Angeles",
///     },
///     softwareUpdateConfigurationName: "testpatch",
///     tasks: {
///         postTask: {
///             source: "GetCache",
///         },
///         preTask: {
///             parameters: {
///                 COMPUTERNAME: "Computer1",
///             },
///             source: "HelloWorld",
///         },
///     },
///     updateConfiguration: {
///         azureVirtualMachines: [
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01",
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02",
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03",
///         ],
///         duration: "PT2H0M",
///         nonAzureComputerNames: [
///             "box1.contoso.com",
///             "box2.contoso.com",
///         ],
///         operatingSystem: azure_native.automation.OperatingSystemType.Windows,
///         targets: {
///             azureQueries: [{
///                 locations: [
///                     "Japan East",
///                     "UK South",
///                 ],
///                 scope: [
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources",
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067",
///                 ],
///                 tagSettings: {
///                     filterOperator: azure_native.automation.TagOperators.All,
///                     tags: {
///                         tag1: [
///                             "tag1Value1",
///                             "tag1Value2",
///                             "tag1Value3",
///                         ],
///                         tag2: [
///                             "tag2Value1",
///                             "tag2Value2",
///                             "tag2Value3",
///                         ],
///                     },
///                 },
///             }],
///             nonAzureQueries: [
///                 {
///                     functionAlias: "SavedSearch1",
///                     workspaceId: "WorkspaceId1",
///                 },
///                 {
///                     functionAlias: "SavedSearch2",
///                     workspaceId: "WorkspaceId2",
///                 },
///             ],
///         },
///         windows: {
///             excludedKbNumbers: [
///                 "168934",
///                 "168973",
///             ],
///             includedUpdateClassifications: azure_native.automation.WindowsUpdateClasses.Critical,
///             rebootSetting: "IfRequired",
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// software_update_configuration_by_name = azure_native.automation.SoftwareUpdateConfigurationByName("softwareUpdateConfigurationByName",
///     automation_account_name="myaccount",
///     resource_group_name="mygroup",
///     schedule_info={
///         "advanced_schedule": {
///             "week_days": [
///                 "Monday",
///                 "Thursday",
///             ],
///         },
///         "expiry_time": "2018-11-09T11:22:57+00:00",
///         "frequency": azure_native.automation.ScheduleFrequency.HOUR,
///         "interval": 1,
///         "start_time": "2017-10-19T12:22:57+00:00",
///         "time_zone": "America/Los_Angeles",
///     },
///     software_update_configuration_name="testpatch",
///     tasks={
///         "post_task": {
///             "source": "GetCache",
///         },
///         "pre_task": {
///             "parameters": {
///                 "COMPUTERNAME": "Computer1",
///             },
///             "source": "HelloWorld",
///         },
///     },
///     update_configuration={
///         "azure_virtual_machines": [
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01",
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02",
///             "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03",
///         ],
///         "duration": "PT2H0M",
///         "non_azure_computer_names": [
///             "box1.contoso.com",
///             "box2.contoso.com",
///         ],
///         "operating_system": azure_native.automation.OperatingSystemType.WINDOWS,
///         "targets": {
///             "azure_queries": [{
///                 "locations": [
///                     "Japan East",
///                     "UK South",
///                 ],
///                 "scope": [
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources",
///                     "/subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067",
///                 ],
///                 "tag_settings": {
///                     "filter_operator": azure_native.automation.TagOperators.ALL,
///                     "tags": {
///                         "tag1": [
///                             "tag1Value1",
///                             "tag1Value2",
///                             "tag1Value3",
///                         ],
///                         "tag2": [
///                             "tag2Value1",
///                             "tag2Value2",
///                             "tag2Value3",
///                         ],
///                     },
///                 },
///             }],
///             "non_azure_queries": [
///                 {
///                     "function_alias": "SavedSearch1",
///                     "workspace_id": "WorkspaceId1",
///                 },
///                 {
///                     "function_alias": "SavedSearch2",
///                     "workspace_id": "WorkspaceId2",
///                 },
///             ],
///         },
///         "windows": {
///             "excluded_kb_numbers": [
///                 "168934",
///                 "168973",
///             ],
///             "included_update_classifications": azure_native.automation.WindowsUpdateClasses.CRITICAL,
///             "reboot_setting": "IfRequired",
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   softwareUpdateConfigurationByName:
///     type: azure-native:automation:SoftwareUpdateConfigurationByName
///     properties:
///       automationAccountName: myaccount
///       resourceGroupName: mygroup
///       scheduleInfo:
///         advancedSchedule:
///           weekDays:
///             - Monday
///             - Thursday
///         expiryTime: 2018-11-09T11:22:57+00:00
///         frequency: Hour
///         interval: 1
///         startTime: 2017-10-19T12:22:57+00:00
///         timeZone: America/Los_Angeles
///       softwareUpdateConfigurationName: testpatch
///       tasks:
///         postTask:
///           source: GetCache
///         preTask:
///           parameters:
///             COMPUTERNAME: Computer1
///           source: HelloWorld
///       updateConfiguration:
///         azureVirtualMachines:
///           - /subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-01
///           - /subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-02
///           - /subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources/providers/Microsoft.Compute/virtualMachines/vm-03
///         duration: PT2H0M
///         nonAzureComputerNames:
///           - box1.contoso.com
///           - box2.contoso.com
///         operatingSystem: Windows
///         targets:
///           azureQueries:
///             - locations:
///                 - Japan East
///                 - UK South
///               scope:
///                 - /subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067/resourceGroups/myresources
///                 - /subscriptions/5ae68d89-69a4-454f-b5ce-e443cc4e0067
///               tagSettings:
///                 filterOperator: All
///                 tags:
///                   tag1:
///                     - tag1Value1
///                     - tag1Value2
///                     - tag1Value3
///                   tag2:
///                     - tag2Value1
///                     - tag2Value2
///                     - tag2Value3
///           nonAzureQueries:
///             - functionAlias: SavedSearch1
///               workspaceId: WorkspaceId1
///             - functionAlias: SavedSearch2
///               workspaceId: WorkspaceId2
///         windows:
///           excludedKbNumbers:
///             - '168934'
///             - '168973'
///           includedUpdateClassifications: Critical
///           rebootSetting: IfRequired
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
/// $ pulumi import azure-native:automation:SoftwareUpdateConfigurationByName testpatch /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/softwareUpdateConfigurations/{softwareUpdateConfigurationName}
/// ```
class SoftwareUpdateConfigurationByName extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// CreatedBy property, which only appears in the response.
  late final pulumi.Output<String> createdBy;
  /// Creation time of the resource, which only appears in the response.
  late final pulumi.Output<String> creationTime;
  /// Details of provisioning error
  late final pulumi.Output<ErrorResponseResponse?> error;
  /// LastModifiedBy property, which only appears in the response.
  late final pulumi.Output<String> lastModifiedBy;
  /// Last time resource was modified, which only appears in the response.
  late final pulumi.Output<String> lastModifiedTime;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Provisioning state for the software update configuration, which only appears in the response.
  late final pulumi.Output<String> provisioningState;
  /// Schedule information for the Software update configuration
  late final pulumi.Output<SUCSchedulePropertiesResponse> scheduleInfo;
  /// Tasks information for the Software update configuration.
  late final pulumi.Output<SoftwareUpdateConfigurationTasksResponse?> tasks;
  /// Resource type
  late final pulumi.Output<String> type;
  /// update specific properties for the Software update configuration
  late final pulumi.Output<UpdateConfigurationResponse> updateConfiguration;

  /// Creates a new [SoftwareUpdateConfigurationByName].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SoftwareUpdateConfigurationByName]. {@macro pulumi_automation_software_update_configuration_by_name_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SoftwareUpdateConfigurationByName(
    String name, {
    SoftwareUpdateConfigurationByNameArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:automation:SoftwareUpdateConfigurationByName',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.createdBy = registerOutput<String>('createdBy');
    this.creationTime = registerOutput<String>('creationTime');
    this.error = registerOutput<ErrorResponseResponse?>('error');
    this.lastModifiedBy = registerOutput<String>('lastModifiedBy');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.scheduleInfo = registerOutput<SUCSchedulePropertiesResponse>('scheduleInfo');
    this.tasks = registerOutput<SoftwareUpdateConfigurationTasksResponse?>('tasks');
    this.type = registerOutput<String>('type');
    this.updateConfiguration = registerOutput<UpdateConfigurationResponse>('updateConfiguration');
  }
}
