import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_response.dart';
import 'registry_model_container_args.dart';
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
/// ### CreateOrUpdate Registry Model Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryModelContainer = new AzureNative.MachineLearningServices.RegistryModelContainer("registryModelContainer", new()
///     {
///         ModelContainerProperties = new AzureNative.MachineLearningServices.Inputs.ModelContainerArgs
///         {
///             Description = "Model container description",
///             Tags =
///             {
///                 { "tag1", "value1" },
///                 { "tag2", "value2" },
///             },
///         },
///         ModelName = "testContainer",
///         RegistryName = "registry123",
///         ResourceGroupName = "testrg123",
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
/// 		_, err := machinelearningservices.NewRegistryModelContainer(ctx, "registryModelContainer", &machinelearningservices.RegistryModelContainerArgs{
/// 			ModelContainerProperties: &machinelearningservices.ModelContainerTypeArgs{
/// 				Description: pulumi.String("Model container description"),
/// 				Tags: pulumi.StringMap{
/// 					"tag1": pulumi.String("value1"),
/// 					"tag2": pulumi.String("value2"),
/// 				},
/// 			},
/// 			ModelName:         pulumi.String("testContainer"),
/// 			RegistryName:      pulumi.String("registry123"),
/// 			ResourceGroupName: pulumi.String("testrg123"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryModelContainer;
/// import com.pulumi.azurenative.machinelearningservices.RegistryModelContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.ModelContainerArgs;
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
///         var registryModelContainer = new RegistryModelContainer("registryModelContainer", RegistryModelContainerArgs.builder()
///             .modelContainerProperties(ModelContainerArgs.builder()
///                 .description("Model container description")
///                 .tags(Map.ofEntries(
///                     Map.entry("tag1", "value1"),
///                     Map.entry("tag2", "value2")
///                 ))
///                 .build())
///             .modelName("testContainer")
///             .registryName("registry123")
///             .resourceGroupName("testrg123")
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
/// const registryModelContainer = new azure_native.machinelearningservices.RegistryModelContainer("registryModelContainer", {
///     modelContainerProperties: {
///         description: "Model container description",
///         tags: {
///             tag1: "value1",
///             tag2: "value2",
///         },
///     },
///     modelName: "testContainer",
///     registryName: "registry123",
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_model_container = azure_native.machinelearningservices.RegistryModelContainer("registryModelContainer",
///     model_container_properties={
///         "description": "Model container description",
///         "tags": {
///             "tag1": "value1",
///             "tag2": "value2",
///         },
///     },
///     model_name="testContainer",
///     registry_name="registry123",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   registryModelContainer:
///     type: azure-native:machinelearningservices:RegistryModelContainer
///     properties:
///       modelContainerProperties:
///         description: Model container description
///         tags:
///           tag1: value1
///           tag2: value2
///       modelName: testContainer
///       registryName: registry123
///       resourceGroupName: testrg123
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
/// $ pulumi import azure-native:machinelearningservices:RegistryModelContainer testContainer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/models/{modelName}
/// ```
class RegistryModelContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ModelContainerResponse> modelContainerProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryModelContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryModelContainer]. {@macro pulumi_machinelearningservices_registry_model_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryModelContainer(
    String name, {
    RegistryModelContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryModelContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.modelContainerProperties = registerOutput<ModelContainerResponse>('modelContainerProperties');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
