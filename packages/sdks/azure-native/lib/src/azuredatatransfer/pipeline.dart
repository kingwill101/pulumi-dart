import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_properties_response.dart';
import 'system_data_response.dart';

/// The pipeline resource definition.
///
/// Uses Azure REST API version 2024-09-27. In version 2.x of the Azure Native provider, it used API version 2023-10-11-preview.
///
/// Other available API versions: 2023-10-11-preview, 2024-01-25, 2024-05-07, 2024-09-11, 2025-03-01-preview, 2025-04-11-preview, 2025-05-21, 2025-05-30-preview, 2025-10-10-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azuredatatransfer [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates the pipeline resource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var pipeline = new AzureNative.AzureDataTransfer.Pipeline("pipeline", new()
///     {
///         Location = "East US",
///         PipelineName = "testPipeline",
///         Properties = new AzureNative.AzureDataTransfer.Inputs.PipelinePropertiesArgs
///         {
///             RemoteCloud = "testdc",
///         },
///         ResourceGroupName = "testRG",
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
/// 	azuredatatransfer "github.com/pulumi/pulumi-azure-native-sdk/azuredatatransfer/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuredatatransfer.NewPipeline(ctx, "pipeline", &azuredatatransfer.PipelineArgs{
/// 			Location:     pulumi.String("East US"),
/// 			PipelineName: pulumi.String("testPipeline"),
/// 			Properties: &azuredatatransfer.PipelinePropertiesArgs{
/// 				RemoteCloud: pulumi.String("testdc"),
/// 			},
/// 			ResourceGroupName: pulumi.String("testRG"),
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
/// import com.pulumi.azurenative.azuredatatransfer.Pipeline;
/// import com.pulumi.azurenative.azuredatatransfer.PipelineArgs;
/// import com.pulumi.azurenative.azuredatatransfer.inputs.PipelinePropertiesArgs;
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
///         var pipeline = new Pipeline("pipeline", PipelineArgs.builder()
///             .location("East US")
///             .pipelineName("testPipeline")
///             .properties(PipelinePropertiesArgs.builder()
///                 .remoteCloud("testdc")
///                 .build())
///             .resourceGroupName("testRG")
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
/// const pipeline = new azure_native.azuredatatransfer.Pipeline("pipeline", {
///     location: "East US",
///     pipelineName: "testPipeline",
///     properties: {
///         remoteCloud: "testdc",
///     },
///     resourceGroupName: "testRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// pipeline = azure_native.azuredatatransfer.Pipeline("pipeline",
///     location="East US",
///     pipeline_name="testPipeline",
///     properties={
///         "remote_cloud": "testdc",
///     },
///     resource_group_name="testRG")
///
/// ```
///
/// ```yaml
/// resources:
///   pipeline:
///     type: azure-native:azuredatatransfer:Pipeline
///     properties:
///       location: East US
///       pipelineName: testPipeline
///       properties:
///         remoteCloud: testdc
///       resourceGroupName: testRG
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
/// $ pulumi import azure-native:azuredatatransfer:Pipeline myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureDataTransfer/pipelines/{pipelineName}
/// ```
class Pipeline extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of pipeline
  late final pulumi.Output<PipelinePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_azuredatatransfer_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azuredatatransfer:Pipeline',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<PipelinePropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
