import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_response.dart';
import 'data_encryption_response.dart';
import 'high_availability_response.dart';
import 'import_source_properties_response.dart';
import 'maintenance_window_response.dart';
import 'my_sqlserver_identity_response.dart';
import 'my_sqlserver_sku_response.dart';
import 'network_response.dart';
import 'server_args.dart';
import 'storage_response.dart';
import 'system_data_response.dart';

/// Represents a server.
///
/// Uses Azure REST API version 2024-02-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-01-01.
///
/// Other available API versions: 2022-01-01, 2022-09-30-preview, 2023-06-01-preview, 2023-06-30, 2023-10-01-preview, 2023-12-01-preview, 2023-12-30, 2024-06-01-preview, 2024-10-01-preview, 2024-12-01-preview, 2024-12-30, 2025-06-01-preview, 2025-12-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbformysql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforMySQL.Server("server", new()
///     {
///         AdministratorLogin = "cloudsa",
///         AdministratorLoginPassword = "your_password",
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforMySQL.Inputs.BackupArgs
///         {
///             BackupIntervalHours = 24,
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforMySQL.EnableStatusEnum.Disabled,
///         },
///         CreateMode = AzureNative.DBforMySQL.CreateMode.Default,
///         HighAvailability = new AzureNative.DBforMySQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforMySQL.HighAvailabilityMode.ZoneRedundant,
///             StandbyAvailabilityZone = "3",
///         },
///         Location = "southeastasia",
///         ResourceGroupName = "testrg",
///         ServerName = "mysqltestserver",
///         Sku = new AzureNative.DBforMySQL.Inputs.MySQLServerSkuArgs
///         {
///             Name = "Standard_D2ds_v4",
///             Tier = AzureNative.DBforMySQL.ServerSkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforMySQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforMySQL.EnableStatusEnum.Disabled,
///             Iops = 600,
///             StorageRedundancy = AzureNative.DBforMySQL.StorageRedundancyEnum.LocalRedundancy,
///             StorageSizeGB = 100,
///         },
///         Tags =
///         {
///             { "num", "1" },
///         },
///         Version = AzureNative.DBforMySQL.ServerVersion.ServerVersion_5_7,
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewServer(ctx, "server", &dbformysql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("cloudsa"),
/// 			AdministratorLoginPassword: pulumi.String("your_password"),
/// 			AvailabilityZone:           pulumi.String("1"),
/// 			Backup: &dbformysql.BackupArgs{
/// 				BackupIntervalHours: pulumi.Int(24),
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbformysql.EnableStatusEnumDisabled),
/// 			},
/// 			CreateMode: pulumi.String(dbformysql.CreateModeDefault),
/// 			HighAvailability: &dbformysql.HighAvailabilityArgs{
/// 				Mode:                    pulumi.String(dbformysql.HighAvailabilityModeZoneRedundant),
/// 				StandbyAvailabilityZone: pulumi.String("3"),
/// 			},
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ServerName:        pulumi.String("mysqltestserver"),
/// 			Sku: &dbformysql.MySQLServerSkuArgs{
/// 				Name: pulumi.String("Standard_D2ds_v4"),
/// 				Tier: pulumi.String(dbformysql.ServerSkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbformysql.StorageArgs{
/// 				AutoGrow:          pulumi.String(dbformysql.EnableStatusEnumDisabled),
/// 				Iops:              pulumi.Int(600),
/// 				StorageRedundancy: pulumi.String(dbformysql.StorageRedundancyEnumLocalRedundancy),
/// 				StorageSizeGB:     pulumi.Int(100),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"num": pulumi.String("1"),
/// 			},
/// 			Version: pulumi.String(dbformysql.ServerVersion_5_7),
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
/// resource "azure-native_dbformysql_server" "server" {
///   administrator_login          = "cloudsa"
///   administrator_login_password = "your_password"
///   availability_zone            = "1"
///   backup = {
///     backup_interval_hours = 24
///     backup_retention_days = 7
///     geo_redundant_backup  = "Disabled"
///   }
///   create_mode = "Default"
///   high_availability = {
///     mode                      = "ZoneRedundant"
///     standby_availability_zone = "3"
///   }
///   location            = "southeastasia"
///   resource_group_name = "testrg"
///   server_name         = "mysqltestserver"
///   sku = {
///     name = "Standard_D2ds_v4"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow          = "Disabled"
///     iops               = 600
///     storage_redundancy = "LocalRedundancy"
///     storage_size_gb    = 100
///   }
///   tags = {
///     "num" = "1"
///   }
///   version = "5.7"
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
/// import com.pulumi.azurenative.dbformysql.Server;
/// import com.pulumi.azurenative.dbformysql.ServerArgs;
/// import com.pulumi.azurenative.dbformysql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbformysql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbformysql.inputs.MySQLServerSkuArgs;
/// import com.pulumi.azurenative.dbformysql.inputs.StorageArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .administratorLogin("cloudsa")
///             .administratorLoginPassword("your_password")
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupIntervalHours(24)
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Disabled")
///                 .build())
///             .createMode("Default")
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("ZoneRedundant")
///                 .standbyAvailabilityZone("3")
///                 .build())
///             .location("southeastasia")
///             .resourceGroupName("testrg")
///             .serverName("mysqltestserver")
///             .sku(MySQLServerSkuArgs.builder()
///                 .name("Standard_D2ds_v4")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .iops(600)
///                 .storageRedundancy("LocalRedundancy")
///                 .storageSizeGB(100)
///                 .build())
///             .tags(Map.of("num", "1"))
///             .version("5.7")
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
/// const server = new azure_native.dbformysql.Server("server", {
///     administratorLogin: "cloudsa",
///     administratorLoginPassword: "your_password",
///     availabilityZone: "1",
///     backup: {
///         backupIntervalHours: 24,
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbformysql.EnableStatusEnum.Disabled,
///     },
///     createMode: azure_native.dbformysql.CreateMode.Default,
///     highAvailability: {
///         mode: azure_native.dbformysql.HighAvailabilityMode.ZoneRedundant,
///         standbyAvailabilityZone: "3",
///     },
///     location: "southeastasia",
///     resourceGroupName: "testrg",
///     serverName: "mysqltestserver",
///     sku: {
///         name: "Standard_D2ds_v4",
///         tier: azure_native.dbformysql.ServerSkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbformysql.EnableStatusEnum.Disabled,
///         iops: 600,
///         storageRedundancy: azure_native.dbformysql.StorageRedundancyEnum.LocalRedundancy,
///         storageSizeGB: 100,
///     },
///     tags: {
///         num: "1",
///     },
///     version: azure_native.dbformysql.ServerVersion.ServerVersion_5_7,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformysql.Server("server",
///     administrator_login="cloudsa",
///     administrator_login_password="your_password",
///     availability_zone="1",
///     backup={
///         "backup_interval_hours": 24,
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbformysql.EnableStatusEnum.DISABLED,
///     },
///     create_mode=azure_native.dbformysql.CreateMode.DEFAULT,
///     high_availability={
///         "mode": azure_native.dbformysql.HighAvailabilityMode.ZONE_REDUNDANT,
///         "standby_availability_zone": "3",
///     },
///     location="southeastasia",
///     resource_group_name="testrg",
///     server_name="mysqltestserver",
///     sku={
///         "name": "Standard_D2ds_v4",
///         "tier": azure_native.dbformysql.ServerSkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbformysql.EnableStatusEnum.DISABLED,
///         "iops": 600,
///         "storage_redundancy": azure_native.dbformysql.StorageRedundancyEnum.LOCAL_REDUNDANCY,
///         "storage_size_gb": 100,
///     },
///     tags={
///         "num": "1",
///     },
///     version=azure_native.dbformysql.ServerVersion.SERVER_VERSION_5_7)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformysql:Server
///     properties:
///       administratorLogin: cloudsa
///       administratorLoginPassword: your_password
///       availabilityZone: '1'
///       backup:
///         backupIntervalHours: 24
///         backupRetentionDays: 7
///         geoRedundantBackup: Disabled
///       createMode: Default
///       highAvailability:
///         mode: ZoneRedundant
///         standbyAvailabilityZone: '3'
///       location: southeastasia
///       resourceGroupName: testrg
///       serverName: mysqltestserver
///       sku:
///         name: Standard_D2ds_v4
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         iops: 600
///         storageRedundancy: LocalRedundancy
///         storageSizeGB: 100
///       tags:
///         num: '1'
///       version: '5.7'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a replica server
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforMySQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforMySQL.CreateMode.Replica,
///         Location = "SoutheastAsia",
///         ResourceGroupName = "testgr",
///         ServerName = "replica-server",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server",
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewServer(ctx, "server", &dbformysql.ServerArgs{
/// 			CreateMode:             pulumi.String(dbformysql.CreateModeReplica),
/// 			Location:               pulumi.String("SoutheastAsia"),
/// 			ResourceGroupName:      pulumi.String("testgr"),
/// 			ServerName:             pulumi.String("replica-server"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server"),
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
/// resource "azure-native_dbformysql_server" "server" {
///   create_mode               = "Replica"
///   location                  = "SoutheastAsia"
///   resource_group_name       = "testgr"
///   server_name               = "replica-server"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server"
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
/// import com.pulumi.azurenative.dbformysql.Server;
/// import com.pulumi.azurenative.dbformysql.ServerArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .createMode("Replica")
///             .location("SoutheastAsia")
///             .resourceGroupName("testgr")
///             .serverName("replica-server")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server")
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
/// const server = new azure_native.dbformysql.Server("server", {
///     createMode: azure_native.dbformysql.CreateMode.Replica,
///     location: "SoutheastAsia",
///     resourceGroupName: "testgr",
///     serverName: "replica-server",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformysql.Server("server",
///     create_mode=azure_native.dbformysql.CreateMode.REPLICA,
///     location="SoutheastAsia",
///     resource_group_name="testgr",
///     server_name="replica-server",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformysql:Server
///     properties:
///       createMode: Replica
///       location: SoutheastAsia
///       resourceGroupName: testgr
///       serverName: replica-server
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/testgr/providers/Microsoft.DBforMySQL/flexibleServers/source-server
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a server as a point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforMySQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforMySQL.CreateMode.PointInTimeRestore,
///         Location = "SoutheastAsia",
///         ResourceGroupName = "TargetResourceGroup",
///         RestorePointInTime = "2021-06-24T00:00:37.467Z",
///         ServerName = "targetserver",
///         Sku = new AzureNative.DBforMySQL.Inputs.MySQLServerSkuArgs
///         {
///             Name = "Standard_D14_v2",
///             Tier = AzureNative.DBforMySQL.ServerSkuTier.GeneralPurpose,
///         },
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver",
///         Tags =
///         {
///             { "num", "1" },
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
/// 	dbformysql "github.com/pulumi/pulumi-azure-native-sdk/dbformysql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformysql.NewServer(ctx, "server", &dbformysql.ServerArgs{
/// 			CreateMode:         pulumi.String(dbformysql.CreateModePointInTimeRestore),
/// 			Location:           pulumi.String("SoutheastAsia"),
/// 			ResourceGroupName:  pulumi.String("TargetResourceGroup"),
/// 			RestorePointInTime: pulumi.String("2021-06-24T00:00:37.467Z"),
/// 			ServerName:         pulumi.String("targetserver"),
/// 			Sku: &dbformysql.MySQLServerSkuArgs{
/// 				Name: pulumi.String("Standard_D14_v2"),
/// 				Tier: pulumi.String(dbformysql.ServerSkuTierGeneralPurpose),
/// 			},
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver"),
/// 			Tags: pulumi.StringMap{
/// 				"num": pulumi.String("1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_dbformysql_server" "server" {
///   create_mode           = "PointInTimeRestore"
///   location              = "SoutheastAsia"
///   resource_group_name   = "TargetResourceGroup"
///   restore_point_in_time = "2021-06-24T00:00:37.467Z"
///   server_name           = "targetserver"
///   sku = {
///     name = "Standard_D14_v2"
///     tier = "GeneralPurpose"
///   }
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver"
///   tags = {
///     "num" = "1"
///   }
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
/// import com.pulumi.azurenative.dbformysql.Server;
/// import com.pulumi.azurenative.dbformysql.ServerArgs;
/// import com.pulumi.azurenative.dbformysql.inputs.MySQLServerSkuArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .createMode("PointInTimeRestore")
///             .location("SoutheastAsia")
///             .resourceGroupName("TargetResourceGroup")
///             .restorePointInTime("2021-06-24T00:00:37.467Z")
///             .serverName("targetserver")
///             .sku(MySQLServerSkuArgs.builder()
///                 .name("Standard_D14_v2")
///                 .tier("GeneralPurpose")
///                 .build())
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver")
///             .tags(Map.of("num", "1"))
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
/// const server = new azure_native.dbformysql.Server("server", {
///     createMode: azure_native.dbformysql.CreateMode.PointInTimeRestore,
///     location: "SoutheastAsia",
///     resourceGroupName: "TargetResourceGroup",
///     restorePointInTime: "2021-06-24T00:00:37.467Z",
///     serverName: "targetserver",
///     sku: {
///         name: "Standard_D14_v2",
///         tier: azure_native.dbformysql.ServerSkuTier.GeneralPurpose,
///     },
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver",
///     tags: {
///         num: "1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformysql.Server("server",
///     create_mode=azure_native.dbformysql.CreateMode.POINT_IN_TIME_RESTORE,
///     location="SoutheastAsia",
///     resource_group_name="TargetResourceGroup",
///     restore_point_in_time="2021-06-24T00:00:37.467Z",
///     server_name="targetserver",
///     sku={
///         "name": "Standard_D14_v2",
///         "tier": azure_native.dbformysql.ServerSkuTier.GENERAL_PURPOSE,
///     },
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver",
///     tags={
///         "num": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformysql:Server
///     properties:
///       createMode: PointInTimeRestore
///       location: SoutheastAsia
///       resourceGroupName: TargetResourceGroup
///       restorePointInTime: 2021-06-24T00:00:37.467Z
///       serverName: targetserver
///       sku:
///         name: Standard_D14_v2
///         tier: GeneralPurpose
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMySQL/flexibleServers/sourceserver
///       tags:
///         num: '1'
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
/// $ pulumi import azure-native:dbformysql:Server mysqltestserver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMySQL/flexibleServers/{serverName}
/// ```
class Server extends pulumi.CustomResource {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  late final pulumi.Output<String?> administratorLogin;
  /// availability Zone information of the server.
  late final pulumi.Output<String?> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backup related properties of a server.
  late final pulumi.Output<BackupResponse?> backup;
  /// The Data Encryption for CMK.
  late final pulumi.Output<DataEncryptionResponse?> dataEncryption;
  /// The fully qualified domain name of a server.
  late final pulumi.Output<String> fullyQualifiedDomainName;
  /// High availability related properties of a server.
  late final pulumi.Output<HighAvailabilityResponse?> highAvailability;
  /// The cmk identity for the server.
  late final pulumi.Output<MySQLServerIdentityResponse?> identity;
  /// Source properties for import from storage.
  late final pulumi.Output<ImportSourcePropertiesResponse?> importSourceProperties;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maintenance window of a server.
  late final pulumi.Output<MaintenanceWindowResponse?> maintenanceWindow;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network related properties of a server.
  late final pulumi.Output<NetworkResponse?> network;
  /// PrivateEndpointConnections related properties of a server.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// The maximum number of replicas that a primary server can have.
  late final pulumi.Output<int> replicaCapacity;
  /// The replication role.
  late final pulumi.Output<String?> replicationRole;
  /// The SKU (pricing tier) of the server.
  late final pulumi.Output<MySQLServerSkuResponse?> sku;
  /// The source MySQL server id.
  late final pulumi.Output<String?> sourceServerResourceId;
  /// The state of a server.
  late final pulumi.Output<String> state;
  /// Storage related properties of a server.
  late final pulumi.Output<StorageResponse?> storage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Server version.
  late final pulumi.Output<String?> version;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_dbformysql_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformysql:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String?>('administratorLogin');
    availabilityZone = registerOutput<String?>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backup = registerOutput<BackupResponse?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataEncryption = registerOutput<DataEncryptionResponse?>('dataEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    highAvailability = registerOutput<HighAvailabilityResponse?>('highAvailability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HighAvailabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<MySQLServerIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MySQLServerIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    importSourceProperties = registerOutput<ImportSourcePropertiesResponse?>('importSourceProperties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImportSourcePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<MaintenanceWindowResponse?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    network = registerOutput<NetworkResponse?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    replicaCapacity = registerOutput<int>('replicaCapacity');
    replicationRole = registerOutput<String?>('replicationRole');
    sku = registerOutput<MySQLServerSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MySQLServerSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceServerResourceId = registerOutput<String?>('sourceServerResourceId');
    state = registerOutput<String>('state');
    storage = registerOutput<StorageResponse?>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
