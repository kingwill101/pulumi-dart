import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_args.dart';
import 'node_group_spec_response.dart';
import 'system_data_response.dart';

/// Represents a mongo cluster resource.
///
/// Uses Azure REST API version 2024-02-15-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-03-15-preview, 2023-09-15-preview, 2023-11-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cosmosdb [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new mongo cluster
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoCluster = new AzureNative.CosmosDB.MongoCluster("mongoCluster", new()
///     {
///         AdministratorLogin = "mongoAdmin",
///         AdministratorLoginPassword = "password",
///         Location = "westus2",
///         MongoClusterName = "myMongoCluster",
///         NodeGroupSpecs = new[]
///         {
///             new AzureNative.CosmosDB.Inputs.NodeGroupSpecArgs
///             {
///                 DiskSizeGB = 128,
///                 EnableHa = true,
///                 Kind = AzureNative.CosmosDB.NodeKind.Shard,
///                 NodeCount = 3,
///                 Sku = "M30",
///             },
///         },
///         ResourceGroupName = "TestResourceGroup",
///         ServerVersion = "5.0",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewMongoCluster(ctx, "mongoCluster", &cosmosdb.MongoClusterArgs{
/// 			AdministratorLogin:         pulumi.String("mongoAdmin"),
/// 			AdministratorLoginPassword: pulumi.String("password"),
/// 			Location:                   pulumi.String("westus2"),
/// 			MongoClusterName:           pulumi.String("myMongoCluster"),
/// 			NodeGroupSpecs: cosmosdb.NodeGroupSpecArray{
/// 				&cosmosdb.NodeGroupSpecArgs{
/// 					DiskSizeGB: pulumi.Float64(128),
/// 					EnableHa:   pulumi.Bool(true),
/// 					Kind:       pulumi.String(cosmosdb.NodeKindShard),
/// 					NodeCount:  pulumi.Int(3),
/// 					Sku:        pulumi.String("M30"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
/// 			ServerVersion:     pulumi.String("5.0"),
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
/// import com.pulumi.azurenative.cosmosdb.MongoCluster;
/// import com.pulumi.azurenative.cosmosdb.MongoClusterArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.NodeGroupSpecArgs;
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
///         var mongoCluster = new MongoCluster("mongoCluster", MongoClusterArgs.builder()
///             .administratorLogin("mongoAdmin")
///             .administratorLoginPassword("password")
///             .location("westus2")
///             .mongoClusterName("myMongoCluster")
///             .nodeGroupSpecs(NodeGroupSpecArgs.builder()
///                 .diskSizeGB(128.0)
///                 .enableHa(true)
///                 .kind("Shard")
///                 .nodeCount(3)
///                 .sku("M30")
///                 .build())
///             .resourceGroupName("TestResourceGroup")
///             .serverVersion("5.0")
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
/// const mongoCluster = new azure_native.cosmosdb.MongoCluster("mongoCluster", {
///     administratorLogin: "mongoAdmin",
///     administratorLoginPassword: "password",
///     location: "westus2",
///     mongoClusterName: "myMongoCluster",
///     nodeGroupSpecs: [{
///         diskSizeGB: 128,
///         enableHa: true,
///         kind: azure_native.cosmosdb.NodeKind.Shard,
///         nodeCount: 3,
///         sku: "M30",
///     }],
///     resourceGroupName: "TestResourceGroup",
///     serverVersion: "5.0",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster = azure_native.cosmosdb.MongoCluster("mongoCluster",
///     administrator_login="mongoAdmin",
///     administrator_login_password="password",
///     location="westus2",
///     mongo_cluster_name="myMongoCluster",
///     node_group_specs=[{
///         "disk_size_gb": 128,
///         "enable_ha": True,
///         "kind": azure_native.cosmosdb.NodeKind.SHARD,
///         "node_count": 3,
///         "sku": "M30",
///     }],
///     resource_group_name="TestResourceGroup",
///     server_version="5.0")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoCluster:
///     type: azure-native:cosmosdb:MongoCluster
///     properties:
///       administratorLogin: mongoAdmin
///       administratorLoginPassword: password
///       location: westus2
///       mongoClusterName: myMongoCluster
///       nodeGroupSpecs:
///         - diskSizeGB: 128
///           enableHa: true
///           kind: Shard
///           nodeCount: 3
///           sku: M30
///       resourceGroupName: TestResourceGroup
///       serverVersion: '5.0'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create a new mongo cluster with point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoCluster = new AzureNative.CosmosDB.MongoCluster("mongoCluster", new()
///     {
///         CreateMode = AzureNative.CosmosDB.MongoClusterCreateMode.PointInTimeRestore,
///         Location = "westus2",
///         MongoClusterName = "myMongoCluster",
///         ResourceGroupName = "TestResourceGroup",
///         RestoreParameters = new AzureNative.CosmosDB.Inputs.MongoClusterRestoreParametersArgs
///         {
///             PointInTimeUTC = "2023-01-13T20:07:35Z",
///             SourceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
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
/// 	cosmosdb "github.com/pulumi/pulumi-azure-native-sdk/cosmosdb/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cosmosdb.NewMongoCluster(ctx, "mongoCluster", &cosmosdb.MongoClusterArgs{
/// 			CreateMode:        pulumi.String(cosmosdb.MongoClusterCreateModePointInTimeRestore),
/// 			Location:          pulumi.String("westus2"),
/// 			MongoClusterName:  pulumi.String("myMongoCluster"),
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
/// 			RestoreParameters: &cosmosdb.MongoClusterRestoreParametersArgs{
/// 				PointInTimeUTC:   pulumi.String("2023-01-13T20:07:35Z"),
/// 				SourceResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster"),
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
/// import com.pulumi.azurenative.cosmosdb.MongoCluster;
/// import com.pulumi.azurenative.cosmosdb.MongoClusterArgs;
/// import com.pulumi.azurenative.cosmosdb.inputs.MongoClusterRestoreParametersArgs;
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
///         var mongoCluster = new MongoCluster("mongoCluster", MongoClusterArgs.builder()
///             .createMode("PointInTimeRestore")
///             .location("westus2")
///             .mongoClusterName("myMongoCluster")
///             .resourceGroupName("TestResourceGroup")
///             .restoreParameters(MongoClusterRestoreParametersArgs.builder()
///                 .pointInTimeUTC("2023-01-13T20:07:35Z")
///                 .sourceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster")
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
/// const mongoCluster = new azure_native.cosmosdb.MongoCluster("mongoCluster", {
///     createMode: azure_native.cosmosdb.MongoClusterCreateMode.PointInTimeRestore,
///     location: "westus2",
///     mongoClusterName: "myMongoCluster",
///     resourceGroupName: "TestResourceGroup",
///     restoreParameters: {
///         pointInTimeUTC: "2023-01-13T20:07:35Z",
///         sourceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster = azure_native.cosmosdb.MongoCluster("mongoCluster",
///     create_mode=azure_native.cosmosdb.MongoClusterCreateMode.POINT_IN_TIME_RESTORE,
///     location="westus2",
///     mongo_cluster_name="myMongoCluster",
///     resource_group_name="TestResourceGroup",
///     restore_parameters={
///         "point_in_time_utc": "2023-01-13T20:07:35Z",
///         "source_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   mongoCluster:
///     type: azure-native:cosmosdb:MongoCluster
///     properties:
///       createMode: PointInTimeRestore
///       location: westus2
///       mongoClusterName: myMongoCluster
///       resourceGroupName: TestResourceGroup
///       restoreParameters:
///         pointInTimeUTC: 2023-01-13T20:07:35Z
///         sourceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster
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
/// $ pulumi import azure-native:cosmosdb:MongoCluster myMongoCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}
/// ```
class MongoCluster extends pulumi.CustomResource {
  /// The administrator's login for the mongo cluster.
  late final pulumi.Output<String?> administratorLogin;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A status of the mongo cluster.
  late final pulumi.Output<String> clusterStatus;
  /// The default mongo connection string for the cluster.
  late final pulumi.Output<String> connectionString;
  /// Earliest restore timestamp in UTC ISO8601 format.
  late final pulumi.Output<String> earliestRestoreTime;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The list of node group specs in the cluster.
  late final pulumi.Output<List<NodeGroupSpecResponse>?> nodeGroupSpecs;
  /// A provisioning state of the mongo cluster.
  late final pulumi.Output<String> provisioningState;
  /// The Mongo DB server version. Defaults to the latest available version if not specified.
  late final pulumi.Output<String?> serverVersion;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MongoCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoCluster]. {@macro pulumi_cosmosdb_mongo_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoCluster(
    String name, {
    MongoClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:cosmosdb:MongoCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administratorLogin = registerOutput<String?>('administratorLogin');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.clusterStatus = registerOutput<String>('clusterStatus');
    this.connectionString = registerOutput<String>('connectionString');
    this.earliestRestoreTime = registerOutput<String>('earliestRestoreTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nodeGroupSpecs = registerOutput<List<NodeGroupSpecResponse>?>('nodeGroupSpecs');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.serverVersion = registerOutput<String?>('serverVersion');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
