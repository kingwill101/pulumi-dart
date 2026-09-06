import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_migration_properties_sql_vm_response.dart';
import 'database_migrations_sql_vm_args.dart';
import 'system_data_response.dart';

/// Database Migration Resource for SQL Virtual Machine.
///
/// Uses Azure REST API version 2025-06-30.
///
/// Other available API versions: 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native datamigration [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
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
///     var databaseMigrationsSqlVm = new AzureNative.DataMigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", new()
///     {
///         Properties = new AzureNative.DataMigration.Inputs.DatabaseMigrationPropertiesSqlVmArgs
///         {
///             BackupConfiguration = new AzureNative.DataMigration.Inputs.BackupConfigurationArgs
///             {
///                 SourceLocation = new AzureNative.DataMigration.Inputs.SourceLocationArgs
///                 {
///                     FileShare = new AzureNative.DataMigration.Inputs.SqlFileShareArgs
///                     {
///                         Password = "placeholder",
///                         Path = "C:\\aaa\\bbb\\ccc",
///                         Username = "name",
///                     },
///                 },
///                 TargetLocation = new AzureNative.DataMigration.Inputs.TargetLocationArgs
///                 {
///                     AccountKey = "abcd",
///                     StorageAccountResourceId = "account.database.windows.net",
///                 },
///             },
///             Kind = "SqlVm",
///             MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///             OfflineConfiguration = new AzureNative.DataMigration.Inputs.OfflineConfigurationArgs
///             {
///                 LastBackupName = "last_backup_file_name",
///                 Offline = true,
///             },
///             Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
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
///         },
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
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
/// 		_, err := datamigration.NewDatabaseMigrationsSqlVm(ctx, "databaseMigrationsSqlVm", &datamigration.DatabaseMigrationsSqlVmArgs{
/// 			Properties: &datamigration.DatabaseMigrationPropertiesSqlVmArgs{
/// 				BackupConfiguration: &datamigration.BackupConfigurationArgs{
/// 					SourceLocation: &datamigration.SourceLocationArgs{
/// 						FileShare: &datamigration.SqlFileShareArgs{
/// 							Password: pulumi.String("placeholder"),
/// 							Path:     pulumi.String("C:\\aaa\\bbb\\ccc"),
/// 							Username: pulumi.String("name"),
/// 						},
/// 					},
/// 					TargetLocation: &datamigration.TargetLocationArgs{
/// 						AccountKey:               pulumi.String("abcd"),
/// 						StorageAccountResourceId: pulumi.String("account.database.windows.net"),
/// 					},
/// 				},
/// 				Kind:             pulumi.String("SqlVm"),
/// 				MigrationService: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"),
/// 				OfflineConfiguration: &datamigration.OfflineConfigurationArgs{
/// 					LastBackupName: pulumi.String("last_backup_file_name"),
/// 					Offline:        pulumi.Bool(true),
/// 				},
/// 				Scope:              pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm"),
/// 				SourceDatabaseName: pulumi.String("aaa"),
/// 				SourceSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("WindowsAuthentication"),
/// 					DataSource:             pulumi.String("aaa"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 			},
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			TargetDbName:          pulumi.String("db1"),
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
/// resource "azure-native_datamigration_databasemigrationssqlvm" "databaseMigrationsSqlVm" {
///   properties = {
///     backup_configuration = {
///       source_location = {
///         file_share = {
///           password = "placeholder"
///           path     = "C:\\aaa\\bbb\\ccc"
///           username = "name"
///         }
///       }
///       target_location = {
///         account_key                 = "abcd"
///         storage_account_resource_id = "account.database.windows.net"
///       }
///     }
///     kind              = "SqlVm"
///     migration_service = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"
///     offline_configuration = {
///       last_backup_name = "last_backup_file_name"
///       offline          = true
///     }
///     scope                = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm"
///     source_database_name = "aaa"
///     source_sql_connection = {
///       authentication           = "WindowsAuthentication"
///       data_source              = "aaa"
///       encrypt_connection       = true
///       password                 = "placeholder"
///       trust_server_certificate = true
///       user_name                = "bbb"
///     }
///   }
///   resource_group_name      = "testrg"
///   sql_virtual_machine_name = "testvm"
///   target_db_name           = "db1"
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlVm;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlVmArgs;
/// import com.pulumi.azurenative.datamigration.inputs.DatabaseMigrationPropertiesSqlVmArgs;
/// import com.pulumi.azurenative.datamigration.inputs.BackupConfigurationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SourceLocationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlFileShareArgs;
/// import com.pulumi.azurenative.datamigration.inputs.TargetLocationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.OfflineConfigurationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInformationArgs;
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
///         var databaseMigrationsSqlVm = new DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", DatabaseMigrationsSqlVmArgs.builder()
///             .properties(DatabaseMigrationPropertiesSqlVmArgs.builder()
///                 .backupConfiguration(BackupConfigurationArgs.builder()
///                     .sourceLocation(SourceLocationArgs.builder()
///                         .fileShare(SqlFileShareArgs.builder()
///                             .password("placeholder")
///                             .path("C:\\aaa\\bbb\\ccc")
///                             .username("name")
///                             .build())
///                         .build())
///                     .targetLocation(TargetLocationArgs.builder()
///                         .accountKey("abcd")
///                         .storageAccountResourceId("account.database.windows.net")
///                         .build())
///                     .build())
///                 .kind("SqlVm")
///                 .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent")
///                 .offlineConfiguration(OfflineConfigurationArgs.builder()
///                     .lastBackupName("last_backup_file_name")
///                     .offline(true)
///                     .build())
///                 .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm")
///                 .sourceDatabaseName("aaa")
///                 .sourceSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("WindowsAuthentication")
///                     .dataSource("aaa")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
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
/// const databaseMigrationsSqlVm = new azure_native.datamigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", {
///     properties: {
///         backupConfiguration: {
///             sourceLocation: {
///                 fileShare: {
///                     password: "placeholder",
///                     path: "C:\\aaa\\bbb\\ccc",
///                     username: "name",
///                 },
///             },
///             targetLocation: {
///                 accountKey: "abcd",
///                 storageAccountResourceId: "account.database.windows.net",
///             },
///         },
///         kind: "SqlVm",
///         migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         offlineConfiguration: {
///             lastBackupName: "last_backup_file_name",
///             offline: true,
///         },
///         scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
///         sourceDatabaseName: "aaa",
///         sourceSqlConnection: {
///             authentication: "WindowsAuthentication",
///             dataSource: "aaa",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     targetDbName: "db1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_sql_vm = azure_native.datamigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm",
///     properties={
///         "backup_configuration": {
///             "source_location": {
///                 "file_share": {
///                     "password": "placeholder",
///                     "path": "C:\\aaa\\bbb\\ccc",
///                     "username": "name",
///                 },
///             },
///             "target_location": {
///                 "account_key": "abcd",
///                 "storage_account_resource_id": "account.database.windows.net",
///             },
///         },
///         "kind": "SqlVm",
///         "migration_service": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         "offline_configuration": {
///             "last_backup_name": "last_backup_file_name",
///             "offline": True,
///         },
///         "scope": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
///         "source_database_name": "aaa",
///         "source_sql_connection": {
///             "authentication": "WindowsAuthentication",
///             "data_source": "aaa",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///     },
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     target_db_name="db1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsSqlVm:
///     type: azure-native:datamigration:DatabaseMigrationsSqlVm
///     properties:
///       properties:
///         backupConfiguration:
///           sourceLocation:
///             fileShare:
///               password: placeholder
///               path: C:\aaa\bbb\ccc
///               username: name
///           targetLocation:
///             accountKey: abcd
///             storageAccountResourceId: account.database.windows.net
///         kind: SqlVm
///         migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent
///         offlineConfiguration:
///           lastBackupName: last_backup_file_name
///           offline: true
///         scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm
///         sourceDatabaseName: aaa
///         sourceSqlConnection:
///           authentication: WindowsAuthentication
///           dataSource: aaa
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
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
///     var databaseMigrationsSqlVm = new AzureNative.DataMigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", new()
///     {
///         Properties = new AzureNative.DataMigration.Inputs.DatabaseMigrationPropertiesSqlVmArgs
///         {
///             BackupConfiguration = new AzureNative.DataMigration.Inputs.BackupConfigurationArgs
///             {
///                 SourceLocation = new AzureNative.DataMigration.Inputs.SourceLocationArgs
///                 {
///                     FileShare = new AzureNative.DataMigration.Inputs.SqlFileShareArgs
///                     {
///                         Password = "placeholder",
///                         Path = "C:\\aaa\\bbb\\ccc",
///                         Username = "name",
///                     },
///                 },
///                 TargetLocation = new AzureNative.DataMigration.Inputs.TargetLocationArgs
///                 {
///                     AccountKey = "abcd",
///                     StorageAccountResourceId = "account.database.windows.net",
///                 },
///             },
///             Kind = "SqlVm",
///             MigrationService = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///             Scope = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
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
///         },
///         ResourceGroupName = "testrg",
///         SqlVirtualMachineName = "testvm",
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
/// 		_, err := datamigration.NewDatabaseMigrationsSqlVm(ctx, "databaseMigrationsSqlVm", &datamigration.DatabaseMigrationsSqlVmArgs{
/// 			Properties: &datamigration.DatabaseMigrationPropertiesSqlVmArgs{
/// 				BackupConfiguration: &datamigration.BackupConfigurationArgs{
/// 					SourceLocation: &datamigration.SourceLocationArgs{
/// 						FileShare: &datamigration.SqlFileShareArgs{
/// 							Password: pulumi.String("placeholder"),
/// 							Path:     pulumi.String("C:\\aaa\\bbb\\ccc"),
/// 							Username: pulumi.String("name"),
/// 						},
/// 					},
/// 					TargetLocation: &datamigration.TargetLocationArgs{
/// 						AccountKey:               pulumi.String("abcd"),
/// 						StorageAccountResourceId: pulumi.String("account.database.windows.net"),
/// 					},
/// 				},
/// 				Kind:               pulumi.String("SqlVm"),
/// 				MigrationService:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"),
/// 				Scope:              pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm"),
/// 				SourceDatabaseName: pulumi.String("aaa"),
/// 				SourceSqlConnection: &datamigration.SqlConnectionInformationArgs{
/// 					Authentication:         pulumi.String("WindowsAuthentication"),
/// 					DataSource:             pulumi.String("aaa"),
/// 					EncryptConnection:      pulumi.Bool(true),
/// 					Password:               pulumi.String("placeholder"),
/// 					TrustServerCertificate: pulumi.Bool(true),
/// 					UserName:               pulumi.String("bbb"),
/// 				},
/// 			},
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlVirtualMachineName: pulumi.String("testvm"),
/// 			TargetDbName:          pulumi.String("db1"),
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
/// resource "azure-native_datamigration_databasemigrationssqlvm" "databaseMigrationsSqlVm" {
///   properties = {
///     backup_configuration = {
///       source_location = {
///         file_share = {
///           password = "placeholder"
///           path     = "C:\\aaa\\bbb\\ccc"
///           username = "name"
///         }
///       }
///       target_location = {
///         account_key                 = "abcd"
///         storage_account_resource_id = "account.database.windows.net"
///       }
///     }
///     kind                 = "SqlVm"
///     migration_service    = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent"
///     scope                = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm"
///     source_database_name = "aaa"
///     source_sql_connection = {
///       authentication           = "WindowsAuthentication"
///       data_source              = "aaa"
///       encrypt_connection       = true
///       password                 = "placeholder"
///       trust_server_certificate = true
///       user_name                = "bbb"
///     }
///   }
///   resource_group_name      = "testrg"
///   sql_virtual_machine_name = "testvm"
///   target_db_name           = "db1"
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
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlVm;
/// import com.pulumi.azurenative.datamigration.DatabaseMigrationsSqlVmArgs;
/// import com.pulumi.azurenative.datamigration.inputs.DatabaseMigrationPropertiesSqlVmArgs;
/// import com.pulumi.azurenative.datamigration.inputs.BackupConfigurationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SourceLocationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlFileShareArgs;
/// import com.pulumi.azurenative.datamigration.inputs.TargetLocationArgs;
/// import com.pulumi.azurenative.datamigration.inputs.SqlConnectionInformationArgs;
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
///         var databaseMigrationsSqlVm = new DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", DatabaseMigrationsSqlVmArgs.builder()
///             .properties(DatabaseMigrationPropertiesSqlVmArgs.builder()
///                 .backupConfiguration(BackupConfigurationArgs.builder()
///                     .sourceLocation(SourceLocationArgs.builder()
///                         .fileShare(SqlFileShareArgs.builder()
///                             .password("placeholder")
///                             .path("C:\\aaa\\bbb\\ccc")
///                             .username("name")
///                             .build())
///                         .build())
///                     .targetLocation(TargetLocationArgs.builder()
///                         .accountKey("abcd")
///                         .storageAccountResourceId("account.database.windows.net")
///                         .build())
///                     .build())
///                 .kind("SqlVm")
///                 .migrationService("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent")
///                 .scope("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm")
///                 .sourceDatabaseName("aaa")
///                 .sourceSqlConnection(SqlConnectionInformationArgs.builder()
///                     .authentication("WindowsAuthentication")
///                     .dataSource("aaa")
///                     .encryptConnection(true)
///                     .password("placeholder")
///                     .trustServerCertificate(true)
///                     .userName("bbb")
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlVirtualMachineName("testvm")
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
/// const databaseMigrationsSqlVm = new azure_native.datamigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm", {
///     properties: {
///         backupConfiguration: {
///             sourceLocation: {
///                 fileShare: {
///                     password: "placeholder",
///                     path: "C:\\aaa\\bbb\\ccc",
///                     username: "name",
///                 },
///             },
///             targetLocation: {
///                 accountKey: "abcd",
///                 storageAccountResourceId: "account.database.windows.net",
///             },
///         },
///         kind: "SqlVm",
///         migrationService: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         scope: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
///         sourceDatabaseName: "aaa",
///         sourceSqlConnection: {
///             authentication: "WindowsAuthentication",
///             dataSource: "aaa",
///             encryptConnection: true,
///             password: "placeholder",
///             trustServerCertificate: true,
///             userName: "bbb",
///         },
///     },
///     resourceGroupName: "testrg",
///     sqlVirtualMachineName: "testvm",
///     targetDbName: "db1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database_migrations_sql_vm = azure_native.datamigration.DatabaseMigrationsSqlVm("databaseMigrationsSqlVm",
///     properties={
///         "backup_configuration": {
///             "source_location": {
///                 "file_share": {
///                     "password": "placeholder",
///                     "path": "C:\\aaa\\bbb\\ccc",
///                     "username": "name",
///                 },
///             },
///             "target_location": {
///                 "account_key": "abcd",
///                 "storage_account_resource_id": "account.database.windows.net",
///             },
///         },
///         "kind": "SqlVm",
///         "migration_service": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent",
///         "scope": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm",
///         "source_database_name": "aaa",
///         "source_sql_connection": {
///             "authentication": "WindowsAuthentication",
///             "data_source": "aaa",
///             "encrypt_connection": True,
///             "password": "placeholder",
///             "trust_server_certificate": True,
///             "user_name": "bbb",
///         },
///     },
///     resource_group_name="testrg",
///     sql_virtual_machine_name="testvm",
///     target_db_name="db1")
///
/// ```
///
/// ```yaml
/// resources:
///   databaseMigrationsSqlVm:
///     type: azure-native:datamigration:DatabaseMigrationsSqlVm
///     properties:
///       properties:
///         backupConfiguration:
///           sourceLocation:
///             fileShare:
///               password: placeholder
///               path: C:\aaa\bbb\ccc
///               username: name
///           targetLocation:
///             accountKey: abcd
///             storageAccountResourceId: account.database.windows.net
///         kind: SqlVm
///         migrationService: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.DataMigration/sqlMigrationServices/testagent
///         scope: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/testvm
///         sourceDatabaseName: aaa
///         sourceSqlConnection:
///           authentication: WindowsAuthentication
///           dataSource: aaa
///           encryptConnection: true
///           password: placeholder
///           trustServerCertificate: true
///           userName: bbb
///       resourceGroupName: testrg
///       sqlVirtualMachineName: testvm
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
/// $ pulumi import azure-native:datamigration:DatabaseMigrationsSqlVm db1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SqlVirtualMachine/sqlVirtualMachines/{sqlVirtualMachineName}/providers/Microsoft.DataMigration/databaseMigrations/{targetDbName}
/// ```
class DatabaseMigrationsSqlVm extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Database Migration Resource properties for SQL Virtual Machine.
  late final pulumi.Output<DatabaseMigrationPropertiesSqlVmResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DatabaseMigrationsSqlVm].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DatabaseMigrationsSqlVm]. {@macro pulumi_datamigration_database_migrations_sql_vm_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DatabaseMigrationsSqlVm(
    String name, {
    DatabaseMigrationsSqlVmArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datamigration:DatabaseMigrationsSqlVm',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DatabaseMigrationPropertiesSqlVmResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseMigrationPropertiesSqlVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [DatabaseMigrationsSqlVm] resource.
  DatabaseMigrationsSqlVm.reference(String urn)
    : super(
        'azure-native:datamigration:DatabaseMigrationsSqlVm',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DatabaseMigrationPropertiesSqlVmResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseMigrationPropertiesSqlVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
