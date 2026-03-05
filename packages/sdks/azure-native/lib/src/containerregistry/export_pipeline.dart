import 'package:pulumi/pulumi.dart' as pulumi;
import 'export_pipeline_args.dart';
import 'export_pipeline_target_properties_response.dart';
import 'identity_properties_response.dart';
import 'system_data_response.dart';

/// An object that represents an export pipeline for a container registry.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExportPipelineCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exportPipeline = new AzureNative.ContainerRegistry.ExportPipeline("exportPipeline", new()
///     {
///         ExportPipelineName = "myExportPipeline",
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.SystemAssigned,
///         },
///         Location = "westus",
///         Options = new[]
///         {
///             AzureNative.ContainerRegistry.PipelineOptions.OverwriteBlobs,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Target = new AzureNative.ContainerRegistry.Inputs.ExportPipelineTargetPropertiesArgs
///         {
///             KeyVaultUri = "https://myvault.vault.azure.net/secrets/acrexportsas",
///             Type = "AzureStorageBlobContainer",
///             Uri = "https://accountname.blob.core.windows.net/containername",
///         },
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewExportPipeline(ctx, "exportPipeline", &containerregistry.ExportPipelineArgs{
/// 			ExportPipelineName: pulumi.String("myExportPipeline"),
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeSystemAssigned,
/// 			},
/// 			Location: pulumi.String("westus"),
/// 			Options: pulumi.StringArray{
/// 				pulumi.String(containerregistry.PipelineOptionsOverwriteBlobs),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Target: &containerregistry.ExportPipelineTargetPropertiesArgs{
/// 				KeyVaultUri: pulumi.String("https://myvault.vault.azure.net/secrets/acrexportsas"),
/// 				Type:        pulumi.String("AzureStorageBlobContainer"),
/// 				Uri:         pulumi.String("https://accountname.blob.core.windows.net/containername"),
/// 			},
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
/// import com.pulumi.azurenative.containerregistry.ExportPipeline;
/// import com.pulumi.azurenative.containerregistry.ExportPipelineArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.ExportPipelineTargetPropertiesArgs;
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
///         var exportPipeline = new ExportPipeline("exportPipeline", ExportPipelineArgs.builder()
///             .exportPipelineName("myExportPipeline")
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("westus")
///             .options("OverwriteBlobs")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .target(ExportPipelineTargetPropertiesArgs.builder()
///                 .keyVaultUri("https://myvault.vault.azure.net/secrets/acrexportsas")
///                 .type("AzureStorageBlobContainer")
///                 .uri("https://accountname.blob.core.windows.net/containername")
///                 .build())
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
/// const exportPipeline = new azure_native.containerregistry.ExportPipeline("exportPipeline", {
///     exportPipelineName: "myExportPipeline",
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.SystemAssigned,
///     },
///     location: "westus",
///     options: [azure_native.containerregistry.PipelineOptions.OverwriteBlobs],
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     target: {
///         keyVaultUri: "https://myvault.vault.azure.net/secrets/acrexportsas",
///         type: "AzureStorageBlobContainer",
///         uri: "https://accountname.blob.core.windows.net/containername",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// export_pipeline = azure_native.containerregistry.ExportPipeline("exportPipeline",
///     export_pipeline_name="myExportPipeline",
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="westus",
///     options=[azure_native.containerregistry.PipelineOptions.OVERWRITE_BLOBS],
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     target={
///         "key_vault_uri": "https://myvault.vault.azure.net/secrets/acrexportsas",
///         "type": "AzureStorageBlobContainer",
///         "uri": "https://accountname.blob.core.windows.net/containername",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   exportPipeline:
///     type: azure-native:containerregistry:ExportPipeline
///     properties:
///       exportPipelineName: myExportPipeline
///       identity:
///         type: SystemAssigned
///       location: westus
///       options:
///         - OverwriteBlobs
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       target:
///         keyVaultUri: https://myvault.vault.azure.net/secrets/acrexportsas
///         type: AzureStorageBlobContainer
///         uri: https://accountname.blob.core.windows.net/containername
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
/// $ pulumi import azure-native:containerregistry:ExportPipeline myExportPipeline /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/exportPipelines/{exportPipelineName}
/// ```
class ExportPipeline extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the export pipeline.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The location of the export pipeline.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The list of all options configured for the pipeline.
  late final pulumi.Output<List<String>?> options;
  /// The provisioning state of the pipeline at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The target properties of the export pipeline.
  late final pulumi.Output<ExportPipelineTargetPropertiesResponse> target;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ExportPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExportPipeline]. {@macro pulumi_containerregistry_export_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExportPipeline(
    String name, {
    ExportPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:ExportPipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<List<String>?>('options');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    target = registerOutput<ExportPipelineTargetPropertiesResponse>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExportPipelineTargetPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
