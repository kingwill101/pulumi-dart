import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_creation_data_response.dart';
import 'system_data_response.dart';
import 'volume_snapshot_args.dart';

/// Response for Volume Snapshot request.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VolumeSnapshots_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumeSnapshot = new AzureNative.ElasticSan.VolumeSnapshot("volumeSnapshot", new()
///     {
///         CreationData = new AzureNative.ElasticSan.Inputs.SnapshotCreationDataArgs
///         {
///             SourceId = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///         },
///         ElasticSanName = "elasticsanname",
///         ResourceGroupName = "resourcegroupname",
///         SnapshotName = "snapshotname",
///         VolumeGroupName = "volumegroupname",
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewVolumeSnapshot(ctx, "volumeSnapshot", &elasticsan.VolumeSnapshotArgs{
/// 			CreationData: &elasticsan.SnapshotCreationDataArgs{
/// 				SourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}"),
/// 			},
/// 			ElasticSanName:    pulumi.String("elasticsanname"),
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
/// 			SnapshotName:      pulumi.String("snapshotname"),
/// 			VolumeGroupName:   pulumi.String("volumegroupname"),
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
/// import com.pulumi.azurenative.elasticsan.VolumeSnapshot;
/// import com.pulumi.azurenative.elasticsan.VolumeSnapshotArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.SnapshotCreationDataArgs;
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
///         var volumeSnapshot = new VolumeSnapshot("volumeSnapshot", VolumeSnapshotArgs.builder()
///             .creationData(SnapshotCreationDataArgs.builder()
///                 .sourceId("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}")
///                 .build())
///             .elasticSanName("elasticsanname")
///             .resourceGroupName("resourcegroupname")
///             .snapshotName("snapshotname")
///             .volumeGroupName("volumegroupname")
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
/// const volumeSnapshot = new azure_native.elasticsan.VolumeSnapshot("volumeSnapshot", {
///     creationData: {
///         sourceId: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///     },
///     elasticSanName: "elasticsanname",
///     resourceGroupName: "resourcegroupname",
///     snapshotName: "snapshotname",
///     volumeGroupName: "volumegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume_snapshot = azure_native.elasticsan.VolumeSnapshot("volumeSnapshot",
///     creation_data={
///         "source_id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///     },
///     elastic_san_name="elasticsanname",
///     resource_group_name="resourcegroupname",
///     snapshot_name="snapshotname",
///     volume_group_name="volumegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   volumeSnapshot:
///     type: azure-native:elasticsan:VolumeSnapshot
///     properties:
///       creationData:
///         sourceId: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}
///       elasticSanName: elasticsanname
///       resourceGroupName: resourcegroupname
///       snapshotName: snapshotname
///       volumeGroupName: volumegroupname
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### VolumeSnapshots_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volumeSnapshot = new AzureNative.ElasticSan.VolumeSnapshot("volumeSnapshot", new()
///     {
///         CreationData = new AzureNative.ElasticSan.Inputs.SnapshotCreationDataArgs
///         {
///             SourceId = "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///         },
///         ElasticSanName = "elasticsanname",
///         ResourceGroupName = "resourcegroupname",
///         SnapshotName = "snapshotname",
///         VolumeGroupName = "volumegroupname",
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
/// 	elasticsan "github.com/pulumi/pulumi-azure-native-sdk/elasticsan/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticsan.NewVolumeSnapshot(ctx, "volumeSnapshot", &elasticsan.VolumeSnapshotArgs{
/// 			CreationData: &elasticsan.SnapshotCreationDataArgs{
/// 				SourceId: pulumi.String("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}"),
/// 			},
/// 			ElasticSanName:    pulumi.String("elasticsanname"),
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
/// 			SnapshotName:      pulumi.String("snapshotname"),
/// 			VolumeGroupName:   pulumi.String("volumegroupname"),
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
/// import com.pulumi.azurenative.elasticsan.VolumeSnapshot;
/// import com.pulumi.azurenative.elasticsan.VolumeSnapshotArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.SnapshotCreationDataArgs;
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
///         var volumeSnapshot = new VolumeSnapshot("volumeSnapshot", VolumeSnapshotArgs.builder()
///             .creationData(SnapshotCreationDataArgs.builder()
///                 .sourceId("/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}")
///                 .build())
///             .elasticSanName("elasticsanname")
///             .resourceGroupName("resourcegroupname")
///             .snapshotName("snapshotname")
///             .volumeGroupName("volumegroupname")
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
/// const volumeSnapshot = new azure_native.elasticsan.VolumeSnapshot("volumeSnapshot", {
///     creationData: {
///         sourceId: "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///     },
///     elasticSanName: "elasticsanname",
///     resourceGroupName: "resourcegroupname",
///     snapshotName: "snapshotname",
///     volumeGroupName: "volumegroupname",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume_snapshot = azure_native.elasticsan.VolumeSnapshot("volumeSnapshot",
///     creation_data={
///         "source_id": "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}",
///     },
///     elastic_san_name="elasticsanname",
///     resource_group_name="resourcegroupname",
///     snapshot_name="snapshotname",
///     volume_group_name="volumegroupname")
///
/// ```
///
/// ```yaml
/// resources:
///   volumeSnapshot:
///     type: azure-native:elasticsan:VolumeSnapshot
///     properties:
///       creationData:
///         sourceId: /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}
///       elasticSanName: elasticsanname
///       resourceGroupName: resourcegroupname
///       snapshotName: snapshotname
///       volumeGroupName: volumegroupname
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
/// $ pulumi import azure-native:elasticsan:VolumeSnapshot qukfugetqthsufp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/snapshots/{snapshotName}
/// ```
class VolumeSnapshot extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Data used when creating a volume snapshot.
  late final pulumi.Output<SnapshotCreationDataResponse> creationData;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;

  /// Size of Source Volume
  late final pulumi.Output<double> sourceVolumeSizeGiB;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Source Volume Name of a snapshot
  late final pulumi.Output<String> volumeName;

  /// Creates a new [VolumeSnapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VolumeSnapshot]. {@macro pulumi_elasticsan_volume_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VolumeSnapshot(
    String name, {
    VolumeSnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:elasticsan:VolumeSnapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationData = registerOutput<SnapshotCreationDataResponse>('creationData');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sourceVolumeSizeGiB = registerOutput<double>('sourceVolumeSizeGiB');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    volumeName = registerOutput<String>('volumeName');
  }
}
