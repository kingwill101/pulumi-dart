import 'package:pulumi/pulumi.dart' as pulumi;
import 'table_get_properties_response_options.dart';
import 'table_get_properties_response_resource.dart';
import 'table_resource_table_args.dart';

/// An Azure Cosmos DB Table.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview, 2026-03-15, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBTableReplace
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tableResourceTable = new AzureNative.CosmosDB.TableResourceTable("tableResourceTable", new()
///     {
///         AccountName = "ddb1",
///         Location = "West US",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.TableResourceArgs
///         {
///             Id = "tableName",
///         },
///         ResourceGroupName = "rg1",
///         TableName = "tableName",
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
/// 		_, err := cosmosdb.NewTableResourceTable(ctx, "tableResourceTable", &cosmosdb.TableResourceTableArgs{
/// 			AccountName: pulumi.String("ddb1"),
/// 			Location:    pulumi.String("West US"),
/// 			Options:     &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.TableResourceArgs{
/// 				Id: pulumi.String("tableName"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			TableName:         pulumi.String("tableName"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_cosmosdb_tableresourcetable" "tableResourceTable" {
///   account_name = "ddb1"
///   location     = "West US"
///   options      = {}
///   resource = {
///     id = "tableName"
///   }
///   resource_group_name = "rg1"
///   table_name          = "tableName"
///   tags                = {}
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
/// import com.pulumi.azurenative.cosmosdb.TableResourceTable;
/// import com.pulumi.azurenative.cosmosdb.TableResourceTableArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.TableResourceArgs;
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
///         var tableResourceTable = new TableResourceTable("tableResourceTable", TableResourceTableArgs.builder()
///             .accountName("ddb1")
///             .location("West US")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(TableResourceArgs.builder()
///                 .id("tableName")
///                 .build())
///             .resourceGroupName("rg1")
///             .tableName("tableName")
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
/// const tableResourceTable = new azure_native.cosmosdb.TableResourceTable("tableResourceTable", {
///     accountName: "ddb1",
///     location: "West US",
///     options: {},
///     resource: {
///         id: "tableName",
///     },
///     resourceGroupName: "rg1",
///     tableName: "tableName",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// table_resource_table = azure_native.cosmosdb.TableResourceTable("tableResourceTable",
///     account_name="ddb1",
///     location="West US",
///     options={},
///     resource={
///         "id": "tableName",
///     },
///     resource_group_name="rg1",
///     table_name="tableName",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   tableResourceTable:
///     type: azure-native:cosmosdb:TableResourceTable
///     properties:
///       accountName: ddb1
///       location: West US
///       options: {}
///       resource:
///         id: tableName
///       resourceGroupName: rg1
///       tableName: tableName
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
/// $ pulumi import azure-native:cosmosdb:TableResourceTable tableName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/tables/{tableName}
/// ```
class TableResourceTable extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;
  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<TableGetPropertiesResponseOptions?> options;
  late final pulumi.Output<TableGetPropertiesResponseResource?> resource;
  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [TableResourceTable].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TableResourceTable]. {@macro pulumi_cosmosdb_table_resource_table_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TableResourceTable(
    String name, {
    TableResourceTableArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:TableResourceTable',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.options = registerOutput<TableGetPropertiesResponseOptions?>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableGetPropertiesResponseOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    resource = registerOutput<TableGetPropertiesResponseResource?>('resource', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TableGetPropertiesResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
