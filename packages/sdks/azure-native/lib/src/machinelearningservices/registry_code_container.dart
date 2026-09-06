import 'package:pulumi/pulumi.dart' as pulumi;
import 'code_container_properties_response.dart';
import 'registry_code_container_args.dart';
import 'system_data_response.dart';

/// Azure Resource Manager resource envelope.
///
/// Uses Azure REST API version 2025-12-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2022-10-01-preview, 2022-12-01-preview, 2023-02-01-preview, 2023-04-01, 2023-04-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-10-01, 2024-01-01-preview, 2024-04-01, 2024-07-01-preview, 2024-10-01, 2024-10-01-preview, 2025-01-01-preview, 2025-04-01, 2025-04-01-preview, 2025-06-01, 2025-07-01-preview, 2025-09-01, 2025-10-01-preview, 2026-01-15-preview, 2026-03-01, 2026-03-15-preview, 2026-05-01, 2026-05-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native machinelearningservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///         CodeName = "testContainer",
///         Properties = new AzureNative.MachineLearningServices.Inputs.CodeContainerPropertiesArgs
///         {
///             Description = "string",
///             Tags =
///             {
///                 { "tag1", "value1" },
///                 { "tag2", "value2" },
///             },
///         },
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
/// 			CodeName: pulumi.String("testContainer"),
/// 			Properties: &machinelearningservices.CodeContainerPropertiesArgs{
/// 				Description: pulumi.String("string"),
/// 				Tags: pulumi.StringMap{
/// 					"tag1": pulumi.String("value1"),
/// 					"tag2": pulumi.String("value2"),
/// 				},
/// 			},
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_machinelearningservices_registrycodecontainer" "registryCodeContainer" {
///   code_name = "testContainer"
///   properties = {
///     description = "string"
///     tags = {
///       "tag1" = "value1"
///       "tag2" = "value2"
///     }
///   }
///   registry_name       = "testregistry"
///   resource_group_name = "testrg123"
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
/// import com.pulumi.azurenative.machinelearningservices.inputs.CodeContainerPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .codeName("testContainer")
///             .properties(CodeContainerPropertiesArgs.builder()
///                 .description("string")
///                 .tags(Map.ofEntries(
///                     Map.entry("tag1", "value1"),
///                     Map.entry("tag2", "value2")
///                 ))
///                 .build())
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
///     codeName: "testContainer",
///     properties: {
///         description: "string",
///         tags: {
///             tag1: "value1",
///             tag2: "value2",
///         },
///     },
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
///     code_name="testContainer",
///     properties={
///         "description": "string",
///         "tags": {
///             "tag1": "value1",
///             "tag2": "value2",
///         },
///     },
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
///       codeName: testContainer
///       properties:
///         description: string
///         tags:
///           tag1: value1
///           tag2: value2
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
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// [Required] Additional attributes of the entity.
  late final pulumi.Output<CodeContainerPropertiesResponse> properties;
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
    this.name = registerOutput<String>('name');
    properties = registerOutput<CodeContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CodeContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [RegistryCodeContainer] resource.
  RegistryCodeContainer.reference(String urn)
    : super(
        'azure-native:machinelearningservices:RegistryCodeContainer',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<CodeContainerPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CodeContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
