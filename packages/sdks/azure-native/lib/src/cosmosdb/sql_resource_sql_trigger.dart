import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_resource_sql_trigger_args.dart';
import 'sql_trigger_get_properties_response_resource.dart';

/// An Azure Cosmos DB trigger.
///
/// Uses Azure REST API version 2025-10-15.
///
/// Other available API versions: 2019-08-01, 2019-12-12, 2020-03-01, 2020-04-01, 2020-06-01-preview, 2020-09-01, 2021-01-15, 2021-03-01-preview, 2021-03-15, 2021-04-01-preview, 2021-04-15, 2021-05-15, 2021-06-15, 2021-07-01-preview, 2021-10-15, 2021-10-15-preview, 2021-11-15-preview, 2022-02-15-preview, 2022-05-15, 2022-05-15-preview, 2022-08-15, 2022-08-15-preview, 2022-11-15, 2022-11-15-preview, 2023-03-01-preview, 2023-03-15, 2023-03-15-preview, 2023-04-15, 2023-09-15, 2023-09-15-preview, 2023-11-15, 2023-11-15-preview, 2024-02-15-preview, 2024-05-15, 2024-05-15-preview, 2024-08-15, 2024-09-01-preview, 2024-11-15, 2024-12-01-preview, 2025-04-15, 2025-05-01-preview, 2025-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CosmosDBSqlTriggerCreateUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlResourceSqlTrigger = new AzureNative.CosmosDB.SqlResourceSqlTrigger("sqlResourceSqlTrigger", new()
///     {
///         AccountName = "ddb1",
///         ContainerName = "containerName",
///         DatabaseName = "databaseName",
///         Options = null,
///         Resource = new AzureNative.CosmosDB.Inputs.SqlTriggerResourceArgs
///         {
///             Body = "body",
///             Id = "triggerName",
///             TriggerOperation = "triggerOperation",
///             TriggerType = "triggerType",
///         },
///         ResourceGroupName = "rg1",
///         TriggerName = "triggerName",
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
/// 		_, err := cosmosdb.NewSqlResourceSqlTrigger(ctx, "sqlResourceSqlTrigger", &cosmosdb.SqlResourceSqlTriggerArgs{
/// 			AccountName:   pulumi.String("ddb1"),
/// 			ContainerName: pulumi.String("containerName"),
/// 			DatabaseName:  pulumi.String("databaseName"),
/// 			Options:       &cosmosdb.CreateUpdateOptionsArgs{},
/// 			Resource: &cosmosdb.SqlTriggerResourceArgs{
/// 				Body:             pulumi.String("body"),
/// 				Id:               pulumi.String("triggerName"),
/// 				TriggerOperation: pulumi.String("triggerOperation"),
/// 				TriggerType:      pulumi.String("triggerType"),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			TriggerName:       pulumi.String("triggerName"),
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
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlTrigger;
/// import com.pulumi.azurenative.cosmosdb.SqlResourceSqlTriggerArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.CreateUpdateOptionsArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.SqlTriggerResourceArgs;
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
///         var sqlResourceSqlTrigger = new SqlResourceSqlTrigger("sqlResourceSqlTrigger", SqlResourceSqlTriggerArgs.builder()
///             .accountName("ddb1")
///             .containerName("containerName")
///             .databaseName("databaseName")
///             .options(CreateUpdateOptionsArgs.builder()
///                 .build())
///             .resource(SqlTriggerResourceArgs.builder()
///                 .body("body")
///                 .id("triggerName")
///                 .triggerOperation("triggerOperation")
///                 .triggerType("triggerType")
///                 .build())
///             .resourceGroupName("rg1")
///             .triggerName("triggerName")
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
/// const sqlResourceSqlTrigger = new azure_native.cosmosdb.SqlResourceSqlTrigger("sqlResourceSqlTrigger", {
///     accountName: "ddb1",
///     containerName: "containerName",
///     databaseName: "databaseName",
///     options: {},
///     resource: {
///         body: "body",
///         id: "triggerName",
///         triggerOperation: "triggerOperation",
///         triggerType: "triggerType",
///     },
///     resourceGroupName: "rg1",
///     triggerName: "triggerName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_resource_sql_trigger = azure_native.cosmosdb.SqlResourceSqlTrigger("sqlResourceSqlTrigger",
///     account_name="ddb1",
///     container_name="containerName",
///     database_name="databaseName",
///     options={},
///     resource={
///         "body": "body",
///         "id": "triggerName",
///         "trigger_operation": "triggerOperation",
///         "trigger_type": "triggerType",
///     },
///     resource_group_name="rg1",
///     trigger_name="triggerName")
///
/// ```
///
/// ```yaml
/// resources:
///   sqlResourceSqlTrigger:
///     type: azure-native:cosmosdb:SqlResourceSqlTrigger
///     properties:
///       accountName: ddb1
///       containerName: containerName
///       databaseName: databaseName
///       options: {}
///       resource:
///         body: body
///         id: triggerName
///         triggerOperation: triggerOperation
///         triggerType: triggerType
///       resourceGroupName: rg1
///       triggerName: triggerName
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
/// $ pulumi import azure-native:cosmosdb:SqlResourceSqlTrigger triggerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/databaseAccounts/{accountName}/sqlDatabases/{databaseName}/containers/{containerName}/triggers/{triggerName}
/// ```
class SqlResourceSqlTrigger extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The location of the resource group to which the resource belongs.
  late final pulumi.Output<String?> location;

  /// The name of the ARM resource.
  late final pulumi.Output<String> name;
  late final pulumi.Output<SqlTriggerGetPropertiesResponseResource?> resource;

  /// Tags are a list of key-value pairs that describe the resource. These tags can be used in viewing and grouping this resource (across resource groups). A maximum of 15 tags can be provided for a resource. Each tag must have a key no greater than 128 characters and value no greater than 256 characters. For example, the default experience for a template type is set with "defaultExperience": "Cassandra". Current "defaultExperience" values also include "Table", "Graph", "DocumentDB", and "MongoDB".
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of Azure resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SqlResourceSqlTrigger].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlResourceSqlTrigger]. {@macro pulumi_cosmosdb_sql_resource_sql_trigger_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlResourceSqlTrigger(
    String name, {
    SqlResourceSqlTriggerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cosmosdb:SqlResourceSqlTrigger',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    resource = registerOutput<SqlTriggerGetPropertiesResponseResource?>(
      'resource',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SqlTriggerGetPropertiesResponseResource.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
