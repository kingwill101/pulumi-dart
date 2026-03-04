import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_args.dart';
import 'labeling_job_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-04-01-preview.
///
/// Other available API versions: 2020-09-01-preview, 2021-03-01-preview, 2022-06-01-preview, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Labeling Job.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var labelingJob = new AzureNative.MachineLearningServices.LabelingJob("labelingJob", new()
///     {
///         Id = "testLabelingJob",
///         LabelingJobProperties = new AzureNative.MachineLearningServices.Inputs.LabelingJobArgs
///         {
///             Description = "string",
///             JobInstructions = new AzureNative.MachineLearningServices.Inputs.LabelingJobInstructionsArgs
///             {
///                 Uri = "link/to/instructions",
///             },
///             JobType = "Labeling",
///             LabelCategories =
///             {
///                 { "myCategory1", new AzureNative.MachineLearningServices.Inputs.LabelCategoryArgs
///                 {
///                     Classes =
///                     {
///                         { "myLabelClass1", new AzureNative.MachineLearningServices.Inputs.LabelClassArgs
///                         {
///                             DisplayName = "myLabelClass1",
///                             Subclasses = null,
///                         } },
///                         { "myLabelClass2", new AzureNative.MachineLearningServices.Inputs.LabelClassArgs
///                         {
///                             DisplayName = "myLabelClass2",
///                             Subclasses = null,
///                         } },
///                     },
///                     DisplayName = "myCategory1Title",
///                     MultiSelect = AzureNative.MachineLearningServices.MultiSelect.Disabled,
///                 } },
///                 { "myCategory2", new AzureNative.MachineLearningServices.Inputs.LabelCategoryArgs
///                 {
///                     Classes =
///                     {
///                         { "myLabelClass1", new AzureNative.MachineLearningServices.Inputs.LabelClassArgs
///                         {
///                             DisplayName = "myLabelClass1",
///                             Subclasses = null,
///                         } },
///                         { "myLabelClass2", new AzureNative.MachineLearningServices.Inputs.LabelClassArgs
///                         {
///                             DisplayName = "myLabelClass2",
///                             Subclasses = null,
///                         } },
///                     },
///                     DisplayName = "myCategory2Title",
///                     MultiSelect = AzureNative.MachineLearningServices.MultiSelect.Disabled,
///                 } },
///             },
///             LabelingJobMediaProperties = new AzureNative.MachineLearningServices.Inputs.LabelingJobImagePropertiesArgs
///             {
///                 MediaType = "Image",
///             },
///             MlAssistConfiguration = new AzureNative.MachineLearningServices.Inputs.MLAssistConfigurationEnabledArgs
///             {
///                 InferencingComputeBinding = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute",
///                 MlAssist = "Enabled",
///                 TrainingComputeBinding = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute",
///             },
///             Properties =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///             Tags =
///             {
///                 { "additionalProp1", "string" },
///                 { "additionalProp2", "string" },
///                 { "additionalProp3", "string" },
///             },
///         },
///         ResourceGroupName = "workspace-1234",
///         WorkspaceName = "testworkspace",
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
/// 		_, err := machinelearningservices.NewLabelingJob(ctx, "labelingJob", &machinelearningservices.LabelingJobArgs{
/// 			Id: pulumi.String("testLabelingJob"),
/// 			LabelingJobProperties: &machinelearningservices.LabelingJobTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				JobInstructions: &machinelearningservices.LabelingJobInstructionsArgs{
/// 					Uri: pulumi.String("link/to/instructions"),
/// 				},
/// 				JobType: pulumi.String("Labeling"),
/// 				LabelCategories: machinelearningservices.LabelCategoryMap{
/// 					"myCategory1": &machinelearningservices.LabelCategoryArgs{
/// 						Classes: machinelearningservices.LabelClassMap{
/// 							"myLabelClass1": &machinelearningservices.LabelClassArgs{
/// 								DisplayName: pulumi.String("myLabelClass1"),
/// 								Subclasses:  machinelearningservices.LabelClassMap{},
/// 							},
/// 							"myLabelClass2": &machinelearningservices.LabelClassArgs{
/// 								DisplayName: pulumi.String("myLabelClass2"),
/// 								Subclasses:  machinelearningservices.LabelClassMap{},
/// 							},
/// 						},
/// 						DisplayName: pulumi.String("myCategory1Title"),
/// 						MultiSelect: pulumi.String(machinelearningservices.MultiSelectDisabled),
/// 					},
/// 					"myCategory2": &machinelearningservices.LabelCategoryArgs{
/// 						Classes: machinelearningservices.LabelClassMap{
/// 							"myLabelClass1": &machinelearningservices.LabelClassArgs{
/// 								DisplayName: pulumi.String("myLabelClass1"),
/// 								Subclasses:  machinelearningservices.LabelClassMap{},
/// 							},
/// 							"myLabelClass2": &machinelearningservices.LabelClassArgs{
/// 								DisplayName: pulumi.String("myLabelClass2"),
/// 								Subclasses:  machinelearningservices.LabelClassMap{},
/// 							},
/// 						},
/// 						DisplayName: pulumi.String("myCategory2Title"),
/// 						MultiSelect: pulumi.String(machinelearningservices.MultiSelectDisabled),
/// 					},
/// 				},
/// 				LabelingJobMediaProperties: machinelearningservices.LabelingJobImageProperties{
/// 					MediaType: "Image",
/// 				},
/// 				MlAssistConfiguration: machinelearningservices.MLAssistConfigurationEnabled{
/// 					InferencingComputeBinding: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute",
/// 					MlAssist:                  "Enabled",
/// 					TrainingComputeBinding:    "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute",
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"additionalProp1": pulumi.String("string"),
/// 					"additionalProp2": pulumi.String("string"),
/// 					"additionalProp3": pulumi.String("string"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("workspace-1234"),
/// 			WorkspaceName:     pulumi.String("testworkspace"),
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
/// import com.pulumi.azurenative.machinelearningservices.LabelingJob;
/// import com.pulumi.azurenative.machinelearningservices.inputs.LabelingJobInstructionsArgs;
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
///         var labelingJob = new LabelingJob("labelingJob", LabelingJobArgs.builder()
///             .id("testLabelingJob")
///             .labelingJobProperties(LabelingJobArgs.builder()
///                 .description("string")
///                 .jobInstructions(LabelingJobInstructionsArgs.builder()
///                     .uri("link/to/instructions")
///                     .build())
///                 .jobType("Labeling")
///                 .labelCategories(Map.ofEntries(
///                     Map.entry("myCategory1", LabelCategoryArgs.builder()
///                         .classes(Map.ofEntries(
///                             Map.entry("myLabelClass1", LabelClassArgs.builder()
///                                 .displayName("myLabelClass1")
///                                 .subclasses(Map.ofEntries(
///                                 ))
///                                 .build()),
///                             Map.entry("myLabelClass2", LabelClassArgs.builder()
///                                 .displayName("myLabelClass2")
///                                 .subclasses(Map.ofEntries(
///                                 ))
///                                 .build())
///                         ))
///                         .displayName("myCategory1Title")
///                         .multiSelect("Disabled")
///                         .build()),
///                     Map.entry("myCategory2", LabelCategoryArgs.builder()
///                         .classes(Map.ofEntries(
///                             Map.entry("myLabelClass1", LabelClassArgs.builder()
///                                 .displayName("myLabelClass1")
///                                 .subclasses(Map.ofEntries(
///                                 ))
///                                 .build()),
///                             Map.entry("myLabelClass2", LabelClassArgs.builder()
///                                 .displayName("myLabelClass2")
///                                 .subclasses(Map.ofEntries(
///                                 ))
///                                 .build())
///                         ))
///                         .displayName("myCategory2Title")
///                         .multiSelect("Disabled")
///                         .build())
///                 ))
///                 .labelingJobMediaProperties(LabelingJobImagePropertiesArgs.builder()
///                     .mediaType("Image")
///                     .build())
///                 .mlAssistConfiguration(MLAssistConfigurationEnabledArgs.builder()
///                     .inferencingComputeBinding("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute")
///                     .mlAssist("Enabled")
///                     .trainingComputeBinding("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute")
///                     .build())
///                 .properties(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .tags(Map.ofEntries(
///                     Map.entry("additionalProp1", "string"),
///                     Map.entry("additionalProp2", "string"),
///                     Map.entry("additionalProp3", "string")
///                 ))
///                 .build())
///             .resourceGroupName("workspace-1234")
///             .workspaceName("testworkspace")
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
/// const labelingJob = new azure_native.machinelearningservices.LabelingJob("labelingJob", {
///     id: "testLabelingJob",
///     labelingJobProperties: {
///         description: "string",
///         jobInstructions: {
///             uri: "link/to/instructions",
///         },
///         jobType: "Labeling",
///         labelCategories: {
///             myCategory1: {
///                 classes: {
///                     myLabelClass1: {
///                         displayName: "myLabelClass1",
///                         subclasses: {},
///                     },
///                     myLabelClass2: {
///                         displayName: "myLabelClass2",
///                         subclasses: {},
///                     },
///                 },
///                 displayName: "myCategory1Title",
///                 multiSelect: azure_native.machinelearningservices.MultiSelect.Disabled,
///             },
///             myCategory2: {
///                 classes: {
///                     myLabelClass1: {
///                         displayName: "myLabelClass1",
///                         subclasses: {},
///                     },
///                     myLabelClass2: {
///                         displayName: "myLabelClass2",
///                         subclasses: {},
///                     },
///                 },
///                 displayName: "myCategory2Title",
///                 multiSelect: azure_native.machinelearningservices.MultiSelect.Disabled,
///             },
///         },
///         labelingJobMediaProperties: {
///             mediaType: "Image",
///         },
///         mlAssistConfiguration: {
///             inferencingComputeBinding: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute",
///             mlAssist: "Enabled",
///             trainingComputeBinding: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute",
///         },
///         properties: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///         tags: {
///             additionalProp1: "string",
///             additionalProp2: "string",
///             additionalProp3: "string",
///         },
///     },
///     resourceGroupName: "workspace-1234",
///     workspaceName: "testworkspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// labeling_job = azure_native.machinelearningservices.LabelingJob("labelingJob",
///     id="testLabelingJob",
///     labeling_job_properties={
///         "description": "string",
///         "job_instructions": {
///             "uri": "link/to/instructions",
///         },
///         "job_type": "Labeling",
///         "label_categories": {
///             "myCategory1": {
///                 "classes": {
///                     "myLabelClass1": {
///                         "display_name": "myLabelClass1",
///                         "subclasses": {},
///                     },
///                     "myLabelClass2": {
///                         "display_name": "myLabelClass2",
///                         "subclasses": {},
///                     },
///                 },
///                 "display_name": "myCategory1Title",
///                 "multi_select": azure_native.machinelearningservices.MultiSelect.DISABLED,
///             },
///             "myCategory2": {
///                 "classes": {
///                     "myLabelClass1": {
///                         "display_name": "myLabelClass1",
///                         "subclasses": {},
///                     },
///                     "myLabelClass2": {
///                         "display_name": "myLabelClass2",
///                         "subclasses": {},
///                     },
///                 },
///                 "display_name": "myCategory2Title",
///                 "multi_select": azure_native.machinelearningservices.MultiSelect.DISABLED,
///             },
///         },
///         "labeling_job_media_properties": {
///             "media_type": "Image",
///         },
///         "ml_assist_configuration": {
///             "inferencing_compute_binding": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute",
///             "ml_assist": "Enabled",
///             "training_compute_binding": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute",
///         },
///         "properties": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///         "tags": {
///             "additionalProp1": "string",
///             "additionalProp2": "string",
///             "additionalProp3": "string",
///         },
///     },
///     resource_group_name="workspace-1234",
///     workspace_name="testworkspace")
///
/// ```
///
/// ```yaml
/// resources:
///   labelingJob:
///     type: azure-native:machinelearningservices:LabelingJob
///     properties:
///       id: testLabelingJob
///       labelingJobProperties:
///         description: string
///         jobInstructions:
///           uri: link/to/instructions
///         jobType: Labeling
///         labelCategories:
///           myCategory1:
///             classes:
///               myLabelClass1:
///                 displayName: myLabelClass1
///                 subclasses: {}
///               myLabelClass2:
///                 displayName: myLabelClass2
///                 subclasses: {}
///             displayName: myCategory1Title
///             multiSelect: Disabled
///           myCategory2:
///             classes:
///               myLabelClass1:
///                 displayName: myLabelClass1
///                 subclasses: {}
///               myLabelClass2:
///                 displayName: myLabelClass2
///                 subclasses: {}
///             displayName: myCategory2Title
///             multiSelect: Disabled
///         labelingJobMediaProperties:
///           mediaType: Image
///         mlAssistConfiguration:
///           inferencingComputeBinding: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/myscoringcompute
///           mlAssist: Enabled
///           trainingComputeBinding: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/resourceGroup-1234/providers/Microsoft.MachineLearningServices/workspaces/testworkspace/computes/mytrainingompute
///         properties:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///         tags:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///       resourceGroupName: workspace-1234
///       workspaceName: testworkspace
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
/// $ pulumi import azure-native:machinelearningservices:LabelingJob testLabelingJob /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/labelingJobs/{id}
/// ```
class LabelingJobMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<LabelingJobResponse> labelingJobProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LabelingJobMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LabelingJobMachinelearningservices]. {@macro pulumi_machinelearningservices_labeling_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LabelingJobMachinelearningservices(
    String name, {
    LabelingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:LabelingJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    labelingJobProperties = registerOutput<LabelingJobResponse>(
      'labelingJobProperties',
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
