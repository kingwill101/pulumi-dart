import 'package:pulumi/pulumi.dart' as pulumi;
import 'enterprise_knowledge_graph_args.dart';
import 'enterprise_knowledge_graph_properties_response.dart';
import 'sku_response.dart';

/// EnterpriseKnowledgeGraph resource definition
///
/// Uses Azure REST API version 2018-12-03. In version 2.x of the Azure Native provider, it used API version 2018-12-03.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create EnterpriseKnowledgeGraph
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var enterpriseKnowledgeGraph = new AzureNative.EnterpriseKnowledgeGraph.EnterpriseKnowledgeGraph("enterpriseKnowledgeGraph", new()
///     {
///         Location = "West US",
///         Properties = null,
///         ResourceGroupName = "OneResourceGroupName",
///         ResourceName = "sampleekgname",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
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
/// 	enterpriseknowledgegraph "github.com/pulumi/pulumi-azure-native-sdk/enterpriseknowledgegraph/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := enterpriseknowledgegraph.NewEnterpriseKnowledgeGraph(ctx, "enterpriseKnowledgeGraph", &enterpriseknowledgegraph.EnterpriseKnowledgeGraphArgs{
/// 			Location:          pulumi.String("West US"),
/// 			Properties:        &enterpriseknowledgegraph.EnterpriseKnowledgeGraphPropertiesArgs{},
/// 			ResourceGroupName: pulumi.String("OneResourceGroupName"),
/// 			ResourceName:      pulumi.String("sampleekgname"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
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
/// import com.pulumi.azurenative.enterpriseknowledgegraph.EnterpriseKnowledgeGraph;
/// import com.pulumi.azurenative.enterpriseknowledgegraph.EnterpriseKnowledgeGraphArgs;
/// import com.pulumi.azurenative.enterpriseknowledgegraph.inputs.EnterpriseKnowledgeGraphPropertiesArgs;
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
///         var enterpriseKnowledgeGraph = new EnterpriseKnowledgeGraph("enterpriseKnowledgeGraph", EnterpriseKnowledgeGraphArgs.builder()
///             .location("West US")
///             .properties(EnterpriseKnowledgeGraphPropertiesArgs.builder()
///                 .build())
///             .resourceGroupName("OneResourceGroupName")
///             .resourceName("sampleekgname")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
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
/// const enterpriseKnowledgeGraph = new azure_native.enterpriseknowledgegraph.EnterpriseKnowledgeGraph("enterpriseKnowledgeGraph", {
///     location: "West US",
///     properties: {},
///     resourceGroupName: "OneResourceGroupName",
///     resourceName: "sampleekgname",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// enterprise_knowledge_graph = azure_native.enterpriseknowledgegraph.EnterpriseKnowledgeGraph("enterpriseKnowledgeGraph",
///     location="West US",
///     properties={},
///     resource_group_name="OneResourceGroupName",
///     resource_name_="sampleekgname",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   enterpriseKnowledgeGraph:
///     type: azure-native:enterpriseknowledgegraph:EnterpriseKnowledgeGraph
///     properties:
///       location: West US
///       properties: {}
///       resourceGroupName: OneResourceGroupName
///       resourceName: sampleekgname
///       tags:
///         tag1: value1
///         tag2: value2
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
/// $ pulumi import azure-native:enterpriseknowledgegraph:EnterpriseKnowledgeGraph samplename /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EnterpriseKnowledgeGraph/services/{resourceName}
/// ```
class EnterpriseKnowledgeGraph extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Specifies the location of the resource.
  late final pulumi.Output<String?> location;
  /// Specifies the name of the resource.
  late final pulumi.Output<String> name;
  /// The set of properties specific to EnterpriseKnowledgeGraph resource
  late final pulumi.Output<EnterpriseKnowledgeGraphPropertiesResponse> properties;
  /// Gets or sets the SKU of the resource.
  late final pulumi.Output<SkuResponse?> sku;
  /// Contains resource tags defined as key/value pairs.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies the type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [EnterpriseKnowledgeGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnterpriseKnowledgeGraph]. {@macro pulumi_enterpriseknowledgegraph_enterprise_knowledge_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnterpriseKnowledgeGraph(
    String name, {
    EnterpriseKnowledgeGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:enterpriseknowledgegraph:EnterpriseKnowledgeGraph',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<EnterpriseKnowledgeGraphPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnterpriseKnowledgeGraphPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
