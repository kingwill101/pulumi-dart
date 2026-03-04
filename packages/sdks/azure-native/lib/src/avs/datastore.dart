import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_args.dart';
import 'disk_pool_volume_response.dart';
import 'elastic_san_volume_response.dart';
import 'net_app_volume_response.dart';
import 'system_data_response.dart';

/// A datastore resource
///
/// Uses Azure REST API version 2023-09-01. In version 2.x of the Azure Native provider, it used API version 2022-05-01.
///
/// Other available API versions: 2022-05-01, 2023-03-01, 2024-09-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native avs [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Datastores_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var datastore = new AzureNative.AVS.Datastore("datastore", new()
///     {
///         ClusterName = "cluster1",
///         DatastoreName = "datastore1",
///         NetAppVolume = new AzureNative.AVS.Inputs.NetAppVolumeArgs
///         {
///             Id = "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1",
///         },
///         PrivateCloudName = "cloud1",
///         ResourceGroupName = "group1",
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
/// 		_, err := avs.NewDatastore(ctx, "datastore", &avs.DatastoreArgs{
/// 			ClusterName:   pulumi.String("cluster1"),
/// 			DatastoreName: pulumi.String("datastore1"),
/// 			NetAppVolume: &avs.NetAppVolumeArgs{
/// 				Id: pulumi.String("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1"),
/// 			},
/// 			PrivateCloudName:  pulumi.String("cloud1"),
/// 			ResourceGroupName: pulumi.String("group1"),
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
/// import com.pulumi.azurenative.avs.Datastore;
/// import com.pulumi.azurenative.avs.DatastoreArgs;
/// import com.pulumi.azurenative.avs.inputs.NetAppVolumeArgs;
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
///         var datastore = new Datastore("datastore", DatastoreArgs.builder()
///             .clusterName("cluster1")
///             .datastoreName("datastore1")
///             .netAppVolume(NetAppVolumeArgs.builder()
///                 .id("/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1")
///                 .build())
///             .privateCloudName("cloud1")
///             .resourceGroupName("group1")
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
/// const datastore = new azure_native.avs.Datastore("datastore", {
///     clusterName: "cluster1",
///     datastoreName: "datastore1",
///     netAppVolume: {
///         id: "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1",
///     },
///     privateCloudName: "cloud1",
///     resourceGroupName: "group1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// datastore = azure_native.avs.Datastore("datastore",
///     cluster_name="cluster1",
///     datastore_name="datastore1",
///     net_app_volume={
///         "id": "/subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1",
///     },
///     private_cloud_name="cloud1",
///     resource_group_name="group1")
///
/// ```
///
/// ```yaml
/// resources:
///   datastore:
///     type: azure-native:avs:Datastore
///     properties:
///       clusterName: cluster1
///       datastoreName: datastore1
///       netAppVolume:
///         id: /subscriptions/11111111-1111-1111-1111-111111111111/resourceGroups/ResourceGroup1/providers/Microsoft.NetApp/netAppAccounts/NetAppAccount1/capacityPools/CapacityPool1/volumes/NFSVol1
///       privateCloudName: cloud1
///       resourceGroupName: group1
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
/// $ pulumi import azure-native:avs:Datastore datastore1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AVS/privateClouds/{privateCloudName}/clusters/{clusterName}/datastores/{datastoreName}
/// ```
class Datastore extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// An iSCSI volume
  late final pulumi.Output<DiskPoolVolumeResponse?> diskPoolVolume;

  /// An Elastic SAN volume
  late final pulumi.Output<ElasticSanVolumeResponse?> elasticSanVolume;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// An Azure NetApp Files volume
  late final pulumi.Output<NetAppVolumeResponse?> netAppVolume;

  /// The state of the datastore provisioning
  late final pulumi.Output<String> provisioningState;

  /// The operational status of the datastore
  late final pulumi.Output<String> status;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Datastore].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Datastore]. {@macro pulumi_avs_datastore_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Datastore(
    String name, {
    DatastoreArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:avs:Datastore',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    diskPoolVolume = registerOutput<DiskPoolVolumeResponse?>('diskPoolVolume');
    elasticSanVolume = registerOutput<ElasticSanVolumeResponse?>(
      'elasticSanVolume',
    );
    this.name = registerOutput<String>('name');
    netAppVolume = registerOutput<NetAppVolumeResponse?>('netAppVolume');
    provisioningState = registerOutput<String>('provisioningState');
    status = registerOutput<String>('status');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
  }
}
