import 'package:pulumi/pulumi.dart' as pulumi;
import 'cassandra_resource_cassandra_view_args.dart';
import 'cassandra_view_get_properties_response_options.dart';
import 'cassandra_view_get_properties_response_resource.dart';
import 'managed_service_identity_response.dart';

/// An Azure Cosmos DB Cassandra view.
///
/// Uses Azure REST API version 2024-12-01-preview.
///
/// Other available API versions: 2021-07-01-preview, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15-preview, 2022-08-15-preview, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15-preview, 2024-09-01-preview, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBCassandraViewCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cassandraResourceCassandraView = new AzureNative.CosmosDB.CassandraResourceCassandraView("cassandraResourceCassandraView", new()
///     {
///         AccountName = "ddb1",
///         KeyspaceName = "keyspacename",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.CassandraViewResourceArgs
///         {
///             Id = "viewname",
///             ViewDefinition = "SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)",
///         },
///         ResourceGroupName = "rg1",
///         Tags = null,
///         ViewName = "viewname",
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
/// 		_, err := cosmosdb.NewCassandraResourceCassandraView(ctx, "cassandraResourceCassandraView", &cosmosdb.CassandraResourceCassandraViewArgs{
/// 			AccountName:  pulumi.String("ddb1"),
/// 			KeyspaceName: pulumi.String("keyspacename"),
/// 			Options:      &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.CassandraViewResourceArgs{
/// 				Id:             pulumi.String("viewname"),
/// 				ViewDefinition: pulumi.String("SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags:              pulumi.StringMap{},
/// 			ViewName:          pulumi.String("viewname"),
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
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraView;
/// import com.pulumi.azurenative.cosmosdb.CassandraResourceCassandraViewArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CassandraViewResourceArgs;
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
///         var cassandraResourceCassandraView = new CassandraResourceCassandraView("cassandraResourceCassandraView", CassandraResourceCassandraViewArgs.builder()
///             .accountName("ddb1")
///             .keyspaceName("keyspacename")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(CassandraViewResourceArgs.builder()
///                 .id("viewname")
///                 .viewDefinition("SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)")
///                 .build())
///             .resourceGroupName("rg1")
///             .tags(Map.ofEntries(
///             ))
///             .viewName("viewname")
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
/// const cassandraResourceCassandraView = new azure_native.cosmosdb.CassandraResourceCassandraView("cassandraResourceCassandraView", {
///     accountName: "ddb1",
///     keyspaceName: "keyspacename",
///     options: {},
///     resource: {
///         id: "viewname",
///         viewDefinition: "SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)",
///     },
///     resourceGroupName: "rg1",
///     tags: {},
///     viewName: "viewname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cassandra_resource_cassandra_view = azure_native.cosmosdb.CassandraResourceCassandraView("cassandraResourceCassandraView",
///     account_name="ddb1",
///     keyspace_name="keyspacename",
///     options={},
///     resource={
///         "id": "viewname",
///         "view_definition": "SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)",
///     },
///     resource_group_name="rg1",
///     tags={},
///     view_name="viewname")
///
/// ```
///
/// ```yaml
/// resources:
///   cassandraResourceCassandraView:
///     type: azure-native:cosmosdb:CassandraResourceCassandraView
///     properties:
///       accountName: ddb1
///       keyspaceName: keyspacename
///       options: {}
///       resource:
///         id: viewname
///         viewDefinition: SELECT columna, columnb, columnc FROM keyspacename.srctablename WHERE columna IS NOT NULL AND columnc IS NOT NULL PRIMARY (columnc, columna)
///       resourceGroupName: rg1
///       tags: {}
///       viewName: viewname
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
/// $ pulumi import azure-native:cosmosdb:CassandraResourceCassandraView viewname /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/cassandraKeyspaces/{keyspaceName}/views/{viewName}
/// ```
class CassandraResourceCassandraView extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Identity for the resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<CassandraViewGetPropertiesResponseOptions?> options;
  late final pulumi.Output<CassandraViewGetPropertiesResponseResource?> resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [CassandraResourceCassandraView].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CassandraResourceCassandraView]. {@macro pulumi_cosmosdb_cassandra_resource_cassandra_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CassandraResourceCassandraView(
    String name, {
    CassandraResourceCassandraViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:CassandraResourceCassandraView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ManagedServiceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<CassandraViewGetPropertiesResponseOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraViewGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<CassandraViewGetPropertiesResponseResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CassandraViewGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
