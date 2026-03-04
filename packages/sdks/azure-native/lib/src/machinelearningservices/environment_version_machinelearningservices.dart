import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_args.dart';
import 'environment_version_response.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-02-01-preview, 2022-05-01, 2022-06-01-preview, 2022-10-01, 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Workspace Environment Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var environmentVersion = new AzureNative.MachineLearningServices.EnvironmentVersion("environmentVersion", new()
///     {
///         EnvironmentVersionProperties = new AzureNative.MachineLearningServices.Inputs.EnvironmentVersionArgs
///         {
///             Build = new AzureNative.MachineLearningServices.Inputs.BuildContextArgs
///             {
///                 ContextUri = "https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/",
///                 DockerfilePath = "prod/Dockerfile",
///             },
///             CondaFile = "string",
///             Description = "string",
///             Image = "docker.io/tensorflow/serving:latest",
///             InferenceConfig = new AzureNative.MachineLearningServices.Inputs.InferenceContainerPropertiesArgs
///             {
///                 LivenessRoute = new AzureNative.MachineLearningServices.Inputs.RouteArgs
///                 {
///                     Path = "string",
///                     Port = 1,
///                 },
///                 ReadinessRoute = new AzureNative.MachineLearningServices.Inputs.RouteArgs
///                 {
///                     Path = "string",
///                     Port = 1,
///                 },
///                 ScoringRoute = new AzureNative.MachineLearningServices.Inputs.RouteArgs
///                 {
///                     Path = "string",
///                     Port = 1,
///                 },
///             },
///             IsAnonymous = false,
///             Properties =
///             {
///                 { "string", "string" },
///             },
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
/// 		_, err := machinelearningservices.NewEnvironmentVersion(ctx, "environmentVersion", &machinelearningservices.EnvironmentVersionArgs{
/// 			EnvironmentVersionProperties: &machinelearningservices.EnvironmentVersionTypeArgs{
/// 				Build: &machinelearningservices.BuildContextArgs{
/// 					ContextUri:     pulumi.String("https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/"),
/// 					DockerfilePath: pulumi.String("prod/Dockerfile"),
/// 				},
/// 				CondaFile:   pulumi.String("string"),
/// 				Description: pulumi.String("string"),
/// 				Image:       pulumi.String("docker.io/tensorflow/serving:latest"),
/// 				InferenceConfig: &machinelearningservices.InferenceContainerPropertiesArgs{
/// 					LivenessRoute: &machinelearningservices.RouteArgs{
/// 						Path: pulumi.String("string"),
/// 						Port: pulumi.Int(1),
/// 					},
/// 					ReadinessRoute: &machinelearningservices.RouteArgs{
/// 						Path: pulumi.String("string"),
/// 						Port: pulumi.Int(1),
/// 					},
/// 					ScoringRoute: &machinelearningservices.RouteArgs{
/// 						Path: pulumi.String("string"),
/// 						Port: pulumi.Int(1),
/// 					},
/// 				},
/// 				IsAnonymous: pulumi.Bool(false),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
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
/// import com.pulumi.azurenative.machinelearningservices.EnvironmentVersion;
/// import com.pulumi.azurenative.machinelearningservices.inputs.BuildContextArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.InferenceContainerPropertiesArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.RouteArgs;
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
///         var environmentVersion = new EnvironmentVersion("environmentVersion", EnvironmentVersionArgs.builder()
///             .environmentVersionProperties(EnvironmentVersionArgs.builder()
///                 .build(BuildContextArgs.builder()
///                     .contextUri("https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/")
///                     .dockerfilePath("prod/Dockerfile")
///                     .build())
///                 .condaFile("string")
///                 .description("string")
///                 .image("docker.io/tensorflow/serving:latest")
///                 .inferenceConfig(InferenceContainerPropertiesArgs.builder()
///                     .livenessRoute(RouteArgs.builder()
///                         .path("string")
///                         .port(1)
///                         .build())
///                     .readinessRoute(RouteArgs.builder()
///                         .path("string")
///                         .port(1)
///                         .build())
///                     .scoringRoute(RouteArgs.builder()
///                         .path("string")
///                         .port(1)
///                         .build())
///                     .build())
///                 .isAnonymous(false)
///                 .properties(Map.of("string", "string"))
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
/// const environmentVersion = new azure_native.machinelearningservices.EnvironmentVersion("environmentVersion", {
///     environmentVersionProperties: {
///         build: {
///             contextUri: "https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/",
///             dockerfilePath: "prod/Dockerfile",
///         },
///         condaFile: "string",
///         description: "string",
///         image: "docker.io/tensorflow/serving:latest",
///         inferenceConfig: {
///             livenessRoute: {
///                 path: "string",
///                 port: 1,
///             },
///             readinessRoute: {
///                 path: "string",
///                 port: 1,
///             },
///             scoringRoute: {
///                 path: "string",
///                 port: 1,
///             },
///         },
///         isAnonymous: false,
///         properties: {
///             string: "string",
///         },
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
/// environment_version = azure_native.machinelearningservices.EnvironmentVersion("environmentVersion",
///     environment_version_properties={
///         "build": {
///             "context_uri": "https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/",
///             "dockerfile_path": "prod/Dockerfile",
///         },
///         "conda_file": "string",
///         "description": "string",
///         "image": "docker.io/tensorflow/serving:latest",
///         "inference_config": {
///             "liveness_route": {
///                 "path": "string",
///                 "port": 1,
///             },
///             "readiness_route": {
///                 "path": "string",
///                 "port": 1,
///             },
///             "scoring_route": {
///                 "path": "string",
///                 "port": 1,
///             },
///         },
///         "is_anonymous": False,
///         "properties": {
///             "string": "string",
///         },
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
///   environmentVersion:
///     type: azure-native:machinelearningservices:EnvironmentVersion
///     properties:
///       environmentVersionProperties:
///         build:
///           contextUri: https://storage-account.blob.core.windows.net/azureml/DockerBuildContext/95ddede6b9b8c4e90472db3acd0a8d28/
///           dockerfilePath: prod/Dockerfile
///         condaFile: string
///         description: string
///         image: docker.io/tensorflow/serving:latest
///         inferenceConfig:
///           livenessRoute:
///             path: string
///             port: 1
///           readinessRoute:
///             path: string
///             port: 1
///           scoringRoute:
///             path: string
///             port: 1
///         isAnonymous: false
///         properties:
///           string: string
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
/// $ pulumi import azure-native:machinelearningservices:EnvironmentVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/workspaces/{workspaceName}/environments/{name}/versions/{version}
/// ```
class EnvironmentVersionMachinelearningservices extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentVersionResponse>
  environmentVersionProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [EnvironmentVersionMachinelearningservices].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentVersionMachinelearningservices]. {@macro pulumi_machinelearningservices_environment_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentVersionMachinelearningservices(
    String name, {
    EnvironmentVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:EnvironmentVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    environmentVersionProperties = registerOutput<EnvironmentVersionResponse>(
      'environmentVersionProperties',
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
