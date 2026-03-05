import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_properties_response.dart';
import 'server_group_cluster_args.dart';
import 'server_group_cluster_auth_config_response.dart';
import 'server_group_cluster_data_encryption_response.dart';
import 'server_group_cluster_maintenance_window_response.dart';
import 'system_data_response.dart';

/// Represents a cluster.
///
/// Uses Azure REST API version 2023-03-02-preview.
///
/// Other available API versions: 2022-11-08. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dbforpostgresql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new cluster as a point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         ClusterName = "testcluster",
///         Location = "westus",
///         PointInTimeUTC = "2017-12-14T00:00:37.467Z",
///         ResourceGroupName = "TestGroup",
///         SourceLocation = "westus",
///         SourceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster",
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			ClusterName:       pulumi.String("testcluster"),
/// 			Location:          pulumi.String("westus"),
/// 			PointInTimeUTC:    pulumi.String("2017-12-14T00:00:37.467Z"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			SourceLocation:    pulumi.String("westus"),
/// 			SourceResourceId:  pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .clusterName("testcluster")
///             .location("westus")
///             .pointInTimeUTC("2017-12-14T00:00:37.467Z")
///             .resourceGroupName("TestGroup")
///             .sourceLocation("westus")
///             .sourceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster")
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     clusterName: "testcluster",
///     location: "westus",
///     pointInTimeUTC: "2017-12-14T00:00:37.467Z",
///     resourceGroupName: "TestGroup",
///     sourceLocation: "westus",
///     sourceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     cluster_name="testcluster",
///     location="westus",
///     point_in_time_utc="2017-12-14T00:00:37.467Z",
///     resource_group_name="TestGroup",
///     source_location="westus",
///     source_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster")
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       clusterName: testcluster
///       location: westus
///       pointInTimeUTC: 2017-12-14T00:00:37.467Z
///       resourceGroupName: TestGroup
///       sourceLocation: westus
///       sourceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/source-cluster
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new cluster as a read replica
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         ClusterName = "testcluster",
///         Location = "westus",
///         ResourceGroupName = "TestGroup",
///         SourceLocation = "westus",
///         SourceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster",
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			ClusterName:       pulumi.String("testcluster"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("TestGroup"),
/// 			SourceLocation:    pulumi.String("westus"),
/// 			SourceResourceId:  pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .clusterName("testcluster")
///             .location("westus")
///             .resourceGroupName("TestGroup")
///             .sourceLocation("westus")
///             .sourceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster")
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     clusterName: "testcluster",
///     location: "westus",
///     resourceGroupName: "TestGroup",
///     sourceLocation: "westus",
///     sourceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     cluster_name="testcluster",
///     location="westus",
///     resource_group_name="TestGroup",
///     source_location="westus",
///     source_resource_id="/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster")
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       clusterName: testcluster
///       location: westus
///       resourceGroupName: TestGroup
///       sourceLocation: westus
///       sourceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/sourcecluster
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new cluster with custom database name
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         AdministratorLoginPassword = "password",
///         CitusVersion = "11.3",
///         ClusterName = "testcluster-custom-db-name",
///         CoordinatorEnablePublicIpAccess = true,
///         CoordinatorServerEdition = "GeneralPurpose",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVCores = 8,
///         DatabaseName = "testdbname",
///         EnableHa = true,
///         EnableShardsOnCoordinator = true,
///         Location = "westus",
///         NodeCount = 0,
///         PostgresqlVersion = "15",
///         PreferredPrimaryZone = "1",
///         ResourceGroupName = "TestGroup",
///         Tags =
///         {
///             { "owner", "JohnDoe" },
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			AdministratorLoginPassword:      pulumi.String("password"),
/// 			CitusVersion:                    pulumi.String("11.3"),
/// 			ClusterName:                     pulumi.String("testcluster-custom-db-name"),
/// 			CoordinatorEnablePublicIpAccess: pulumi.Bool(true),
/// 			CoordinatorServerEdition:        pulumi.String("GeneralPurpose"),
/// 			CoordinatorStorageQuotaInMb:     pulumi.Int(131072),
/// 			CoordinatorVCores:               pulumi.Int(8),
/// 			DatabaseName:                    pulumi.String("testdbname"),
/// 			EnableHa:                        pulumi.Bool(true),
/// 			EnableShardsOnCoordinator:       pulumi.Bool(true),
/// 			Location:                        pulumi.String("westus"),
/// 			NodeCount:                       pulumi.Int(0),
/// 			PostgresqlVersion:               pulumi.String("15"),
/// 			PreferredPrimaryZone:            pulumi.String("1"),
/// 			ResourceGroupName:               pulumi.String("TestGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"owner": pulumi.String("JohnDoe"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .administratorLoginPassword("password")
///             .citusVersion("11.3")
///             .clusterName("testcluster-custom-db-name")
///             .coordinatorEnablePublicIpAccess(true)
///             .coordinatorServerEdition("GeneralPurpose")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVCores(8)
///             .databaseName("testdbname")
///             .enableHa(true)
///             .enableShardsOnCoordinator(true)
///             .location("westus")
///             .nodeCount(0)
///             .postgresqlVersion("15")
///             .preferredPrimaryZone("1")
///             .resourceGroupName("TestGroup")
///             .tags(Map.of("owner", "JohnDoe"))
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     administratorLoginPassword: "password",
///     citusVersion: "11.3",
///     clusterName: "testcluster-custom-db-name",
///     coordinatorEnablePublicIpAccess: true,
///     coordinatorServerEdition: "GeneralPurpose",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVCores: 8,
///     databaseName: "testdbname",
///     enableHa: true,
///     enableShardsOnCoordinator: true,
///     location: "westus",
///     nodeCount: 0,
///     postgresqlVersion: "15",
///     preferredPrimaryZone: "1",
///     resourceGroupName: "TestGroup",
///     tags: {
///         owner: "JohnDoe",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     administrator_login_password="password",
///     citus_version="11.3",
///     cluster_name="testcluster-custom-db-name",
///     coordinator_enable_public_ip_access=True,
///     coordinator_server_edition="GeneralPurpose",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_v_cores=8,
///     database_name="testdbname",
///     enable_ha=True,
///     enable_shards_on_coordinator=True,
///     location="westus",
///     node_count=0,
///     postgresql_version="15",
///     preferred_primary_zone="1",
///     resource_group_name="TestGroup",
///     tags={
///         "owner": "JohnDoe",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       administratorLoginPassword: password
///       citusVersion: '11.3'
///       clusterName: testcluster-custom-db-name
///       coordinatorEnablePublicIpAccess: true
///       coordinatorServerEdition: GeneralPurpose
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVCores: 8
///       databaseName: testdbname
///       enableHa: true
///       enableShardsOnCoordinator: true
///       location: westus
///       nodeCount: 0
///       postgresqlVersion: '15'
///       preferredPrimaryZone: '1'
///       resourceGroupName: TestGroup
///       tags:
///         owner: JohnDoe
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new multi-node cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         AdministratorLoginPassword = "password",
///         CitusVersion = "11.1",
///         ClusterName = "testcluster-multinode",
///         CoordinatorEnablePublicIpAccess = true,
///         CoordinatorServerEdition = "GeneralPurpose",
///         CoordinatorStorageQuotaInMb = 524288,
///         CoordinatorVCores = 4,
///         EnableHa = true,
///         EnableShardsOnCoordinator = false,
///         Location = "westus",
///         NodeCount = 3,
///         NodeEnablePublicIpAccess = false,
///         NodeServerEdition = "MemoryOptimized",
///         NodeStorageQuotaInMb = 524288,
///         NodeVCores = 8,
///         PostgresqlVersion = "15",
///         PreferredPrimaryZone = "1",
///         ResourceGroupName = "TestGroup",
///         Tags = null,
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			AdministratorLoginPassword:      pulumi.String("password"),
/// 			CitusVersion:                    pulumi.String("11.1"),
/// 			ClusterName:                     pulumi.String("testcluster-multinode"),
/// 			CoordinatorEnablePublicIpAccess: pulumi.Bool(true),
/// 			CoordinatorServerEdition:        pulumi.String("GeneralPurpose"),
/// 			CoordinatorStorageQuotaInMb:     pulumi.Int(524288),
/// 			CoordinatorVCores:               pulumi.Int(4),
/// 			EnableHa:                        pulumi.Bool(true),
/// 			EnableShardsOnCoordinator:       pulumi.Bool(false),
/// 			Location:                        pulumi.String("westus"),
/// 			NodeCount:                       pulumi.Int(3),
/// 			NodeEnablePublicIpAccess:        pulumi.Bool(false),
/// 			NodeServerEdition:               pulumi.String("MemoryOptimized"),
/// 			NodeStorageQuotaInMb:            pulumi.Int(524288),
/// 			NodeVCores:                      pulumi.Int(8),
/// 			PostgresqlVersion:               pulumi.String("15"),
/// 			PreferredPrimaryZone:            pulumi.String("1"),
/// 			ResourceGroupName:               pulumi.String("TestGroup"),
/// 			Tags:                            pulumi.StringMap{},
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .administratorLoginPassword("password")
///             .citusVersion("11.1")
///             .clusterName("testcluster-multinode")
///             .coordinatorEnablePublicIpAccess(true)
///             .coordinatorServerEdition("GeneralPurpose")
///             .coordinatorStorageQuotaInMb(524288)
///             .coordinatorVCores(4)
///             .enableHa(true)
///             .enableShardsOnCoordinator(false)
///             .location("westus")
///             .nodeCount(3)
///             .nodeEnablePublicIpAccess(false)
///             .nodeServerEdition("MemoryOptimized")
///             .nodeStorageQuotaInMb(524288)
///             .nodeVCores(8)
///             .postgresqlVersion("15")
///             .preferredPrimaryZone("1")
///             .resourceGroupName("TestGroup")
///             .tags(Map.ofEntries(
///             ))
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     administratorLoginPassword: "password",
///     citusVersion: "11.1",
///     clusterName: "testcluster-multinode",
///     coordinatorEnablePublicIpAccess: true,
///     coordinatorServerEdition: "GeneralPurpose",
///     coordinatorStorageQuotaInMb: 524288,
///     coordinatorVCores: 4,
///     enableHa: true,
///     enableShardsOnCoordinator: false,
///     location: "westus",
///     nodeCount: 3,
///     nodeEnablePublicIpAccess: false,
///     nodeServerEdition: "MemoryOptimized",
///     nodeStorageQuotaInMb: 524288,
///     nodeVCores: 8,
///     postgresqlVersion: "15",
///     preferredPrimaryZone: "1",
///     resourceGroupName: "TestGroup",
///     tags: {},
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     administrator_login_password="password",
///     citus_version="11.1",
///     cluster_name="testcluster-multinode",
///     coordinator_enable_public_ip_access=True,
///     coordinator_server_edition="GeneralPurpose",
///     coordinator_storage_quota_in_mb=524288,
///     coordinator_v_cores=4,
///     enable_ha=True,
///     enable_shards_on_coordinator=False,
///     location="westus",
///     node_count=3,
///     node_enable_public_ip_access=False,
///     node_server_edition="MemoryOptimized",
///     node_storage_quota_in_mb=524288,
///     node_v_cores=8,
///     postgresql_version="15",
///     preferred_primary_zone="1",
///     resource_group_name="TestGroup",
///     tags={})
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       administratorLoginPassword: password
///       citusVersion: '11.1'
///       clusterName: testcluster-multinode
///       coordinatorEnablePublicIpAccess: true
///       coordinatorServerEdition: GeneralPurpose
///       coordinatorStorageQuotaInMb: 524288
///       coordinatorVCores: 4
///       enableHa: true
///       enableShardsOnCoordinator: false
///       location: westus
///       nodeCount: 3
///       nodeEnablePublicIpAccess: false
///       nodeServerEdition: MemoryOptimized
///       nodeStorageQuotaInMb: 524288
///       nodeVCores: 8
///       postgresqlVersion: '15'
///       preferredPrimaryZone: '1'
///       resourceGroupName: TestGroup
///       tags: {}
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new single node Burstable 1 vCore cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         AdministratorLoginPassword = "password",
///         CitusVersion = "11.3",
///         ClusterName = "testcluster-burstablev1",
///         CoordinatorEnablePublicIpAccess = true,
///         CoordinatorServerEdition = "BurstableMemoryOptimized",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVCores = 1,
///         EnableHa = false,
///         EnableShardsOnCoordinator = true,
///         Location = "westus",
///         NodeCount = 0,
///         PostgresqlVersion = "15",
///         PreferredPrimaryZone = "1",
///         ResourceGroupName = "TestGroup",
///         Tags =
///         {
///             { "owner", "JohnDoe" },
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			AdministratorLoginPassword:      pulumi.String("password"),
/// 			CitusVersion:                    pulumi.String("11.3"),
/// 			ClusterName:                     pulumi.String("testcluster-burstablev1"),
/// 			CoordinatorEnablePublicIpAccess: pulumi.Bool(true),
/// 			CoordinatorServerEdition:        pulumi.String("BurstableMemoryOptimized"),
/// 			CoordinatorStorageQuotaInMb:     pulumi.Int(131072),
/// 			CoordinatorVCores:               pulumi.Int(1),
/// 			EnableHa:                        pulumi.Bool(false),
/// 			EnableShardsOnCoordinator:       pulumi.Bool(true),
/// 			Location:                        pulumi.String("westus"),
/// 			NodeCount:                       pulumi.Int(0),
/// 			PostgresqlVersion:               pulumi.String("15"),
/// 			PreferredPrimaryZone:            pulumi.String("1"),
/// 			ResourceGroupName:               pulumi.String("TestGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"owner": pulumi.String("JohnDoe"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .administratorLoginPassword("password")
///             .citusVersion("11.3")
///             .clusterName("testcluster-burstablev1")
///             .coordinatorEnablePublicIpAccess(true)
///             .coordinatorServerEdition("BurstableMemoryOptimized")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVCores(1)
///             .enableHa(false)
///             .enableShardsOnCoordinator(true)
///             .location("westus")
///             .nodeCount(0)
///             .postgresqlVersion("15")
///             .preferredPrimaryZone("1")
///             .resourceGroupName("TestGroup")
///             .tags(Map.of("owner", "JohnDoe"))
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     administratorLoginPassword: "password",
///     citusVersion: "11.3",
///     clusterName: "testcluster-burstablev1",
///     coordinatorEnablePublicIpAccess: true,
///     coordinatorServerEdition: "BurstableMemoryOptimized",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVCores: 1,
///     enableHa: false,
///     enableShardsOnCoordinator: true,
///     location: "westus",
///     nodeCount: 0,
///     postgresqlVersion: "15",
///     preferredPrimaryZone: "1",
///     resourceGroupName: "TestGroup",
///     tags: {
///         owner: "JohnDoe",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     administrator_login_password="password",
///     citus_version="11.3",
///     cluster_name="testcluster-burstablev1",
///     coordinator_enable_public_ip_access=True,
///     coordinator_server_edition="BurstableMemoryOptimized",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_v_cores=1,
///     enable_ha=False,
///     enable_shards_on_coordinator=True,
///     location="westus",
///     node_count=0,
///     postgresql_version="15",
///     preferred_primary_zone="1",
///     resource_group_name="TestGroup",
///     tags={
///         "owner": "JohnDoe",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       administratorLoginPassword: password
///       citusVersion: '11.3'
///       clusterName: testcluster-burstablev1
///       coordinatorEnablePublicIpAccess: true
///       coordinatorServerEdition: BurstableMemoryOptimized
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVCores: 1
///       enableHa: false
///       enableShardsOnCoordinator: true
///       location: westus
///       nodeCount: 0
///       postgresqlVersion: '15'
///       preferredPrimaryZone: '1'
///       resourceGroupName: TestGroup
///       tags:
///         owner: JohnDoe
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new single node Burstable 2 vCores cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         AdministratorLoginPassword = "password",
///         CitusVersion = "11.3",
///         ClusterName = "testcluster-burstablev2",
///         CoordinatorEnablePublicIpAccess = true,
///         CoordinatorServerEdition = "BurstableGeneralPurpose",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVCores = 2,
///         EnableHa = false,
///         EnableShardsOnCoordinator = true,
///         Location = "westus",
///         NodeCount = 0,
///         PostgresqlVersion = "15",
///         PreferredPrimaryZone = "1",
///         ResourceGroupName = "TestGroup",
///         Tags =
///         {
///             { "owner", "JohnDoe" },
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			AdministratorLoginPassword:      pulumi.String("password"),
/// 			CitusVersion:                    pulumi.String("11.3"),
/// 			ClusterName:                     pulumi.String("testcluster-burstablev2"),
/// 			CoordinatorEnablePublicIpAccess: pulumi.Bool(true),
/// 			CoordinatorServerEdition:        pulumi.String("BurstableGeneralPurpose"),
/// 			CoordinatorStorageQuotaInMb:     pulumi.Int(131072),
/// 			CoordinatorVCores:               pulumi.Int(2),
/// 			EnableHa:                        pulumi.Bool(false),
/// 			EnableShardsOnCoordinator:       pulumi.Bool(true),
/// 			Location:                        pulumi.String("westus"),
/// 			NodeCount:                       pulumi.Int(0),
/// 			PostgresqlVersion:               pulumi.String("15"),
/// 			PreferredPrimaryZone:            pulumi.String("1"),
/// 			ResourceGroupName:               pulumi.String("TestGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"owner": pulumi.String("JohnDoe"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .administratorLoginPassword("password")
///             .citusVersion("11.3")
///             .clusterName("testcluster-burstablev2")
///             .coordinatorEnablePublicIpAccess(true)
///             .coordinatorServerEdition("BurstableGeneralPurpose")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVCores(2)
///             .enableHa(false)
///             .enableShardsOnCoordinator(true)
///             .location("westus")
///             .nodeCount(0)
///             .postgresqlVersion("15")
///             .preferredPrimaryZone("1")
///             .resourceGroupName("TestGroup")
///             .tags(Map.of("owner", "JohnDoe"))
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     administratorLoginPassword: "password",
///     citusVersion: "11.3",
///     clusterName: "testcluster-burstablev2",
///     coordinatorEnablePublicIpAccess: true,
///     coordinatorServerEdition: "BurstableGeneralPurpose",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVCores: 2,
///     enableHa: false,
///     enableShardsOnCoordinator: true,
///     location: "westus",
///     nodeCount: 0,
///     postgresqlVersion: "15",
///     preferredPrimaryZone: "1",
///     resourceGroupName: "TestGroup",
///     tags: {
///         owner: "JohnDoe",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     administrator_login_password="password",
///     citus_version="11.3",
///     cluster_name="testcluster-burstablev2",
///     coordinator_enable_public_ip_access=True,
///     coordinator_server_edition="BurstableGeneralPurpose",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_v_cores=2,
///     enable_ha=False,
///     enable_shards_on_coordinator=True,
///     location="westus",
///     node_count=0,
///     postgresql_version="15",
///     preferred_primary_zone="1",
///     resource_group_name="TestGroup",
///     tags={
///         "owner": "JohnDoe",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       administratorLoginPassword: password
///       citusVersion: '11.3'
///       clusterName: testcluster-burstablev2
///       coordinatorEnablePublicIpAccess: true
///       coordinatorServerEdition: BurstableGeneralPurpose
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVCores: 2
///       enableHa: false
///       enableShardsOnCoordinator: true
///       location: westus
///       nodeCount: 0
///       postgresqlVersion: '15'
///       preferredPrimaryZone: '1'
///       resourceGroupName: TestGroup
///       tags:
///         owner: JohnDoe
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new single node cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverGroupCluster = new AzureNative.DBforPostgreSQL.ServerGroupCluster("serverGroupCluster", new()
///     {
///         AdministratorLoginPassword = "password",
///         CitusVersion = "11.3",
///         ClusterName = "testcluster-singlenode",
///         CoordinatorEnablePublicIpAccess = true,
///         CoordinatorServerEdition = "GeneralPurpose",
///         CoordinatorStorageQuotaInMb = 131072,
///         CoordinatorVCores = 8,
///         EnableHa = true,
///         EnableShardsOnCoordinator = true,
///         Location = "westus",
///         NodeCount = 0,
///         PostgresqlVersion = "15",
///         PreferredPrimaryZone = "1",
///         ResourceGroupName = "TestGroup",
///         Tags =
///         {
///             { "owner", "JohnDoe" },
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
/// 		_, err := dbforpostgresql.NewServerGroupCluster(ctx, "serverGroupCluster", &dbforpostgresql.ServerGroupClusterArgs{
/// 			AdministratorLoginPassword:      pulumi.String("password"),
/// 			CitusVersion:                    pulumi.String("11.3"),
/// 			ClusterName:                     pulumi.String("testcluster-singlenode"),
/// 			CoordinatorEnablePublicIpAccess: pulumi.Bool(true),
/// 			CoordinatorServerEdition:        pulumi.String("GeneralPurpose"),
/// 			CoordinatorStorageQuotaInMb:     pulumi.Int(131072),
/// 			CoordinatorVCores:               pulumi.Int(8),
/// 			EnableHa:                        pulumi.Bool(true),
/// 			EnableShardsOnCoordinator:       pulumi.Bool(true),
/// 			Location:                        pulumi.String("westus"),
/// 			NodeCount:                       pulumi.Int(0),
/// 			PostgresqlVersion:               pulumi.String("15"),
/// 			PreferredPrimaryZone:            pulumi.String("1"),
/// 			ResourceGroupName:               pulumi.String("TestGroup"),
/// 			Tags: pulumi.StringMap{
/// 				"owner": pulumi.String("JohnDoe"),
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
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupCluster;
/// import com.pulumi.azurenative.dbforpostgresql.ServerGroupClusterArgs;
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
///         var serverGroupCluster = new ServerGroupCluster("serverGroupCluster", ServerGroupClusterArgs.builder()
///             .administratorLoginPassword("password")
///             .citusVersion("11.3")
///             .clusterName("testcluster-singlenode")
///             .coordinatorEnablePublicIpAccess(true)
///             .coordinatorServerEdition("GeneralPurpose")
///             .coordinatorStorageQuotaInMb(131072)
///             .coordinatorVCores(8)
///             .enableHa(true)
///             .enableShardsOnCoordinator(true)
///             .location("westus")
///             .nodeCount(0)
///             .postgresqlVersion("15")
///             .preferredPrimaryZone("1")
///             .resourceGroupName("TestGroup")
///             .tags(Map.of("owner", "JohnDoe"))
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
/// const serverGroupCluster = new azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster", {
///     administratorLoginPassword: "password",
///     citusVersion: "11.3",
///     clusterName: "testcluster-singlenode",
///     coordinatorEnablePublicIpAccess: true,
///     coordinatorServerEdition: "GeneralPurpose",
///     coordinatorStorageQuotaInMb: 131072,
///     coordinatorVCores: 8,
///     enableHa: true,
///     enableShardsOnCoordinator: true,
///     location: "westus",
///     nodeCount: 0,
///     postgresqlVersion: "15",
///     preferredPrimaryZone: "1",
///     resourceGroupName: "TestGroup",
///     tags: {
///         owner: "JohnDoe",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_group_cluster = azure_native.dbforpostgresql.ServerGroupCluster("serverGroupCluster",
///     administrator_login_password="password",
///     citus_version="11.3",
///     cluster_name="testcluster-singlenode",
///     coordinator_enable_public_ip_access=True,
///     coordinator_server_edition="GeneralPurpose",
///     coordinator_storage_quota_in_mb=131072,
///     coordinator_v_cores=8,
///     enable_ha=True,
///     enable_shards_on_coordinator=True,
///     location="westus",
///     node_count=0,
///     postgresql_version="15",
///     preferred_primary_zone="1",
///     resource_group_name="TestGroup",
///     tags={
///         "owner": "JohnDoe",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   serverGroupCluster:
///     type: azure-native:dbforpostgresql:ServerGroupCluster
///     properties:
///       administratorLoginPassword: password
///       citusVersion: '11.3'
///       clusterName: testcluster-singlenode
///       coordinatorEnablePublicIpAccess: true
///       coordinatorServerEdition: GeneralPurpose
///       coordinatorStorageQuotaInMb: 131072
///       coordinatorVCores: 8
///       enableHa: true
///       enableShardsOnCoordinator: true
///       location: westus
///       nodeCount: 0
///       postgresqlVersion: '15'
///       preferredPrimaryZone: '1'
///       resourceGroupName: TestGroup
///       tags:
///         owner: JohnDoe
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
/// $ pulumi import azure-native:dbforpostgresql:ServerGroupCluster testcluster-singlenode /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DBforPostgreSQL/serverGroupsv2/{clusterName}
/// ```
class ServerGroupCluster extends pulumi.CustomResource {
  /// Indicates whether the cluster was created using AAD authentication.
  late final pulumi.Output<String> aadAuthEnabled;
  /// The administrator's login name of the servers in the cluster.
  late final pulumi.Output<String> administratorLogin;
  /// Authentication configuration of a cluster.
  late final pulumi.Output<ServerGroupClusterAuthConfigResponse?> authConfig;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The Citus extension version on all cluster servers.
  late final pulumi.Output<String?> citusVersion;
  /// If public access is enabled on coordinator.
  late final pulumi.Output<bool?> coordinatorEnablePublicIpAccess;
  /// The edition of a coordinator server (default: GeneralPurpose). Required for creation.
  late final pulumi.Output<String?> coordinatorServerEdition;
  /// The storage of a server in MB. Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  late final pulumi.Output<int?> coordinatorStorageQuotaInMb;
  /// The vCores count of a server (max: 96). Required for creation. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  late final pulumi.Output<int?> coordinatorVCores;
  /// The data encryption properties of a cluster.
  late final pulumi.Output<ServerGroupClusterDataEncryptionResponse?> dataEncryption;
  /// The database name of the cluster. Only one database per cluster is supported.
  late final pulumi.Output<String?> databaseName;
  /// The earliest restore point time (ISO8601 format) for the cluster.
  late final pulumi.Output<String> earliestRestoreTime;
  /// If cluster backup is stored in another Azure region in addition to the copy of the backup stored in the cluster's region. Enabled only at the time of cluster creation.
  late final pulumi.Output<bool?> enableGeoBackup;
  /// If high availability (HA) is enabled or not for the cluster.
  late final pulumi.Output<bool?> enableHa;
  /// If distributed tables are placed on coordinator or not. Should be set to 'true' on single node clusters. Requires shard rebalancing after value is changed.
  late final pulumi.Output<bool?> enableShardsOnCoordinator;
  /// Describes the identity of the cluster.
  late final pulumi.Output<IdentityPropertiesResponse?> identity;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// Maintenance window of a cluster.
  late final pulumi.Output<ServerGroupClusterMaintenanceWindowResponse?> maintenanceWindow;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Worker node count of the cluster. When node count is 0, it represents a single node configuration with the ability to create distributed tables on that node. 2 or more worker nodes represent multi-node configuration. Node count value cannot be 1. Required for creation.
  late final pulumi.Output<int?> nodeCount;
  /// If public access is enabled on worker nodes.
  late final pulumi.Output<bool?> nodeEnablePublicIpAccess;
  /// The edition of a node server (default: MemoryOptimized).
  late final pulumi.Output<String?> nodeServerEdition;
  /// The storage in MB on each worker node. See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  late final pulumi.Output<int?> nodeStorageQuotaInMb;
  /// The compute in vCores on each worker node (max: 104). See https://learn.microsoft.com/azure/cosmos-db/postgresql/resources-compute for more information.
  late final pulumi.Output<int?> nodeVCores;
  /// Indicates whether the cluster was created with a password or using AAD authentication.
  late final pulumi.Output<String> passwordEnabled;
  /// Date and time in UTC (ISO8601 format) for cluster restore.
  late final pulumi.Output<String?> pointInTimeUTC;
  /// The major PostgreSQL version on all cluster servers.
  late final pulumi.Output<String?> postgresqlVersion;
  /// Preferred primary availability zone (AZ) for all cluster servers.
  late final pulumi.Output<String?> preferredPrimaryZone;
  /// The private endpoint connections for a cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> privateEndpointConnections;
  /// Provisioning state of the cluster
  late final pulumi.Output<String> provisioningState;
  /// The array of read replica clusters.
  late final pulumi.Output<List<String>> readReplicas;
  /// The list of server names in the cluster
  late final pulumi.Output<List<Map<String, dynamic>>> serverNames;
  /// The Azure region of source cluster for read replica clusters.
  late final pulumi.Output<String?> sourceLocation;
  /// The resource id of source cluster for read replica clusters.
  late final pulumi.Output<String?> sourceResourceId;
  /// A state of a cluster/server that is visible to user.
  late final pulumi.Output<String> state;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ServerGroupCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroupCluster]. {@macro pulumi_dbforpostgresql_server_group_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroupCluster(
    String name, {
    ServerGroupClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:dbforpostgresql:ServerGroupCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aadAuthEnabled = registerOutput<String>('aadAuthEnabled');
    administratorLogin = registerOutput<String>('administratorLogin');
    authConfig = registerOutput<ServerGroupClusterAuthConfigResponse?>('authConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupClusterAuthConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    azureApiVersion = registerOutput<String>('azureApiVersion');
    citusVersion = registerOutput<String?>('citusVersion');
    coordinatorEnablePublicIpAccess = registerOutput<bool?>('coordinatorEnablePublicIpAccess');
    coordinatorServerEdition = registerOutput<String?>('coordinatorServerEdition');
    coordinatorStorageQuotaInMb = registerOutput<int?>('coordinatorStorageQuotaInMb');
    coordinatorVCores = registerOutput<int?>('coordinatorVCores');
    dataEncryption = registerOutput<ServerGroupClusterDataEncryptionResponse?>('dataEncryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupClusterDataEncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseName = registerOutput<String?>('databaseName');
    earliestRestoreTime = registerOutput<String>('earliestRestoreTime');
    enableGeoBackup = registerOutput<bool?>('enableGeoBackup');
    enableHa = registerOutput<bool?>('enableHa');
    enableShardsOnCoordinator = registerOutput<bool?>('enableShardsOnCoordinator');
    identity = registerOutput<IdentityPropertiesResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return IdentityPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    maintenanceWindow = registerOutput<ServerGroupClusterMaintenanceWindowResponse?>('maintenanceWindow', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupClusterMaintenanceWindowResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int?>('nodeCount');
    nodeEnablePublicIpAccess = registerOutput<bool?>('nodeEnablePublicIpAccess');
    nodeServerEdition = registerOutput<String?>('nodeServerEdition');
    nodeStorageQuotaInMb = registerOutput<int?>('nodeStorageQuotaInMb');
    nodeVCores = registerOutput<int?>('nodeVCores');
    passwordEnabled = registerOutput<String>('passwordEnabled');
    pointInTimeUTC = registerOutput<String?>('pointInTimeUTC');
    postgresqlVersion = registerOutput<String?>('postgresqlVersion');
    preferredPrimaryZone = registerOutput<String?>('preferredPrimaryZone');
    privateEndpointConnections = registerOutput<List<Map<String, dynamic>>>('privateEndpointConnections');
    provisioningState = registerOutput<String>('provisioningState');
    readReplicas = registerOutput<List<String>>('readReplicas');
    serverNames = registerOutput<List<Map<String, dynamic>>>('serverNames');
    sourceLocation = registerOutput<String?>('sourceLocation');
    sourceResourceId = registerOutput<String?>('sourceResourceId');
    state = registerOutput<String>('state');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
