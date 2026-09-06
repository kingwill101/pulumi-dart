import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'tool_args.dart';
import 'tool_properties_response.dart';

/// Tool tracked resource
///
/// Uses Azure REST API version 2026-02-01-preview.
///
/// Other available API versions: 2026-06-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native discovery [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Tools_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tool = new AzureNative.Discovery.Tool("tool", new()
///     {
///         Location = "uksouth",
///         Properties = new AzureNative.Discovery.Inputs.ToolPropertiesArgs
///         {
///             DefinitionContent = new Dictionary<string, object?>
///             {
///                 ["actions"] = new[]
///                 {
///                     new Dictionary<string, object?>
///                     {
///                         ["command"] = "python3 submit_dft.py ",
///                         ["description"] = "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations.",
///                         ["environment_variables"] = new[]
///                         {
///                             new Dictionary<string, object?>
///                             {
///                                 ["name"] = "OUTPUT_DIRECTORY_PATH",
///                                 ["value"] = "{{ outputDataAssetId }}",
///                             },
///                         },
///                         ["input_schema"] = new Dictionary<string, object?>
///                         {
///                             ["properties"] = new Dictionary<string, object?>
///                             {
///                                 ["basisSet"] = new Dictionary<string, object?>
///                                 {
///                                     ["description"] = "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp).",
///                                     ["type"] = "string",
///                                 },
///                                 ["inputDataAssetId"] = new Dictionary<string, object?>
///                                 {
///                                     ["description"] = "Identifier of the input data asset",
///                                     ["type"] = "string",
///                                 },
///                                 ["outputDataAssetId"] = new Dictionary<string, object?>
///                                 {
///                                     ["description"] = "Identifier to use for the new output data asset which will be created.",
///                                     ["type"] = "string",
///                                 },
///                                 ["xyzColumnName"] = new Dictionary<string, object?>
///                                 {
///                                     ["description"] = "Column containing xyz data within the input data table asset",
///                                     ["type"] = "string",
///                                 },
///                             },
///                             ["required"] = new[]
///                             {
///                                 "inputDataAssetId",
///                                 "xyzColumnName",
///                             },
///                             ["type"] = "object",
///                         },
///                         ["name"] = "GeometryOptimization",
///                     },
///                 },
///                 ["description"] = "Advanced DFT computational tools for molecular geometry optimization and property calculations",
///                 ["name"] = "discovery",
///                 ["tool_id"] = "discovery-m1",
///             },
///             EnvironmentVariables =
///             {
///                 { "key5460", "xtjzjghbist" },
///             },
///             Version = "sjepxewtq",
///         },
///         ResourceGroupName = "rgdiscovery",
///         Tags =
///         {
///             { "key2611", "cgsblxvyzevbd" },
///         },
///         ToolName = "b5d4239f788c20b58b",
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
/// 	discovery "github.com/pulumi/pulumi-azure-native-sdk/discovery/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := discovery.NewTool(ctx, "tool", &discovery.ToolArgs{
/// 			Location: pulumi.String("uksouth"),
/// 			Properties: &discovery.ToolPropertiesArgs{
/// 				DefinitionContent: pulumi.Any(map[string]interface{}{
/// 					"actions": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"command":     "python3 submit_dft.py ",
/// 							"description": "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations.",
/// 							"environment_variables": []map[string]interface{}{
/// 								map[string]interface{}{
/// 									"name":  "OUTPUT_DIRECTORY_PATH",
/// 									"value": "{{ outputDataAssetId }}",
/// 								},
/// 							},
/// 							"input_schema": map[string]interface{}{
/// 								"properties": map[string]interface{}{
/// 									"basisSet": map[string]interface{}{
/// 										"description": "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp).",
/// 										"type":        "string",
/// 									},
/// 									"inputDataAssetId": map[string]interface{}{
/// 										"description": "Identifier of the input data asset",
/// 										"type":        "string",
/// 									},
/// 									"outputDataAssetId": map[string]interface{}{
/// 										"description": "Identifier to use for the new output data asset which will be created.",
/// 										"type":        "string",
/// 									},
/// 									"xyzColumnName": map[string]interface{}{
/// 										"description": "Column containing xyz data within the input data table asset",
/// 										"type":        "string",
/// 									},
/// 								},
/// 								"required": []string{
/// 									"inputDataAssetId",
/// 									"xyzColumnName",
/// 								},
/// 								"type": "object",
/// 							},
/// 							"name": "GeometryOptimization",
/// 						},
/// 					},
/// 					"description": "Advanced DFT computational tools for molecular geometry optimization and property calculations",
/// 					"name":        "discovery",
/// 					"tool_id":     "discovery-m1",
/// 				}),
/// 				EnvironmentVariables: pulumi.StringMap{
/// 					"key5460": pulumi.String("xtjzjghbist"),
/// 				},
/// 				Version: pulumi.String("sjepxewtq"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rgdiscovery"),
/// 			Tags: pulumi.StringMap{
/// 				"key2611": pulumi.String("cgsblxvyzevbd"),
/// 			},
/// 			ToolName: pulumi.String("b5d4239f788c20b58b"),
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
/// resource "azure-native_discovery_tool" "tool" {
///   location = "uksouth"
///   properties = {
///     definition_content = {
///       "actions" = [{
///         "command"     = "python3 submit_dft.py "
///         "description" = "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations."
///         "environment_variables" = [{
///           "name"  = "OUTPUT_DIRECTORY_PATH"
///           "value" = "{{ outputDataAssetId }}"
///         }]
///         "input_schema" = {
///           "properties" = {
///             "basisSet" = {
///               "description" = "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp)."
///               "type"        = "string"
///             }
///             "inputDataAssetId" = {
///               "description" = "Identifier of the input data asset"
///               "type"        = "string"
///             }
///             "outputDataAssetId" = {
///               "description" = "Identifier to use for the new output data asset which will be created."
///               "type"        = "string"
///             }
///             "xyzColumnName" = {
///               "description" = "Column containing xyz data within the input data table asset"
///               "type"        = "string"
///             }
///           }
///           "required" = ["inputDataAssetId", "xyzColumnName"]
///           "type"     = "object"
///         }
///         "name" = "GeometryOptimization"
///       }]
///       "description" = "Advanced DFT computational tools for molecular geometry optimization and property calculations"
///       "name"        = "discovery"
///       "tool_id"     = "discovery-m1"
///     }
///     environment_variables = {
///       "key5460" = "xtjzjghbist"
///     }
///     version = "sjepxewtq"
///   }
///   resource_group_name = "rgdiscovery"
///   tags = {
///     "key2611" = "cgsblxvyzevbd"
///   }
///   tool_name = "b5d4239f788c20b58b"
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
/// import com.pulumi.azurenative.discovery.Tool;
/// import com.pulumi.azurenative.discovery.ToolArgs;
/// import com.pulumi.azurenative.discovery.inputs.ToolPropertiesArgs;
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
///         var tool = new Tool("tool", ToolArgs.builder()
///             .location("uksouth")
///             .properties(ToolPropertiesArgs.builder()
///                 .definitionContent(Map.ofEntries(
///                     Map.entry("actions", Arrays.asList(Map.ofEntries(
///                         Map.entry("command", "python3 submit_dft.py "),
///                         Map.entry("description", "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations."),
///                         Map.entry("environment_variables", Arrays.asList(Map.ofEntries(
///                             Map.entry("name", "OUTPUT_DIRECTORY_PATH"),
///                             Map.entry("value", "{{ outputDataAssetId }}")
///                         ))),
///                         Map.entry("input_schema", Map.ofEntries(
///                             Map.entry("properties", Map.ofEntries(
///                                 Map.entry("basisSet", Map.ofEntries(
///                                     Map.entry("description", "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp)."),
///                                     Map.entry("type", "string")
///                                 )),
///                                 Map.entry("inputDataAssetId", Map.ofEntries(
///                                     Map.entry("description", "Identifier of the input data asset"),
///                                     Map.entry("type", "string")
///                                 )),
///                                 Map.entry("outputDataAssetId", Map.ofEntries(
///                                     Map.entry("description", "Identifier to use for the new output data asset which will be created."),
///                                     Map.entry("type", "string")
///                                 )),
///                                 Map.entry("xyzColumnName", Map.ofEntries(
///                                     Map.entry("description", "Column containing xyz data within the input data table asset"),
///                                     Map.entry("type", "string")
///                                 ))
///                             )),
///                             Map.entry("required", Arrays.asList(
///                                 "inputDataAssetId",
///                                 "xyzColumnName")),
///                             Map.entry("type", "object")
///                         )),
///                         Map.entry("name", "GeometryOptimization")
///                     ))),
///                     Map.entry("description", "Advanced DFT computational tools for molecular geometry optimization and property calculations"),
///                     Map.entry("name", "discovery"),
///                     Map.entry("tool_id", "discovery-m1")
///                 ))
///                 .environmentVariables(Map.of("key5460", "xtjzjghbist"))
///                 .version("sjepxewtq")
///                 .build())
///             .resourceGroupName("rgdiscovery")
///             .tags(Map.of("key2611", "cgsblxvyzevbd"))
///             .toolName("b5d4239f788c20b58b")
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
/// const tool = new azure_native.discovery.Tool("tool", {
///     location: "uksouth",
///     properties: {
///         definitionContent: {
///             actions: [{
///                 command: "python3 submit_dft.py ",
///                 description: "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations.",
///                 environment_variables: [{
///                     name: "OUTPUT_DIRECTORY_PATH",
///                     value: "{{ outputDataAssetId }}",
///                 }],
///                 input_schema: {
///                     properties: {
///                         basisSet: {
///                             description: "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp).",
///                             type: "string",
///                         },
///                         inputDataAssetId: {
///                             description: "Identifier of the input data asset",
///                             type: "string",
///                         },
///                         outputDataAssetId: {
///                             description: "Identifier to use for the new output data asset which will be created.",
///                             type: "string",
///                         },
///                         xyzColumnName: {
///                             description: "Column containing xyz data within the input data table asset",
///                             type: "string",
///                         },
///                     },
///                     required: [
///                         "inputDataAssetId",
///                         "xyzColumnName",
///                     ],
///                     type: "object",
///                 },
///                 name: "GeometryOptimization",
///             }],
///             description: "Advanced DFT computational tools for molecular geometry optimization and property calculations",
///             name: "discovery",
///             tool_id: "discovery-m1",
///         },
///         environmentVariables: {
///             key5460: "xtjzjghbist",
///         },
///         version: "sjepxewtq",
///     },
///     resourceGroupName: "rgdiscovery",
///     tags: {
///         key2611: "cgsblxvyzevbd",
///     },
///     toolName: "b5d4239f788c20b58b",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// tool = azure_native.discovery.Tool("tool",
///     location="uksouth",
///     properties={
///         "definition_content": {
///             "actions": [{
///                 "command": "python3 submit_dft.py ",
///                 "description": "Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations.",
///                 "environment_variables": [{
///                     "name": "OUTPUT_DIRECTORY_PATH",
///                     "value": "{{ outputDataAssetId }}",
///                 }],
///                 "input_schema": {
///                     "properties": {
///                         "basisSet": {
///                             "description": "Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp).",
///                             "type": "string",
///                         },
///                         "inputDataAssetId": {
///                             "description": "Identifier of the input data asset",
///                             "type": "string",
///                         },
///                         "outputDataAssetId": {
///                             "description": "Identifier to use for the new output data asset which will be created.",
///                             "type": "string",
///                         },
///                         "xyzColumnName": {
///                             "description": "Column containing xyz data within the input data table asset",
///                             "type": "string",
///                         },
///                     },
///                     "required": [
///                         "inputDataAssetId",
///                         "xyzColumnName",
///                     ],
///                     "type": "object",
///                 },
///                 "name": "GeometryOptimization",
///             }],
///             "description": "Advanced DFT computational tools for molecular geometry optimization and property calculations",
///             "name": "discovery",
///             "tool_id": "discovery-m1",
///         },
///         "environment_variables": {
///             "key5460": "xtjzjghbist",
///         },
///         "version": "sjepxewtq",
///     },
///     resource_group_name="rgdiscovery",
///     tags={
///         "key2611": "cgsblxvyzevbd",
///     },
///     tool_name="b5d4239f788c20b58b")
///
/// ```
///
/// ```yaml
/// resources:
///   tool:
///     type: azure-native:discovery:Tool
///     properties:
///       location: uksouth
///       properties:
///         definitionContent:
///           actions:
///             - command: 'python3 submit_dft.py '
///               description: Optimize geometry of 'xyz's from the input data asset. This is a prerequisite for all other discovery computations.
///               environment_variables:
///                 - name: OUTPUT_DIRECTORY_PATH
///                   value: '{{ outputDataAssetId }}'
///               input_schema:
///                 properties:
///                   basisSet:
///                     description: Basis set. Must be one of the supported basis sets (e.g., def2-svp, def2-tzvp).
///                     type: string
///                   inputDataAssetId:
///                     description: Identifier of the input data asset
///                     type: string
///                   outputDataAssetId:
///                     description: Identifier to use for the new output data asset which will be created.
///                     type: string
///                   xyzColumnName:
///                     description: Column containing xyz data within the input data table asset
///                     type: string
///                 required:
///                   - inputDataAssetId
///                   - xyzColumnName
///                 type: object
///               name: GeometryOptimization
///           description: Advanced DFT computational tools for molecular geometry optimization and property calculations
///           name: discovery
///           tool_id: discovery-m1
///         environmentVariables:
///           key5460: xtjzjghbist
///         version: sjepxewtq
///       resourceGroupName: rgdiscovery
///       tags:
///         key2611: cgsblxvyzevbd
///       toolName: b5d4239f788c20b58b
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
/// $ pulumi import azure-native:discovery:Tool b5d4239f788c20b58b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Discovery/tools/{toolName}
/// ```
class Tool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ToolPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Tool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tool]. {@macro pulumi_discovery_tool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tool(
    String name, {
    ToolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:discovery:Tool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ToolPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [Tool] resource.
  Tool.reference(String urn)
    : super(
        'azure-native:discovery:Tool',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ToolPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ToolPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String>('type');
  }
}
