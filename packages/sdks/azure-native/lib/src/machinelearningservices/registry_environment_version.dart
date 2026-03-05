import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_version_response.dart';
import 'registry_environment_version_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-09-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate Registry Environment Version.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryEnvironmentVersion = new AzureNative.MachineLearningServices.RegistryEnvironmentVersion("registryEnvironmentVersion", new()
///     {
///         EnvironmentName = "string",
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
///         RegistryName = "my-aml-registry",
///         ResourceGroupName = "test-rg",
///         Version = "string",
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
/// 		_, err := machinelearningservices.NewRegistryEnvironmentVersion(ctx, "registryEnvironmentVersion", &machinelearningservices.RegistryEnvironmentVersionArgs{
/// 			EnvironmentName: pulumi.String("string"),
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
/// 			RegistryName:      pulumi.String("my-aml-registry"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
/// 			Version:           pulumi.String("string"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryEnvironmentVersion;
/// import com.pulumi.azurenative.machinelearningservices.RegistryEnvironmentVersionArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.EnvironmentVersionArgs;
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
///         var registryEnvironmentVersion = new RegistryEnvironmentVersion("registryEnvironmentVersion", RegistryEnvironmentVersionArgs.builder()
///             .environmentName("string")
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
///             .registryName("my-aml-registry")
///             .resourceGroupName("test-rg")
///             .version("string")
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
/// const registryEnvironmentVersion = new azure_native.machinelearningservices.RegistryEnvironmentVersion("registryEnvironmentVersion", {
///     environmentName: "string",
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
///     registryName: "my-aml-registry",
///     resourceGroupName: "test-rg",
///     version: "string",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_environment_version = azure_native.machinelearningservices.RegistryEnvironmentVersion("registryEnvironmentVersion",
///     environment_name="string",
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
///     registry_name="my-aml-registry",
///     resource_group_name="test-rg",
///     version="string")
///
/// ```
///
/// ```yaml
/// resources:
///   registryEnvironmentVersion:
///     type: azure-native:machinelearningservices:RegistryEnvironmentVersion
///     properties:
///       environmentName: string
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
///       registryName: my-aml-registry
///       resourceGroupName: test-rg
///       version: string
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
/// $ pulumi import azure-native:machinelearningservices:RegistryEnvironmentVersion string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/environments/{environmentName}/versions/{version}
/// ```
class RegistryEnvironmentVersion extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentVersionResponse> environmentVersionProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryEnvironmentVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnvironmentVersion]. {@macro pulumi_machinelearningservices_registry_environment_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnvironmentVersion(
    String name, {
    RegistryEnvironmentVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryEnvironmentVersion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    environmentVersionProperties = registerOutput<EnvironmentVersionResponse>('environmentVersionProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
