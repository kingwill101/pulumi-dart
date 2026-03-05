import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_response.dart';
import 'single_server_args.dart';
import 'single_server_sku_response.dart';
import 'storage_profile_response.dart';

/// Represents a server.
///
/// Uses Azure REST API version 2017-12-01.
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
///     var singleServer = new AzureNative.DBforPostgreSQL.SingleServer("singleServer", new()
///     {
///         Location = "brazilsouth",
///         Properties = new AzureNative.DBforPostgreSQL.Inputs.ServerPropertiesForRestoreArgs
///         {
///             CreateMode = "PointInTimeRestore",
///             RestorePointInTime = "2017-12-14T00:00:37.467Z",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///         },
///         ResourceGroupName = "TargetResourceGroup",
///         ServerName = "targetserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SingleServerSkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "B_Gen5_2",
///             Tier = AzureNative.DBforPostgreSQL.SingleServerSkuTier.Basic,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServer(ctx, "singleServer", &dbforpostgresql.SingleServerArgs{
/// 			Location: pulumi.String("brazilsouth"),
/// 			Properties: &dbforpostgresql.ServerPropertiesForRestoreArgs{
/// 				CreateMode:         pulumi.String("PointInTimeRestore"),
/// 				RestorePointInTime: pulumi.String("2017-12-14T00:00:37.467Z"),
/// 				SourceServerId:     pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TargetResourceGroup"),
/// 			ServerName:        pulumi.String("targetserver"),
/// 			Sku: &dbforpostgresql.SingleServerSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("B_Gen5_2"),
/// 				Tier:     pulumi.String(dbforpostgresql.SingleServerSkuTierBasic),
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServer;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SingleServerSkuArgs;
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
///         var singleServer = new SingleServer("singleServer", SingleServerArgs.builder()
///             .location("brazilsouth")
///             .properties(ServerPropertiesForRestoreArgs.builder()
///                 .createMode("PointInTimeRestore")
///                 .restorePointInTime("2017-12-14T00:00:37.467Z")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver")
///                 .build())
///             .resourceGroupName("TargetResourceGroup")
///             .serverName("targetserver")
///             .sku(SingleServerSkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("B_Gen5_2")
///                 .tier("Basic")
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
/// const singleServer = new azure_native.dbforpostgresql.SingleServer("singleServer", {
///     location: "brazilsouth",
///     properties: {
///         createMode: "PointInTimeRestore",
///         restorePointInTime: "2017-12-14T00:00:37.467Z",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///     },
///     resourceGroupName: "TargetResourceGroup",
///     serverName: "targetserver",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "B_Gen5_2",
///         tier: azure_native.dbforpostgresql.SingleServerSkuTier.Basic,
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
/// single_server = azure_native.dbforpostgresql.SingleServer("singleServer",
///     location="brazilsouth",
///     properties={
///         "create_mode": "PointInTimeRestore",
///         "restore_point_in_time": "2017-12-14T00:00:37.467Z",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///     },
///     resource_group_name="TargetResourceGroup",
///     server_name="targetserver",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "B_Gen5_2",
///         "tier": azure_native.dbforpostgresql.SingleServerSkuTier.BASIC,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   singleServer:
///     type: azure-native:dbforpostgresql:SingleServer
///     properties:
///       location: brazilsouth
///       properties:
///         createMode: PointInTimeRestore
///         restorePointInTime: 2017-12-14T00:00:37.467Z
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver
///       resourceGroupName: TargetResourceGroup
///       serverName: targetserver
///       sku:
///         capacity: 2
///         family: Gen5
///         name: B_Gen5_2
///         tier: Basic
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
///     var singleServer = new AzureNative.DBforPostgreSQL.SingleServer("singleServer", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.DBforPostgreSQL.Inputs.ServerPropertiesForDefaultCreateArgs
///         {
///             AdministratorLogin = "cloudsa",
///             AdministratorLoginPassword = "<administratorLoginPassword>",
///             CreateMode = "Default",
///             MinimalTlsVersion = AzureNative.DBforPostgreSQL.MinimalTlsVersionEnum.TLS1_2,
///             SslEnforcement = AzureNative.DBforPostgreSQL.SslEnforcementEnum.Enabled,
///             StorageProfile = new AzureNative.DBforPostgreSQL.Inputs.StorageProfileArgs
///             {
///                 BackupRetentionDays = 7,
///                 GeoRedundantBackup = AzureNative.DBforPostgreSQL.GeoRedundantBackup.Disabled,
///                 StorageMB = 128000,
///             },
///         },
///         ResourceGroupName = "TestGroup",
///         ServerName = "pgtestsvc4",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SingleServerSkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "B_Gen5_2",
///             Tier = AzureNative.DBforPostgreSQL.SingleServerSkuTier.Basic,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServer(ctx, "singleServer", &dbforpostgresql.SingleServerArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &dbforpostgresql.ServerPropertiesForDefaultCreateArgs{
/// 				AdministratorLogin:         pulumi.String("cloudsa"),
/// 				AdministratorLoginPassword: pulumi.String("<administratorLoginPassword>"),
/// 				CreateMode:                 pulumi.String("Default"),
/// 				MinimalTlsVersion:          pulumi.String(dbforpostgresql.MinimalTlsVersionEnum_TLS1_2),
/// 				SslEnforcement:             dbforpostgresql.SslEnforcementEnumEnabled,
/// 				StorageProfile: &dbforpostgresql.StorageProfileArgs{
/// 					BackupRetentionDays: pulumi.Int(7),
/// 					GeoRedundantBackup:  pulumi.String(dbforpostgresql.GeoRedundantBackupDisabled),
/// 					StorageMB:           pulumi.Int(128000),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			ServerName:        pulumi.String("pgtestsvc4"),
/// 			Sku: &dbforpostgresql.SingleServerSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("B_Gen5_2"),
/// 				Tier:     pulumi.String(dbforpostgresql.SingleServerSkuTierBasic),
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServer;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SingleServerSkuArgs;
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
///         var singleServer = new SingleServer("singleServer", SingleServerArgs.builder()
///             .location("westus")
///             .properties(ServerPropertiesForDefaultCreateArgs.builder()
///                 .administratorLogin("cloudsa")
///                 .administratorLoginPassword("<administratorLoginPassword>")
///                 .createMode("Default")
///                 .minimalTlsVersion("TLS1_2")
///                 .sslEnforcement("Enabled")
///                 .storageProfile(StorageProfileArgs.builder()
///                     .backupRetentionDays(7)
///                     .geoRedundantBackup("Disabled")
///                     .storageMB(128000)
///                     .build())
///                 .build())
///             .resourceGroupName("TestGroup")
///             .serverName("pgtestsvc4")
///             .sku(SingleServerSkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("B_Gen5_2")
///                 .tier("Basic")
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
/// const singleServer = new azure_native.dbforpostgresql.SingleServer("singleServer", {
///     location: "westus",
///     properties: {
///         administratorLogin: "cloudsa",
///         administratorLoginPassword: "<administratorLoginPassword>",
///         createMode: "Default",
///         minimalTlsVersion: azure_native.dbforpostgresql.MinimalTlsVersionEnum.TLS1_2,
///         sslEnforcement: azure_native.dbforpostgresql.SslEnforcementEnum.Enabled,
///         storageProfile: {
///             backupRetentionDays: 7,
///             geoRedundantBackup: azure_native.dbforpostgresql.GeoRedundantBackup.Disabled,
///             storageMB: 128000,
///         },
///     },
///     resourceGroupName: "TestGroup",
///     serverName: "pgtestsvc4",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "B_Gen5_2",
///         tier: azure_native.dbforpostgresql.SingleServerSkuTier.Basic,
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
/// single_server = azure_native.dbforpostgresql.SingleServer("singleServer",
///     location="westus",
///     properties={
///         "administrator_login": "cloudsa",
///         "administrator_login_password": "<administratorLoginPassword>",
///         "create_mode": "Default",
///         "minimal_tls_version": azure_native.dbforpostgresql.MinimalTlsVersionEnum.TLS1_2,
///         "ssl_enforcement": azure_native.dbforpostgresql.SslEnforcementEnum.ENABLED,
///         "storage_profile": {
///             "backup_retention_days": 7,
///             "geo_redundant_backup": azure_native.dbforpostgresql.GeoRedundantBackup.DISABLED,
///             "storage_mb": 128000,
///         },
///     },
///     resource_group_name="TestGroup",
///     server_name="pgtestsvc4",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "B_Gen5_2",
///         "tier": azure_native.dbforpostgresql.SingleServerSkuTier.BASIC,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   singleServer:
///     type: azure-native:dbforpostgresql:SingleServer
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
///           geoRedundantBackup: Disabled
///           storageMB: 128000
///       resourceGroupName: TestGroup
///       serverName: pgtestsvc4
///       sku:
///         capacity: 2
///         family: Gen5
///         name: B_Gen5_2
///         tier: Basic
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
///     var singleServer = new AzureNative.DBforPostgreSQL.SingleServer("singleServer", new()
///     {
///         Location = "westcentralus",
///         Properties = new AzureNative.DBforPostgreSQL.Inputs.ServerPropertiesForReplicaArgs
///         {
///             CreateMode = "Replica",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master",
///         },
///         ResourceGroupName = "TestGroup_WestCentralUS",
///         ServerName = "testserver-replica1",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SingleServerSkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "GP_Gen5_2",
///             Tier = AzureNative.DBforPostgreSQL.SingleServerSkuTier.GeneralPurpose,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServer(ctx, "singleServer", &dbforpostgresql.SingleServerArgs{
/// 			Location: pulumi.String("westcentralus"),
/// 			Properties: &dbforpostgresql.ServerPropertiesForReplicaArgs{
/// 				CreateMode:     pulumi.String("Replica"),
/// 				SourceServerId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TestGroup_WestCentralUS"),
/// 			ServerName:        pulumi.String("testserver-replica1"),
/// 			Sku: &dbforpostgresql.SingleServerSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("GP_Gen5_2"),
/// 				Tier:     pulumi.String(dbforpostgresql.SingleServerSkuTierGeneralPurpose),
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServer;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SingleServerSkuArgs;
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
///         var singleServer = new SingleServer("singleServer", SingleServerArgs.builder()
///             .location("westcentralus")
///             .properties(ServerPropertiesForReplicaArgs.builder()
///                 .createMode("Replica")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master")
///                 .build())
///             .resourceGroupName("TestGroup_WestCentralUS")
///             .serverName("testserver-replica1")
///             .sku(SingleServerSkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen5")
///                 .name("GP_Gen5_2")
///                 .tier("GeneralPurpose")
///                 .build())
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
/// const singleServer = new azure_native.dbforpostgresql.SingleServer("singleServer", {
///     location: "westcentralus",
///     properties: {
///         createMode: "Replica",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master",
///     },
///     resourceGroupName: "TestGroup_WestCentralUS",
///     serverName: "testserver-replica1",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "GP_Gen5_2",
///         tier: azure_native.dbforpostgresql.SingleServerSkuTier.GeneralPurpose,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// single_server = azure_native.dbforpostgresql.SingleServer("singleServer",
///     location="westcentralus",
///     properties={
///         "create_mode": "Replica",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master",
///     },
///     resource_group_name="TestGroup_WestCentralUS",
///     server_name="testserver-replica1",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "GP_Gen5_2",
///         "tier": azure_native.dbforpostgresql.SingleServerSkuTier.GENERAL_PURPOSE,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   singleServer:
///     type: azure-native:dbforpostgresql:SingleServer
///     properties:
///       location: westcentralus
///       properties:
///         createMode: Replica
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestGroup_WestCentralUS/providers/Microsoft.DBforPostgreSQL/servers/testserver-master
///       resourceGroupName: TestGroup_WestCentralUS
///       serverName: testserver-replica1
///       sku:
///         capacity: 2
///         family: Gen5
///         name: GP_Gen5_2
///         tier: GeneralPurpose
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
///     var singleServer = new AzureNative.DBforPostgreSQL.SingleServer("singleServer", new()
///     {
///         Location = "westus",
///         Properties = new AzureNative.DBforPostgreSQL.Inputs.ServerPropertiesForGeoRestoreArgs
///         {
///             CreateMode = "GeoRestore",
///             SourceServerId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///         },
///         ResourceGroupName = "TargetResourceGroup",
///         ServerName = "targetserver",
///         Sku = new AzureNative.DBforPostgreSQL.Inputs.SingleServerSkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen5",
///             Name = "GP_Gen5_2",
///             Tier = AzureNative.DBforPostgreSQL.SingleServerSkuTier.GeneralPurpose,
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
/// 	dbforpostgresql "github.com/pulumi/pulumi-azure-native-sdk/dbforpostgresql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dbforpostgresql.NewSingleServer(ctx, "singleServer", &dbforpostgresql.SingleServerArgs{
/// 			Location: pulumi.String("westus"),
/// 			Properties: &dbforpostgresql.ServerPropertiesForGeoRestoreArgs{
/// 				CreateMode:     pulumi.String("GeoRestore"),
/// 				SourceServerId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver"),
/// 			},
/// 			ResourceGroupName: pulumi.String("TargetResourceGroup"),
/// 			ServerName:        pulumi.String("targetserver"),
/// 			Sku: &dbforpostgresql.SingleServerSkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen5"),
/// 				Name:     pulumi.String("GP_Gen5_2"),
/// 				Tier:     pulumi.String(dbforpostgresql.SingleServerSkuTierGeneralPurpose),
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
/// import com.pulumi.azurenative.dbforpostgresql.SingleServer;
/// import com.pulumi.azurenative.dbforpostgresql.SingleServerArgs;
/// import com.pulumi.azurenative.dbforpostgresql.inputs.SingleServerSkuArgs;
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
///         var singleServer = new SingleServer("singleServer", SingleServerArgs.builder()
///             .location("westus")
///             .properties(ServerPropertiesForGeoRestoreArgs.builder()
///                 .createMode("GeoRestore")
///                 .sourceServerId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver")
///                 .build())
///             .resourceGroupName("TargetResourceGroup")
///             .serverName("targetserver")
///             .sku(SingleServerSkuArgs.builder()
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
/// const singleServer = new azure_native.dbforpostgresql.SingleServer("singleServer", {
///     location: "westus",
///     properties: {
///         createMode: "GeoRestore",
///         sourceServerId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///     },
///     resourceGroupName: "TargetResourceGroup",
///     serverName: "targetserver",
///     sku: {
///         capacity: 2,
///         family: "Gen5",
///         name: "GP_Gen5_2",
///         tier: azure_native.dbforpostgresql.SingleServerSkuTier.GeneralPurpose,
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
/// single_server = azure_native.dbforpostgresql.SingleServer("singleServer",
///     location="westus",
///     properties={
///         "create_mode": "GeoRestore",
///         "source_server_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver",
///     },
///     resource_group_name="TargetResourceGroup",
///     server_name="targetserver",
///     sku={
///         "capacity": 2,
///         "family": "Gen5",
///         "name": "GP_Gen5_2",
///         "tier": azure_native.dbforpostgresql.SingleServerSkuTier.GENERAL_PURPOSE,
///     },
///     tags={
///         "ElasticServer": "1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   singleServer:
///     type: azure-native:dbforpostgresql:SingleServer
///     properties:
///       location: westus
///       properties:
///         createMode: GeoRestore
///         sourceServerId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/SourceResourceGroup/providers/Microsoft.DBforPostgreSQL/servers/sourceserver
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
/// $ pulumi import azure-native:dbforpostgresql:SingleServer targetserver /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/servers/{serverName}
/// ```
class SingleServer extends pulumi.CustomResource {
  /// The administrator's login name of a server. Can only be specified when the server is being created (and is required for creation).
  late final pulumi.Output<String?> administratorLogin;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Status showing whether the server data encryption is enabled with customer-managed keys.
  late final pulumi.Output<String> byokEnforcement;
  /// Earliest restore point creation time (ISO8601 format)
  late final pulumi.Output<String?> earliestRestoreDate;
  /// The fully qualified domain name of a server.
  late final pulumi.Output<String?> fullyQualifiedDomainName;
  /// The Azure Active Directory identity of the server.
  late final pulumi.Output<ResourceIdentityResponse?> identity;
  /// Status showing whether the server enabled infrastructure encryption.
  late final pulumi.Output<String?> infrastructureEncryption;
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
  late final pulumi.Output<SingleServerSkuResponse?> sku;
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

