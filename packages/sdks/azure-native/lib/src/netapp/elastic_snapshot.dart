import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_snapshot_args.dart';
import 'elastic_snapshot_properties_response.dart';
import 'system_data_response.dart';

/// NetApp Elastic Snapshot under an Elastic Volume
///
/// Uses Azure REST API version 2025-09-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ElasticSnapshots_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var elasticSnapshot = new AzureNative.NetApp.ElasticSnapshot("elasticSnapshot", new()
///     {
///         AccountName = "account1",
///         PoolName = "pool1",
///         ResourceGroupName = "myRG",
///         SnapshotName = "snapshot1",
///         VolumeName = "volume1",
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
/// 	netapp "github.com/pulumi/pulumi-azure-native-sdk/netapp/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := netapp.NewElasticSnapshot(ctx, "elasticSnapshot", &netapp.ElasticSnapshotArgs{
/// 			AccountName:       pulumi.String("account1"),
/// 			PoolName:          pulumi.String("pool1"),
/// 			ResourceGroupName: pulumi.String("myRG"),
/// 			SnapshotName:      pulumi.String("snapshot1"),
/// 			VolumeName:        pulumi.String("volume1"),
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
/// import com.pulumi.azurenative.netapp.ElasticSnapshot;
/// import com.pulumi.azurenative.netapp.ElasticSnapshotArgs;
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
///         var elasticSnapshot = new ElasticSnapshot("elasticSnapshot", ElasticSnapshotArgs.builder()
///             .accountName("account1")
///             .poolName("pool1")
///             .resourceGroupName("myRG")
///             .snapshotName("snapshot1")
///             .volumeName("volume1")
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
/// const elasticSnapshot = new azure_native.netapp.ElasticSnapshot("elasticSnapshot", {
///     accountName: "account1",
///     poolName: "pool1",
///     resourceGroupName: "myRG",
///     snapshotName: "snapshot1",
///     volumeName: "volume1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// elastic_snapshot = azure_native.netapp.ElasticSnapshot("elasticSnapshot",
///     account_name="account1",
///     pool_name="pool1",
///     resource_group_name="myRG",
///     snapshot_name="snapshot1",
///     volume_name="volume1")
///
/// ```
///
/// ```yaml
/// resources:
///   elasticSnapshot:
///     type: azure-native:netapp:ElasticSnapshot
///     properties:
///       accountName: account1
///       poolName: pool1
///       resourceGroupName: myRG
///       snapshotName: snapshot1
///       volumeName: volume1
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
/// $ pulumi import azure-native:netapp:ElasticSnapshot account1/pool1/volume1/snapshot1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetApp/elasticAccounts/{accountName}/elasticCapacityPools/{poolName}/elasticVolumes/{volumeName}/elasticSnapshots/{snapshotName}
/// ```
class ElasticSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// The resource-specific properties for this resource.
  late final pulumi.Output<ElasticSnapshotPropertiesResponse> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ElasticSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ElasticSnapshot]. {@macro pulumi_netapp_elastic_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ElasticSnapshot(
    String name, {
    ElasticSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:netapp:ElasticSnapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ElasticSnapshotPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ElasticSnapshotPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
