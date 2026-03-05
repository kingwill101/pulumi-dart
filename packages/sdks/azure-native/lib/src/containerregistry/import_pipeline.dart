import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';
import 'import_pipeline_args.dart';
import 'import_pipeline_source_properties_response.dart';
import 'pipeline_trigger_properties_response.dart';
import 'system_data_response.dart';

/// An object that represents an import pipeline for a container registry.
///
/// Uses Azure REST API version 2023-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2024-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ImportPipelineCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var importPipeline = new AzureNative.ContainerRegistry.ImportPipeline("importPipeline", new()
///     {
///         Identity = new AzureNative.ContainerRegistry.Inputs.IdentityPropertiesArgs
///         {
///             Type = AzureNative.ContainerRegistry.ResourceIdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", null },
///             },
///         },
///         ImportPipelineName = "myImportPipeline",
///         Location = "westus",
///         Options = new[]
///         {
///             AzureNative.ContainerRegistry.PipelineOptions.OverwriteTags,
///             AzureNative.ContainerRegistry.PipelineOptions.DeleteSourceBlobOnSuccess,
///             AzureNative.ContainerRegistry.PipelineOptions.ContinueOnErrors,
///         },
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Source = new AzureNative.ContainerRegistry.Inputs.ImportPipelineSourcePropertiesArgs
///         {
///             KeyVaultUri = "https://myvault.vault.azure.net/secrets/acrimportsas",
///             Type = AzureNative.ContainerRegistry.PipelineSourceType.AzureStorageBlobContainer,
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
/// 		_, err := containerregistry.NewImportPipeline(ctx, "importPipeline", &containerregistry.ImportPipelineArgs{
/// 			Identity: &containerregistry.IdentityPropertiesArgs{
/// 				Type: containerregistry.ResourceIdentityTypeUserAssigned,
/// 				UserAssignedIdentities: containerregistry.UserIdentityPropertiesMap{
/// 					"/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": &containerregistry.UserIdentityPropertiesArgs{},
/// 				},
/// 			},
/// 			ImportPipelineName: pulumi.String("myImportPipeline"),
/// 			Location:           pulumi.String("westus"),
/// 			Options: pulumi.StringArray{
/// 				pulumi.String(containerregistry.PipelineOptionsOverwriteTags),
/// 				pulumi.String(containerregistry.PipelineOptionsDeleteSourceBlobOnSuccess),
/// 				pulumi.String(containerregistry.PipelineOptionsContinueOnErrors),
/// 			},
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Source: &containerregistry.ImportPipelineSourcePropertiesArgs{
/// 				KeyVaultUri: pulumi.String("https://myvault.vault.azure.net/secrets/acrimportsas"),
/// 				Type:        pulumi.String(containerregistry.PipelineSourceTypeAzureStorageBlobContainer),
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
/// import com.pulumi.azurenative.containerregistry.ImportPipeline;
/// import com.pulumi.azurenative.containerregistry.ImportPipelineArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.IdentityPropertiesArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.ImportPipelineSourcePropertiesArgs;
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
///         var importPipeline = new ImportPipeline("importPipeline", ImportPipelineArgs.builder()
///             .identity(IdentityPropertiesArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2", UserIdentityPropertiesArgs.builder()
///                     .build()))
///                 .build())
///             .importPipelineName("myImportPipeline")
///             .location("westus")
///             .options(
///                 "OverwriteTags",
///                 "DeleteSourceBlobOnSuccess",
///                 "ContinueOnErrors")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .source(ImportPipelineSourcePropertiesArgs.builder()
///                 .keyVaultUri("https://myvault.vault.azure.net/secrets/acrimportsas")
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
/// const importPipeline = new azure_native.containerregistry.ImportPipeline("importPipeline", {
///     identity: {
///         type: azure_native.containerregistry.ResourceIdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     importPipelineName: "myImportPipeline",
///     location: "westus",
///     options: [
///         azure_native.containerregistry.PipelineOptions.OverwriteTags,
///         azure_native.containerregistry.PipelineOptions.DeleteSourceBlobOnSuccess,
///         azure_native.containerregistry.PipelineOptions.ContinueOnErrors,
///     ],
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     source: {
///         keyVaultUri: "https://myvault.vault.azure.net/secrets/acrimportsas",
///         type: azure_native.containerregistry.PipelineSourceType.AzureStorageBlobContainer,
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
/// import_pipeline = azure_native.containerregistry.ImportPipeline("importPipeline",
///     identity={
///         "type": azure_native.containerregistry.ResourceIdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2": {},
///         },
///     },
///     import_pipeline_name="myImportPipeline",
///     location="westus",
///     options=[
///         azure_native.containerregistry.PipelineOptions.OVERWRITE_TAGS,
///         azure_native.containerregistry.PipelineOptions.DELETE_SOURCE_BLOB_ON_SUCCESS,
///         azure_native.containerregistry.PipelineOptions.CONTINUE_ON_ERRORS,
///     ],
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     source={
///         "key_vault_uri": "https://myvault.vault.azure.net/secrets/acrimportsas",
///         "type": azure_native.containerregistry.PipelineSourceType.AZURE_STORAGE_BLOB_CONTAINER,
///         "uri": "https://accountname.blob.core.windows.net/containername",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   importPipeline:
///     type: azure-native:containerregistry:ImportPipeline
///     properties:
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/f9d7ebed-adbd-4cb4-b973-aaf82c136138/resourcegroups/myResourceGroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/identity2
///           : {}
///       importPipelineName: myImportPipeline
///       location: westus
///       options:
///         - OverwriteTags
///         - DeleteSourceBlobOnSuccess
///         - ContinueOnErrors
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       source:
///         keyVaultUri: https://myvault.vault.azure.net/secrets/acrimportsas
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
/// $ pulumi import azure-native:containerregistry:ImportPipeline myImportPipeline /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/importPipelines/{importPipelineName}
/// ```
class ImportPipeline extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity of the import pipeline.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The location of the import pipeline.
  late final pulumi.Output<String?> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The list of all options configured for the pipeline.
  late final pulumi.Output<List<String>?> options;
  /// The provisioning state of the pipeline at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// The source properties of the import pipeline.
  late final pulumi.Output<ImportPipelineSourcePropertiesResponse> source;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The properties that describe the trigger of the import pipeline.
  late final pulumi.Output<PipelineTriggerPropertiesResponse?> trigger;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [ImportPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportPipeline]. {@macro pulumi_containerregistry_import_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportPipeline(
    String name, {
    ImportPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:ImportPipeline',
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
    source = registerOutput<ImportPipelineSourcePropertiesResponse>('source', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImportPipelineSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trigger = registerOutput<PipelineTriggerPropertiesResponse?>('trigger', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineTriggerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
