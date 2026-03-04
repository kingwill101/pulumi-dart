import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_database_args.dart';
import 'sql_server_database_resource_properties_response.dart';
import 'system_data_response.dart';

/// Arc Sql Server database
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a Arc Sql Server database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerDatabase = new AzureNative.AzureArcData.SqlServerDatabase("sqlServerDatabase", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlServerDatabaseResourcePropertiesArgs
///         {
///             BackupInformation = new AzureNative.AzureArcData.Inputs.SqlServerDatabaseResourcePropertiesBackupInformationArgs
///             {
///                 LastFullBackup = "2022-05-05T16:26:33.883Z",
///                 LastLogBackup = "2022-05-10T16:26:33.883Z",
///             },
///             BackupPolicy = new AzureNative.AzureArcData.Inputs.BackupPolicyArgs
///             {
///                 DifferentialBackupHours = 12,
///                 FullBackupDays = 1,
///                 RetentionPeriodDays = 1,
///                 TransactionLogBackupMinutes = 30,
///             },
///             CollationName = "SQL_Latin1_General_CP1_CI_AS",
///             CompatibilityLevel = 150,
///             CreateMode = AzureNative.AzureArcData.DatabaseCreateMode.PointInTimeRestore,
///             DataFileSizeMB = 80,
///             DatabaseCreationDate = "2022-04-05T16:26:33.883Z",
///             DatabaseOptions = new AzureNative.AzureArcData.Inputs.SqlServerDatabaseResourcePropertiesDatabaseOptionsArgs
///             {
///                 IsAutoCloseOn = true,
///                 IsAutoCreateStatsOn = true,
///                 IsAutoShrinkOn = true,
///                 IsAutoUpdateStatsOn = true,
///                 IsEncrypted = true,
///                 IsMemoryOptimizationEnabled = true,
///                 IsRemoteDataArchiveEnabled = true,
///                 IsTrustworthyOn = true,
///             },
///             IsReadOnly = true,
///             LogFileSizeMB = 70,
///             RecoveryMode = AzureNative.AzureArcData.RecoveryMode.Full,
///             RestorePointInTime = "2022-05-05T16:26:33.883Z",
///             SizeMB = 150,
///             SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase",
///             SpaceAvailableMB = 100,
///             State = AzureNative.AzureArcData.DatabaseState.Online,
///         },
///         ResourceGroupName = "testrg",
///         SqlServerInstanceName = "testSqlServerInstance",
///         Tags =
///         {
///             { "mytag", "myval" },
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
/// 	azurearcdata "github.com/pulumi/pulumi-azure-native-sdk/azurearcdata/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azurearcdata.NewSqlServerDatabase(ctx, "sqlServerDatabase", &azurearcdata.SqlServerDatabaseArgs{
/// 			DatabaseName: pulumi.String("testdb"),
/// 			Location:     pulumi.String("southeastasia"),
/// 			Properties: &azurearcdata.SqlServerDatabaseResourcePropertiesArgs{
/// 				BackupInformation: &azurearcdata.SqlServerDatabaseResourcePropertiesBackupInformationArgs{
/// 					LastFullBackup: pulumi.String("2022-05-05T16:26:33.883Z"),
/// 					LastLogBackup:  pulumi.String("2022-05-10T16:26:33.883Z"),
/// 				},
/// 				BackupPolicy: &azurearcdata.BackupPolicyArgs{
/// 					DifferentialBackupHours:     pulumi.Int(12),
/// 					FullBackupDays:              pulumi.Int(1),
/// 					RetentionPeriodDays:         pulumi.Int(1),
/// 					TransactionLogBackupMinutes: pulumi.Int(30),
/// 				},
/// 				CollationName:        pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 				CompatibilityLevel:   pulumi.Int(150),
/// 				CreateMode:           pulumi.String(azurearcdata.DatabaseCreateModePointInTimeRestore),
/// 				DataFileSizeMB:       pulumi.Float64(80),
/// 				DatabaseCreationDate: pulumi.String("2022-04-05T16:26:33.883Z"),
/// 				DatabaseOptions: &azurearcdata.SqlServerDatabaseResourcePropertiesDatabaseOptionsArgs{
/// 					IsAutoCloseOn:               pulumi.Bool(true),
/// 					IsAutoCreateStatsOn:         pulumi.Bool(true),
/// 					IsAutoShrinkOn:              pulumi.Bool(true),
/// 					IsAutoUpdateStatsOn:         pulumi.Bool(true),
/// 					IsEncrypted:                 pulumi.Bool(true),
/// 					IsMemoryOptimizationEnabled: pulumi.Bool(true),
/// 					IsRemoteDataArchiveEnabled:  pulumi.Bool(true),
/// 					IsTrustworthyOn:             pulumi.Bool(true),
/// 				},
/// 				IsReadOnly:         pulumi.Bool(true),
/// 				LogFileSizeMB:      pulumi.Float64(70),
/// 				RecoveryMode:       pulumi.String(azurearcdata.RecoveryModeFull),
/// 				RestorePointInTime: pulumi.String("2022-05-05T16:26:33.883Z"),
/// 				SizeMB:             pulumi.Float64(150),
/// 				SourceDatabaseId:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase"),
/// 				SpaceAvailableMB:   pulumi.Float64(100),
/// 				State:              pulumi.String(azurearcdata.DatabaseStateOnline),
/// 			},
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlServerInstanceName: pulumi.String("testSqlServerInstance"),
/// 			Tags: pulumi.StringMap{
/// 				"mytag": pulumi.String("myval"),
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
/// import com.pulumi.azurenative.azurearcdata.SqlServerDatabase;
/// import com.pulumi.azurenative.azurearcdata.SqlServerDatabaseArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerDatabaseResourcePropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerDatabaseResourcePropertiesBackupInformationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.BackupPolicyArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerDatabaseResourcePropertiesDatabaseOptionsArgs;
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
///         var sqlServerDatabase = new SqlServerDatabase("sqlServerDatabase", SqlServerDatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .properties(SqlServerDatabaseResourcePropertiesArgs.builder()
///                 .backupInformation(SqlServerDatabaseResourcePropertiesBackupInformationArgs.builder()
///                     .lastFullBackup("2022-05-05T16:26:33.883Z")
///                     .lastLogBackup("2022-05-10T16:26:33.883Z")
///                     .build())
///                 .backupPolicy(BackupPolicyArgs.builder()
///                     .differentialBackupHours(12)
///                     .fullBackupDays(1)
///                     .retentionPeriodDays(1)
///                     .transactionLogBackupMinutes(30)
///                     .build())
///                 .collationName("SQL_Latin1_General_CP1_CI_AS")
///                 .compatibilityLevel(150)
///                 .createMode("PointInTimeRestore")
///                 .dataFileSizeMB(80.0)
///                 .databaseCreationDate("2022-04-05T16:26:33.883Z")
///                 .databaseOptions(SqlServerDatabaseResourcePropertiesDatabaseOptionsArgs.builder()
///                     .isAutoCloseOn(true)
///                     .isAutoCreateStatsOn(true)
///                     .isAutoShrinkOn(true)
///                     .isAutoUpdateStatsOn(true)
///                     .isEncrypted(true)
///                     .isMemoryOptimizationEnabled(true)
///                     .isRemoteDataArchiveEnabled(true)
///                     .isTrustworthyOn(true)
///                     .build())
///                 .isReadOnly(true)
///                 .logFileSizeMB(70.0)
///                 .recoveryMode("Full")
///                 .restorePointInTime("2022-05-05T16:26:33.883Z")
///                 .sizeMB(150.0)
///                 .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase")
///                 .spaceAvailableMB(100.0)
///                 .state("Online")
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlServerInstanceName("testSqlServerInstance")
///             .tags(Map.of("mytag", "myval"))
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
/// const sqlServerDatabase = new azure_native.azurearcdata.SqlServerDatabase("sqlServerDatabase", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     properties: {
///         backupInformation: {
///             lastFullBackup: "2022-05-05T16:26:33.883Z",
///             lastLogBackup: "2022-05-10T16:26:33.883Z",
///         },
///         backupPolicy: {
///             differentialBackupHours: 12,
///             fullBackupDays: 1,
///             retentionPeriodDays: 1,
///             transactionLogBackupMinutes: 30,
///         },
///         collationName: "SQL_Latin1_General_CP1_CI_AS",
///         compatibilityLevel: 150,
///         createMode: azure_native.azurearcdata.DatabaseCreateMode.PointInTimeRestore,
///         dataFileSizeMB: 80,
///         databaseCreationDate: "2022-04-05T16:26:33.883Z",
///         databaseOptions: {
///             isAutoCloseOn: true,
///             isAutoCreateStatsOn: true,
///             isAutoShrinkOn: true,
///             isAutoUpdateStatsOn: true,
///             isEncrypted: true,
///             isMemoryOptimizationEnabled: true,
///             isRemoteDataArchiveEnabled: true,
///             isTrustworthyOn: true,
///         },
///         isReadOnly: true,
///         logFileSizeMB: 70,
///         recoveryMode: azure_native.azurearcdata.RecoveryMode.Full,
///         restorePointInTime: "2022-05-05T16:26:33.883Z",
///         sizeMB: 150,
///         sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase",
///         spaceAvailableMB: 100,
///         state: azure_native.azurearcdata.DatabaseState.Online,
///     },
///     resourceGroupName: "testrg",
///     sqlServerInstanceName: "testSqlServerInstance",
///     tags: {
///         mytag: "myval",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sql_server_database = azure_native.azurearcdata.SqlServerDatabase("sqlServerDatabase",
///     database_name="testdb",
///     location="southeastasia",
///     properties={
///         "backup_information": {
///             "last_full_backup": "2022-05-05T16:26:33.883Z",
///             "last_log_backup": "2022-05-10T16:26:33.883Z",
///         },
///         "backup_policy": {
///             "differential_backup_hours": 12,
///             "full_backup_days": 1,
///             "retention_period_days": 1,
///             "transaction_log_backup_minutes": 30,
///         },
///         "collation_name": "SQL_Latin1_General_CP1_CI_AS",
///         "compatibility_level": 150,
///         "create_mode": azure_native.azurearcdata.DatabaseCreateMode.POINT_IN_TIME_RESTORE,
///         "data_file_size_mb": 80,
///         "database_creation_date": "2022-04-05T16:26:33.883Z",
///         "database_options": {
///             "is_auto_close_on": True,
///             "is_auto_create_stats_on": True,
///             "is_auto_shrink_on": True,
///             "is_auto_update_stats_on": True,
///             "is_encrypted": True,
///             "is_memory_optimization_enabled": True,
///             "is_remote_data_archive_enabled": True,
///             "is_trustworthy_on": True,
///         },
///         "is_read_only": True,
///         "log_file_size_mb": 70,
///         "recovery_mode": azure_native.azurearcdata.RecoveryMode.FULL,
///         "restore_point_in_time": "2022-05-05T16:26:33.883Z",
///         "size_mb": 150,
///         "source_database_id": "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase",
///         "space_available_mb": 100,
///         "state": azure_native.azurearcdata.DatabaseState.ONLINE,
///     },
///     resource_group_name="testrg",
///     sql_server_instance_name="testSqlServerInstance",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerDatabase:
///     type: azure-native:azurearcdata:SqlServerDatabase
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       properties:
///         backupInformation:
///           lastFullBackup: 2022-05-05T16:26:33.883Z
///           lastLogBackup: 2022-05-10T16:26:33.883Z
///         backupPolicy:
///           differentialBackupHours: 12
///           fullBackupDays: 1
///           retentionPeriodDays: 1
///           transactionLogBackupMinutes: 30
///         collationName: SQL_Latin1_General_CP1_CI_AS
///         compatibilityLevel: 150
///         createMode: PointInTimeRestore
///         dataFileSizeMB: 80
///         databaseCreationDate: 2022-04-05T16:26:33.883Z
///         databaseOptions:
///           isAutoCloseOn: true
///           isAutoCreateStatsOn: true
///           isAutoShrinkOn: true
///           isAutoUpdateStatsOn: true
///           isEncrypted: true
///           isMemoryOptimizationEnabled: true
///           isRemoteDataArchiveEnabled: true
///           isTrustworthyOn: true
///         isReadOnly: true
///         logFileSizeMB: 70
///         recoveryMode: Full
///         restorePointInTime: 2022-05-05T16:26:33.883Z
///         sizeMB: 150
///         sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/testrg/providers/Microsoft.AzureArcData/testSqlServerInstance/testsqlManagedInstance/databases/MyDatabase
///         spaceAvailableMB: 100
///         state: Online
///       resourceGroupName: testrg
///       sqlServerInstanceName: testSqlServerInstance
///       tags:
///         mytag: myval
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
/// $ pulumi import azure-native:azurearcdata:SqlServerDatabase testdb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlServerInstances/{sqlServerInstanceName}/databases/{databaseName}
/// ```
class SqlServerDatabase extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Arc Sql Server database
  late final pulumi.Output<SqlServerDatabaseResourcePropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerDatabase]. {@macro pulumi_azurearcdata_sql_server_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerDatabase(
    String name, {
    SqlServerDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurearcdata:SqlServerDatabase',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerDatabaseResourcePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
