import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_container_response.dart';
import 'registry_environment_container_args.dart';
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
/// ### CreateOrUpdate Registry Environment Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryEnvironmentContainer = new AzureNative.MachineLearningServices.RegistryEnvironmentContainer("registryEnvironmentContainer", new()
///     {
///         EnvironmentContainerProperties = new AzureNative.MachineLearningServices.Inputs.EnvironmentContainerArgs
///         {
///             Description = "string",
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
///         EnvironmentName = "testEnvironment",
///         RegistryName = "testregistry",
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
/// 		_, err := machinelearningservices.NewRegistryEnvironmentContainer(ctx, "registryEnvironmentContainer", &machinelearningservices.RegistryEnvironmentContainerArgs{
/// 			EnvironmentContainerProperties: &machinelearningservices.EnvironmentContainerTypeArgs{
/// 				Description: pulumi.String("string"),
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
/// 			EnvironmentName:   pulumi.String("testEnvironment"),
/// 			RegistryName:      pulumi.String("testregistry"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryEnvironmentContainer;
/// import com.pulumi.azurenative.machinelearningservices.RegistryEnvironmentContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.EnvironmentContainerArgs;
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
///         var registryEnvironmentContainer = new RegistryEnvironmentContainer("registryEnvironmentContainer", RegistryEnvironmentContainerArgs.builder()
///             .environmentContainerProperties(EnvironmentContainerArgs.builder()
///                 .description("string")
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
///             .environmentName("testEnvironment")
///             .registryName("testregistry")
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
/// const registryEnvironmentContainer = new azure_native.machinelearningservices.RegistryEnvironmentContainer("registryEnvironmentContainer", {
///     environmentContainerProperties: {
///         description: "string",
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
///     environmentName: "testEnvironment",
///     registryName: "testregistry",
///     resourceGroupName: "testrg123",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// registry_environment_container = azure_native.machinelearningservices.RegistryEnvironmentContainer("registryEnvironmentContainer",
///     environment_container_properties={
///         "description": "string",
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
///     environment_name="testEnvironment",
///     registry_name="testregistry",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   registryEnvironmentContainer:
///     type: azure-native:machinelearningservices:RegistryEnvironmentContainer
///     properties:
///       environmentContainerProperties:
///         description: string
///         properties:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///         tags:
///           additionalProp1: string
///           additionalProp2: string
///           additionalProp3: string
///       environmentName: testEnvironment
///       registryName: testregistry
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
/// $ pulumi import azure-native:machinelearningservices:RegistryEnvironmentContainer testEnvironment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/environments/{environmentName}
/// ```
class RegistryEnvironmentContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<EnvironmentContainerResponse> environmentContainerProperties;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryEnvironmentContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryEnvironmentContainer]. {@macro pulumi_machinelearningservices_registry_environment_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryEnvironmentContainer(
    String name, {
    RegistryEnvironmentContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:machinelearningservices:RegistryEnvironmentContainer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.environmentContainerProperties = registerOutput<EnvironmentContainerResponse>('environmentContainerProperties');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