  /// Creates a new [SingleServer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SingleServer]. {@macro pulumi_dbforpostgresql_single_server_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SingleServer(
    String name, {
    SingleServerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:SingleServer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administratorLogin = registerOutput<String?>('administratorLogin');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    byokEnforcement = registerOutput<String>('byokEnforcement');
    earliestRestoreDate = registerOutput<String?>('earliestRestoreDate');
    fullyQualifiedDomainName = registerOutput<String?>('fullyQualifiedDomainName');
    identity = registerOutput<ResourceIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureEncryption = registerOutput<String?>('infrastructureEncryption');
    location = registerOutput<String>('location');
    masterServerId = registerOutput<String?>('masterServerId');
    minimalTlsVersion = registerOutput<String?>('minimalTlsVersion');
    this.name = registerOutput<String>('name');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    publicNetworkAccess = registerOutput<String?>('publicNetworkAccess');
    replicaCapacity = registerOutput<int?>('replicaCapacity');
    replicationRole = registerOutput<String?>('replicationRole');
    sku = registerOutput<SingleServerSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SingleServerSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    sslEnforcement = registerOutput<String?>('sslEnforcement');
    storageProfile = registerOutput<StorageProfileResponse?>('storageProfile', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StorageProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    userVisibleState = registerOutput<String?>('userVisibleState');
    version = registerOutput<String?>('version');
  }
}
