import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_config_response.dart';
import 'backup_response.dart';
import 'cluster_response.dart';
import 'data_encryption_response.dart';
import 'high_availability_response.dart';
import 'maintenance_window_response.dart';
import 'network_response.dart';
import 'replica_response.dart';
import 'server_args.dart';
import 'sku_response.dart';
import 'storage_response.dart';
import 'system_data_response.dart';
import 'user_assigned_identity_response.dart';

/// Properties of a server.
///
/// Uses Azure REST API version 2025-08-01. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2022-12-01, 2023-03-01-preview, 2023-06-01-preview, 2023-12-01-preview, 2024-03-01-preview, 2024-08-01, 2024-11-01-preview, 2025-01-01-preview, 2025-06-01-preview, 2026-01-01-preview, 2026-04-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new elastic cluster.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "examplelogin",
///         AdministratorLoginPassword = "examplepassword",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Disabled,
///         },
///         Cluster = new AzureNative.DBforPostgreSQL.Inputs.ClusterArgs
///         {
///             ClusterSize = 2,
///             DefaultDatabaseName = "clusterdb",
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.Disabled,
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             PublicNetworkAccess = AzureNative.DBforPostgreSQL.ServerPublicNetworkAccessState.Disabled,
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 256,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P15,
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_17,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("examplelogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupDisabled),
/// 			},
/// 			Cluster: &dbforpostgresql.ClusterArgs{
/// 				ClusterSize:         pulumi.Int(2),
/// 				DefaultDatabaseName: pulumi.String("clusterdb"),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeDisabled),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				PublicNetworkAccess: pulumi.String(dbforpostgresql.ServerPublicNetworkAccessStateDisabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(256),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP15),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_17),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "examplelogin"
///   administrator_login_password = "examplepassword"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Disabled"
///   }
///   cluster = {
///     cluster_size          = 2
///     default_database_name = "clusterdb"
///   }
///   create_mode = "Create"
///   high_availability = {
///     mode = "Disabled"
///   }
///   location = "eastus"
///   network = {
///     public_network_access = "Disabled"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 256
///     tier            = "P15"
///   }
///   version = "17"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.ClusterArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("examplelogin")
///             .administratorLoginPassword("examplepassword")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Disabled")
///                 .build())
///             .cluster(ClusterArgs.builder()
///                 .clusterSize(2)
///                 .defaultDatabaseName("clusterdb")
///                 .build())
///             .createMode("Create")
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("Disabled")
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .publicNetworkAccess("Disabled")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(256)
///                 .tier("P15")
///                 .build())
///             .version("17")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "examplelogin",
///     administratorLoginPassword: "examplepassword",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Disabled,
///     },
///     cluster: {
///         clusterSize: 2,
///         defaultDatabaseName: "clusterdb",
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.Disabled,
///     },
///     location: "eastus",
///     network: {
///         publicNetworkAccess: azure_native.dbforpostgresql.ServerPublicNetworkAccessState.Disabled,
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 256,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P15,
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_17,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="examplelogin",
///     administrator_login_password="examplepassword",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.DISABLED,
///     },
///     cluster={
///         "cluster_size": 2,
///         "default_database_name": "clusterdb",
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.DISABLED,
///     },
///     location="eastus",
///     network={
///         "public_network_access": azure_native.dbforpostgresql.ServerPublicNetworkAccessState.DISABLED,
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 256,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P15,
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_17)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: examplelogin
///       administratorLoginPassword: examplepassword
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Disabled
///       cluster:
///         clusterSize: 2
///         defaultDatabaseName: clusterdb
///       createMode: Create
///       highAvailability:
///         mode: Disabled
///       location: eastus
///       network:
///         publicNetworkAccess: Disabled
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 256
///         tier: P15
///       version: '17'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server in Microsoft owned virtual network with zone redundant high availability.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "exampleadministratorlogin",
///         AdministratorLoginPassword = "examplepassword",
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Enabled,
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             PublicNetworkAccess = AzureNative.DBforPostgreSQL.ServerPublicNetworkAccessState.Enabled,
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 512,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P20,
///         },
///         Tags =
///         {
///             { "InCustomerVnet", "false" },
///             { "InMicrosoftVnet", "true" },
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_18,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			AvailabilityZone:           pulumi.String("1"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupEnabled),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeZoneRedundant),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				PublicNetworkAccess: pulumi.String(dbforpostgresql.ServerPublicNetworkAccessStateEnabled),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(512),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP20),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"InCustomerVnet":  pulumi.String("false"),
/// 				"InMicrosoftVnet": pulumi.String("true"),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_18),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "exampleadministratorlogin"
///   administrator_login_password = "examplepassword"
///   availability_zone            = "1"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Enabled"
///   }
///   create_mode = "Create"
///   high_availability = {
///     mode = "ZoneRedundant"
///   }
///   location = "eastus"
///   network = {
///     public_network_access = "Enabled"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 512
///     tier            = "P20"
///   }
///   tags = {
///     "InCustomerVnet"  = "false"
///     "InMicrosoftVnet" = "true"
///   }
///   version = "18"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("exampleadministratorlogin")
///             .administratorLoginPassword("examplepassword")
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Enabled")
///                 .build())
///             .createMode("Create")
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("ZoneRedundant")
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .publicNetworkAccess("Enabled")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(512)
///                 .tier("P20")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("InCustomerVnet", "false"),
///                 Map.entry("InMicrosoftVnet", "true")
///             ))
///             .version("18")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "exampleadministratorlogin",
///     administratorLoginPassword: "examplepassword",
///     availabilityZone: "1",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Enabled,
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///     },
///     location: "eastus",
///     network: {
///         publicNetworkAccess: azure_native.dbforpostgresql.ServerPublicNetworkAccessState.Enabled,
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 512,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     tags: {
///         InCustomerVnet: "false",
///         InMicrosoftVnet: "true",
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_18,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="exampleadministratorlogin",
///     administrator_login_password="examplepassword",
///     availability_zone="1",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.ENABLED,
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZONE_REDUNDANT,
///     },
///     location="eastus",
///     network={
///         "public_network_access": azure_native.dbforpostgresql.ServerPublicNetworkAccessState.ENABLED,
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 512,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     tags={
///         "InCustomerVnet": "false",
///         "InMicrosoftVnet": "true",
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_18)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: exampleadministratorlogin
///       administratorLoginPassword: examplepassword
///       availabilityZone: '1'
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Enabled
///       createMode: Create
///       highAvailability:
///         mode: ZoneRedundant
///       location: eastus
///       network:
///         publicNetworkAccess: Enabled
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 512
///         tier: P20
///       tags:
///         InCustomerVnet: 'false'
///         InMicrosoftVnet: 'true'
///       version: '18'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server in your own virtual network with same zone high availability.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "exampleadministratorlogin",
///         AdministratorLoginPassword = "examplepassword",
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Enabled,
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.SameZone,
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             DelegatedSubnetResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///             PrivateDnsZoneArmResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database",
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 512,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P20,
///         },
///         Tags =
///         {
///             { "InCustomerVnet", "true" },
///             { "InMicrosoftVnet", "false" },
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_18,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			AvailabilityZone:           pulumi.String("1"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupEnabled),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeSameZone),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				DelegatedSubnetResourceId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"),
/// 				PrivateDnsZoneArmResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(512),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP20),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"InCustomerVnet":  pulumi.String("true"),
/// 				"InMicrosoftVnet": pulumi.String("false"),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_18),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "exampleadministratorlogin"
///   administrator_login_password = "examplepassword"
///   availability_zone            = "1"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Enabled"
///   }
///   create_mode = "Create"
///   high_availability = {
///     mode = "SameZone"
///   }
///   location = "eastus"
///   network = {
///     delegated_subnet_resource_id     = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"
///     private_dns_zone_arm_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 512
///     tier            = "P20"
///   }
///   tags = {
///     "InCustomerVnet"  = "true"
///     "InMicrosoftVnet" = "false"
///   }
///   version = "18"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("exampleadministratorlogin")
///             .administratorLoginPassword("examplepassword")
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Enabled")
///                 .build())
///             .createMode("Create")
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("SameZone")
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .delegatedSubnetResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet")
///                 .privateDnsZoneArmResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(512)
///                 .tier("P20")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("InCustomerVnet", "true"),
///                 Map.entry("InMicrosoftVnet", "false")
///             ))
///             .version("18")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "exampleadministratorlogin",
///     administratorLoginPassword: "examplepassword",
///     availabilityZone: "1",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Enabled,
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.SameZone,
///     },
///     location: "eastus",
///     network: {
///         delegatedSubnetResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         privateDnsZoneArmResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database",
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 512,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     tags: {
///         InCustomerVnet: "true",
///         InMicrosoftVnet: "false",
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_18,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="exampleadministratorlogin",
///     administrator_login_password="examplepassword",
///     availability_zone="1",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.ENABLED,
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.SAME_ZONE,
///     },
///     location="eastus",
///     network={
///         "delegated_subnet_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         "private_dns_zone_arm_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database",
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 512,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     tags={
///         "InCustomerVnet": "true",
///         "InMicrosoftVnet": "false",
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_18)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: exampleadministratorlogin
///       administratorLoginPassword: examplepassword
///       availabilityZone: '1'
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Enabled
///       createMode: Create
///       highAvailability:
///         mode: SameZone
///       location: eastus
///       network:
///         delegatedSubnetResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet
///         privateDnsZoneArmResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.private.postgres.database
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 512
///         tier: P20
///       tags:
///         InCustomerVnet: 'true'
///         InMicrosoftVnet: 'false'
///       version: '18'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server using a backup of a server that was deleted or dropped recently.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.ReviveDropped,
///         Location = "eastus",
///         PointInTimeUTC = "2025-06-01T18:30:22.123456Z",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver",
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			CreateMode:             pulumi.String(dbforpostgresql.CreateModeReviveDropped),
/// 			Location:               pulumi.String("eastus"),
/// 			PointInTimeUTC:         pulumi.String("2025-06-01T18:30:22.123456Z"),
/// 			ResourceGroupName:      pulumi.String("exampleresourcegroup"),
/// 			ServerName:             pulumi.String("exampleserver"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver"),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   create_mode               = "ReviveDropped"
///   location                  = "eastus"
///   point_in_time_utc         = "2025-06-01T18:30:22.123456Z"
///   resource_group_name       = "exampleresourcegroup"
///   server_name               = "exampleserver"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
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
///             .createMode("ReviveDropped")
///             .location("eastus")
///             .pointInTimeUTC("2025-06-01T18:30:22.123456Z")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     createMode: azure_native.dbforpostgresql.CreateMode.ReviveDropped,
///     location: "eastus",
///     pointInTimeUTC: "2025-06-01T18:30:22.123456Z",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     create_mode=azure_native.dbforpostgresql.CreateMode.REVIVE_DROPPED,
///     location="eastus",
///     point_in_time_utc="2025-06-01T18:30:22.123456Z",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       createMode: ReviveDropped
///       location: eastus
///       pointInTimeUTC: 2025-06-01T18:30:22.123456Z
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/exampledeletedserver
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server using a point in time restore of a backup of an existing server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.PointInTimeRestore,
///         Location = "eastus",
///         PointInTimeUTC = "2025-06-01T18:35:22.123456Z",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			CreateMode:             pulumi.String(dbforpostgresql.CreateModePointInTimeRestore),
/// 			Location:               pulumi.String("eastus"),
/// 			PointInTimeUTC:         pulumi.String("2025-06-01T18:35:22.123456Z"),
/// 			ResourceGroupName:      pulumi.String("exampleresourcegroup"),
/// 			ServerName:             pulumi.String("exampleserver"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   create_mode               = "PointInTimeRestore"
///   location                  = "eastus"
///   point_in_time_utc         = "2025-06-01T18:35:22.123456Z"
///   resource_group_name       = "exampleresourcegroup"
///   server_name               = "exampleserver"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
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
///             .location("eastus")
///             .pointInTimeUTC("2025-06-01T18:35:22.123456Z")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     createMode: azure_native.dbforpostgresql.CreateMode.PointInTimeRestore,
///     location: "eastus",
///     pointInTimeUTC: "2025-06-01T18:35:22.123456Z",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     create_mode=azure_native.dbforpostgresql.CreateMode.POINT_IN_TIME_RESTORE,
///     location="eastus",
///     point_in_time_utc="2025-06-01T18:35:22.123456Z",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       createMode: PointInTimeRestore
///       location: eastus
///       pointInTimeUTC: 2025-06-01T18:35:22.123456Z
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server using a restore of a geographically redundant backup of an existing server, with data encryption based on customer managed key with automatic key version update.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.GeoRestore,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             GeoBackupKeyURI = "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey",
///             GeoBackupUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///             PrimaryKeyURI = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///             PrimaryUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///             Type = AzureNative.DBforPostgreSQL.DataEncryptionType.AzureKeyVault,
///         },
///         Identity = new AzureNative.DBforPostgreSQL.Inputs.UserAssignedIdentityArgs
///         {
///             Type = AzureNative.DBforPostgreSQL.IdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity", null },
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", null },
///             },
///         },
///         Location = "eastus",
///         PointInTimeUTC = "2025-06-01T18:35:22.123456Z",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeGeoRestore),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				GeoBackupKeyURI:                 pulumi.String("https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey"),
/// 				GeoBackupUserAssignedIdentityId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity"),
/// 				PrimaryKeyURI:                   pulumi.String("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey"),
/// 				PrimaryUserAssignedIdentityId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"),
/// 				Type:                            pulumi.String(dbforpostgresql.DataEncryptionTypeAzureKeyVault),
/// 			},
/// 			Identity: &dbforpostgresql.UserAssignedIdentityArgs{
/// 				Type: pulumi.String(dbforpostgresql.IdentityTypeUserAssigned),
/// 				UserAssignedIdentities: dbforpostgresql.UserIdentityMap{
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": &dbforpostgresql.UserIdentityArgs{},
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity":      &dbforpostgresql.UserIdentityArgs{},
/// 				},
/// 			},
/// 			Location:               pulumi.String("eastus"),
/// 			PointInTimeUTC:         pulumi.String("2025-06-01T18:35:22.123456Z"),
/// 			ResourceGroupName:      pulumi.String("exampleresourcegroup"),
/// 			ServerName:             pulumi.String("exampleserver"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   create_mode = "GeoRestore"
///   data_encryption = {
///     geo_backup_key_uri                   = "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey"
///     geo_backup_user_assigned_identity_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity"
///     primary_key_uri                      = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey"
///     primary_user_assigned_identity_id    = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"
///     type                                 = "AzureKeyVault"
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity" = {}
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"      = {}
///     }
///   }
///   location                  = "eastus"
///   point_in_time_utc         = "2025-06-01T18:35:22.123456Z"
///   resource_group_name       = "exampleresourcegroup"
///   server_name               = "exampleserver"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.UserAssignedIdentityArgs;
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
///             .createMode("GeoRestore")
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .geoBackupKeyURI("https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey")
///                 .geoBackupUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity")
///                 .primaryKeyURI("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey")
///                 .primaryUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity")
///                 .type("AzureKeyVault")
///                 .build())
///             .identity(UserAssignedIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.ofEntries(
///                     Map.entry("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity", UserIdentityArgs.builder()
///                         .build()),
///                     Map.entry("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", UserIdentityArgs.builder()
///                         .build())
///                 ))
///                 .build())
///             .location("eastus")
///             .pointInTimeUTC("2025-06-01T18:35:22.123456Z")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     createMode: azure_native.dbforpostgresql.CreateMode.GeoRestore,
///     dataEncryption: {
///         geoBackupKeyURI: "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey",
///         geoBackupUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///         primaryKeyURI: "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///         primaryUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         type: azure_native.dbforpostgresql.DataEncryptionType.AzureKeyVault,
///     },
///     identity: {
///         type: azure_native.dbforpostgresql.IdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": {},
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location: "eastus",
///     pointInTimeUTC: "2025-06-01T18:35:22.123456Z",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     create_mode=azure_native.dbforpostgresql.CreateMode.GEO_RESTORE,
///     data_encryption={
///         "geo_backup_key_uri": "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey",
///         "geo_backup_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///         "primary_key_uri": "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///         "primary_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         "type": azure_native.dbforpostgresql.DataEncryptionType.AZURE_KEY_VAULT,
///     },
///     identity={
///         "type": azure_native.dbforpostgresql.IdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": {},
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location="eastus",
///     point_in_time_utc="2025-06-01T18:35:22.123456Z",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       createMode: GeoRestore
///       dataEncryption:
///         geoBackupKeyURI: https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey
///         geoBackupUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity
///         primaryKeyURI: https://exampleprimarykeyvault.vault.azure.net/keys/examplekey
///         primaryUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///         type: AzureKeyVault
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity
///           : {}
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///           : {}
///       location: eastus
///       pointInTimeUTC: 2025-06-01T18:35:22.123456Z
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server using a restore of a geographically redundant backup of an existing server, with data encryption based on customer managed key.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.GeoRestore,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             GeoBackupKeyURI = "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
///             GeoBackupUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///             PrimaryKeyURI = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///             PrimaryUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///             Type = AzureNative.DBforPostgreSQL.DataEncryptionType.AzureKeyVault,
///         },
///         Identity = new AzureNative.DBforPostgreSQL.Inputs.UserAssignedIdentityArgs
///         {
///             Type = AzureNative.DBforPostgreSQL.IdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity", null },
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", null },
///             },
///         },
///         Location = "eastus",
///         PointInTimeUTC = "2025-06-01T18:35:22.123456Z",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeGeoRestore),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				GeoBackupKeyURI:                 pulumi.String("https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"),
/// 				GeoBackupUserAssignedIdentityId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity"),
/// 				PrimaryKeyURI:                   pulumi.String("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 				PrimaryUserAssignedIdentityId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"),
/// 				Type:                            pulumi.String(dbforpostgresql.DataEncryptionTypeAzureKeyVault),
/// 			},
/// 			Identity: &dbforpostgresql.UserAssignedIdentityArgs{
/// 				Type: pulumi.String(dbforpostgresql.IdentityTypeUserAssigned),
/// 				UserAssignedIdentities: dbforpostgresql.UserIdentityMap{
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": &dbforpostgresql.UserIdentityArgs{},
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity":      &dbforpostgresql.UserIdentityArgs{},
/// 				},
/// 			},
/// 			Location:               pulumi.String("eastus"),
/// 			PointInTimeUTC:         pulumi.String("2025-06-01T18:35:22.123456Z"),
/// 			ResourceGroupName:      pulumi.String("exampleresourcegroup"),
/// 			ServerName:             pulumi.String("exampleserver"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   create_mode = "GeoRestore"
///   data_encryption = {
///     geo_backup_key_uri                   = "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy"
///     geo_backup_user_assigned_identity_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity"
///     primary_key_uri                      = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///     primary_user_assigned_identity_id    = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"
///     type                                 = "AzureKeyVault"
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity" = {}
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"      = {}
///     }
///   }
///   location                  = "eastus"
///   point_in_time_utc         = "2025-06-01T18:35:22.123456Z"
///   resource_group_name       = "exampleresourcegroup"
///   server_name               = "exampleserver"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.UserAssignedIdentityArgs;
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
///             .createMode("GeoRestore")
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .geoBackupKeyURI("https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy")
///                 .geoBackupUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity")
///                 .primaryKeyURI("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///                 .primaryUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity")
///                 .type("AzureKeyVault")
///                 .build())
///             .identity(UserAssignedIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.ofEntries(
///                     Map.entry("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity", UserIdentityArgs.builder()
///                         .build()),
///                     Map.entry("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", UserIdentityArgs.builder()
///                         .build())
///                 ))
///                 .build())
///             .location("eastus")
///             .pointInTimeUTC("2025-06-01T18:35:22.123456Z")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     createMode: azure_native.dbforpostgresql.CreateMode.GeoRestore,
///     dataEncryption: {
///         geoBackupKeyURI: "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
///         geoBackupUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///         primaryKeyURI: "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         primaryUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         type: azure_native.dbforpostgresql.DataEncryptionType.AzureKeyVault,
///     },
///     identity: {
///         type: azure_native.dbforpostgresql.IdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": {},
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location: "eastus",
///     pointInTimeUTC: "2025-06-01T18:35:22.123456Z",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     create_mode=azure_native.dbforpostgresql.CreateMode.GEO_RESTORE,
///     data_encryption={
///         "geo_backup_key_uri": "https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy",
///         "geo_backup_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity",
///         "primary_key_uri": "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         "primary_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         "type": azure_native.dbforpostgresql.DataEncryptionType.AZURE_KEY_VAULT,
///     },
///     identity={
///         "type": azure_native.dbforpostgresql.IdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity": {},
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location="eastus",
///     point_in_time_utc="2025-06-01T18:35:22.123456Z",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       createMode: GeoRestore
///       dataEncryption:
///         geoBackupKeyURI: https://examplegeoredundantkeyvault.vault.azure.net/keys/examplekey/yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy
///         geoBackupUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity
///         primaryKeyURI: https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///         primaryUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///         type: AzureKeyVault
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/examplegeoredundantidentity
///           : {}
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///           : {}
///       location: eastus
///       pointInTimeUTC: 2025-06-01T18:35:22.123456Z
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server with Microsoft Entra authentication enabled in your own virtual network and without high availability.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "exampleadministratorlogin",
///         AdministratorLoginPassword = "examplepassword",
///         AuthConfig = new AzureNative.DBforPostgreSQL.Inputs.AuthConfigArgs
///         {
///             ActiveDirectoryAuth = AzureNative.DBforPostgreSQL.MicrosoftEntraAuth.Enabled,
///             PasswordAuth = AzureNative.DBforPostgreSQL.PasswordBasedAuth.Enabled,
///             TenantId = "tttttt-tttt-tttt-tttt-tttttttttttt",
///         },
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Disabled,
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             Type = "SystemManaged",
///         },
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.Disabled,
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             DelegatedSubnetResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///             PrivateDnsZoneArmResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 512,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P20,
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_18,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			AuthConfig: &dbforpostgresql.AuthConfigArgs{
/// 				ActiveDirectoryAuth: pulumi.String(dbforpostgresql.MicrosoftEntraAuthEnabled),
/// 				PasswordAuth:        pulumi.String(dbforpostgresql.PasswordBasedAuthEnabled),
/// 				TenantId:            pulumi.String("tttttt-tttt-tttt-tttt-tttttttttttt"),
/// 			},
/// 			AvailabilityZone: pulumi.String("1"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupDisabled),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				Type: pulumi.String("SystemManaged"),
/// 			},
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeDisabled),
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				DelegatedSubnetResourceId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"),
/// 				PrivateDnsZoneArmResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(512),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP20),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_18),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "exampleadministratorlogin"
///   administrator_login_password = "examplepassword"
///   auth_config = {
///     active_directory_auth = "Enabled"
///     password_auth         = "Enabled"
///     tenant_id             = "tttttt-tttt-tttt-tttt-tttttttttttt"
///   }
///   availability_zone = "1"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Disabled"
///   }
///   create_mode = "Create"
///   data_encryption = {
///     type = "SystemManaged"
///   }
///   high_availability = {
///     mode = "Disabled"
///   }
///   location = "eastus"
///   network = {
///     delegated_subnet_resource_id     = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"
///     private_dns_zone_arm_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 512
///     tier            = "P20"
///   }
///   version = "18"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.AuthConfigArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("exampleadministratorlogin")
///             .administratorLoginPassword("examplepassword")
///             .authConfig(AuthConfigArgs.builder()
///                 .activeDirectoryAuth("Enabled")
///                 .passwordAuth("Enabled")
///                 .tenantId("tttttt-tttt-tttt-tttt-tttttttttttt")
///                 .build())
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Disabled")
///                 .build())
///             .createMode("Create")
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .type("SystemManaged")
///                 .build())
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("Disabled")
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .delegatedSubnetResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet")
///                 .privateDnsZoneArmResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(512)
///                 .tier("P20")
///                 .build())
///             .version("18")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "exampleadministratorlogin",
///     administratorLoginPassword: "examplepassword",
///     authConfig: {
///         activeDirectoryAuth: azure_native.dbforpostgresql.MicrosoftEntraAuth.Enabled,
///         passwordAuth: azure_native.dbforpostgresql.PasswordBasedAuth.Enabled,
///         tenantId: "tttttt-tttt-tttt-tttt-tttttttttttt",
///     },
///     availabilityZone: "1",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Disabled,
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     dataEncryption: {
///         type: "SystemManaged",
///     },
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.Disabled,
///     },
///     location: "eastus",
///     network: {
///         delegatedSubnetResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         privateDnsZoneArmResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 512,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_18,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="exampleadministratorlogin",
///     administrator_login_password="examplepassword",
///     auth_config={
///         "active_directory_auth": azure_native.dbforpostgresql.MicrosoftEntraAuth.ENABLED,
///         "password_auth": azure_native.dbforpostgresql.PasswordBasedAuth.ENABLED,
///         "tenant_id": "tttttt-tttt-tttt-tttt-tttttttttttt",
///     },
///     availability_zone="1",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.DISABLED,
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     data_encryption={
///         "type": "SystemManaged",
///     },
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.DISABLED,
///     },
///     location="eastus",
///     network={
///         "delegated_subnet_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         "private_dns_zone_arm_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 512,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_18)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: exampleadministratorlogin
///       administratorLoginPassword: examplepassword
///       authConfig:
///         activeDirectoryAuth: Enabled
///         passwordAuth: Enabled
///         tenantId: tttttt-tttt-tttt-tttt-tttttttttttt
///       availabilityZone: '1'
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Disabled
///       createMode: Create
///       dataEncryption:
///         type: SystemManaged
///       highAvailability:
///         mode: Disabled
///       location: eastus
///       network:
///         delegatedSubnetResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet
///         privateDnsZoneArmResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 512
///         tier: P20
///       version: '18'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server with data encryption based on customer managed key with automatic key version update.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "exampleadministratorlogin",
///         AdministratorLoginPassword = "examplepassword",
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Disabled,
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             GeoBackupKeyURI = "",
///             GeoBackupUserAssignedIdentityId = "",
///             PrimaryKeyURI = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///             PrimaryUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///             Type = AzureNative.DBforPostgreSQL.DataEncryptionType.AzureKeyVault,
///         },
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///         },
///         Identity = new AzureNative.DBforPostgreSQL.Inputs.UserAssignedIdentityArgs
///         {
///             Type = AzureNative.DBforPostgreSQL.IdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", null },
///             },
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             DelegatedSubnetResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///             PrivateDnsZoneArmResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 512,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P20,
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_18,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			AvailabilityZone:           pulumi.String("1"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupDisabled),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				GeoBackupKeyURI:                 pulumi.String(""),
/// 				GeoBackupUserAssignedIdentityId: pulumi.String(""),
/// 				PrimaryKeyURI:                   pulumi.String("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey"),
/// 				PrimaryUserAssignedIdentityId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"),
/// 				Type:                            pulumi.String(dbforpostgresql.DataEncryptionTypeAzureKeyVault),
/// 			},
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeZoneRedundant),
/// 			},
/// 			Identity: &dbforpostgresql.UserAssignedIdentityArgs{
/// 				Type: pulumi.String(dbforpostgresql.IdentityTypeUserAssigned),
/// 				UserAssignedIdentities: dbforpostgresql.UserIdentityMap{
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": &dbforpostgresql.UserIdentityArgs{},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				DelegatedSubnetResourceId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"),
/// 				PrivateDnsZoneArmResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(512),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP20),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_18),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "exampleadministratorlogin"
///   administrator_login_password = "examplepassword"
///   availability_zone            = "1"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Disabled"
///   }
///   create_mode = "Create"
///   data_encryption = {
///     geo_backup_key_uri                   = ""
///     geo_backup_user_assigned_identity_id = ""
///     primary_key_uri                      = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey"
///     primary_user_assigned_identity_id    = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"
///     type                                 = "AzureKeyVault"
///   }
///   high_availability = {
///     mode = "ZoneRedundant"
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity" = {}
///     }
///   }
///   location = "eastus"
///   network = {
///     delegated_subnet_resource_id     = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"
///     private_dns_zone_arm_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 512
///     tier            = "P20"
///   }
///   version = "18"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.UserAssignedIdentityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("exampleadministratorlogin")
///             .administratorLoginPassword("examplepassword")
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Disabled")
///                 .build())
///             .createMode("Create")
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .geoBackupKeyURI("")
///                 .geoBackupUserAssignedIdentityId("")
///                 .primaryKeyURI("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey")
///                 .primaryUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity")
///                 .type("AzureKeyVault")
///                 .build())
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("ZoneRedundant")
///                 .build())
///             .identity(UserAssignedIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", UserIdentityArgs.builder()
///                     .build()))
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .delegatedSubnetResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet")
///                 .privateDnsZoneArmResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(512)
///                 .tier("P20")
///                 .build())
///             .version("18")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "exampleadministratorlogin",
///     administratorLoginPassword: "examplepassword",
///     availabilityZone: "1",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Disabled,
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     dataEncryption: {
///         geoBackupKeyURI: "",
///         geoBackupUserAssignedIdentityId: "",
///         primaryKeyURI: "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///         primaryUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         type: azure_native.dbforpostgresql.DataEncryptionType.AzureKeyVault,
///     },
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///     },
///     identity: {
///         type: azure_native.dbforpostgresql.IdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location: "eastus",
///     network: {
///         delegatedSubnetResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         privateDnsZoneArmResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 512,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_18,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="exampleadministratorlogin",
///     administrator_login_password="examplepassword",
///     availability_zone="1",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.DISABLED,
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     data_encryption={
///         "geo_backup_key_uri": "",
///         "geo_backup_user_assigned_identity_id": "",
///         "primary_key_uri": "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey",
///         "primary_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         "type": azure_native.dbforpostgresql.DataEncryptionType.AZURE_KEY_VAULT,
///     },
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZONE_REDUNDANT,
///     },
///     identity={
///         "type": azure_native.dbforpostgresql.IdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location="eastus",
///     network={
///         "delegated_subnet_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         "private_dns_zone_arm_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 512,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_18)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: exampleadministratorlogin
///       administratorLoginPassword: examplepassword
///       availabilityZone: '1'
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Disabled
///       createMode: Create
///       dataEncryption:
///         geoBackupKeyURI: ""
///         geoBackupUserAssignedIdentityId: ""
///         primaryKeyURI: https://exampleprimarykeyvault.vault.azure.net/keys/examplekey
///         primaryUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///         type: AzureKeyVault
///       highAvailability:
///         mode: ZoneRedundant
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///           : {}
///       location: eastus
///       network:
///         delegatedSubnetResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet
///         privateDnsZoneArmResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 512
///         tier: P20
///       version: '18'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new server with data encryption based on customer managed key.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         AdministratorLogin = "exampleadministratorlogin",
///         AdministratorLoginPassword = "examplepassword",
///         AvailabilityZone = "1",
///         Backup = new AzureNative.DBforPostgreSQL.Inputs.BackupArgs
///         {
///             BackupRetentionDays = 7,
///             GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeographicallyRedundantBackup.Disabled,
///         },
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Create,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             GeoBackupKeyURI = "",
///             GeoBackupUserAssignedIdentityId = "",
///             PrimaryKeyURI = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///             PrimaryUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///             Type = AzureNative.DBforPostgreSQL.DataEncryptionType.AzureKeyVault,
///         },
///         HighAvailability = new AzureNative.DBforPostgreSQL.Inputs.HighAvailabilityArgs
///         {
///             Mode = AzureNative.DBforPostgreSQL.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///         },
///         Identity = new AzureNative.DBforPostgreSQL.Inputs.UserAssignedIdentityArgs
///         {
///             Type = AzureNative.DBforPostgreSQL.IdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", null },
///             },
///         },
///         Location = "eastus",
///         Network = new AzureNative.DBforPostgreSQL.Inputs.NetworkArgs
///         {
///             DelegatedSubnetResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///             PrivateDnsZoneArmResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///         },
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SkuArgs
///         {
///             Name = "Standard_D4ds_v5",
///             Tier = AzureNative.DBforPostgreSQL.SkuTier.GeneralPurpose,
///         },
///         Storage = new AzureNative.DBforPostgreSQL.Inputs.StorageArgs
///         {
///             AutoGrow = AzureNative.DBforPostgreSQL.StorageAutoGrow.Disabled,
///             StorageSizeGB = 512,
///             Tier = AzureNative.DBforPostgreSQL.AzureManagedDiskPerformanceTier.P20,
///         },
///         Version = AzureNative.DBforPostgreSQL.PostgresMajorVersion.PostgresMajorVersion_18,
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			AdministratorLogin:         pulumi.String("exampleadministratorlogin"),
/// 			AdministratorLoginPassword: pulumi.String("examplepassword"),
/// 			AvailabilityZone:           pulumi.String("1"),
/// 			Backup: &dbforpostgresql.BackupTypeArgs{
/// 				BackupRetentionDays: pulumi.Int(7),
/// 				GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeographicallyRedundantBackupDisabled),
/// 			},
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeCreate),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				GeoBackupKeyURI:                 pulumi.String(""),
/// 				GeoBackupUserAssignedIdentityId: pulumi.String(""),
/// 				PrimaryKeyURI:                   pulumi.String("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 				PrimaryUserAssignedIdentityId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"),
/// 				Type:                            pulumi.String(dbforpostgresql.DataEncryptionTypeAzureKeyVault),
/// 			},
/// 			HighAvailability: &dbforpostgresql.HighAvailabilityArgs{
/// 				Mode: pulumi.String(dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityModeZoneRedundant),
/// 			},
/// 			Identity: &dbforpostgresql.UserAssignedIdentityArgs{
/// 				Type: pulumi.String(dbforpostgresql.IdentityTypeUserAssigned),
/// 				UserAssignedIdentities: dbforpostgresql.UserIdentityMap{
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": &dbforpostgresql.UserIdentityArgs{},
/// 				},
/// 			},
/// 			Location: pulumi.String("eastus"),
/// 			Network: &dbforpostgresql.NetworkArgs{
/// 				DelegatedSubnetResourceId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"),
/// 				PrivateDnsZoneArmResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"),
/// 			},
/// 			ResourceGroupName: pulumi.String("exampleresourcegroup"),
/// 			ServerName:        pulumi.String("exampleserver"),
/// 			Sku: &dbforpostgresql.SkuArgs{
/// 				Name: pulumi.String("Standard_D4ds_v5"),
/// 				Tier: pulumi.String(dbforpostgresql.SkuTierGeneralPurpose),
/// 			},
/// 			Storage: &dbforpostgresql.StorageArgs{
/// 				AutoGrow:      pulumi.String(dbforpostgresql.StorageAutoGrowDisabled),
/// 				StorageSizeGB: pulumi.Int(512),
/// 				Tier:          pulumi.String(dbforpostgresql.AzureManagedDiskPerformanceTierP20),
/// 			},
/// 			Version: pulumi.String(dbforpostgresql.PostgresMajorVersion_18),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   administrator_login          = "exampleadministratorlogin"
///   administrator_login_password = "examplepassword"
///   availability_zone            = "1"
///   backup = {
///     backup_retention_days = 7
///     geo_redundant_backup  = "Disabled"
///   }
///   create_mode = "Create"
///   data_encryption = {
///     geo_backup_key_uri                   = ""
///     geo_backup_user_assigned_identity_id = ""
///     primary_key_uri                      = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///     primary_user_assigned_identity_id    = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"
///     type                                 = "AzureKeyVault"
///   }
///   high_availability = {
///     mode = "ZoneRedundant"
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity" = {}
///     }
///   }
///   location = "eastus"
///   network = {
///     delegated_subnet_resource_id     = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet"
///     private_dns_zone_arm_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com"
///   }
///   resource_group_name = "exampleresourcegroup"
///   server_name         = "exampleserver"
///   sku = {
///     name = "Standard_D4ds_v5"
///     tier = "GeneralPurpose"
///   }
///   storage = {
///     auto_grow       = "Disabled"
///     storage_size_gb = 512
///     tier            = "P20"
///   }
///   version = "18"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.BackupArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.HighAvailabilityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.UserAssignedIdentityArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.NetworkArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SkuArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.StorageArgs;
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
///             .administratorLogin("exampleadministratorlogin")
///             .administratorLoginPassword("examplepassword")
///             .availabilityZone("1")
///             .backup(BackupArgs.builder()
///                 .backupRetentionDays(7)
///                 .geoRedundantBackup("Disabled")
///                 .build())
///             .createMode("Create")
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .geoBackupKeyURI("")
///                 .geoBackupUserAssignedIdentityId("")
///                 .primaryKeyURI("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///                 .primaryUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity")
///                 .type("AzureKeyVault")
///                 .build())
///             .highAvailability(HighAvailabilityArgs.builder()
///                 .mode("ZoneRedundant")
///                 .build())
///             .identity(UserAssignedIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", UserIdentityArgs.builder()
///                     .build()))
///                 .build())
///             .location("eastus")
///             .network(NetworkArgs.builder()
///                 .delegatedSubnetResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet")
///                 .privateDnsZoneArmResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com")
///                 .build())
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sku(SkuArgs.builder()
///                 .name("Standard_D4ds_v5")
///                 .tier("GeneralPurpose")
///                 .build())
///             .storage(StorageArgs.builder()
///                 .autoGrow("Disabled")
///                 .storageSizeGB(512)
///                 .tier("P20")
///                 .build())
///             .version("18")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     administratorLogin: "exampleadministratorlogin",
///     administratorLoginPassword: "examplepassword",
///     availabilityZone: "1",
///     backup: {
///         backupRetentionDays: 7,
///         geoRedundantBackup: azure_native.dbforpostgresql.GeographicallyRedundantBackup.Disabled,
///     },
///     createMode: azure_native.dbforpostgresql.CreateMode.Create,
///     dataEncryption: {
///         geoBackupKeyURI: "",
///         geoBackupUserAssignedIdentityId: "",
///         primaryKeyURI: "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         primaryUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         type: azure_native.dbforpostgresql.DataEncryptionType.AzureKeyVault,
///     },
///     highAvailability: {
///         mode: azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZoneRedundant,
///     },
///     identity: {
///         type: azure_native.dbforpostgresql.IdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location: "eastus",
///     network: {
///         delegatedSubnetResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         privateDnsZoneArmResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sku: {
///         name: "Standard_D4ds_v5",
///         tier: azure_native.dbforpostgresql.SkuTier.GeneralPurpose,
///     },
///     storage: {
///         autoGrow: azure_native.dbforpostgresql.StorageAutoGrow.Disabled,
///         storageSizeGB: 512,
///         tier: azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version: azure_native.dbforpostgresql.PostgresMajorVersion.PostgresMajorVersion_18,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     administrator_login="exampleadministratorlogin",
///     administrator_login_password="examplepassword",
///     availability_zone="1",
///     backup={
///         "backup_retention_days": 7,
///         "geo_redundant_backup": azure_native.dbforpostgresql.GeographicallyRedundantBackup.DISABLED,
///     },
///     create_mode=azure_native.dbforpostgresql.CreateMode.CREATE,
///     data_encryption={
///         "geo_backup_key_uri": "",
///         "geo_backup_user_assigned_identity_id": "",
///         "primary_key_uri": "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         "primary_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         "type": azure_native.dbforpostgresql.DataEncryptionType.AZURE_KEY_VAULT,
///     },
///     high_availability={
///         "mode": azure_native.dbforpostgresql.PostgreSqlFlexibleServerHighAvailabilityMode.ZONE_REDUNDANT,
///     },
///     identity={
///         "type": azure_native.dbforpostgresql.IdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location="eastus",
///     network={
///         "delegated_subnet_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet",
///         "private_dns_zone_arm_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com",
///     },
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     sku={
///         "name": "Standard_D4ds_v5",
///         "tier": azure_native.dbforpostgresql.SkuTier.GENERAL_PURPOSE,
///     },
///     storage={
///         "auto_grow": azure_native.dbforpostgresql.StorageAutoGrow.DISABLED,
///         "storage_size_gb": 512,
///         "tier": azure_native.dbforpostgresql.AzureManagedDiskPerformanceTier.P20,
///     },
///     version=azure_native.dbforpostgresql.PostgresMajorVersion.POSTGRES_MAJOR_VERSION_18)
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       administratorLogin: exampleadministratorlogin
///       administratorLoginPassword: examplepassword
///       availabilityZone: '1'
///       backup:
///         backupRetentionDays: 7
///         geoRedundantBackup: Disabled
///       createMode: Create
///       dataEncryption:
///         geoBackupKeyURI: ""
///         geoBackupUserAssignedIdentityId: ""
///         primaryKeyURI: https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///         primaryUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///         type: AzureKeyVault
///       highAvailability:
///         mode: ZoneRedundant
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///           : {}
///       location: eastus
///       network:
///         delegatedSubnetResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.Network/virtualNetworks/examplevirtualnetwork/subnets/examplesubnet
///         privateDnsZoneArmResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourcegroups/exampleresourcegroup/providers/Microsoft.Network/privateDnsZones/exampleprivatednszone.postgres.database.azure.com
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sku:
///         name: Standard_D4ds_v5
///         tier: GeneralPurpose
///       storage:
///         autoGrow: Disabled
///         storageSizeGB: 512
///         tier: P20
///       version: '18'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a read replica of an existing server.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforPostgreSQL.Server("server", new()
///     {
///         CreateMode = AzureNative.DBforPostgreSQL.CreateMode.Replica,
///         DataEncryption = new AzureNative.DBforPostgreSQL.Inputs.DataEncryptionArgs
///         {
///             GeoBackupKeyURI = "",
///             GeoBackupUserAssignedIdentityId = "",
///             PrimaryKeyURI = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///             PrimaryUserAssignedIdentityId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///             Type = AzureNative.DBforPostgreSQL.DataEncryptionType.AzureKeyVault,
///         },
///         Identity = new AzureNative.DBforPostgreSQL.Inputs.UserAssignedIdentityArgs
///         {
///             Type = AzureNative.DBforPostgreSQL.IdentityType.UserAssigned,
///             UserAssignedIdentities =
///             {
///                 { "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", null },
///             },
///         },
///         Location = "eastus",
///         ResourceGroupName = "exampleresourcegroup",
///         ServerName = "exampleserver",
///         SourceServerResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
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
/// 		_, err := dbforpostgresql.NewServer(ctx, "server", &dbforpostgresql.ServerArgs{
/// 			CreateMode: pulumi.String(dbforpostgresql.CreateModeReplica),
/// 			DataEncryption: &dbforpostgresql.DataEncryptionArgs{
/// 				GeoBackupKeyURI:                 pulumi.String(""),
/// 				GeoBackupUserAssignedIdentityId: pulumi.String(""),
/// 				PrimaryKeyURI:                   pulumi.String("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"),
/// 				PrimaryUserAssignedIdentityId:   pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"),
/// 				Type:                            pulumi.String(dbforpostgresql.DataEncryptionTypeAzureKeyVault),
/// 			},
/// 			Identity: &dbforpostgresql.UserAssignedIdentityArgs{
/// 				Type: pulumi.String(dbforpostgresql.IdentityTypeUserAssigned),
/// 				UserAssignedIdentities: dbforpostgresql.UserIdentityMap{
/// 					"/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": &dbforpostgresql.UserIdentityArgs{},
/// 				},
/// 			},
/// 			Location:               pulumi.String("eastus"),
/// 			ResourceGroupName:      pulumi.String("exampleresourcegroup"),
/// 			ServerName:             pulumi.String("exampleserver"),
/// 			SourceServerResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"),
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
/// resource "azure-native_dbforpostgresql_server" "server" {
///   create_mode = "Replica"
///   data_encryption = {
///     geo_backup_key_uri                   = ""
///     geo_backup_user_assigned_identity_id = ""
///     primary_key_uri                      = "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
///     primary_user_assigned_identity_id    = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity"
///     type                                 = "AzureKeyVault"
///   }
///   identity = {
///     type = "UserAssigned"
///     user_assigned_identities = {
///       "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity" = {}
///     }
///   }
///   location                  = "eastus"
///   resource_group_name       = "exampleresourcegroup"
///   server_name               = "exampleserver"
///   source_server_resource_id = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver"
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
/// import com.pulumi.azurenative.dbforpostgresql.Server;
/// import com.pulumi.azurenative.dbforpostgresql.ServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.DataEncryptionArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.UserAssignedIdentityArgs;
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
///             .dataEncryption(DataEncryptionArgs.builder()
///                 .geoBackupKeyURI("")
///                 .geoBackupUserAssignedIdentityId("")
///                 .primaryKeyURI("https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx")
///                 .primaryUserAssignedIdentityId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity")
///                 .type("AzureKeyVault")
///                 .build())
///             .identity(UserAssignedIdentityArgs.builder()
///                 .type("UserAssigned")
///                 .userAssignedIdentities(Map.of("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity", UserIdentityArgs.builder()
///                     .build()))
///                 .build())
///             .location("eastus")
///             .resourceGroupName("exampleresourcegroup")
///             .serverName("exampleserver")
///             .sourceServerResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
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
/// const server = new azure_native.dbforpostgresql.Server("server", {
///     createMode: azure_native.dbforpostgresql.CreateMode.Replica,
///     dataEncryption: {
///         geoBackupKeyURI: "",
///         geoBackupUserAssignedIdentityId: "",
///         primaryKeyURI: "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         primaryUserAssignedIdentityId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         type: azure_native.dbforpostgresql.DataEncryptionType.AzureKeyVault,
///     },
///     identity: {
///         type: azure_native.dbforpostgresql.IdentityType.UserAssigned,
///         userAssignedIdentities: {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location: "eastus",
///     resourceGroupName: "exampleresourcegroup",
///     serverName: "exampleserver",
///     sourceServerResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbforpostgresql.Server("server",
///     create_mode=azure_native.dbforpostgresql.CreateMode.REPLICA,
///     data_encryption={
///         "geo_backup_key_uri": "",
///         "geo_backup_user_assigned_identity_id": "",
///         "primary_key_uri": "https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
///         "primary_user_assigned_identity_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity",
///         "type": azure_native.dbforpostgresql.DataEncryptionType.AZURE_KEY_VAULT,
///     },
///     identity={
///         "type": azure_native.dbforpostgresql.IdentityType.USER_ASSIGNED,
///         "user_assigned_identities": {
///             "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity": {},
///         },
///     },
///     location="eastus",
///     resource_group_name="exampleresourcegroup",
///     server_name="exampleserver",
///     source_server_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbforpostgresql:Server
///     properties:
///       createMode: Replica
///       dataEncryption:
///         geoBackupKeyURI: ""
///         geoBackupUserAssignedIdentityId: ""
///         primaryKeyURI: https://exampleprimarykeyvault.vault.azure.net/keys/examplekey/xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
///         primaryUserAssignedIdentityId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///         type: AzureKeyVault
///       identity:
///         type: UserAssigned
///         userAssignedIdentities:
///           ? /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.ManagedIdentity/userAssignedIdentities/exampleprimaryidentity
///           : {}
///       location: eastus
///       resourceGroupName: exampleresourcegroup
///       serverName: exampleserver
///       sourceServerResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/exampleresourcegroup/providers/Microsoft.DBforPostgreSQL/flexibleServers/examplesourceserver
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
/// $ pulumi import azure-native:dbforpostgresql:Server myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/flexibleServers/{serverName}
/// ```
class Server extends pulumi.CustomResource {
  /// Name of the login designated as the first password based administrator assigned to your instance of PostgreSQL. Must be specified the first time that you enable password based authentication on a server. Once set to a given value, it cannot be changed for the rest of the life of a server. If you disable password based authentication on a server which had it enabled, this password based role isn't deleted.
  late final pulumi.Output<String?> administratorLogin;
  /// Authentication configuration properties of a server.
  late final pulumi.Output<AuthConfigResponse?> authConfig;
  /// Availability zone of a server.
  late final pulumi.Output<String?> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Backup properties of a server.
  late final pulumi.Output<BackupResponse?> backup;
  /// Cluster properties of a server.
  late final pulumi.Output<ClusterResponse?> cluster;
  /// Data encryption properties of a server.
  late final pulumi.Output<DataEncryptionResponse?> dataEncryption;
  /// Fully qualified domain name of a server.
  late final pulumi.Output<String> fullyQualifiedDomainName;
  /// High availability properties of a server.
  late final pulumi.Output<HighAvailabilityResponse?> highAvailability;
  /// User assigned managed identities assigned to the server.
  late final pulumi.Output<UserAssignedIdentityResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maintenance window properties of a server.
  late final pulumi.Output<MaintenanceWindowResponse?> maintenanceWindow;
  /// Minor version of PostgreSQL database engine.
  late final pulumi.Output<String> minorVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Network properties of a server. Only required if you want your server to be integrated into a virtual network provided by customer.
  late final pulumi.Output<NetworkResponse?> network;
  /// List of private endpoint connections associated with the specified server.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Read replica properties of a server. Required only in case that you want to promote a server.
  late final pulumi.Output<ReplicaResponse?> replica;
  /// Maximum number of read replicas allowed for a server.
  late final pulumi.Output<int> replicaCapacity;
  /// Role of the server in a replication set.
  late final pulumi.Output<String?> replicationRole;
  /// Compute tier and size of a server.
  late final pulumi.Output<SkuResponse?> sku;
  /// Identifier of the server to be used as the source of the new server. Required when 'createMode' is 'PointInTimeRestore', 'GeoRestore', 'Replica', or 'ReviveDropped'. This property is returned only when the target server is a read replica.
  late final pulumi.Output<String?> sourceServerResourceId;
  /// Possible states of a server.
  late final pulumi.Output<String> state;
  /// Storage properties of a server.
  late final pulumi.Output<StorageResponse?> storage;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Major version of PostgreSQL database engine.
  late final pulumi.Output<String?> version;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_dbforpostgresql_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String?>('administratorLogin');
    authConfig = registerOutput<AuthConfigResponse?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    availabilityZone = registerOutput<String?>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    backup = registerOutput<BackupResponse?>('backup', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return BackupResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cluster = registerOutput<ClusterResponse?>('cluster', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ClusterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dataEncryption = registerOutput<DataEncryptionResponse?>('dataEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    fullyQualifiedDomainName = registerOutput<String>('fullyQualifiedDomainName');
    highAvailability = registerOutput<HighAvailabilityResponse?>('highAvailability', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HighAvailabilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<UserAssignedIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return UserAssignedIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<MaintenanceWindowResponse?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    minorVersion = registerOutput<String>('minorVersion');
    this.name = registerOutput<String>('name');
    network = registerOutput<NetworkResponse?>('network', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    replica = registerOutput<ReplicaResponse?>('replica', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ReplicaResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicaCapacity = registerOutput<int>('replicaCapacity');
    replicationRole = registerOutput<String?>('replicationRole');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sourceServerResourceId = registerOutput<String?>('sourceServerResourceId');
    state = registerOutput<String>('state');
    storage = registerOutput<StorageResponse?>('storage', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
