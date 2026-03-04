import 'package:pulumi/pulumi.dart' as pulumi;
import 'context_args.dart';
import 'context_properties_response.dart';
import 'system_data_response.dart';

/// Context Resource
///
/// Uses Azure REST API version 2025-06-01.
///
/// Other available API versions: 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native edge [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Contexts_CreateOrUpdate_MaximumSet
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var context = new AzureNative.Edge.Context("context", new()
///     {
///         ContextName = "testname",
///         Location = "pkquwbplcp",
///         Properties = new AzureNative.Edge.Inputs.ContextPropertiesArgs
///         {
///             Capabilities = new[]
///             {
///                 new AzureNative.Edge.Inputs.CapabilityArgs
///                 {
///                     Description = "banbenutsngwytoqh",
///                     Name = "tpylinjcmlnycfpofpxjtqmt",
///                     State = AzureNative.Edge.ResourceState.Active,
///                 },
///             },
///             Hierarchies = new[]
///             {
///                 new AzureNative.Edge.Inputs.HierarchyArgs
///                 {
///                     Description = "vg",
///                     Name = "upqe",
///                 },
///             },
///         },
///         ResourceGroupName = "rgconfigurationmanager",
///         Tags =
///         {
///             { "key3046", "clcnhzwypk" },
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
/// 	edge "github.com/pulumi/pulumi-azure-native-sdk/edge/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := edge.NewContext(ctx, "context", &edge.ContextArgs{
/// 			ContextName: pulumi.String("testname"),
/// 			Location:    pulumi.String("pkquwbplcp"),
/// 			Properties: &edge.ContextPropertiesArgs{
/// 				Capabilities: edge.CapabilityArray{
/// 					&edge.CapabilityArgs{
/// 						Description: pulumi.String("banbenutsngwytoqh"),
/// 						Name:        pulumi.String("tpylinjcmlnycfpofpxjtqmt"),
/// 						State:       pulumi.String(edge.ResourceStateActive),
/// 					},
/// 				},
/// 				Hierarchies: edge.HierarchyArray{
/// 					&edge.HierarchyArgs{
/// 						Description: pulumi.String("vg"),
/// 						Name:        pulumi.String("upqe"),
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rgconfigurationmanager"),
/// 			Tags: pulumi.StringMap{
/// 				"key3046": pulumi.String("clcnhzwypk"),
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
/// import com.pulumi.azurenative.edge.Context;
/// import com.pulumi.azurenative.edge.ContextArgs;
/// import com.pulumi.azurenative.edge.inputs.ContextPropertiesArgs;
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
///         var context = new Context("context", ContextArgs.builder()
///             .contextName("testname")
///             .location("pkquwbplcp")
///             .properties(ContextPropertiesArgs.builder()
///                 .capabilities(CapabilityArgs.builder()
///                     .description("banbenutsngwytoqh")
///                     .name("tpylinjcmlnycfpofpxjtqmt")
///                     .state("active")
///                     .build())
///                 .hierarchies(HierarchyArgs.builder()
///                     .description("vg")
///                     .name("upqe")
///                     .build())
///                 .build())
///             .resourceGroupName("rgconfigurationmanager")
///             .tags(Map.of("key3046", "clcnhzwypk"))
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
/// const context = new azure_native.edge.Context("context", {
///     contextName: "testname",
///     location: "pkquwbplcp",
///     properties: {
///         capabilities: [{
///             description: "banbenutsngwytoqh",
///             name: "tpylinjcmlnycfpofpxjtqmt",
///             state: azure_native.edge.ResourceState.Active,
///         }],
///         hierarchies: [{
///             description: "vg",
///             name: "upqe",
///         }],
///     },
///     resourceGroupName: "rgconfigurationmanager",
///     tags: {
///         key3046: "clcnhzwypk",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// context = azure_native.edge.Context("context",
///     context_name="testname",
///     location="pkquwbplcp",
///     properties={
///         "capabilities": [{
///             "description": "banbenutsngwytoqh",
///             "name": "tpylinjcmlnycfpofpxjtqmt",
///             "state": azure_native.edge.ResourceState.ACTIVE,
///         }],
///         "hierarchies": [{
///             "description": "vg",
///             "name": "upqe",
///         }],
///     },
///     resource_group_name="rgconfigurationmanager",
///     tags={
///         "key3046": "clcnhzwypk",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   context:
///     type: azure-native:edge:Context
///     properties:
///       contextName: testname
///       location: pkquwbplcp
///       properties:
///         capabilities:
///           - description: banbenutsngwytoqh
///             name: tpylinjcmlnycfpofpxjtqmt
///             state: active
///         hierarchies:
///           - description: vg
///             name: upqe
///       resourceGroupName: rgconfigurationmanager
///       tags:
///         key3046: clcnhzwypk
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
/// $ pulumi import azure-native:edge:Context dtpqgxwo /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Edge/contexts/{contextName}
/// ```
class Context extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<ContextPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Context].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Context]. {@macro pulumi_edge_context_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Context(
    String name, {
    ContextArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:edge:Context',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ContextPropertiesResponse>('properties');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
