import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'system_data_response.dart';

/// Represents a database.
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.DBforPostgreSQL.Database("database", new()
///     {
///         Charset = "utf8",
///         Collation = "en_US.utf8",
///         DatabaseName = "exampledatabase",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewDatabase(ctx, "database", &dbforpostgresql.DatabaseArgs{
/// 			Charset:           pulumi.String("utf8"),
/// 			Collation:         pulumi.String("en_US.utf8"),
/// 			DatabaseName:      pulumi.String("exampledatabase"),
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
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
/// import com.pulumi.azurenative.dbforpostgresql.Database;
/// import com.pulumi.azurenative.dbforpostgresql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .charset("utf8")
///             .collation("en_US.utf8")
///             .databaseName("exampledatabase")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
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
/// const database = new azure_native.dbforpostgresql.Database("database", {
///     charset: "utf8",
///     collation: "en_US.utf8",
///     databaseName: "exampledatabase",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.dbforpostgresql.Database("database",
///     charset="utf8",
///     collation="en_US.utf8",
///     database_name="exampledatabase",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:dbforpostgresql:Database
///     properties:
///       charset: utf8
///       collation: en_US.utf8
///       databaseName: exampledatabase
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
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
/// $ pulumi import azure-native:dbforpostgresql:Database myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}/databases/{databaseName}
/// ```
class Database extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Character set of the database.
  late final pulumi.Output<String?> charset;
  /// Collation of the database.
  late final pulumi.Output<String?> collation;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_dbforpostgresql_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.charset = registerOutput<String?>('charset');
    this.collation = registerOutput<String?>('collation');
    this.name = registerOutput<String>('name');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
