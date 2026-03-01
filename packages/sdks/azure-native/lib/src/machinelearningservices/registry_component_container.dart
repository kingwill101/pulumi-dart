import 'package:pulumi/pulumi.dart' as pulumi;
import 'component_container_response.dart';
import 'registry_component_container_args.dart';
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
/// ### CreateOrUpdate Registry Component Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryComponentContainer = new AzureNative.MachineLearningServices.RegistryComponentContainer("registryComponentContainer", new()
///     {
///         ComponentContainerProperties = new AzureNative.MachineLearningServices.Inputs.ComponentContainerArgs
///         {
///             Description = "string",
///             Properties =
///             {
///                 { "string", "string" },
///             },
///             Tags =
///             {
///                 { "string", "string" },
///             },
///         },
///         ComponentName = "string",
///         RegistryName = "my-aml-registry",
///         ResourceGroupName = "test-rg",
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
/// 		_, err := machinelearningservices.NewRegistryComponentContainer(ctx, "registryComponentContainer", &machinelearningservices.RegistryComponentContainerArgs{
/// 			ComponentContainerProperties: &machinelearningservices.ComponentContainerTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				Properties: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 				Tags: pulumi.StringMap{
/// 					"string": pulumi.String("string"),
/// 				},
/// 			},
/// 			ComponentName:     pulumi.String("string"),
/// 			RegistryName:      pulumi.String("my-aml-registry"),
/// 			ResourceGroupName: pulumi.String("test-rg"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryComponentContainer;
/// import com.pulumi.azurenative.machinelearningservices.RegistryComponentContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.ComponentContainerArgs;
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
///         var registryComponentContainer = new RegistryComponentContainer("registryComponentContainer", RegistryComponentContainerArgs.builder()
///             .componentContainerProperties(ComponentContainerArgs.builder()
///                 .description("string")
///                 .properties(Map.of("string", "string"))
///                 .tags(Map.of("string", "string"))
///                 .build())
///             .componentName("string")
///             .registryName("my-aml-registry")
///             .resourceGroupName("test-rg")
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
/// const registryComponentContainer = new azure_native.machinelearningservices.RegistryComponentContainer("registryComponentContainer", {
///     componentContainerProperties: {
///         description: "string",
///         properties: {
///             string: "string",
///         },
///         tags: {
///             string: "string",
///         },
///     },
///     componentName: "string",
///     registryName: "my-aml-registry",
///     resourceGroupName: "test-rg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_component_container = azure_native.machinelearningservices.RegistryComponentContainer("registryComponentContainer",
///     component_container_properties={
///         "description": "string",
///         "properties": {
///             "string": "string",
///         },
///         "tags": {
///             "string": "string",
///         },
///     },
///     component_name="string",
///     registry_name="my-aml-registry",
///     resource_group_name="test-rg")
///
/// ```
///
/// ```yaml
/// resources:
///   registryComponentContainer:
///     type: azure-native:machinelearningservices:RegistryComponentContainer
///     properties:
///       componentContainerProperties:
///         description: string
///         properties:
///           string: string
///         tags:
///           string: string
///       componentName: string
///       registryName: my-aml-registry
///       resourceGroupName: test-rg
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
/// $ pulumi import azure-native:machinelearningservices:RegistryComponentContainer string /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/components/{componentName}
/// ```
class RegistryComponentContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<ComponentContainerResponse> componentContainerProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryComponentContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryComponentContainer]. {@macro pulumi_machinelearningservices_registry_component_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryComponentContainer(
    String name, {
    RegistryComponentContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryComponentContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.componentContainerProperties = registerOutput<ComponentContainerResponse>('componentContainerProperties');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
