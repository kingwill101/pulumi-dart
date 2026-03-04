import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_response.dart';
import 'registry_code_container_args.dart';
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
/// ### CreateOrUpdate Registry Code Container.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var registryCodeContainer = new AzureNative.MachineLearningServices.RegistryCodeContainer("registryCodeContainer", new()
///     {
///         CodeContainerProperties = new AzureNative.MachineLearningServices.Inputs.CodeContainerArgs
///         {
///             Description = "string",
///             Tags =
///             {
///                 { "tag1", "value1" },
///                 { "tag2", "value2" },
///             },
///         },
///         CodeName = "testContainer",
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
/// 		_, err := machinelearningservices.NewRegistryCodeContainer(ctx, "registryCodeContainer", &machinelearningservices.RegistryCodeContainerArgs{
/// 			CodeContainerProperties: &machinelearningservices.CodeContainerTypeArgs{
/// 				Description: pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"tag1": pulumi.String("value1"),
/// 					"tag2": pulumi.String("value2"),
/// 				},
/// 			},
/// 			CodeName:          pulumi.String("testContainer"),
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
/// import com.pulumi.azurenative.machinelearningservices.RegistryCodeContainer;
/// import com.pulumi.azurenative.machinelearningservices.RegistryCodeContainerArgs;
/// import com.pulumi.azurenative.machinelearningservices.inputs.CodeContainerArgs;
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
///         var registryCodeContainer = new RegistryCodeContainer("registryCodeContainer", RegistryCodeContainerArgs.builder()
///             .codeContainerProperties(CodeContainerArgs.builder()
///                 .description("string")
///                 .tags(Map.ofEntries(
///                     Map.entry("tag1", "value1"),
///                     Map.entry("tag2", "value2")
///                 ))
///                 .build())
///             .codeName("testContainer")
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
/// const registryCodeContainer = new azure_native.machinelearningservices.RegistryCodeContainer("registryCodeContainer", {
///     codeContainerProperties: {
///         description: "string",
///         tags: {
///             tag1: "value1",
///             tag2: "value2",
///         },
///     },
///     codeName: "testContainer",
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
/// registry_code_container = azure_native.machinelearningservices.RegistryCodeContainer("registryCodeContainer",
///     code_container_properties={
///         "description": "string",
///         "tags": {
///             "tag1": "value1",
///             "tag2": "value2",
///         },
///     },
///     code_name="testContainer",
///     registry_name="testregistry",
///     resource_group_name="testrg123")
///
/// ```
///
/// ```yaml
/// resources:
///   registryCodeContainer:
///     type: azure-native:machinelearningservices:RegistryCodeContainer
///     properties:
///       codeContainerProperties:
///         description: string
///         tags:
///           tag1: value1
///           tag2: value2
///       codeName: testContainer
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
/// $ pulumi import azure-native:machinelearningservices:RegistryCodeContainer testContainer /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.MachineLearningServices/registries/{registryName}/codes/{codeName}
/// ```
class RegistryCodeContainer extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<CodeContainerResponse> codeContainerProperties;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RegistryCodeContainer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegistryCodeContainer]. {@macro pulumi_machinelearningservices_registry_code_container_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegistryCodeContainer(
    String name, {
    RegistryCodeContainerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:machinelearningservices:RegistryCodeContainer',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    codeContainerProperties = registerOutput<CodeContainerResponse>(
      'codeContainerProperties',
    );
    this.name = registerOutput<String>('name');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
