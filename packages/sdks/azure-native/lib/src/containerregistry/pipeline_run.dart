import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_run_args.dart';
import 'pipeline_run_request_response.dart';
import 'pipeline_run_response_response.dart';
import 'system_data_response.dart';

/// An object that represents a pipeline run for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-01-preview.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-12-01-preview, 2022-02-01-preview, 2023-01-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-05-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-03-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PipelineRunCreate_Export
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineRun = new AzureNative.ContainerRegistry.PipelineRun("pipelineRun", new()
///     {
///         PipelineRunName = "myPipelineRun",
///         RegistryName = "myRegistry",
///         Request = new AzureNative.ContainerRegistry.Inputs.PipelineRunRequestArgs
///         {
///             Artifacts = new[]
///             {
///                 "sourceRepository/hello-world",
///                 "sourceRepository2@sha256:00000000000000000000000000000000000",
///             },
///             PipelineResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline",
///             Target = new AzureNative.ContainerRegistry.Inputs.PipelineRunTargetPropertiesArgs
///             {
///                 Name = "myblob.tar.gz",
///                 Type = AzureNative.ContainerRegistry.PipelineRunTargetType.AzureStorageBlob,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := containerregistry.NewPipelineRun(ctx, "pipelineRun", &containerregistry.PipelineRunArgs{
/// 			PipelineRunName: pulumi.String("myPipelineRun"),
/// 			RegistryName:    pulumi.String("myRegistry"),
/// 			Request: &containerregistry.PipelineRunRequestArgs{
/// 				Artifacts: pulumi.StringArray{
/// 					pulumi.String("sourceRepository/hello-world"),
/// 					pulumi.String("sourceRepository2@sha256:00000000000000000000000000000000000"),
/// 				},
/// 				PipelineResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline"),
/// 				Target: &containerregistry.PipelineRunTargetPropertiesArgs{
/// 					Name: pulumi.String("myblob.tar.gz"),
/// 					Type: pulumi.String(containerregistry.PipelineRunTargetTypeAzureStorageBlob),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_containerregistry_pipelinerun" "pipelineRun" {
///   pipeline_run_name = "myPipelineRun"
///   registry_name     = "myRegistry"
///   request = {
///     artifacts            = ["sourceRepository/hello-world", "sourceRepository2@sha256:00000000000000000000000000000000000"]
///     pipeline_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline"
///     target = {
///       name = "myblob.tar.gz"
///       type = "AzureStorageBlob"
///     }
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.containerregistry.PipelineRun;
/// import com.pulumi.azurenative.containerregistry.PipelineRunArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PipelineRunRequestArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PipelineRunTargetPropertiesArgs;
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
///         var pipelineRun = new PipelineRun("pipelineRun", PipelineRunArgs.builder()
///             .pipelineRunName("myPipelineRun")
///             .registryName("myRegistry")
///             .request(PipelineRunRequestArgs.builder()
///                 .artifacts(
///                     "sourceRepository/hello-world",
///                     "sourceRepository2@sha256:00000000000000000000000000000000000")
///                 .pipelineResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline")
///                 .target(PipelineRunTargetPropertiesArgs.builder()
///                     .name("myblob.tar.gz")
///                     .type("AzureStorageBlob")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const pipelineRun = new azure_native.containerregistry.PipelineRun("pipelineRun", {
///     pipelineRunName: "myPipelineRun",
///     registryName: "myRegistry",
///     request: {
///         artifacts: [
///             "sourceRepository/hello-world",
///             "sourceRepository2@sha256:00000000000000000000000000000000000",
///         ],
///         pipelineResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline",
///         target: {
///             name: "myblob.tar.gz",
///             type: azure_native.containerregistry.PipelineRunTargetType.AzureStorageBlob,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_run = azure_native.containerregistry.PipelineRun("pipelineRun",
///     pipeline_run_name="myPipelineRun",
///     registry_name="myRegistry",
///     request={
///         "artifacts": [
///             "sourceRepository/hello-world",
///             "sourceRepository2@sha256:00000000000000000000000000000000000",
///         ],
///         "pipeline_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline",
///         "target": {
///             "name": "myblob.tar.gz",
///             "type": azure_native.containerregistry.PipelineRunTargetType.AZURE_STORAGE_BLOB,
///         },
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineRun:
///     type: azure-native:containerregistry:PipelineRun
///     properties:
///       pipelineRunName: myPipelineRun
///       registryName: myRegistry
///       request:
///         artifacts:
///           - sourceRepository/hello-world
///           - sourceRepository2@sha256:00000000000000000000000000000000000
///         pipelineResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/exportPipelines/myExportPipeline
///         target:
///           name: myblob.tar.gz
///           type: AzureStorageBlob
///       resourceGroupName: myResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### PipelineRunCreate_Import
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipelineRun = new AzureNative.ContainerRegistry.PipelineRun("pipelineRun", new()
///     {
///         ForceUpdateTag = "2020-03-04T17:23:21.9261521+00:00",
///         PipelineRunName = "myPipelineRun",
///         RegistryName = "myRegistry",
///         Request = new AzureNative.ContainerRegistry.Inputs.PipelineRunRequestArgs
///         {
///             CatalogDigest = "sha256@",
///             PipelineResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline",
///             Source = new AzureNative.ContainerRegistry.Inputs.PipelineRunSourcePropertiesArgs
///             {
///                 Name = "myblob.tar.gz",
///                 Type = AzureNative.ContainerRegistry.PipelineRunSourceType.AzureStorageBlob,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
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
/// 		_, err := containerregistry.NewPipelineRun(ctx, "pipelineRun", &containerregistry.PipelineRunArgs{
/// 			ForceUpdateTag:  pulumi.String("2020-03-04T17:23:21.9261521+00:00"),
/// 			PipelineRunName: pulumi.String("myPipelineRun"),
/// 			RegistryName:    pulumi.String("myRegistry"),
/// 			Request: &containerregistry.PipelineRunRequestArgs{
/// 				CatalogDigest:      pulumi.String("sha256@"),
/// 				PipelineResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline"),
/// 				Source: &containerregistry.PipelineRunSourcePropertiesArgs{
/// 					Name: pulumi.String("myblob.tar.gz"),
/// 					Type: pulumi.String(containerregistry.PipelineRunSourceTypeAzureStorageBlob),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
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
/// resource "azure-native_containerregistry_pipelinerun" "pipelineRun" {
///   force_update_tag  = "2020-03-04T17:23:21.9261521+00:00"
///   pipeline_run_name = "myPipelineRun"
///   registry_name     = "myRegistry"
///   request = {
///     catalog_digest       = "sha256@"
///     pipeline_resource_id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline"
///     source = {
///       name = "myblob.tar.gz"
///       type = "AzureStorageBlob"
///     }
///   }
///   resource_group_name = "myResourceGroup"
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
/// import com.pulumi.azurenative.containerregistry.PipelineRun;
/// import com.pulumi.azurenative.containerregistry.PipelineRunArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PipelineRunRequestArgs;
/// import com.pulumi.azurenative.containerregistry.inputs.PipelineRunSourcePropertiesArgs;
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
///         var pipelineRun = new PipelineRun("pipelineRun", PipelineRunArgs.builder()
///             .forceUpdateTag("2020-03-04T17:23:21.9261521+00:00")
///             .pipelineRunName("myPipelineRun")
///             .registryName("myRegistry")
///             .request(PipelineRunRequestArgs.builder()
///                 .catalogDigest("sha256@")
///                 .pipelineResourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline")
///                 .source(PipelineRunSourcePropertiesArgs.builder()
///                     .name("myblob.tar.gz")
///                     .type("AzureStorageBlob")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
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
/// const pipelineRun = new azure_native.containerregistry.PipelineRun("pipelineRun", {
///     forceUpdateTag: "2020-03-04T17:23:21.9261521+00:00",
///     pipelineRunName: "myPipelineRun",
///     registryName: "myRegistry",
///     request: {
///         catalogDigest: "sha256@",
///         pipelineResourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline",
///         source: {
///             name: "myblob.tar.gz",
///             type: azure_native.containerregistry.PipelineRunSourceType.AzureStorageBlob,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline_run = azure_native.containerregistry.PipelineRun("pipelineRun",
///     force_update_tag="2020-03-04T17:23:21.9261521+00:00",
///     pipeline_run_name="myPipelineRun",
///     registry_name="myRegistry",
///     request={
///         "catalog_digest": "sha256@",
///         "pipeline_resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline",
///         "source": {
///             "name": "myblob.tar.gz",
///             "type": azure_native.containerregistry.PipelineRunSourceType.AZURE_STORAGE_BLOB,
///         },
///     },
///     resource_group_name="myResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   pipelineRun:
///     type: azure-native:containerregistry:PipelineRun
///     properties:
///       forceUpdateTag: 2020-03-04T17:23:21.9261521+00:00
///       pipelineRunName: myPipelineRun
///       registryName: myRegistry
///       request:
///         catalogDigest: sha256@
///         pipelineResourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.ContainerRegistry/registries/myRegistry/importPipelines/myImportPipeline
///         source:
///           name: myblob.tar.gz
///           type: AzureStorageBlob
///       resourceGroupName: myResourceGroup
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
/// $ pulumi import azure-native:containerregistry:PipelineRun myPipelineRun /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/pipelineRuns/{pipelineRunName}
/// ```
class PipelineRun extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// How the pipeline run should be forced to recreate even if the pipeline run configuration has not changed.
  late final pulumi.Output<String?> forceUpdateTag;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning state of a pipeline run.
  late final pulumi.Output<String> provisioningState;
  /// The request parameters for a pipeline run.
  late final pulumi.Output<PipelineRunRequestResponse?> request;
  /// The response of a pipeline run.
  late final pulumi.Output<PipelineRunResponseResponse> response;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [PipelineRun].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PipelineRun]. {@macro pulumi_containerregistry_pipeline_run_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PipelineRun(
    String name, {
    PipelineRunArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:PipelineRun',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    forceUpdateTag = registerOutput<String?>('forceUpdateTag');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    request = registerOutput<PipelineRunRequestResponse?>('request', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineRunRequestResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    response = registerOutput<PipelineRunResponseResponse>('response', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PipelineRunResponseResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
