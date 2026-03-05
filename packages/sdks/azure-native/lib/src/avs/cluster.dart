import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// A cluster resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Clusters_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cluster = new AzureNative.AVS.Cluster("cluster", new()
///     {
///         ClusterName = "cluster1",
///         ClusterSize = 3,
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
///         Sku = new AzureNative.AVS.Inputs.SkuArgs
///         {
///             Name = "AV20",
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
/// 	avs "github.com/pulumi/pulumi-azure-native-sdk/avs/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := avs.NewCluster(ctx, "cluster", &avs.ClusterArgs{
/// 			ClusterName:       pulumi.String("cluster1"),
/// 			ClusterSize:       pulumi.Int(3),
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
/// 			Sku: &avs.SkuArgs{
/// 				Name: pulumi.String("AV20"),
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
/// import com.pulumi.azurenative.avs.Cluster;
/// import com.pulumi.azurenative.avs.ClusterArgs;
/// import com.pulumi.azurenative.avs.inputs.SkuArgs;
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
///         var cluster = new Cluster("cluster", ClusterArgs.builder()
///             .clusterName("cluster1")
///             .clusterSize(3)
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
///             .sku(SkuArgs.builder()
///                 .name("AV20")
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
/// const cluster = new azure_native.avs.Cluster("cluster", {
///     clusterName: "cluster1",
///     clusterSize: 3,
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
///     sku: {
///         name: "AV20",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster = azure_native.avs.Cluster("cluster",
///     cluster_name="cluster1",
///     cluster_size=3,
///     private_cloud_name="cloud1",
///     resource_group_name="group1",
///     sku={
///         "name": "AV20",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   cluster:
///     type: azure-native:avs:Cluster
///     properties:
///       clusterName: cluster1
///       clusterSize: 3
///       privateCloudName: cloud1
///       resourceGroupName: group1
///       sku:
///         name: AV20
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
/// $ pulumi import azure-native:avs:Cluster cluster1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/clusters/{clusterName}
/// ```
class Cluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The identity
  late final pulumi.Output<int> clusterId;
  /// The cluster size
  late final pulumi.Output<int?> clusterSize;
  /// The hosts
  late final pulumi.Output<List<String>?> hosts;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The state of the cluster provisioning
  late final pulumi.Output<String> provisioningState;
  /// The SKU (Stock Keeping Unit) assigned to this resource.
  late final pulumi.Output<SkuResponse> sku;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Name of the vsan datastore associated with the cluster
  late final pulumi.Output<String?> vsanDatastoreName;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_avs_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:avs:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterId = registerOutput<int>('clusterId');
    clusterSize = registerOutput<int?>('clusterSize');
    hosts = registerOutput<List<String>?>('hosts');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sku = registerOutput<SkuResponse>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    vsanDatastoreName = registerOutput<String?>('vsanDatastoreName');
  }
}
