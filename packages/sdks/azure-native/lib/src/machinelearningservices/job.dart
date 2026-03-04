import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_mljob_response.dart';
import 'job_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2021-03-01-preview, 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate AutoML Job.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.MachineLearningServices.Job("job", new()
///     {
///         Id = "string",
///         JobBaseProperties = new AzureNative.MachineLearningServices.Inputs.AutoMLJobArgs
///         {
///             ComputeId = "string",
///             Description = "string",
///             DisplayName = "string",
///             EnvironmentId = "string",
///             EnvironmentVariables =
///             {
///                 { "string", "string" },
///             },
///             ExperimentName = "string",
///             Identity = new AzureNative.MachineLearningServices.Inputs.AmlTokenArgs
///             {
///                 IdentityType = "AMLToken",
///             },
///             IsArchived = false,
///             JobType = "AutoML",
///             Outputs =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.UriFileJobOutputArgs
///                 {
///                     Description = "string",
///                     JobOutputType = "uri_file",
///                     Mode = AzureNative.MachineLearningServices.OutputDeliveryMode.ReadWriteMount,
///                     Uri = "string",
///                 } },
///             },
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Resources = new AzureNative.MachineLearningServices.Inputs.JobResourceConfigurationArgs
///             {
///                 InstanceCount = 1,
///                 InstanceType = "string",
///                 Properties =
///                 {
///                     { "string", new Dictionary<string, object?>
///                     {
///                         ["9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad"] = null,
///                     } },
///                 },
///             },
///             Services =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.JobServiceArgs
///                 {
///                     Endpoint = "string",
///                     JobServiceType = "string",
///                     Port = 1,
///                     Properties =
///                     {
///                         { "string", "string" },
///                     },
///                 } },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///             TaskDetails = new AzureNative.MachineLearningServices.Inputs.ImageClassificationArgs
///             {
///                 LimitSettings = new AzureNative.MachineLearningServices.Inputs.ImageLimitSettingsArgs
///                 {
///                     MaxTrials = 2,
///                 },
///                 ModelSettings = new AzureNative.MachineLearningServices.Inputs.ImageModelSettingsClassificationArgs
///                 {
///                     ValidationCropSize = 2,
///                 },
///                 SearchSpace = new[]
///                 {
///                     new AzureNative.MachineLearningServices.Inputs.ImageModelDistributionSettingsClassificationArgs
///                     {
///                         ValidationCropSize = "choice(2, 360)",
///                     },
///                 },
///                 TargetColumnName = "string",
///                 TaskType = "ImageClassification",
///                 TrainingData = new AzureNative.MachineLearningServices.Inputs.MLTableJobInputArgs
///                 {
///                     JobInputType = "mltable",
///                     Uri = "string",
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewJob(ctx, "job", &machinelearningservices.JobArgs{
/// 			Id: pulumi.String("string"),
/// 			JobBaseProperties: &machinelearningservices.AutoMLJobArgs{
/// 				ComputeId:     pulumi.String("string"),
/// 				Description:   pulumi.String("string"),
/// 				DisplayName:   pulumi.String("string"),
/// 				EnvironmentId: pulumi.String("string"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				ExperimentName: pulumi.String("string"),
/// 				Identity: machinelearningservices.AmlToken{
/// 					IdentityType: "AMLToken",
/// 				},
/// 				IsArchived: pulumi.Bool(false),
/// 				JobType:    pulumi.String("AutoML"),
/// 				Outputs: pulumi.Map{
/// 					"string": machinelearningservices.UriFileJobOutput{
/// 						Description:   "string",
/// 						JobOutputType: "uri_file",
/// 						Mode:          machinelearningservices.OutputDeliveryModeReadWriteMount,
/// 						Uri:           "string",
/// 					},
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Resources: &machinelearningservices.JobResourceConfigurationArgs{
/// 					InstanceCount: pulumi.Int(1),
/// 					InstanceType:  pulumi.String("string"),
/// 					Properties: pulumi.Map{
/// 						"string": pulumi.Any(map[string]interface{}{
/// 							"9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad": nil,
/// 						}),
/// 					},
/// 				},
/// 				Services: machinelearningservices.JobServiceMap{
/// 					"string": &machinelearningservices.JobServiceArgs{
/// 						Endpoint:       pulumi.String("string"),
/// 						JobServiceType: pulumi.String("string"),
/// 						Port:           pulumi.Int(1),
/// 						Properties: pulumi.StringMap{
/// 							"string": pulumi.String("string"),
/// 						},
/// 					},
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				TaskDetails: machinelearningservices.ImageClassification{
/// 					LimitSettings: machinelearningservices.ImageLimitSettings{
/// 						MaxTrials: 2,
/// 					},
/// 					ModelSettings: machinelearningservices.ImageModelSettingsClassification{
/// 						ValidationCropSize: 2,
/// 					},
/// 					SearchSpace: []machinelearningservices.ImageModelDistributionSettingsClassification{
/// 						{
/// 							ValidationCropSize: "choice(2, 360)",
/// 						},
/// 					},
/// 					TargetColumnName: "string",
/// 					TaskType:         "ImageClassification",
/// 					TrainingData: machinelearningservices.MLTableJobInput{
/// 						JobInputType: "mltable",
/// 						Uri:          "string",
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.machinelearningservices.Job;
/// import com.pulumi.azurenative.machinelearningservices.JobArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .id("string")
///             .jobBaseProperties(AutoMLJobArgs.builder()
///                 .computeId("string")
///                 .description("string")
///                 .displayName("string")
///                 .environmentId("string")
///                 .environmentVariables(Map.of("string", "string"))
///                 .experimentName("string")
///                 .identity(AmlTokenArgs.builder()
///                     .identityType("AMLToken")
///                     .build())
///                 .isArchived(false)
///                 .jobType("AutoML")
///                 .outputs(Map.of("string", UriFileJobOutputArgs.builder()
///                     .description("string")
///                     .jobOutputType("uri_file")
///                     .mode("ReadWriteMount")
///                     .uri("string")
///                     .build()))
///                 .properties(Map.of("string", "string"))
///                 .resources(JobResourceConfigurationArgs.builder()
///                     .instanceCount(1)
///                     .instanceType("string")
///                     .properties(Map.of("string", Map.of("9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad", null)))
///                     .build())
///                 .services(Map.of("string", JobServiceArgs.builder()
///                     .endpoint("string")
///                     .jobServiceType("string")
///                     .port(1)
///                     .properties(Map.of("string", "string"))
///                     .build()))
///                 .tags(Map.of("string", "string"))
///                 .taskDetails(ImageClassificationArgs.builder()
///                     .limitSettings(ImageLimitSettingsArgs.builder()
///                         .maxTrials(2)
///                         .build())
///                     .modelSettings(ImageModelSettingsClassificationArgs.builder()
///                         .validationCropSize(2)
///                         .build())
///                     .searchSpace(ImageModelDistributionSettingsClassificationArgs.builder()
///                         .validationCropSize("choice(2, 360)")
///                         .build())
///                     .targetColumnName("string")
///                     .taskType("ImageClassification")
///                     .trainingData(MLTableJobInputArgs.builder()
///                         .jobInputType("mltable")
///                         .uri("string")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const job = new azure_native.machinelearningservices.Job("job", {
///     id: "string",
///     jobBaseProperties: {
///         computeId: "string",
///         description: "string",
///         displayName: "string",
///         environmentId: "string",
///         environmentVariables: {
///             string: "string",
///         },
///         experimentName: "string",
///         identity: {
///             identityType: "AMLToken",
///         },
///         isArchived: false,
///         jobType: "AutoML",
///         outputs: {
///             string: {
///                 description: "string",
///                 jobOutputType: "uri_file",
///                 mode: azure_native.machinelearningservices.OutputDeliveryMode.ReadWriteMount,
///                 uri: "string",
///             },
///         },
///         properties: {
///             string: "string",
///         },
///         resources: {
///             instanceCount: 1,
///             instanceType: "string",
///             properties: {
///                 string: {
///                     "9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad": null,
///                 },
///             },
///         },
///         services: {
///             string: {
///                 endpoint: "string",
///                 jobServiceType: "string",
///                 port: 1,
///                 properties: {
///                     string: "string",
///                 },
///             },
///         },
///         tags: {
///             string: "string",
///         },
///         taskDetails: {
///             limitSettings: {
///                 maxTrials: 2,
///             },
///             modelSettings: {
///                 validationCropSize: 2,
///             },
///             searchSpace: [{
///                 validationCropSize: "choice(2, 360)",
///             }],
///             targetColumnName: "string",
///             taskType: "ImageClassification",
///             trainingData: {
///                 jobInputType: "mltable",
///                 uri: "string",
///             },
///         },
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.machinelearningservices.Job("job",
///     id="string",
///     job_base_properties={
///         "compute_id": "string",
///         "description": "string",
///         "display_name": "string",
///         "environment_id": "string",
///         "environment_variables": {
///             "string": "string",
///         },
///         "experiment_name": "string",
///         "identity": {
///             "identity_type": "AMLToken",
///         },
///         "is_archived": False,
///         "job_type": "AutoML",
///         "outputs": {
///             "string": {
///                 "description": "string",
///                 "job_output_type": "uri_file",
///                 "mode": azure_native.machinelearningservices.OutputDeliveryMode.READ_WRITE_MOUNT,
///                 "uri": "string",
///             },
///         },
///         "properties": {
///             "string": "string",
///         },
///         "resources": {
///             "instance_count": 1,
///             "instance_type": "string",
///             "properties": {
///                 "string": {
///                     "9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad": None,
///                 },
///             },
///         },
///         "services": {
///             "string": {
///                 "endpoint": "string",
///                 "job_service_type": "string",
///                 "port": 1,
///                 "properties": {
///                     "string": "string",
///                 },
///             },
///         },
///         "tags": {
///             "string": "string",
///         },
///         "task_details": {
///             "limit_settings": {
///                 "max_trials": 2,
///             },
///             "model_settings": {
///                 "validation_crop_size": 2,
///             },
///             "search_space": [{
///                 "validation_crop_size": "choice(2, 360)",
///             }],
///             "target_column_name": "string",
///             "task_type": "ImageClassification",
///             "training_data": {
///                 "job_input_type": "mltable",
///                 "uri": "string",
///             },
///         },
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:machinelearningservices:Job
///     properties:
///       id: string
///       jobBaseProperties:
///         computeId: string
///         description: string
///         displayName: string
///         environmentId: string
///         environmentVariables:
///           string: string
///         experimentName: string
///         identity:
///           identityType: AMLToken
///         isArchived: false
///         jobType: AutoML
///         outputs:
///           string:
///             description: string
///             jobOutputType: uri_file
///             mode: ReadWriteMount
///             uri: string
///         properties:
///           string: string
///         resources:
///           instanceCount: 1
///           instanceType: string
///           properties:
///             string:
///               9bec0ab0-c62f-4fa9-a97c-7b24bbcc90ad: null
///         services:
///           string:
///             endpoint: string
///             jobServiceType: string
///             port: 1
///             properties:
///               string: string
///         tags:
///           string: string
///         taskDetails:
///           limitSettings:
///             maxTrials: 2
///           modelSettings:
///             validationCropSize: 2
///           searchSpace:
///             - validationCropSize: choice(2, 360)
///           targetColumnName: string
///           taskType: ImageClassification
///           trainingData:
///             jobInputType: mltable
///             uri: string
///       resourceGroupName: test-rg
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate Command Job.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.MachineLearningServices.Job("job", new()
///     {
///         Id = "string",
///         JobBaseProperties = new AzureNative.MachineLearningServices.Inputs.CommandJobArgs
///         {
///             CodeId = "string",
///             Command = "string",
///             ComputeId = "string",
///             Description = "string",
///             DisplayName = "string",
///             Distribution = new AzureNative.MachineLearningServices.Inputs.TensorFlowArgs
///             {
///                 DistributionType = "TensorFlow",
///                 ParameterServerCount = 1,
///                 WorkerCount = 1,
///             },
///             EnvironmentId = "string",
///             EnvironmentVariables =
///             {
///                 { "string", "string" },
///             },
///             ExperimentName = "string",
///             Identity = new AzureNative.MachineLearningServices.Inputs.AmlTokenArgs
///             {
///                 IdentityType = "AMLToken",
///             },
///             Inputs =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.LiteralJobInputArgs
///                 {
///                     Description = "string",
///                     JobInputType = "literal",
///                     Value = "string",
///                 } },
///             },
///             JobType = "Command",
///             Limits = new AzureNative.MachineLearningServices.Inputs.CommandJobLimitsArgs
///             {
///                 JobLimitsType = "Command",
///                 Timeout = "PT5M",
///             },
///             Outputs =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.UriFileJobOutputArgs
///                 {
///                     Description = "string",
///                     JobOutputType = "uri_file",
///                     Mode = AzureNative.MachineLearningServices.OutputDeliveryMode.ReadWriteMount,
///                     Uri = "string",
///                 } },
///             },
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Resources = new AzureNative.MachineLearningServices.Inputs.JobResourceConfigurationArgs
///             {
///                 InstanceCount = 1,
///                 InstanceType = "string",
///                 Properties =
///                 {
///                     { "string", new Dictionary<string, object?>
///                     {
///                         ["e6b6493e-7d5e-4db3-be1e-306ec641327e"] = null,
///                     } },
///                 },
///             },
///             Services =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.JobServiceArgs
///                 {
///                     Endpoint = "string",
///                     JobServiceType = "string",
///                     Port = 1,
///                     Properties =
///                     {
///                         { "string", "string" },
///                     },
///                 } },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewJob(ctx, "job", &machinelearningservices.JobArgs{
/// 			Id: pulumi.String("string"),
/// 			JobBaseProperties: &machinelearningservices.CommandJobArgs{
/// 				CodeId:      pulumi.String("string"),
/// 				Command:     pulumi.String("string"),
/// 				ComputeId:   pulumi.String("string"),
/// 				Description: pulumi.String("string"),
/// 				DisplayName: pulumi.String("string"),
/// 				Distribution: machinelearningservices.TensorFlow{
/// 					DistributionType:     "TensorFlow",
/// 					ParameterServerCount: 1,
/// 					WorkerCount:          1,
/// 				},
/// 				EnvironmentId: pulumi.String("string"),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				ExperimentName: pulumi.String("string"),
/// 				Identity: machinelearningservices.AmlToken{
/// 					IdentityType: "AMLToken",
/// 				},
/// 				Inputs: pulumi.Map{
/// 					"string": machinelearningservices.LiteralJobInput{
/// 						Description:  "string",
/// 						JobInputType: "literal",
/// 						Value:        "string",
/// 					},
/// 				},
/// 				JobType: pulumi.String("Command"),
/// 				Limits: &machinelearningservices.CommandJobLimitsArgs{
/// 					JobLimitsType: pulumi.String("Command"),
/// 					Timeout:       pulumi.String("PT5M"),
/// 				},
/// 				Outputs: pulumi.Map{
/// 					"string": machinelearningservices.UriFileJobOutput{
/// 						Description:   "string",
/// 						JobOutputType: "uri_file",
/// 						Mode:          machinelearningservices.OutputDeliveryModeReadWriteMount,
/// 						Uri:           "string",
/// 					},
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Resources: &machinelearningservices.JobResourceConfigurationArgs{
/// 					InstanceCount: pulumi.Int(1),
/// 					InstanceType:  pulumi.String("string"),
/// 					Properties: pulumi.Map{
/// 						"string": pulumi.Any(map[string]interface{}{
/// 							"e6b6493e-7d5e-4db3-be1e-306ec641327e": nil,
/// 						}),
/// 					},
/// 				},
/// 				Services: machinelearningservices.JobServiceMap{
/// 					"string": &machinelearningservices.JobServiceArgs{
/// 						Endpoint:       pulumi.String("string"),
/// 						JobServiceType: pulumi.String("string"),
/// 						Port:           pulumi.Int(1),
/// 						Properties: pulumi.StringMap{
/// 							"string": pulumi.String("string"),
/// 						},
/// 					},
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.machinelearningservices.Job;
/// import com.pulumi.azurenative.machinelearningservices.JobArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .id("string")
///             .jobBaseProperties(CommandJobArgs.builder()
///                 .codeId("string")
///                 .command("string")
///                 .computeId("string")
///                 .description("string")
///                 .displayName("string")
///                 .distribution(TensorFlowArgs.builder()
///                     .distributionType("TensorFlow")
///                     .parameterServerCount(1)
///                     .workerCount(1)
///                     .build())
///                 .environmentId("string")
///                 .environmentVariables(Map.of("string", "string"))
///                 .experimentName("string")
///                 .identity(AmlTokenArgs.builder()
///                     .identityType("AMLToken")
///                     .build())
///                 .inputs(Map.of("string", LiteralJobInputArgs.builder()
///                     .description("string")
///                     .jobInputType("literal")
///                     .value("string")
///                     .build()))
///                 .jobType("Command")
///                 .limits(Map.ofEntries(
///                     Map.entry("jobLimitsType", "Command"),
///                     Map.entry("timeout", "PT5M")
///                 ))
///                 .outputs(Map.of("string", UriFileJobOutputArgs.builder()
///                     .description("string")
///                     .jobOutputType("uri_file")
///                     .mode("ReadWriteMount")
///                     .uri("string")
///                     .build()))
///                 .properties(Map.of("string", "string"))
///                 .resources(JobResourceConfigurationArgs.builder()
///                     .instanceCount(1)
///                     .instanceType("string")
///                     .properties(Map.of("string", Map.of("e6b6493e-7d5e-4db3-be1e-306ec641327e", null)))
///                     .build())
///                 .services(Map.of("string", JobServiceArgs.builder()
///                     .endpoint("string")
///                     .jobServiceType("string")
///                     .port(1)
///                     .properties(Map.of("string", "string"))
///                     .build()))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const job = new azure_native.machinelearningservices.Job("job", {
///     id: "string",
///     jobBaseProperties: {
///         codeId: "string",
///         command: "string",
///         computeId: "string",
///         description: "string",
///         displayName: "string",
///         distribution: {
///             distributionType: "TensorFlow",
///             parameterServerCount: 1,
///             workerCount: 1,
///         },
///         environmentId: "string",
///         environmentVariables: {
///             string: "string",
///         },
///         experimentName: "string",
///         identity: {
///             identityType: "AMLToken",
///         },
///         inputs: {
///             string: {
///                 description: "string",
///                 jobInputType: "literal",
///                 value: "string",
///             },
///         },
///         jobType: "Command",
///         limits: {
///             jobLimitsType: "Command",
///             timeout: "PT5M",
///         },
///         outputs: {
///             string: {
///                 description: "string",
///                 jobOutputType: "uri_file",
///                 mode: azure_native.machinelearningservices.OutputDeliveryMode.ReadWriteMount,
///                 uri: "string",
///             },
///         },
///         properties: {
///             string: "string",
///         },
///         resources: {
///             instanceCount: 1,
///             instanceType: "string",
///             properties: {
///                 string: {
///                     "e6b6493e-7d5e-4db3-be1e-306ec641327e": null,
///                 },
///             },
///         },
///         services: {
///             string: {
///                 endpoint: "string",
///                 jobServiceType: "string",
///                 port: 1,
///                 properties: {
///                     string: "string",
///                 },
///             },
///         },
///         tags: {
///             string: "string",
///         },
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.machinelearningservices.Job("job",
///     id="string",
///     job_base_properties={
///         "code_id": "string",
///         "command": "string",
///         "compute_id": "string",
///         "description": "string",
///         "display_name": "string",
///         "distribution": {
///             "distribution_type": "TensorFlow",
///             "parameter_server_count": 1,
///             "worker_count": 1,
///         },
///         "environment_id": "string",
///         "environment_variables": {
///             "string": "string",
///         },
///         "experiment_name": "string",
///         "identity": {
///             "identity_type": "AMLToken",
///         },
///         "inputs": {
///             "string": {
///                 "description": "string",
///                 "job_input_type": "literal",
///                 "value": "string",
///             },
///         },
///         "job_type": "Command",
///         "limits": {
///             "job_limits_type": "Command",
///             "timeout": "PT5M",
///         },
///         "outputs": {
///             "string": {
///                 "description": "string",
///                 "job_output_type": "uri_file",
///                 "mode": azure_native.machinelearningservices.OutputDeliveryMode.READ_WRITE_MOUNT,
///                 "uri": "string",
///             },
///         },
///         "properties": {
///             "string": "string",
///         },
///         "resources": {
///             "instance_count": 1,
///             "instance_type": "string",
///             "properties": {
///                 "string": {
///                     "e6b6493e-7d5e-4db3-be1e-306ec641327e": None,
///                 },
///             },
///         },
///         "services": {
///             "string": {
///                 "endpoint": "string",
///                 "job_service_type": "string",
///                 "port": 1,
///                 "properties": {
///                     "string": "string",
///                 },
///             },
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:machinelearningservices:Job
///     properties:
///       id: string
///       jobBaseProperties:
///         codeId: string
///         command: string
///         computeId: string
///         description: string
///         displayName: string
///         distribution:
///           distributionType: TensorFlow
///           parameterServerCount: 1
///           workerCount: 1
///         environmentId: string
///         environmentVariables:
///           string: string
///         experimentName: string
///         identity:
///           identityType: AMLToken
///         inputs:
///           string:
///             description: string
///             jobInputType: literal
///             value: string
///         jobType: Command
///         limits:
///           jobLimitsType: Command
///           timeout: PT5M
///         outputs:
///           string:
///             description: string
///             jobOutputType: uri_file
///             mode: ReadWriteMount
///             uri: string
///         properties:
///           string: string
///         resources:
///           instanceCount: 1
///           instanceType: string
///           properties:
///             string:
///               e6b6493e-7d5e-4db3-be1e-306ec641327e: null
///         services:
///           string:
///             endpoint: string
///             jobServiceType: string
///             port: 1
///             properties:
///               string: string
///         tags:
///           string: string
///       resourceGroupName: test-rg
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate Pipeline Job.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.MachineLearningServices.Job("job", new()
///     {
///         Id = "string",
///         JobBaseProperties = new AzureNative.MachineLearningServices.Inputs.PipelineJobArgs
///         {
///             ComputeId = "string",
///             Description = "string",
///             DisplayName = "string",
///             ExperimentName = "string",
///             Inputs =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.LiteralJobInputArgs
///                 {
///                     Description = "string",
///                     JobInputType = "literal",
///                     Value = "string",
///                 } },
///             },
///             JobType = "Pipeline",
///             Outputs =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.UriFileJobOutputArgs
///                 {
///                     Description = "string",
///                     JobOutputType = "uri_file",
///                     Mode = AzureNative.MachineLearningServices.OutputDeliveryMode.Upload,
///                     Uri = "string",
///                 } },
///             },
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Services =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.JobServiceArgs
///                 {
///                     Endpoint = "string",
///                     JobServiceType = "string",
///                     Port = 1,
///                     Properties =
///                     {
///                         { "string", "string" },
///                     },
///                 } },
///             },
///             Settings = null,
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewJob(ctx, "job", &machinelearningservices.JobArgs{
/// 			Id: pulumi.String("string"),
/// 			JobBaseProperties: &machinelearningservices.PipelineJobArgs{
/// 				ComputeId:      pulumi.String("string"),
/// 				Description:    pulumi.String("string"),
/// 				DisplayName:    pulumi.String("string"),
/// 				ExperimentName: pulumi.String("string"),
/// 				Inputs: pulumi.Map{
/// 					"string": machinelearningservices.LiteralJobInput{
/// 						Description:  "string",
/// 						JobInputType: "literal",
/// 						Value:        "string",
/// 					},
/// 				},
/// 				JobType: pulumi.String("Pipeline"),
/// 				Outputs: pulumi.Map{
/// 					"string": machinelearningservices.UriFileJobOutput{
/// 						Description:   "string",
/// 						JobOutputType: "uri_file",
/// 						Mode:          machinelearningservices.OutputDeliveryModeUpload,
/// 						Uri:           "string",
/// 					},
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Services: machinelearningservices.JobServiceMap{
/// 					"string": &machinelearningservices.JobServiceArgs{
/// 						Endpoint:       pulumi.String("string"),
/// 						JobServiceType: pulumi.String("string"),
/// 						Port:           pulumi.Int(1),
/// 						Properties: pulumi.StringMap{
/// 							"string": pulumi.String("string"),
/// 						},
/// 					},
/// 				},
/// 				Settings: pulumi.Any(map[string]interface{}{}),
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.machinelearningservices.Job;
/// import com.pulumi.azurenative.machinelearningservices.JobArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .id("string")
///             .jobBaseProperties(PipelineJobArgs.builder()
///                 .computeId("string")
///                 .description("string")
///                 .displayName("string")
///                 .experimentName("string")
///                 .inputs(Map.of("string", LiteralJobInputArgs.builder()
///                     .description("string")
///                     .jobInputType("literal")
///                     .value("string")
///                     .build()))
///                 .jobType("Pipeline")
///                 .outputs(Map.of("string", UriFileJobOutputArgs.builder()
///                     .description("string")
///                     .jobOutputType("uri_file")
///                     .mode("Upload")
///                     .uri("string")
///                     .build()))
///                 .properties(Map.of("string", "string"))
///                 .services(Map.of("string", JobServiceArgs.builder()
///                     .endpoint("string")
///                     .jobServiceType("string")
///                     .port(1)
///                     .properties(Map.of("string", "string"))
///                     .build()))
///                 .settings(Map.ofEntries(
///                 ))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const job = new azure_native.machinelearningservices.Job("job", {
///     id: "string",
///     jobBaseProperties: {
///         computeId: "string",
///         description: "string",
///         displayName: "string",
///         experimentName: "string",
///         inputs: {
///             string: {
///                 description: "string",
///                 jobInputType: "literal",
///                 value: "string",
///             },
///         },
///         jobType: "Pipeline",
///         outputs: {
///             string: {
///                 description: "string",
///                 jobOutputType: "uri_file",
///                 mode: azure_native.machinelearningservices.OutputDeliveryMode.Upload,
///                 uri: "string",
///             },
///         },
///         properties: {
///             string: "string",
///         },
///         services: {
///             string: {
///                 endpoint: "string",
///                 jobServiceType: "string",
///                 port: 1,
///                 properties: {
///                     string: "string",
///                 },
///             },
///         },
///         settings: {},
///         tags: {
///             string: "string",
///         },
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.machinelearningservices.Job("job",
///     id="string",
///     job_base_properties={
///         "compute_id": "string",
///         "description": "string",
///         "display_name": "string",
///         "experiment_name": "string",
///         "inputs": {
///             "string": {
///                 "description": "string",
///                 "job_input_type": "literal",
///                 "value": "string",
///             },
///         },
///         "job_type": "Pipeline",
///         "outputs": {
///             "string": {
///                 "description": "string",
///                 "job_output_type": "uri_file",
///                 "mode": azure_native.machinelearningservices.OutputDeliveryMode.UPLOAD,
///                 "uri": "string",
///             },
///         },
///         "properties": {
///             "string": "string",
///         },
///         "services": {
///             "string": {
///                 "endpoint": "string",
///                 "job_service_type": "string",
///                 "port": 1,
///                 "properties": {
///                     "string": "string",
///                 },
///             },
///         },
///         "settings": {},
///         "tags": {
///             "string": "string",
///         },
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:machinelearningservices:Job
///     properties:
///       id: string
///       jobBaseProperties:
///         computeId: string
///         description: string
///         displayName: string
///         experimentName: string
///         inputs:
///           string:
///             description: string
///             jobInputType: literal
///             value: string
///         jobType: Pipeline
///         outputs:
///           string:
///             description: string
///             jobOutputType: uri_file
///             mode: Upload
///             uri: string
///         properties:
///           string: string
///         services:
///           string:
///             endpoint: string
///             jobServiceType: string
///             port: 1
///             properties:
///               string: string
///         settings: {}
///         tags:
///           string: string
///       resourceGroupName: test-rg
///       workspaceName: my-aml-workspace
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### CreateOrUpdate Sweep Job.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var job = new AzureNative.MachineLearningServices.Job("job", new()
///     {
///         Id = "string",
///         JobBaseProperties = new AzureNative.MachineLearningServices.Inputs.SweepJobArgs
///         {
///             ComputeId = "string",
///             Description = "string",
///             DisplayName = "string",
///             EarlyTermination = new AzureNative.MachineLearningServices.Inputs.MedianStoppingPolicyArgs
///             {
///                 DelayEvaluation = 1,
///                 EvaluationInterval = 1,
///                 PolicyType = "MedianStopping",
///             },
///             ExperimentName = "string",
///             JobType = "Sweep",
///             Limits = new AzureNative.MachineLearningServices.Inputs.SweepJobLimitsArgs
///             {
///                 JobLimitsType = "Sweep",
///                 MaxConcurrentTrials = 1,
///                 MaxTotalTrials = 1,
///                 TrialTimeout = "PT1S",
///             },
///             Objective = new AzureNative.MachineLearningServices.Inputs.ObjectiveArgs
///             {
///                 Goal = AzureNative.MachineLearningServices.Goal.Minimize,
///                 PrimaryMetric = "string",
///             },
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             SamplingAlgorithm = new AzureNative.MachineLearningServices.Inputs.GridSamplingAlgorithmArgs
///             {
///                 SamplingAlgorithmType = "Grid",
///             },
///             SearchSpace = new Dictionary<string, object?>
///             {
///                 ["string"] = new Dictionary<string, object?>
///                 {
///                 },
///             },
///             Services =
///             {
///                 { "string", new AzureNative.MachineLearningServices.Inputs.JobServiceArgs
///                 {
///                     Endpoint = "string",
///                     JobServiceType = "string",
///                     Port = 1,
///                     Properties =
///                     {
///                         { "string", "string" },
///                     },
///                 } },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///             Trial = new AzureNative.MachineLearningServices.Inputs.TrialComponentArgs
///             {
///                 CodeId = "string",
///                 Command = "string",
///                 Distribution = new AzureNative.MachineLearningServices.Inputs.MpiArgs
///                 {
///                     DistributionType = "Mpi",
///                     ProcessCountPerInstance = 1,
///                 },
///                 EnvironmentId = "string",
///                 EnvironmentVariables =
///                 {
///                     { "string", "string" },
///                 },
///                 Resources = new AzureNative.MachineLearningServices.Inputs.JobResourceConfigurationArgs
///                 {
///                     InstanceCount = 1,
///                     InstanceType = "string",
///                     Properties =
///                     {
///                         { "string", new Dictionary<string, object?>
///                         {
///                             ["e6b6493e-7d5e-4db3-be1e-306ec641327e"] = null,
///                         } },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewJob(ctx, "job", &machinelearningservices.JobArgs{
/// 			Id: pulumi.String("string"),
/// 			JobBaseProperties: &machinelearningservices.SweepJobArgs{
/// 				ComputeId:   pulumi.String("string"),
/// 				Description: pulumi.String("string"),
/// 				DisplayName: pulumi.String("string"),
/// 				EarlyTermination: machinelearningservices.MedianStoppingPolicy{
/// 					DelayEvaluation:    1,
/// 					EvaluationInterval: 1,
/// 					PolicyType:         "MedianStopping",
/// 				},
/// 				ExperimentName: pulumi.String("string"),
/// 				JobType:        pulumi.String("Sweep"),
/// 				Limits: &machinelearningservices.SweepJobLimitsArgs{
/// 					JobLimitsType:       pulumi.String("Sweep"),
/// 					MaxConcurrentTrials: pulumi.Int(1),
/// 					MaxTotalTrials:      pulumi.Int(1),
/// 					TrialTimeout:        pulumi.String("PT1S"),
/// 				},
/// 				Objective: &machinelearningservices.ObjectiveArgs{
/// 					Goal:          pulumi.String(machinelearningservices.GoalMinimize),
/// 					PrimaryMetric: pulumi.String("string"),
/// 				},
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				SamplingAlgorithm: machinelearningservices.GridSamplingAlgorithm{
/// 					SamplingAlgorithmType: "Grid",
/// 				},
/// 				SearchSpace: pulumi.Any(map[string]interface{}{
/// 					"string": map[string]interface{}{},
/// 				}),
/// 				Services: machinelearningservices.JobServiceMap{
/// 					"string": &machinelearningservices.JobServiceArgs{
/// 						Endpoint:       pulumi.String("string"),
/// 						JobServiceType: pulumi.String("string"),
/// 						Port:           pulumi.Int(1),
/// 						Properties: pulumi.StringMap{
/// 							"string": pulumi.String("string"),
/// 						},
/// 					},
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Trial: &machinelearningservices.TrialComponentArgs{
/// 					CodeId:  pulumi.String("string"),
/// 					Command: pulumi.String("string"),
/// 					Distribution: machinelearningservices.Mpi{
/// 						DistributionType:        "Mpi",
/// 						ProcessCountPerInstance: 1,
/// 					},
/// 					EnvironmentId: pulumi.String("string"),
/// 					EnvironmentVariables: pulumi.StringMap{
/// 						"string": pulumi.String("string"),
/// 					},
/// 					Resources: &machinelearningservices.JobResourceConfigurationArgs{
/// 						InstanceCount: pulumi.Int(1),
/// 						InstanceType:  pulumi.String("string"),
/// 						Properties: pulumi.Map{
/// 							"string": pulumi.Any(map[string]interface{}{
/// 								"e6b6493e-7d5e-4db3-be1e-306ec641327e": nil,
/// 							}),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.machinelearningservices.Job;
/// import com.pulumi.azurenative.machinelearningservices.JobArgs;
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
///         var job = new Job("job", JobArgs.builder()
///             .id("string")
///             .jobBaseProperties(SweepJobArgs.builder()
///                 .computeId("string")
///                 .description("string")
///                 .displayName("string")
///                 .earlyTermination(MedianStoppingPolicyArgs.builder()
///                     .delayEvaluation(1)
///                     .evaluationInterval(1)
///                     .policyType("MedianStopping")
///                     .build())
///                 .experimentName("string")
///                 .jobType("Sweep")
///                 .limits(Map.ofEntries(
///                     Map.entry("jobLimitsType", "Sweep"),
///                     Map.entry("maxConcurrentTrials", 1),
///                     Map.entry("maxTotalTrials", 1),
///                     Map.entry("trialTimeout", "PT1S")
///                 ))
///                 .objective(ObjectiveArgs.builder()
///                     .goal("Minimize")
///                     .primaryMetric("string")
///                     .build())
///                 .properties(Map.of("string", "string"))
///                 .samplingAlgorithm(GridSamplingAlgorithmArgs.builder()
///                     .samplingAlgorithmType("Grid")
///                     .build())
///                 .searchSpace(Map.of("string", Map.ofEntries(
///                 )))
///                 .services(Map.of("string", JobServiceArgs.builder()
///                     .endpoint("string")
///                     .jobServiceType("string")
///                     .port(1)
///                     .properties(Map.of("string", "string"))
///                     .build()))
///                 .tags(Map.of("string", "string"))
///                 .trial(TrialComponentArgs.builder()
///                     .codeId("string")
///                     .command("string")
///                     .distribution(MpiArgs.builder()
///                         .distributionType("Mpi")
///                         .processCountPerInstance(1)
///                         .build())
///                     .environmentId("string")
///                     .environmentVariables(Map.of("string", "string"))
///                     .resources(JobResourceConfigurationArgs.builder()
///                         .instanceCount(1)
///                         .instanceType("string")
///                         .properties(Map.of("string", Map.of("e6b6493e-7d5e-4db3-be1e-306ec641327e", null)))
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("test-rg")
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
/// const job = new azure_native.machinelearningservices.Job("job", {
///     id: "string",
///     jobBaseProperties: {
///         computeId: "string",
///         description: "string",
///         displayName: "string",
///         earlyTermination: {
///             delayEvaluation: 1,
///             evaluationInterval: 1,
///             policyType: "MedianStopping",
///         },
///         experimentName: "string",
///         jobType: "Sweep",
///         limits: {
///             jobLimitsType: "Sweep",
///             maxConcurrentTrials: 1,
///             maxTotalTrials: 1,
///             trialTimeout: "PT1S",
///         },
///         objective: {
///             goal: azure_native.machinelearningservices.Goal.Minimize,
///             primaryMetric: "string",
///         },
///         properties: {
///             string: "string",
///         },
///         samplingAlgorithm: {
///             samplingAlgorithmType: "Grid",
///         },
///         searchSpace: {
///             string: {},
///         },
///         services: {
///             string: {
///                 endpoint: "string",
///                 jobServiceType: "string",
///                 port: 1,
///                 properties: {
///                     string: "string",
///                 },
///             },
///         },
///         tags: {
///             string: "string",
///         },
///         trial: {
///             codeId: "string",
///             command: "string",
///             distribution: {
///                 distributionType: "Mpi",
///                 processCountPerInstance: 1,
///             },
///             environmentId: "string",
///             environmentVariables: {
///                 string: "string",
///             },
///             resources: {
///                 instanceCount: 1,
///                 instanceType: "string",
///                 properties: {
///                     string: {
///                         "e6b6493e-7d5e-4db3-be1e-306ec641327e": null,
///                     },
///                 },
///             },
///         },
///     },
///     resourceGroupName: "test-rg",
///     workspaceName: "my-aml-workspace",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// job = azure_native.machinelearningservices.Job("job",
///     id="string",
///     job_base_properties={
///         "compute_id": "string",
///         "description": "string",
///         "display_name": "string",
///         "early_termination": {
///             "delay_evaluation": 1,
///             "evaluation_interval": 1,
///             "policy_type": "MedianStopping",
///         },
///         "experiment_name": "string",
///         "job_type": "Sweep",
///         "limits": {
///             "job_limits_type": "Sweep",
///             "max_concurrent_trials": 1,
///             "max_total_trials": 1,
///             "trial_timeout": "PT1S",
///         },
///         "objective": {
///             "goal": azure_native.machinelearningservices.Goal.MINIMIZE,
///             "primary_metric": "string",
///         },
///         "properties": {
///             "string": "string",
///         },
///         "sampling_algorithm": {
///             "sampling_algorithm_type": "Grid",
///         },
///         "search_space": {
///             "string": {},
///         },
///         "services": {
///             "string": {
///                 "endpoint": "string",
///                 "job_service_type": "string",
///                 "port": 1,
///                 "properties": {
///                     "string": "string",
///                 },
///             },
///         },
///         "tags": {
///             "string": "string",
///         },
///         "trial": {
///             "code_id": "string",
///             "command": "string",
///             "distribution": {
///                 "distribution_type": "Mpi",
///                 "process_count_per_instance": 1,
///             },
///             "environment_id": "string",
///             "environment_variables": {
///                 "string": "string",
///             },
///             "resources": {
///                 "instance_count": 1,
///                 "instance_type": "string",
///                 "properties": {
///                     "string": {
///                         "e6b6493e-7d5e-4db3-be1e-306ec641327e": None,
///                     },
///                 },
///             },
///         },
///     },
///     resource_group_name="test-rg",
///     workspace_name="my-aml-workspace")
///
/// ```
///
/// ```yaml
/// resources:
///   job:
///     type: azure-native:machinelearningservices:Job
///     properties:
///       id: string
///       jobBaseProperties:
///         computeId: string
///         description: string
///         displayName: string
///         earlyTermination:
///           delayEvaluation: 1
///           evaluationInterval: 1
///           policyType: MedianStopping
///         experimentName: string
///         jobType: Sweep
///         limits:
///           jobLimitsType: Sweep
///           maxConcurrentTrials: 1
///           maxTotalTrials: 1
///           trialTimeout: PT1S
///         objective:
///           goal: Minimize
///           primaryMetric: string
///         properties:
///           string: string
///         samplingAlgorithm:
///           samplingAlgorithmType: Grid
///         searchSpace:
///           string: {}
///         services:
///           string:
///             endpoint: string
///             jobServiceType: string
///             port: 1
///             properties:
///               string: string
///         tags:
///           string: string
///         trial:
///           codeId: string
///           command: string
///           distribution:
///             distributionType: Mpi
///             processCountPerInstance: 1
///           environmentId: string
///           environmentVariables:
///             string: string
///           resources:
///             instanceCount: 1
///             instanceType: string
///             properties:
///               string:
///                 e6b6493e-7d5e-4db3-be1e-306ec641327e: null
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:machinelearningservices:Job string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/jobs/{id}
/// ```
class Job extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<AutoMLJobResponse> jobBaseProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Job].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Job]. {@macro pulumi_machinelearningservices_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Job(String name, {JobArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:machinelearningservices:Job',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    jobBaseProperties = registerOutput<AutoMLJobResponse>('jobBaseProperties');
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
