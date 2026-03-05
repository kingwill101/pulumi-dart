import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_properties_sql_db_response.dart';
import 'database_migrations_sql_db_args.dart';
import 'system_data_response.dart';

/// Database Migration Resource for SQL Database.
///
/// Uses Azure REST API version 2023-07-15-preview. In version 2.x of the Azure Native provider, it used API version 2022-03-30-preview.
///
/// Other available API versions: 2022-03-30-preview, 2025-03-15-preview, 2025-06-30, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Database Migration resource with Maximum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseMigrationsSqlDb = new AzureNative.DataMigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", new()
///     {
///         Properties = new AzureNative.DataMigration.Inputs.DatabaseMigrationPropertiesSqlDbArgs
///         {
///             Kind = "SqlDb",
///             MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///             Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///             SourceDatabaseName = "aaa",
///             SourceSqlConnection = new AzureNative.DataMigration.Inputs.SqlConnectionInformationArgs
///             {
///                 Authentication = "WindowsAuthentication",
///                 DataSource = "aaa",
///                 EncryptConnection = true,
///                 Password = "placeholder",
///                 TrustServerCertificate = true,
///                 UserName = "bbb",
///             },
///             TableList = new[]
///             {
///                 "[Schema1].[TableName1]",
///                 "[Schema2].[TableName2]",
///             },
///             TargetSqlConnection = new AzureNative.DataMigration.Inputs.SqlConnectionInformationArgs
///             {
///                 Authentication = "SqlAuthentication",
///                 DataSource = "sqldbinstance",
///                 EncryptConnection = true,
///                 Password = "placeholder",
///                 TrustServerCertificate = true,
///                 UserName = "bbb",
///             },
///         },
///         ResourceGroupName = "testrg",
///         SqlDbInstanceName = "sqldbinstance",
///         TargetDbName = "db1",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewDatabaseMigrationsSqlDb(ctx, "databaseMigrationsSqlDb", &datamigration.DatabaseMigrationsSqlDbArgs{
/// 			Properties: &datamigration.DatabaseMigrationPropertiesSqlDbArgs{
/// 				Kind:               pulumi.String("SqlDb"),
/// 				MigrationService:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"),
/// 				Scope:              pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance"),
/// 				SourceDatabaseName: pulumi.String("aaa"),
/// 				SourceSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("WindowsAuthentication"),
/// 					DataSource:             pulumi.String("aaa"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 				TableList: pulumi.StringArray{
/// 					pulumi.String("[Schema1].[TableName1]"),
/// 					pulumi.String("[Schema2].[TableName2]"),
/// 				},
/// 				TargetSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("SqlAuthentication"),
/// 					DataSource:             pulumi.String("sqldbinstance"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			SqlDbInstanceName: pulumi.String("sqldbinstance"),
/// 			TargetDbName:      pulumi.String("db1"),
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlDb;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlDbArgs;
/// import com.pulumi.azurenative.datamigration.inputs.DatabaseMigrationPropertiesSqlDbArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInformationArgs;
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
///         var databaseMigrationsSqlDb = new DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", DatabaseMigrationsSqlDbArgs.builder()
///             .properties(DatabaseMigrationPropertiesSqlDbArgs.builder()
///                 .kind("SqlDb")
///                 .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent")
///                 .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance")
///                 .sourceDatabaseName("aaa")
///                 .sourceSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("WindowsAuthentication")
///                     .dataSource("aaa")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .tableList(
///                     "[Schema1].[TableName1]",
///                     "[Schema2].[TableName2]")
///                 .targetSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("SqlAuthentication")
///                     .dataSource("sqldbinstance")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlDbInstanceName("sqldbinstance")
///             .targetDbName("db1")
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
/// const databaseMigrationsSqlDb = new azure_native.datamigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", {
///     properties: {
///         kind: "SqlDb",
///         migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///         sourceDatabaseName: "aaa",
///         sourceSqlConnection: {
///             authentication: "WindowsAuthentication",
///             dataSource: "aaa",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///         tableList: [
///             "[Schema1].[TableName1]",
///             "[Schema2].[TableName2]",
///         ],
///         targetSqlConnection: {
///             authentication: "SqlAuthentication",
///             dataSource: "sqldbinstance",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlDbInstanceName: "sqldbinstance",
///     targetDbName: "db1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_sql_db = azure_native.datamigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb",
///     properties={
///         "kind": "SqlDb",
///         "migration_service": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         "scope": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///         "source_database_name": "aaa",
///         "source_sql_connection": {
///             "authentication": "WindowsAuthentication",
///             "data_source": "aaa",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///         "table_list": [
///             "[Schema1].[TableName1]",
///             "[Schema2].[TableName2]",
///         ],
///         "target_sql_connection": {
///             "authentication": "SqlAuthentication",
///             "data_source": "sqldbinstance",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///     },
///     resource_group_name="testrg",
///     sql_db_instance_name="sqldbinstance",
///     target_db_name="db1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsSqlDb:
///     type: azure-native:datamigration:DatabaseMigrationsSqlDb
///     properties:
///       properties:
///         kind: SqlDb
///         migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent
///         scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance
///         sourceDatabaseName: aaa
///         sourceSqlConnection:
///           authentication: WindowsAuthentication
///           dataSource: aaa
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///         tableList:
///           - '[Schema1].[TableName1]'
///           - '[Schema2].[TableName2]'
///         targetSqlConnection:
///           authentication: SqlAuthentication
///           dataSource: sqldbinstance
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///       resourceGroupName: testrg
///       sqlDbInstanceName: sqldbinstance
///       targetDbName: db1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Database Migration resource with Minimum parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var databaseMigrationsSqlDb = new AzureNative.DataMigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", new()
///     {
///         Properties = new AzureNative.DataMigration.Inputs.DatabaseMigrationPropertiesSqlDbArgs
///         {
///             Kind = "SqlDb",
///             MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///             Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///             SourceDatabaseName = "aaa",
///             SourceSqlConnection = new AzureNative.DataMigration.Inputs.SqlConnectionInformationArgs
///             {
///                 Authentication = "WindowsAuthentication",
///                 DataSource = "aaa",
///                 EncryptConnection = true,
///                 Password = "placeholder",
///                 TrustServerCertificate = true,
///                 UserName = "bbb",
///             },
///             TargetSqlConnection = new AzureNative.DataMigration.Inputs.SqlConnectionInformationArgs
///             {
///                 Authentication = "SqlAuthentication",
///                 DataSource = "sqldbinstance",
///                 EncryptConnection = true,
///                 Password = "placeholder",
///                 TrustServerCertificate = true,
///                 UserName = "bbb",
///             },
///         },
///         ResourceGroupName = "testrg",
///         SqlDbInstanceName = "sqldbinstance",
///         TargetDbName = "db1",
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
/// 	datamigration "github.com/pulumi/pulumi-azure-native-sdk/datamigration/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datamigration.NewDatabaseMigrationsSqlDb(ctx, "databaseMigrationsSqlDb", &datamigration.DatabaseMigrationsSqlDbArgs{
/// 			Properties: &datamigration.DatabaseMigrationPropertiesSqlDbArgs{
/// 				Kind:               pulumi.String("SqlDb"),
/// 				MigrationService:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"),
/// 				Scope:              pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance"),
/// 				SourceDatabaseName: pulumi.String("aaa"),
/// 				SourceSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("WindowsAuthentication"),
/// 					DataSource:             pulumi.String("aaa"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 				TargetSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("SqlAuthentication"),
/// 					DataSource:             pulumi.String("sqldbinstance"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			SqlDbInstanceName: pulumi.String("sqldbinstance"),
/// 			TargetDbName:      pulumi.String("db1"),
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlDb;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlDbArgs;
/// import com.pulumi.azurenative.datamigration.inputs.DatabaseMigrationPropertiesSqlDbArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInformationArgs;
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
///         var databaseMigrationsSqlDb = new DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", DatabaseMigrationsSqlDbArgs.builder()
///             .properties(DatabaseMigrationPropertiesSqlDbArgs.builder()
///                 .kind("SqlDb")
///                 .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent")
///                 .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance")
///                 .sourceDatabaseName("aaa")
///                 .sourceSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("WindowsAuthentication")
///                     .dataSource("aaa")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .targetSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("SqlAuthentication")
///                     .dataSource("sqldbinstance")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlDbInstanceName("sqldbinstance")
///             .targetDbName("db1")
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
/// const databaseMigrationsSqlDb = new azure_native.datamigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb", {
///     properties: {
///         kind: "SqlDb",
///         migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///         sourceDatabaseName: "aaa",
///         sourceSqlConnection: {
///             authentication: "WindowsAuthentication",
///             dataSource: "aaa",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///         targetSqlConnection: {
///             authentication: "SqlAuthentication",
///             dataSource: "sqldbinstance",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlDbInstanceName: "sqldbinstance",
///     targetDbName: "db1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_sql_db = azure_native.datamigration.DatabaseMigrationsSqlDb("databaseMigrationsSqlDb",
///     properties={
///         "kind": "SqlDb",
///         "migration_service": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         "scope": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance",
///         "source_database_name": "aaa",
///         "source_sql_connection": {
///             "authentication": "WindowsAuthentication",
///             "data_source": "aaa",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///         "target_sql_connection": {
///             "authentication": "SqlAuthentication",
///             "data_source": "sqldbinstance",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///     },
///     resource_group_name="testrg",
///     sql_db_instance_name="sqldbinstance",
///     target_db_name="db1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsSqlDb:
///     type: azure-native:datamigration:DatabaseMigrationsSqlDb
///     properties:
///       properties:
///         kind: SqlDb
///         migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent
///         scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.Sql/servers/sqldbinstance
///         sourceDatabaseName: aaa
///         sourceSqlConnection:
///           authentication: WindowsAuthentication
///           dataSource: aaa
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///         targetSqlConnection:
///           authentication: SqlAuthentication
///           dataSource: sqldbinstance
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///       resourceGroupName: testrg
///       sqlDbInstanceName: sqldbinstance
///       targetDbName: db1
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
/// $ pulumi import azure-native:datamigration:DatabaseMigrationsSqlDb db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{sqlDbInstanceName}/providers/Microsoft.DataMigration/databaseMigrations/{targetDbName}
/// ```
class DatabaseMigrationsSqlDb extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  late final pulumi.Output<String> name;

  /// Database Migration Resource properties for SQL database.
  late final pulumi.Output<DatabaseMigrationPropertiesSqlDbResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseMigrationsSqlDb].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMigrationsSqlDb]. {@macro pulumi_datamigration_database_migrations_sql_db_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMigrationsSqlDb(
    String name, {
    DatabaseMigrationsSqlDbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:datamigration:DatabaseMigrationsSqlDb',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DatabaseMigrationPropertiesSqlDbResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DatabaseMigrationPropertiesSqlDbResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
