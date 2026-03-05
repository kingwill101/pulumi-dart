import 'package:pulumi/pulumi.dart' as pulumi;
import 'mongo_cluster_args.dart';
import 'mongo_cluster_properties_response.dart';
import 'system_data_response.dart';

/// Represents a mongo cluster resource.
///
/// Uses Azure REST API version 2024-07-01.
///
/// Other available API versions: 2024-03-01-preview, 2024-06-01-preview, 2024-10-01-preview, 2025-04-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native mongocluster [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a Mongo Cluster resource from a point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoCluster = new AzureNative.MongoCluster.MongoCluster("mongoCluster", new()
///     {
///         Location = "westus2",
///         MongoClusterName = "myMongoCluster",
///         Properties = new AzureNative.MongoCluster.Inputs.MongoClusterPropertiesArgs
///         {
///             CreateMode = AzureNative.MongoCluster.CreateMode.PointInTimeRestore,
///             RestoreParameters = new AzureNative.MongoCluster.Inputs.MongoClusterRestoreParametersArgs
///             {
///                 PointInTimeUTC = "2023-01-13T20:07:35Z",
///                 SourceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
///             },
///         },
///         ResourceGroupName = "TestResourceGroup",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewMongoCluster(ctx, "mongoCluster", &mongocluster.MongoClusterArgs{
/// 			Location:         pulumi.String("westus2"),
/// 			MongoClusterName: pulumi.String("myMongoCluster"),
/// 			Properties: &mongocluster.MongoClusterPropertiesArgs{
/// 				CreateMode: pulumi.String(mongocluster.CreateModePointInTimeRestore),
/// 				RestoreParameters: &mongocluster.MongoClusterRestoreParametersArgs{
/// 					PointInTimeUTC:   pulumi.String("2023-01-13T20:07:35Z"),
/// 					SourceResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
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
/// import com.pulumi.azurenative.mongocluster.MongoCluster;
/// import com.pulumi.azurenative.mongocluster.MongoClusterArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.MongoClusterPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.MongoClusterRestoreParametersArgs;
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
///             .location("westus2")
///             .mongoClusterName("myMongoCluster")
///             .properties(MongoClusterPropertiesArgs.builder()
///                 .createMode("PointInTimeRestore")
///                 .restoreParameters(MongoClusterRestoreParametersArgs.builder()
///                     .pointInTimeUTC("2023-01-13T20:07:35Z")
///                     .sourceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster")
///                     .build())
///                 .build())
///             .resourceGroupName("TestResourceGroup")
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
/// const mongoCluster = new azure_native.mongocluster.MongoCluster("mongoCluster", {
///     location: "westus2",
///     mongoClusterName: "myMongoCluster",
///     properties: {
///         createMode: azure_native.mongocluster.CreateMode.PointInTimeRestore,
///         restoreParameters: {
///             pointInTimeUTC: "2023-01-13T20:07:35Z",
///             sourceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
///         },
///     },
///     resourceGroupName: "TestResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster = azure_native.mongocluster.MongoCluster("mongoCluster",
///     location="westus2",
///     mongo_cluster_name="myMongoCluster",
///     properties={
///         "create_mode": azure_native.mongocluster.CreateMode.POINT_IN_TIME_RESTORE,
///         "restore_parameters": {
///             "point_in_time_utc": "2023-01-13T20:07:35Z",
///             "source_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster",
///         },
///     },
///     resource_group_name="TestResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoCluster:
///     type: azure-native:mongocluster:MongoCluster
///     properties:
///       location: westus2
///       mongoClusterName: myMongoCluster
///       properties:
///         createMode: PointInTimeRestore
///         restoreParameters:
///           pointInTimeUTC: 2023-01-13T20:07:35Z
///           sourceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/myOtherMongoCluster
///       resourceGroupName: TestResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new Mongo Cluster resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoCluster = new AzureNative.MongoCluster.MongoCluster("mongoCluster", new()
///     {
///         Location = "westus2",
///         MongoClusterName = "myMongoCluster",
///         Properties = new AzureNative.MongoCluster.Inputs.MongoClusterPropertiesArgs
///         {
///             Administrator = new AzureNative.MongoCluster.Inputs.AdministratorPropertiesArgs
///             {
///                 Password = "password",
///                 UserName = "mongoAdmin",
///             },
///             Compute = new AzureNative.MongoCluster.Inputs.ComputePropertiesArgs
///             {
///                 Tier = "M30",
///             },
///             HighAvailability = new AzureNative.MongoCluster.Inputs.HighAvailabilityPropertiesArgs
///             {
///                 TargetMode = AzureNative.MongoCluster.HighAvailabilityMode.SameZone,
///             },
///             ServerVersion = "5.0",
///             Sharding = new AzureNative.MongoCluster.Inputs.ShardingPropertiesArgs
///             {
///                 ShardCount = 1,
///             },
///             Storage = new AzureNative.MongoCluster.Inputs.StoragePropertiesArgs
///             {
///                 SizeGb = 128,
///             },
///         },
///         ResourceGroupName = "TestResourceGroup",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewMongoCluster(ctx, "mongoCluster", &mongocluster.MongoClusterArgs{
/// 			Location:         pulumi.String("westus2"),
/// 			MongoClusterName: pulumi.String("myMongoCluster"),
/// 			Properties: &mongocluster.MongoClusterPropertiesArgs{
/// 				Administrator: &mongocluster.AdministratorPropertiesArgs{
/// 					Password: pulumi.String("password"),
/// 					UserName: pulumi.String("mongoAdmin"),
/// 				},
/// 				Compute: &mongocluster.ComputePropertiesArgs{
/// 					Tier: pulumi.String("M30"),
/// 				},
/// 				HighAvailability: &mongocluster.HighAvailabilityPropertiesArgs{
/// 					TargetMode: pulumi.String(mongocluster.HighAvailabilityModeSameZone),
/// 				},
/// 				ServerVersion: pulumi.String("5.0"),
/// 				Sharding: &mongocluster.ShardingPropertiesArgs{
/// 					ShardCount: pulumi.Int(1),
/// 				},
/// 				Storage: &mongocluster.StoragePropertiesArgs{
/// 					SizeGb: pulumi.Float64(128),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
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
/// import com.pulumi.azurenative.mongocluster.MongoCluster;
/// import com.pulumi.azurenative.mongocluster.MongoClusterArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.MongoClusterPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.AdministratorPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.ComputePropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.HighAvailabilityPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.ShardingPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.StoragePropertiesArgs;
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
///             .location("westus2")
///             .mongoClusterName("myMongoCluster")
///             .properties(MongoClusterPropertiesArgs.builder()
///                 .administrator(AdministratorPropertiesArgs.builder()
///                     .password("password")
///                     .userName("mongoAdmin")
///                     .build())
///                 .compute(ComputePropertiesArgs.builder()
///                     .tier("M30")
///                     .build())
///                 .highAvailability(HighAvailabilityPropertiesArgs.builder()
///                     .targetMode("SameZone")
///                     .build())
///                 .serverVersion("5.0")
///                 .sharding(ShardingPropertiesArgs.builder()
///                     .shardCount(1)
///                     .build())
///                 .storage(StoragePropertiesArgs.builder()
///                     .sizeGb(128.0)
///                     .build())
///                 .build())
///             .resourceGroupName("TestResourceGroup")
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
/// const mongoCluster = new azure_native.mongocluster.MongoCluster("mongoCluster", {
///     location: "westus2",
///     mongoClusterName: "myMongoCluster",
///     properties: {
///         administrator: {
///             password: "password",
///             userName: "mongoAdmin",
///         },
///         compute: {
///             tier: "M30",
///         },
///         highAvailability: {
///             targetMode: azure_native.mongocluster.HighAvailabilityMode.SameZone,
///         },
///         serverVersion: "5.0",
///         sharding: {
///             shardCount: 1,
///         },
///         storage: {
///             sizeGb: 128,
///         },
///     },
///     resourceGroupName: "TestResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster = azure_native.mongocluster.MongoCluster("mongoCluster",
///     location="westus2",
///     mongo_cluster_name="myMongoCluster",
///     properties={
///         "administrator": {
///             "password": "password",
///             "user_name": "mongoAdmin",
///         },
///         "compute": {
///             "tier": "M30",
///         },
///         "high_availability": {
///             "target_mode": azure_native.mongocluster.HighAvailabilityMode.SAME_ZONE,
///         },
///         "server_version": "5.0",
///         "sharding": {
///             "shard_count": 1,
///         },
///         "storage": {
///             "size_gb": 128,
///         },
///     },
///     resource_group_name="TestResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoCluster:
///     type: azure-native:mongocluster:MongoCluster
///     properties:
///       location: westus2
///       mongoClusterName: myMongoCluster
///       properties:
///         administrator:
///           password: password
///           userName: mongoAdmin
///         compute:
///           tier: M30
///         highAvailability:
///           targetMode: SameZone
///         serverVersion: '5.0'
///         sharding:
///           shardCount: 1
///         storage:
///           sizeGb: 128
///       resourceGroupName: TestResourceGroup
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a replica Mongo Cluster resource from a source resource.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mongoCluster = new AzureNative.MongoCluster.MongoCluster("mongoCluster", new()
///     {
///         Location = "centralus",
///         MongoClusterName = "myReplicaMongoCluster",
///         Properties = new AzureNative.MongoCluster.Inputs.MongoClusterPropertiesArgs
///         {
///             CreateMode = AzureNative.MongoCluster.CreateMode.GeoReplica,
///             ReplicaParameters = new AzureNative.MongoCluster.Inputs.MongoClusterReplicaParametersArgs
///             {
///                 SourceLocation = "eastus",
///                 SourceResourceId = "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster",
///             },
///         },
///         ResourceGroupName = "TestResourceGroup",
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
/// 	mongocluster "github.com/pulumi/pulumi-azure-native-sdk/mongocluster/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := mongocluster.NewMongoCluster(ctx, "mongoCluster", &mongocluster.MongoClusterArgs{
/// 			Location:         pulumi.String("centralus"),
/// 			MongoClusterName: pulumi.String("myReplicaMongoCluster"),
/// 			Properties: &mongocluster.MongoClusterPropertiesArgs{
/// 				CreateMode: pulumi.String(mongocluster.CreateModeGeoReplica),
/// 				ReplicaParameters: &mongocluster.MongoClusterReplicaParametersArgs{
/// 					SourceLocation:   pulumi.String("eastus"),
/// 					SourceResourceId: pulumi.String("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("TestResourceGroup"),
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
/// import com.pulumi.azurenative.mongocluster.MongoCluster;
/// import com.pulumi.azurenative.mongocluster.MongoClusterArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.MongoClusterPropertiesArgs;
/// import com.pulumi.azurenative.mongocluster.inputs.MongoClusterReplicaParametersArgs;
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
///             .location("centralus")
///             .mongoClusterName("myReplicaMongoCluster")
///             .properties(MongoClusterPropertiesArgs.builder()
///                 .createMode("GeoReplica")
///                 .replicaParameters(MongoClusterReplicaParametersArgs.builder()
///                     .sourceLocation("eastus")
///                     .sourceResourceId("/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster")
///                     .build())
///                 .build())
///             .resourceGroupName("TestResourceGroup")
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
/// const mongoCluster = new azure_native.mongocluster.MongoCluster("mongoCluster", {
///     location: "centralus",
///     mongoClusterName: "myReplicaMongoCluster",
///     properties: {
///         createMode: azure_native.mongocluster.CreateMode.GeoReplica,
///         replicaParameters: {
///             sourceLocation: "eastus",
///             sourceResourceId: "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster",
///         },
///     },
///     resourceGroupName: "TestResourceGroup",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// mongo_cluster = azure_native.mongocluster.MongoCluster("mongoCluster",
///     location="centralus",
///     mongo_cluster_name="myReplicaMongoCluster",
///     properties={
///         "create_mode": azure_native.mongocluster.CreateMode.GEO_REPLICA,
///         "replica_parameters": {
///             "source_location": "eastus",
///             "source_resource_id": "/subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster",
///         },
///     },
///     resource_group_name="TestResourceGroup")
///
/// ```
///
/// ```yaml
/// resources:
///   mongoCluster:
///     type: azure-native:mongocluster:MongoCluster
///     properties:
///       location: centralus
///       mongoClusterName: myReplicaMongoCluster
///       properties:
///         createMode: GeoReplica
///         replicaParameters:
///           sourceLocation: eastus
///           sourceResourceId: /subscriptions/ffffffff-ffff-ffff-ffff-ffffffffffff/resourceGroups/TestResourceGroup/providers/Microsoft.DocumentDB/mongoClusters/mySourceMongoCluster
///       resourceGroupName: TestResourceGroup
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
/// $ pulumi import azure-native:mongocluster:MongoCluster myReplicaMongoCluster /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DocumentDB/mongoClusters/{mongoClusterName}
/// ```
class MongoCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<MongoClusterPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [MongoCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MongoCluster]. {@macro pulumi_mongocluster_mongo_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MongoCluster(
    String name, {
    MongoClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:mongocluster:MongoCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<MongoClusterPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return MongoClusterPropertiesResponse.fromMap(
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
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
