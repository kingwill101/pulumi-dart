import 'package:pulumi/pulumi.dart' as pulumi;
import 'sql_server_instance_args.dart';
import 'sql_server_instance_properties_response.dart';
import 'system_data_response.dart';

/// A SqlServerInstance.
///
/// Uses Azure REST API version 2025-03-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-01-15-preview.
///
/// Other available API versions: 2023-01-15-preview, 2024-01-01, 2024-05-01-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native azurearcdata [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Updates a SQL Server Instance tags.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sqlServerInstance = new AzureNative.AzureArcData.SqlServerInstance("sqlServerInstance", new()
///     {
///         Location = "northeurope",
///         Properties = new AzureNative.AzureArcData.Inputs.SqlServerInstancePropertiesArgs
///         {
///             Authentication = new AzureNative.AzureArcData.Inputs.AuthenticationArgs
///             {
///                 Mode = AzureNative.AzureArcData.Mode.Windows,
///                 SqlServerEntraIdentity = new[]
///                 {
///                     new AzureNative.AzureArcData.Inputs.EntraAuthenticationArgs
///                     {
///                         ClientId = "00000000-1111-2222-3333-444444444444",
///                         IdentityType = AzureNative.AzureArcData.IdentityType.UserAssignedManagedIdentity,
///                     },
///                     new AzureNative.AzureArcData.Inputs.EntraAuthenticationArgs
///                     {
///                         ClientId = "",
///                         IdentityType = AzureNative.AzureArcData.IdentityType.SystemAssignedManagedIdentity,
///                     },
///                 },
///             },
///             BackupPolicy = new AzureNative.AzureArcData.Inputs.BackupPolicyArgs
///             {
///                 DifferentialBackupHours = 12,
///                 FullBackupDays = 1,
///                 RetentionPeriodDays = 1,
///                 TransactionLogBackupMinutes = 30,
///             },
///             ClientConnection = new AzureNative.AzureArcData.Inputs.ClientConnectionArgs
///             {
///                 Enabled = false,
///             },
///             Cores = "4",
///             Edition = AzureNative.AzureArcData.EditionType.Developer,
///             HostType = AzureNative.AzureArcData.HostType.Physical_Server,
///             InstanceName = "name of instance",
///             Migration = new AzureNative.AzureArcData.Inputs.MigrationArgs
///             {
///                 Assessment = new AzureNative.AzureArcData.Inputs.MigrationAssessmentArgs
///                 {
///                     Enabled = false,
///                 },
///             },
///             Monitoring = new AzureNative.AzureArcData.Inputs.MonitoringArgs
///             {
///                 Enabled = false,
///             },
///             ServiceType = AzureNative.AzureArcData.ServiceType.Engine,
///             Version = AzureNative.AzureArcData.SqlVersion.SQL_Server_2012,
///         },
///         ResourceGroupName = "testrg",
///         SqlServerInstanceName = "testsqlServerInstance",
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
/// 		_, err := azurearcdata.NewSqlServerInstance(ctx, "sqlServerInstance", &azurearcdata.SqlServerInstanceArgs{
/// 			Location: pulumi.String("northeurope"),
/// 			Properties: &azurearcdata.SqlServerInstancePropertiesArgs{
/// 				Authentication: &azurearcdata.AuthenticationArgs{
/// 					Mode: pulumi.String(azurearcdata.ModeWindows),
/// 					SqlServerEntraIdentity: azurearcdata.EntraAuthenticationArray{
/// 						&azurearcdata.EntraAuthenticationArgs{
/// 							ClientId:     pulumi.String("00000000-1111-2222-3333-444444444444"),
/// 							IdentityType: pulumi.String(azurearcdata.IdentityTypeUserAssignedManagedIdentity),
/// 						},
/// 						&azurearcdata.EntraAuthenticationArgs{
/// 							ClientId:     pulumi.String(""),
/// 							IdentityType: pulumi.String(azurearcdata.IdentityTypeSystemAssignedManagedIdentity),
/// 						},
/// 					},
/// 				},
/// 				BackupPolicy: &azurearcdata.BackupPolicyArgs{
/// 					DifferentialBackupHours:     pulumi.Int(12),
/// 					FullBackupDays:              pulumi.Int(1),
/// 					RetentionPeriodDays:         pulumi.Int(1),
/// 					TransactionLogBackupMinutes: pulumi.Int(30),
/// 				},
/// 				ClientConnection: &azurearcdata.ClientConnectionArgs{
/// 					Enabled: pulumi.Bool(false),
/// 				},
/// 				Cores:        pulumi.String("4"),
/// 				Edition:      pulumi.String(azurearcdata.EditionTypeDeveloper),
/// 				HostType:     pulumi.String(azurearcdata.HostType_Physical_Server),
/// 				InstanceName: pulumi.String("name of instance"),
/// 				Migration: &azurearcdata.MigrationArgs{
/// 					Assessment: &azurearcdata.MigrationAssessmentArgs{
/// 						Enabled: pulumi.Bool(false),
/// 					},
/// 				},
/// 				Monitoring: &azurearcdata.MonitoringArgs{
/// 					Enabled: pulumi.Bool(false),
/// 				},
/// 				ServiceType: pulumi.String(azurearcdata.ServiceTypeEngine),
/// 				Version:     pulumi.String(azurearcdata.SqlVersion_SQL_Server_2012),
/// 			},
/// 			ResourceGroupName:     pulumi.String("testrg"),
/// 			SqlServerInstanceName: pulumi.String("testsqlServerInstance"),
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
/// import com.pulumi.azurenative.azurearcdata.SqlServerInstance;
/// import com.pulumi.azurenative.azurearcdata.SqlServerInstanceArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.SqlServerInstancePropertiesArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.AuthenticationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.BackupPolicyArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.ClientConnectionArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.MigrationArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.MigrationAssessmentArgs;
/// import com.pulumi.azurenative.azurearcdata.inputs.MonitoringArgs;
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
///         var sqlServerInstance = new SqlServerInstance("sqlServerInstance", SqlServerInstanceArgs.builder()
///             .location("northeurope")
///             .properties(SqlServerInstancePropertiesArgs.builder()
///                 .authentication(AuthenticationArgs.builder()
///                     .mode("Windows")
///                     .sqlServerEntraIdentity(
///                         EntraAuthenticationArgs.builder()
///                             .clientId("00000000-1111-2222-3333-444444444444")
///                             .identityType("UserAssignedManagedIdentity")
///                             .build(),
///                         EntraAuthenticationArgs.builder()
///                             .clientId("")
///                             .identityType("SystemAssignedManagedIdentity")
///                             .build())
///                     .build())
///                 .backupPolicy(BackupPolicyArgs.builder()
///                     .differentialBackupHours(12)
///                     .fullBackupDays(1)
///                     .retentionPeriodDays(1)
///                     .transactionLogBackupMinutes(30)
///                     .build())
///                 .clientConnection(ClientConnectionArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .cores("4")
///                 .edition("Developer")
///                 .hostType("Physical Server")
///                 .instanceName("name of instance")
///                 .migration(MigrationArgs.builder()
///                     .assessment(MigrationAssessmentArgs.builder()
///                         .enabled(false)
///                         .build())
///                     .build())
///                 .monitoring(MonitoringArgs.builder()
///                     .enabled(false)
///                     .build())
///                 .serviceType("Engine")
///                 .version("SQL Server 2012")
///                 .build())
///             .resourceGroupName("testrg")
///             .sqlServerInstanceName("testsqlServerInstance")
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
/// const sqlServerInstance = new azure_native.azurearcdata.SqlServerInstance("sqlServerInstance", {
///     location: "northeurope",
///     properties: {
///         authentication: {
///             mode: azure_native.azurearcdata.Mode.Windows,
///             sqlServerEntraIdentity: [
///                 {
///                     clientId: "00000000-1111-2222-3333-444444444444",
///                     identityType: azure_native.azurearcdata.IdentityType.UserAssignedManagedIdentity,
///                 },
///                 {
///                     clientId: "",
///                     identityType: azure_native.azurearcdata.IdentityType.SystemAssignedManagedIdentity,
///                 },
///             ],
///         },
///         backupPolicy: {
///             differentialBackupHours: 12,
///             fullBackupDays: 1,
///             retentionPeriodDays: 1,
///             transactionLogBackupMinutes: 30,
///         },
///         clientConnection: {
///             enabled: false,
///         },
///         cores: "4",
///         edition: azure_native.azurearcdata.EditionType.Developer,
///         hostType: azure_native.azurearcdata.HostType.Physical_Server,
///         instanceName: "name of instance",
///         migration: {
///             assessment: {
///                 enabled: false,
///             },
///         },
///         monitoring: {
///             enabled: false,
///         },
///         serviceType: azure_native.azurearcdata.ServiceType.Engine,
///         version: azure_native.azurearcdata.SqlVersion.SQL_Server_2012,
///     },
///     resourceGroupName: "testrg",
///     sqlServerInstanceName: "testsqlServerInstance",
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
/// sql_server_instance = azure_native.azurearcdata.SqlServerInstance("sqlServerInstance",
///     location="northeurope",
///     properties={
///         "authentication": {
///             "mode": azure_native.azurearcdata.Mode.WINDOWS,
///             "sql_server_entra_identity": [
///                 {
///                     "client_id": "00000000-1111-2222-3333-444444444444",
///                     "identity_type": azure_native.azurearcdata.IdentityType.USER_ASSIGNED_MANAGED_IDENTITY,
///                 },
///                 {
///                     "client_id": "",
///                     "identity_type": azure_native.azurearcdata.IdentityType.SYSTEM_ASSIGNED_MANAGED_IDENTITY,
///                 },
///             ],
///         },
///         "backup_policy": {
///             "differential_backup_hours": 12,
///             "full_backup_days": 1,
///             "retention_period_days": 1,
///             "transaction_log_backup_minutes": 30,
///         },
///         "client_connection": {
///             "enabled": False,
///         },
///         "cores": "4",
///         "edition": azure_native.azurearcdata.EditionType.DEVELOPER,
///         "host_type": azure_native.azurearcdata.HostType.PHYSICAL_SERVER,
///         "instance_name": "name of instance",
///         "migration": {
///             "assessment": {
///                 "enabled": False,
///             },
///         },
///         "monitoring": {
///             "enabled": False,
///         },
///         "service_type": azure_native.azurearcdata.ServiceType.ENGINE,
///         "version": azure_native.azurearcdata.SqlVersion.SQ_L_SERVER_2012,
///     },
///     resource_group_name="testrg",
///     sql_server_instance_name="testsqlServerInstance",
///     tags={
///         "mytag": "myval",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   sqlServerInstance:
///     type: azure-native:azurearcdata:SqlServerInstance
///     properties:
///       location: northeurope
///       properties:
///         authentication:
///           mode: Windows
///           sqlServerEntraIdentity:
///             - clientId: 00000000-1111-2222-3333-444444444444
///               identityType: UserAssignedManagedIdentity
///             - clientId: ""
///               identityType: SystemAssignedManagedIdentity
///         backupPolicy:
///           differentialBackupHours: 12
///           fullBackupDays: 1
///           retentionPeriodDays: 1
///           transactionLogBackupMinutes: 30
///         clientConnection:
///           enabled: false
///         cores: '4'
///         edition: Developer
///         hostType: Physical Server
///         instanceName: name of instance
///         migration:
///           assessment:
///             enabled: false
///         monitoring:
///           enabled: false
///         serviceType: Engine
///         version: SQL Server 2012
///       resourceGroupName: testrg
///       sqlServerInstanceName: testsqlServerInstance
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
/// $ pulumi import azure-native:azurearcdata:SqlServerInstance testsqlServerInstance /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AzureArcData/sqlServerInstances/{sqlServerInstanceName}
/// ```
class SqlServerInstance extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// null
  late final pulumi.Output<SqlServerInstancePropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SqlServerInstance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SqlServerInstance]. {@macro pulumi_azurearcdata_sql_server_instance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SqlServerInstance(
    String name, {
    SqlServerInstanceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:azurearcdata:SqlServerInstance',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<SqlServerInstancePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
