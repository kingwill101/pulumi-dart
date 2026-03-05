import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_args.dart';
import 'sku_response.dart';
import 'storage_profile_response.dart';

/// Represents a server.
///
/// Uses Azure REST API version 2018-06-01. In version 2.x of the Azure Native provider, it used API version 2018-06-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a database as a point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforMariaDB.Server("server", new()
///     {
///         Location = "brazilsouth",
///         Properties = new AzureNative.DBforMariaDB.Inputs.ServerPropertiesForRestoreArgs
///         {
///             CreateMode = "PointInTimeRestore",
///             RestorePointInTime = "2017-12-14T00:00:37.467Z",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///         },
///         ResourceGroupName = "TargetResourceGroup",
///         ServerName = "targetserver",
///         Sku = new AzureNative.DBforMariaDB.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "GP_Gen5_2",
///             Tier = AzureNative.DBforMariaDB.SkuTier.GeneralPurpose,
///         },
///         Tags =
///         {
///             { "ElasticServer", "1" },
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewServer(ctx, "server", &dbformariadb.ServerArgs{
/// 			Location: pulumi.String("brazilsouth"),
/// 			Properties: &dbformariadb.ServerPropertiesForRestoreArgs{
/// 				CreateMode:         pulumi.String("PointInTimeRestore"),
/// 				RestorePointInTime: pulumi.String("2017-12-14T00:00:37.467Z"),
/// 				SourceServerId:     pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TargetResourceGroup"),
/// 			ServerName:        pulumi.String("targetserver"),
/// 			Sku: &dbformariadb.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("GP_Gen5_2"),
/// 				Tier:     pulumi.String(dbformariadb.SkuTierGeneralPurpose),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ElasticServer": pulumi.String("1"),
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
/// import com.pulumi.azurenative.dbformariadb.Server;
/// import com.pulumi.azurenative.dbformariadb.ServerArgs;
/// import com.pulumi.azurenative.dbformariadb.inputs.SkuArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .location("brazilsouth")
///             .properties(ServerPropertiesForRestoreArgs.builder()
///                 .createMode("PointInTimeRestore")
///                 .restorePointInTime("2017-12-14T00:00:37.467Z")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver")
///                 .build())
///             .resourceGroupName("TargetResourceGroup")
///             .serverName("targetserver")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("GP_Gen5_2")
///                 .tier("GeneralPurpose")
///                 .build())
///             .tags(Map.of("ElasticServer", "1"))
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
/// const server = new azure_native.dbformariadb.Server("server", {
///     location: "brazilsouth",
///     properties: {
///         createMode: "PointInTimeRestore",
///         restorePointInTime: "2017-12-14T00:00:37.467Z",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///     },
///     resourceGroupName: "TargetResourceGroup",
///     serverName: "targetserver",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "GP_Gen5_2",
///         tier: azure_native.dbformariadb.SkuTier.GeneralPurpose,
///     },
///     tags: {
///         ElasticServer: "1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformariadb.Server("server",
///     location="brazilsouth",
///     properties={
///         "create_mode": "PointInTimeRestore",
///         "restore_point_in_time": "2017-12-14T00:00:37.467Z",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///     },
///     resource_group_name="TargetResourceGroup",
///     server_name="targetserver",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "GP_Gen5_2",
///         "tier": azure_native.dbformariadb.SkuTier.GENERAL_PURPOSE,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformariadb:Server
///     properties:
///       location: brazilsouth
///       properties:
///         createMode: PointInTimeRestore
///         restorePointInTime: 2017-12-14T00:00:37.467Z
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver
///       resourceGroupName: TargetResourceGroup
///       serverName: targetserver
///       sku:
///         capacity: 2
///         family: Gen5
///         name: GP_Gen5_2
///         tier: GeneralPurpose
///       tags:
///         ElasticServer: '1'
///
/// ```
///
/// {{% /example %}}
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
///     var server = new AzureNative.DBforMariaDB.Server("server", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.DBforMariaDB.Inputs.ServerPropertiesForDefaultCreateArgs
///         {
///             AdministratorLogin = "cloudsa",
///             AdministratorLoginPassword = "<administratorLoginPassword>",
///             CreateMode = "Default",
///             MinimalTlsVersion = AzureNative.DBforMariaDB.MinimalTlsVersionEnum.TLS1_2,
///             SslEnforcement = AzureNative.DBforMariaDB.SslEnforcementEnum.Enabled,
///             StorageProfile = new AzureNative.DBforMariaDB.Inputs.StorageProfileArgs
///             {
///                 BackupRetentionDays = 7,
///                 GeoRedundantBackup = AzureNative.DBforMariaDB.GeoRedundantBackup.Enabled,
///                 StorageMB = 128000,
///             },
///         },
///         ResourceGroupName = "testrg",
///         ServerName = "mariadbtestsvc4",
///         Sku = new AzureNative.DBforMariaDB.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "GP_Gen5_2",
///             Tier = AzureNative.DBforMariaDB.SkuTier.GeneralPurpose,
///         },
///         Tags =
///         {
///             { "ElasticServer", "1" },
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewServer(ctx, "server", &dbformariadb.ServerArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &dbformariadb.ServerPropertiesForDefaultCreateArgs{
/// 				AdministratorLogin:         pulumi.String("cloudsa"),
/// 				AdministratorLoginPassword: pulumi.String("<administratorLoginPassword>"),
/// 				CreateMode:                 pulumi.String("Default"),
/// 				MinimalTlsVersion:          pulumi.String(dbformariadb.MinimalTlsVersionEnum_TLS1_2),
/// 				SslEnforcement:             dbformariadb.SslEnforcementEnumEnabled,
/// 				StorageProfile: &dbformariadb.StorageProfileArgs{
/// 					BackupRetentionDays: pulumi.Int(7),
/// 					GeoRedundantBackup:  pulumi.String(dbformariadb.GeoRedundantBackupEnabled),
/// 					StorageMB:           pulumi.Int(128000),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("testrg"),
/// 			ServerName:        pulumi.String("mariadbtestsvc4"),
/// 			Sku: &dbformariadb.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("GP_Gen5_2"),
/// 				Tier:     pulumi.String(dbformariadb.SkuTierGeneralPurpose),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ElasticServer": pulumi.String("1"),
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
/// import com.pulumi.azurenative.dbformariadb.Server;
/// import com.pulumi.azurenative.dbformariadb.ServerArgs;
/// import com.pulumi.azurenative.dbformariadb.inputs.SkuArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .location("westus")
///             .properties(ServerPropertiesForDefaultCreateArgs.builder()
///                 .administratorLogin("cloudsa")
///                 .administratorLoginPassword("<administratorLoginPassword>")
///                 .createMode("Default")
///                 .minimalTlsVersion("TLS1_2")
///                 .sslEnforcement("Enabled")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .backupRetentionDays(7)
///                     .geoRedundantBackup("Enabled")
///                     .storageMB(128000)
///                     .build())
///                 .build())
///             .resourceGroupName("testrg")
///             .serverName("mariadbtestsvc4")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("GP_Gen5_2")
///                 .tier("GeneralPurpose")
///                 .build())
///             .tags(Map.of("ElasticServer", "1"))
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
/// const server = new azure_native.dbformariadb.Server("server", {
///     location: "westus",
///     properties: {
///         administratorLogin: "cloudsa",
///         administratorLoginPassword: "<administratorLoginPassword>",
///         createMode: "Default",
///         minimalTlsVersion: azure_native.dbformariadb.MinimalTlsVersionEnum.TLS1_2,
///         sslEnforcement: azure_native.dbformariadb.SslEnforcementEnum.Enabled,
///         storageProfile: {
///             backupRetentionDays: 7,
///             geoRedundantBackup: azure_native.dbformariadb.GeoRedundantBackup.Enabled,
///             storageMB: 128000,
///         },
///     },
///     resourceGroupName: "testrg",
///     serverName: "mariadbtestsvc4",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "GP_Gen5_2",
///         tier: azure_native.dbformariadb.SkuTier.GeneralPurpose,
///     },
///     tags: {
///         ElasticServer: "1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformariadb.Server("server",
///     location="westus",
///     properties={
///         "administrator_login": "cloudsa",
///         "administrator_login_password": "<administratorLoginPassword>",
///         "create_mode": "Default",
///         "minimal_tls_version": azure_native.dbformariadb.MinimalTlsVersionEnum.TLS1_2,
///         "ssl_enforcement": azure_native.dbformariadb.SslEnforcementEnum.ENABLED,
///         "storage_profile": {
///             "backup_retention_days": 7,
///             "geo_redundant_backup": azure_native.dbformariadb.GeoRedundantBackup.ENABLED,
///             "storage_mb": 128000,
///         },
///     },
///     resource_group_name="testrg",
///     server_name="mariadbtestsvc4",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "GP_Gen5_2",
///         "tier": azure_native.dbformariadb.SkuTier.GENERAL_PURPOSE,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformariadb:Server
///     properties:
///       location: westus
///       properties:
///         administratorLogin: cloudsa
///         administratorLoginPassword: <administratorLoginPassword>
///         createMode: Default
///         minimalTlsVersion: TLS1_2
///         sslEnforcement: Enabled
///         storageProfile:
///           backupRetentionDays: 7
///           geoRedundantBackup: Enabled
///           storageMB: 128000
///       resourceGroupName: testrg
///       serverName: mariadbtestsvc4
///       sku:
///         capacity: 2
///         family: Gen5
///         name: GP_Gen5_2
///         tier: GeneralPurpose
///       tags:
///         ElasticServer: '1'
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
///     var server = new AzureNative.DBforMariaDB.Server("server", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.DBforMariaDB.Inputs.ServerPropertiesForReplicaArgs
///         {
///             CreateMode = "Replica",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver",
///         },
///         ResourceGroupName = "TargetResourceGroup",
///         ServerName = "targetserver",
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewServer(ctx, "server", &dbformariadb.ServerArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &dbformariadb.ServerPropertiesForReplicaArgs{
/// 				CreateMode:     pulumi.String("Replica"),
/// 				SourceServerId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TargetResourceGroup"),
/// 			ServerName:        pulumi.String("targetserver"),
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
/// import com.pulumi.azurenative.dbformariadb.Server;
/// import com.pulumi.azurenative.dbformariadb.ServerArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .location("westus")
///             .properties(ServerPropertiesForReplicaArgs.builder()
///                 .createMode("Replica")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver")
///                 .build())
///             .resourceGroupName("TargetResourceGroup")
///             .serverName("targetserver")
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
/// const server = new azure_native.dbformariadb.Server("server", {
///     location: "westus",
///     properties: {
///         createMode: "Replica",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver",
///     },
///     resourceGroupName: "TargetResourceGroup",
///     serverName: "targetserver",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformariadb.Server("server",
///     location="westus",
///     properties={
///         "create_mode": "Replica",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver",
///     },
///     resource_group_name="TargetResourceGroup",
///     server_name="targetserver")
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformariadb:Server
///     properties:
///       location: westus
///       properties:
///         createMode: Replica
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/MasterResourceGroup/providers/Microsoft.DBforMariaDB/servers/masterserver
///       resourceGroupName: TargetResourceGroup
///       serverName: targetserver
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a server as a geo restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var server = new AzureNative.DBforMariaDB.Server("server", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.DBforMariaDB.Inputs.ServerPropertiesForGeoRestoreArgs
///         {
///             CreateMode = "GeoRestore",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///         },
///         ResourceGroupName = "TargetResourceGroup",
///         ServerName = "targetserver",
///         Sku = new AzureNative.DBforMariaDB.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "GP_Gen5_2",
///             Tier = AzureNative.DBforMariaDB.SkuTier.GeneralPurpose,
///         },
///         Tags =
///         {
///             { "ElasticServer", "1" },
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
/// 	dbformariadb "github.com/pulumi/pulumi-azure-native-sdk/dbformariadb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbformariadb.NewServer(ctx, "server", &dbformariadb.ServerArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &dbformariadb.ServerPropertiesForGeoRestoreArgs{
/// 				CreateMode:     pulumi.String("GeoRestore"),
/// 				SourceServerId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TargetResourceGroup"),
/// 			ServerName:        pulumi.String("targetserver"),
/// 			Sku: &dbformariadb.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("GP_Gen5_2"),
/// 				Tier:     pulumi.String(dbformariadb.SkuTierGeneralPurpose),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"ElasticServer": pulumi.String("1"),
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
/// import com.pulumi.azurenative.dbformariadb.Server;
/// import com.pulumi.azurenative.dbformariadb.ServerArgs;
/// import com.pulumi.azurenative.dbformariadb.inputs.SkuArgs;
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
///         var server = new Server("server", ServerArgs.builder()
///             .location("westus")
///             .properties(ServerPropertiesForGeoRestoreArgs.builder()
///                 .createMode("GeoRestore")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver")
///                 .build())
///             .resourceGroupName("TargetResourceGroup")
///             .serverName("targetserver")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("GP_Gen5_2")
///                 .tier("GeneralPurpose")
///                 .build())
///             .tags(Map.of("ElasticServer", "1"))
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
/// const server = new azure_native.dbformariadb.Server("server", {
///     location: "westus",
///     properties: {
///         createMode: "GeoRestore",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///     },
///     resourceGroupName: "TargetResourceGroup",
///     serverName: "targetserver",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "GP_Gen5_2",
///         tier: azure_native.dbformariadb.SkuTier.GeneralPurpose,
///     },
///     tags: {
///         ElasticServer: "1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server = azure_native.dbformariadb.Server("server",
///     location="westus",
///     properties={
///         "create_mode": "GeoRestore",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver",
///     },
///     resource_group_name="TargetResourceGroup",
///     server_name="targetserver",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "GP_Gen5_2",
///         "tier": azure_native.dbformariadb.SkuTier.GENERAL_PURPOSE,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   server:
///     type: azure-native:dbformariadb:Server
///     properties:
///       location: westus
///       properties:
///         createMode: GeoRestore
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforMariaDB/servers/sourceserver
///       resourceGroupName: TargetResourceGroup
///       serverName: targetserver
///       sku:
///         capacity: 2
///         family: Gen5
///         name: GP_Gen5_2
///         tier: GeneralPurpose
///       tags:
///         ElasticServer: '1'
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
/// $ pulumi import azure-native:dbformariadb:Server targetserver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforMariaDB/servers/{serverName}
/// ```
class Server extends pulumi.CustomResource {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  late final pulumi.Output<String?> administratorLogin;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Earliest restore point creation time (ISO8601 format)
  late final pulumi.Output<String?> earliestRestoreDate;
  /// The fully qualified domain name of a server.
  late final pulumi.Output<String?> fullyQualifiedDomainName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The master server id of a replica server.
  late final pulumi.Output<String?> masterServerId;
  /// Enforce a minimal Tls version for the server.
  late final pulumi.Output<String?> minimalTlsVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// List of private endpoint connections on a server
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Whether or not public network access is allowed for this server. Value is optional but if passed in, must be 'Enabled' or 'Disabled'
  late final pulumi.Output<String?> publicNetworkAccess;
  /// The maximum number of replicas that a master server can have.
  late final pulumi.Output<int?> replicaCapacity;
  /// The replication role of the server.
  late final pulumi.Output<String?> replicationRole;
  /// The SKU (pricing tier) of the server.
  late final pulumi.Output<SkuResponse?> sku;
  /// Enable ssl enforcement or not when connect to server.
  late final pulumi.Output<String?> sslEnforcement;
  /// Storage profile of a server.
  late final pulumi.Output<StorageProfileResponse?> storageProfile;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// A state of a server that is visible to user.
  late final pulumi.Output<String?> userVisibleState;
  /// Server version.
  late final pulumi.Output<String?> version;

  /// Creates a new [Server].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Server]. {@macro pulumi_dbformariadb_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Server(
    String name, {
    ServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbformariadb:Server',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String?>('administratorLogin');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    earliestRestoreDate = registerOutput<String?>('earliestRestoreDate');
    fullyQualifiedDomainName = registerOutput<String?>('fullyQualifiedDomainName');
    location = registerOutput<String>('location');
    masterServerId = registerOutput<String?>('masterServerId');
    minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    replicaCapacity = registerOutput<int?>('replicaCapacity');
    replicationRole = registerOutput<String?>('replicationRole');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslEnforcement = registerOutput<String?>('sslEnforcement');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userVisibleState = registerOutput<String?>('userVisibleState');
    version = registerOutput<String?>('version');
  }
}
