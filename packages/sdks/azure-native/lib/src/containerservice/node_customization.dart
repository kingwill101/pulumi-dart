import 'package:pulumi/pulumi.dart' as pulumi;
import 'node_customization_args.dart';
import 'node_customization_properties_response.dart';
import 'system_data_response.dart';

/// The Node Customization resource.
///
/// Uses Azure REST API version 2025-08-02-preview.
///
/// Other available API versions: 2025-09-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NodeCustomizations_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var nodeCustomization = new AzureNative.ContainerService.NodeCustomization("nodeCustomization", new()
///     {
///         Location = "westus2",
///         NodeCustomizationName = "my-node-customization",
///         Properties = new AzureNative.ContainerService.Inputs.NodeCustomizationPropertiesArgs
///         {
///             ContainerImages = new[]
///             {
///                 "redis:8.0.0",
///             },
///             CustomizationScripts = new[]
///             {
///                 new AzureNative.ContainerService.Inputs.NodeCustomizationScriptArgs
///                 {
///                     ExecutionPoint = AzureNative.ContainerService.ExecutionPoint.NodeImageBuildTime,
///                     Name = "initialize-node",
///                     Script = "echo \"test node customization\" > /var/log/test-node-customization.txt",
///                     ScriptType = AzureNative.ContainerService.ScriptType.Bash,
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "team", "blue" },
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
/// 	containerservice "github.com/pulumi/pulumi-azure-native-sdk/containerservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerservice.NewNodeCustomization(ctx, "nodeCustomization", &containerservice.NodeCustomizationArgs{
/// 			Location:              pulumi.String("westus2"),
/// 			NodeCustomizationName: pulumi.String("my-node-customization"),
/// 			Properties: &containerservice.NodeCustomizationPropertiesArgs{
/// 				ContainerImages: pulumi.StringArray{
/// 					pulumi.String("redis:8.0.0"),
/// 				},
/// 				CustomizationScripts: containerservice.NodeCustomizationScriptArray{
/// 					&containerservice.NodeCustomizationScriptArgs{
/// 						ExecutionPoint: pulumi.String(containerservice.ExecutionPointNodeImageBuildTime),
/// 						Name:           pulumi.String("initialize-node"),
/// 						Script:         pulumi.String("echo \"test node customization\" > /var/log/test-node-customization.txt"),
/// 						ScriptType:     pulumi.String(containerservice.ScriptTypeBash),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"team": pulumi.String("blue"),
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
/// import com.pulumi.azurenative.containerservice.NodeCustomization;
/// import com.pulumi.azurenative.containerservice.NodeCustomizationArgs;
/// import com.pulumi.azurenative.containerservice.inputs.NodeCustomizationPropertiesArgs;
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
///         var nodeCustomization = new NodeCustomization("nodeCustomization", NodeCustomizationArgs.builder()
///             .location("westus2")
///             .nodeCustomizationName("my-node-customization")
///             .properties(NodeCustomizationPropertiesArgs.builder()
///                 .containerImages("redis:8.0.0")
///                 .customizationScripts(NodeCustomizationScriptArgs.builder()
///                     .executionPoint("NodeImageBuildTime")
///                     .name("initialize-node")
///                     .script("echo \"test node customization\" > /var/log/test-node-customization.txt")
///                     .scriptType("Bash")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.of("team", "blue"))
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
/// const nodeCustomization = new azure_native.containerservice.NodeCustomization("nodeCustomization", {
///     location: "westus2",
///     nodeCustomizationName: "my-node-customization",
///     properties: {
///         containerImages: ["redis:8.0.0"],
///         customizationScripts: [{
///             executionPoint: azure_native.containerservice.ExecutionPoint.NodeImageBuildTime,
///             name: "initialize-node",
///             script: "echo \"test node customization\" > /var/log/test-node-customization.txt",
///             scriptType: azure_native.containerservice.ScriptType.Bash,
///         }],
///     },
///     resourceGroupName: "rg1",
///     tags: {
///         team: "blue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// node_customization = azure_native.containerservice.NodeCustomization("nodeCustomization",
///     location="westus2",
///     node_customization_name="my-node-customization",
///     properties={
///         "container_images": ["redis:8.0.0"],
///         "customization_scripts": [{
///             "execution_point": azure_native.containerservice.ExecutionPoint.NODE_IMAGE_BUILD_TIME,
///             "name": "initialize-node",
///             "script": "echo \"test node customization\" > /var/log/test-node-customization.txt",
///             "script_type": azure_native.containerservice.ScriptType.BASH,
///         }],
///     },
///     resource_group_name="rg1",
///     tags={
///         "team": "blue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   nodeCustomization:
///     type: azure-native:containerservice:NodeCustomization
///     properties:
///       location: westus2
///       nodeCustomizationName: my-node-customization
///       properties:
///         containerImages:
///           - redis:8.0.0
///         customizationScripts:
///           - executionPoint: NodeImageBuildTime
///             name: initialize-node
///             script: echo "test node customization" > /var/log/test-node-customization.txt
///             scriptType: Bash
///       resourceGroupName: rg1
///       tags:
///         team: blue
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
/// $ pulumi import azure-native:containerservice:NodeCustomization my-node-customization /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerService/nodeCustomizations/{nodeCustomizationName}
/// ```
class NodeCustomization extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// If eTag is provided in the response body, it may also be provided as a header per the normal etag convention.  Entity tags are used for comparing two or more entities from the same requested resource. HTTP/1.1 uses entity tags in the etag (section 14.19), If-Match (section 14.24), If-None-Match (section 14.26), and If-Range (section 14.27) header fields.
  late final pulumi.Output<String> eTag;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<NodeCustomizationPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [NodeCustomization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NodeCustomization]. {@macro pulumi_containerservice_node_customization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NodeCustomization(
    String name, {
    NodeCustomizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:containerservice:NodeCustomization',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eTag = registerOutput<String>('eTag');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<NodeCustomizationPropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
