import 'package:pulumi/pulumi.dart' as pulumi;
import 'featureset_version_args.dart';
import 'featureset_version_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Featureset Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var featuresetVersion = new AzureNative.MachineLearningServices.FeaturesetVersion("featuresetVersion", new()
///     {
///         FeaturesetVersionProperties = new AzureNative.MachineLearningServices.Inputs.FeaturesetVersionArgs
///         {
///             Description = "string",
///             Entities = new[]
///             {
///                 "string",
///             },
///             IsAnonymous = false,
///             IsArchived = false,
///             MaterializationSettings = new AzureNative.MachineLearningServices.Inputs.MaterializationSettingsArgs
///             {
///                 Notification = new AzureNative.MachineLearningServices.Inputs.NotificationSettingArgs
///                 {
///                     EmailOn = new[]
///                     {
///                         AzureNative.MachineLearningServices.EmailNotificationEnableType.JobFailed,
///                     },
///                     Emails = new[]
///                     {
///                         "string",
///                     },
///                 },
///                 Resource = new AzureNative.MachineLearningServices.Inputs.MaterializationComputeResourceArgs
///                 {
///                     InstanceType = "string",
///                 },
///                 Schedule = new AzureNative.MachineLearningServices.Inputs.RecurrenceTriggerArgs
///                 {
///                     EndTime = "string",
///                     Frequency = AzureNative.MachineLearningServices.RecurrenceFrequency.Day,
///                     Interval = 1,
///                     Schedule = new AzureNative.MachineLearningServices.Inputs.RecurrenceScheduleArgs
///                     {
///                         Hours = new[]
///                         {
///                             1,
///                         },
///                         Minutes = new[]
///                         {
///                             1,
///                         },
///                         MonthDays = new[]
///                         {
///                             1,
///                         },
///                         WeekDays = new[]
///                         {
///                             AzureNative.MachineLearningServices.WeekDay.Monday,
///                         },
///                     },
///                     StartTime = "string",
///                     TimeZone = "string",
///                     TriggerType = "Recurrence",
///                 },
///                 SparkConfiguration =
///                 {
///                     { "string", "string" },
///                 },
///                 StoreType = AzureNative.MachineLearningServices.MaterializationStoreType.Online,
///             },
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Specification = new AzureNative.MachineLearningServices.Inputs.FeaturesetSpecificationArgs
///             {
///                 Path = "string",
///             },
///             Stage = "string",
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         Name = "string",
///         ResourceGroupName = "test-rg",
///         Version = "string",
///         WorkspaceName = "my-aml-workspace",
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
/// 	machinelearningservices "github.com/pulumi/pulumi-azure-native-sdk/machinelearningservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := machinelearningservices.NewFeaturesetVersion(ctx, "featuresetVersion", &machinelearningservices.FeaturesetVersionArgs{
/// 			FeaturesetVersionProperties: &machinelearningservices.FeaturesetVersionTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				Entities: pulumi.StringArray{
/// 					pulumi.String("string"),
/// 				},
/// 				IsAnonymous: pulumi.Bool(false),
/// 				IsArchived:  pulumi.Bool(false),
/// 				MaterializationSettings: &machinelearningservices.MaterializationSettingsArgs{
/// 					Notification: &machinelearningservices.NotificationSettingArgs{
/// 						EmailOn: pulumi.StringArray{
/// 							pulumi.String(machinelearningservices.EmailNotificationEnableTypeJobFailed),
/// 						},
/// 						Emails: pulumi.StringArray{
/// 							pulumi.String("string"),
/// 						},
/// 					},
/// 					Resource: &machinelearningservices.MaterializationComputeResourceArgs{
/// 						InstanceType: pulumi.String("string"),
/// 					},
/// 					Schedule: &machinelearningservices.RecurrenceTriggerArgs{
/// 						EndTime:   pulumi.String("string"),
/// 						Frequency: pulumi.String(machinelearningservices.RecurrenceFrequencyDay),
/// 						Interval:  pulumi.Int(1),
/// 						Schedule: &machinelearningservices.RecurrenceScheduleArgs{
/// 							Hours: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 							},
/// 							Minutes: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 							},
/// 							MonthDays: pulumi.IntArray{
/// 								pulumi.Int(1),
/// 							},
/// 							WeekDays: pulumi.StringArray{
/// 								pulumi.String(machinelearningservices.WeekDayMonday),
/// 							},
/// 						},
/// 						StartTime:   pulumi.String("string"),
/// 						TimeZone:    pulumi.String("string"),
/// 						TriggerType: pulumi.String("Recurrence"),
/// 					},
/// 					SparkConfiguration: pulumi.StringMap{
/// 						"string": pulumi.String("string"),
/// 					},
/// 					StoreType: pulumi.String(machinelearningservices.MaterializationStoreTypeOnline),
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Specification: &machinelearningservices.FeaturesetSpecificationArgs{
/// 					Path: pulumi.String("string"),
/// 				},
/// 				Stage: pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			Name:              pulumi.String("string"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Version:           pulumi.String("string"),
/// 			WorkspaceName:     pulumi.String("my-aml-workspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.FeaturesetVersion;
/// import com.pulumi.azurenative.machinelearningservices.inputs.MaterializationSettingsArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.NotificationSettingArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.MaterializationComputeResourceArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RecurrenceTriggerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RecurrenceScheduleArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.FeaturesetSpecificationArgs;
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
///         var featuresetVersion = new FeaturesetVersion("featuresetVersion", FeaturesetVersionArgs.builder()
///             .featuresetVersionProperties(FeaturesetVersionArgs.builder()
///                 .description("string")
///                 .entities("string")
///                 .isAnonymous(false)
///                 .isArchived(false)
///                 .materializationSettings(MaterializationSettingsArgs.builder()
///                     .notification(NotificationSettingArgs.builder()
///                         .emailOn("JobFailed")
///                         .emails("string")
///                         .build())
///                     .resource(MaterializationComputeResourceArgs.builder()
///                         .instanceType("string")
///                         .build())
///                     .schedule(Map.ofEntries(
///                         Map.entry("endTime", "string"),
///                         Map.entry("frequency", "Day"),
///                         Map.entry("interval", 1),
///                         Map.entry("schedule", RecurrenceScheduleArgs.builder()
///                             .hours(1)
///                             .minutes(1)
///                             .monthDays(1)
///                             .weekDays("Monday")
///                             .build()),
///                         Map.entry("startTime", "string"),
///                         Map.entry("timeZone", "string"),
///                         Map.entry("triggerType", "Recurrence")
///                     ))
///                     .sparkConfiguration(Map.of("string", "string"))
///                     .storeType("Online")
///                     .build())
///                 .properties(Map.of("string", "string"))
///                 .specification(FeaturesetSpecificationArgs.builder()
///                     .path("string")
///                     .build())
///                 .stage("string")
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .name("string")
///             .resourceGroupName("test-rg")
///             .version("string")
///             .workspaceName("my-aml-workspace")
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
/// const featuresetVersion = new azure_native.machinelearningservices.FeaturesetVersion("featuresetVersion", {
///     featuresetVersionProperties: {
///         description: "string",
///         entities: ["string"],
///         isAnonymous: false,
///         isArchived: false,
///         materializationSettings: {
///             notification: {
///                 emailOn: [azure_native.machinelearningservices.EmailNotificationEnableType.JobFailed],
///                 emails: ["string"],
///             },
///             resource: {
///                 instanceType: "string",
///             },
///             schedule: {
///                 endTime: "string",
///                 frequency: azure_native.machinelearningservices.RecurrenceFrequency.Day,
///                 interval: 1,
///                 schedule: {
///                     hours: [1],
///                     minutes: [1],
///                     monthDays: [1],
///                     weekDays: [azure_native.machinelearningservices.WeekDay.Monday],
///                 },
///                 startTime: "string",
///                 timeZone: "string",
///                 triggerType: "Recurrence",
///             },
///             sparkConfiguration: {
///                 string: "string",
///             },
///             storeType: azure_native.machinelearningservices.MaterializationStoreType.Online,
///         },
///         properties: {
///             string: "string",
///         },
///         specification: {
///             path: "string",
///         },
///         stage: "string",
///         tags: {
///             string: "string",
///         },
///     },
///     name: "string",
///     resourceGroupName: "test-rg",
///     version: "string",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// featureset_version = azure_native.machinelearningservices.FeaturesetVersion("featuresetVersion",
///     featureset_version_properties={
///         "description": "string",
///         "entities": ["string"],
///         "is_anonymous": False,
///         "is_archived": False,
///         "materialization_settings": {
///             "notification": {
///                 "email_on": [azure_native.machinelearningservices.EmailNotificationEnableType.JOB_FAILED],
///                 "emails": ["string"],
///             },
///             "resource": {
///                 "instance_type": "string",
///             },
///             "schedule": {
///                 "end_time": "string",
///                 "frequency": azure_native.machinelearningservices.RecurrenceFrequency.DAY,
///                 "interval": 1,
///                 "schedule": {
///                     "hours": [1],
///                     "minutes": [1],
///                     "month_days": [1],
///                     "week_days": [azure_native.machinelearningservices.WeekDay.MONDAY],
///                 },
///                 "start_time": "string",
///                 "time_zone": "string",
///                 "trigger_type": "Recurrence",
///             },
///             "spark_configuration": {
///                 "string": "string",
///             },
///             "store_type": azure_native.machinelearningservices.MaterializationStoreType.ONLINE,
///         },
///         "properties": {
///             "string": "string",
///         },
///         "specification": {
///             "path": "string",
///         },
///         "stage": "string",
///         "tags": {
///             "string": "string",
///         },
///     },
///     name="string",
///     resource_group_name="test-rg",
///     version="string",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   featuresetVersion:
///     type: azure-native:machinelearningservices:FeaturesetVersion
///     properties:
///       featuresetVersionProperties:
///         description: string
///         entities:
///           - string
///         isAnonymous: false
///         isArchived: false
///         materializationSettings:
///           notification:
///             emailOn:
///               - JobFailed
///             emails:
///               - string
///           resource:
///             instanceType: string
///           schedule:
///             endTime: string
///             frequency: Day
///             interval: 1
///             schedule:
///               hours:
///                 - 1
///               minutes:
///                 - 1
///               monthDays:
///                 - 1
///               weekDays:
///                 - Monday
///             startTime: string
///             timeZone: string
///             triggerType: Recurrence
///           sparkConfiguration:
///             string: string
///           storeType: Online
///         properties:
///           string: string
///         specification:
///           path: string
///         stage: string
///         tags:
///           string: string
///       name: string
///       resourceGroupName: test-rg
///       version: string
///       workspaceName: my-aml-workspace
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
/// $ pulumi import azure-native:machinelearningservices:FeaturesetVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/featuresets/{name}/versions/{version}
/// ```
class FeaturesetVersionMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<FeaturesetVersionResponse> featuresetVersionProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [FeaturesetVersionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FeaturesetVersionMachinelearningservices]. {@macro pulumi_machinelearningservices_featureset_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FeaturesetVersionMachinelearningservices(
    String name, {
    FeaturesetVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:FeaturesetVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.featuresetVersionProperties = registerOutput<FeaturesetVersionResponse>('featuresetVersionProperties');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
