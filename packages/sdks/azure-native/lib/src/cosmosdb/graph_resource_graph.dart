import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_resource_get_properties_response_options.dart';
import 'graph_resource_get_properties_response_resource.dart';
import 'graph_resource_graph_args.dart';
import 'managed_service_identity_response.dart';

/// An Azure Cosmos DB Graph resource.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBGraphCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var graphResourceGraph = new AzureNative.CosmosDB.GraphResourceGraph("graphResourceGraph", new()
///     {
///         AccountName = "ddb1",
///         GraphName = "graphName",
///         Location = "West US",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.GraphResourceArgs
///         {
///             Id = "graphName",
///         },
///         ResourceGroupName = "rg1",
///         Tags = null,
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewGraphResourceGraph(ctx, "graphResourceGraph", &cosmosdb.GraphResourceGraphArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			GraphName:   pulumi.String("graphName"),
/// 			Location:    pulumi.String("West US"),
/// 			Options:     &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.GraphResourceArgs{
/// 				Id: pulumi.String("graphName"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags:              pulumi.StringMap{},
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
/// import com.pulumi.azurenative.cosmosdb.GraphResourceGraph;
/// import com.pulumi.azurenative.cosmosdb.GraphResourceGraphArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.GraphResourceArgs;
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
///         var graphResourceGraph = new GraphResourceGraph("graphResourceGraph", GraphResourceGraphArgs.builder()
///             .accountName("ddb1")
///             .graphName("graphName")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(GraphResourceArgs.builder()
///                 .id("graphName")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
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
/// const graphResourceGraph = new azure_native.cosmosdb.GraphResourceGraph("graphResourceGraph", {
///     accountName: "ddb1",
///     graphName: "graphName",
///     location: "West US",
///     options: {},
///     resource: {
///         id: "graphName",
///     },
///     resourceGroupName: "rg1",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// graph_resource_graph = azure_native.cosmosdb.GraphResourceGraph("graphResourceGraph",
///     account_name="ddb1",
///     graph_name="graphName",
///     location="West US",
///     options={},
///     resource={
///         "id": "graphName",
///     },
///     resource_group_name="rg1",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   graphResourceGraph:
///     type: azure-native:cosmosdb:GraphResourceGraph
///     properties:
///       accountName: ddb1
///       graphName: graphName
///       location: West US
///       options: {}
///       resource:
///         id: graphName
///       resourceGroupName: rg1
///       tags: {}
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
/// $ pulumi import azure-native:cosmosdb:GraphResourceGraph graphName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/graphs/{graphName}
/// ```
class GraphResourceGraph extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identity for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<GraphResourceGetPropertiesResponseOptions?> options;
  late final pulumi.Output<GraphResourceGetPropertiesResponseResource?> resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [GraphResourceGraph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GraphResourceGraph]. {@macro pulumi_cosmosdb_graph_resource_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GraphResourceGraph(
    String name, {
    GraphResourceGraphArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:GraphResourceGraph',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<GraphResourceGetPropertiesResponseOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphResourceGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<GraphResourceGetPropertiesResponseResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GraphResourceGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
