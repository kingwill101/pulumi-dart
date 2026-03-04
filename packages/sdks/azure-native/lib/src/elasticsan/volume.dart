import 'package:pulumi/pulumi.dart' as pulumi;
import 'iscsi_target_info_response.dart';
import 'managed_by_info_response.dart';
import 'source_creation_data_response.dart';
import 'system_data_response.dart';
import 'volume_args.dart';

/// Response for Volume request.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2021-11-20-preview.
///
/// Other available API versions: 2021-11-20-preview, 2022-12-01-preview, 2023-01-01, 2024-06-01-preview, 2024-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native elasticsan [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Volumes_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume = new AzureNative.ElasticSan.Volume("volume", new()
///     {
///         CreationData = new AzureNative.ElasticSan.Inputs.SourceCreationDataArgs
///         {
///             CreateSource = AzureNative.ElasticSan.VolumeCreateOption.None,
///             SourceId = "ARM Id of Resource",
///         },
///         ElasticSanName = "elasticsanname",
///         ManagedBy = new AzureNative.ElasticSan.Inputs.ManagedByInfoArgs
///         {
///             ResourceId = "mtkeip",
///         },
///         ResourceGroupName = "resourcegroupname",
///         SizeGiB = 9,
///         VolumeGroupName = "volumegroupname",
///         VolumeName = "volumename",
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
/// 		_, err := elasticsan.NewVolume(ctx, "volume", &elasticsan.VolumeArgs{
/// 			CreationData: &elasticsan.SourceCreationDataArgs{
/// 				CreateSource: pulumi.String(elasticsan.VolumeCreateOptionNone),
/// 				SourceId:     pulumi.String("ARM Id of Resource"),
/// 			},
/// 			ElasticSanName: pulumi.String("elasticsanname"),
/// 			ManagedBy: &elasticsan.ManagedByInfoArgs{
/// 				ResourceId: pulumi.String("mtkeip"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
/// 			SizeGiB:           pulumi.Float64(9),
/// 			VolumeGroupName:   pulumi.String("volumegroupname"),
/// 			VolumeName:        pulumi.String("volumename"),
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
/// import com.pulumi.azurenative.elasticsan.Volume;
/// import com.pulumi.azurenative.elasticsan.VolumeArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.SourceCreationDataArgs;
/// import com.pulumi.azurenative.elasticsan.inputs.ManagedByInfoArgs;
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
///         var volume = new Volume("volume", VolumeArgs.builder()
///             .creationData(SourceCreationDataArgs.builder()
///                 .createSource("None")
///                 .sourceId("ARM Id of Resource")
///                 .build())
///             .elasticSanName("elasticsanname")
///             .managedBy(ManagedByInfoArgs.builder()
///                 .resourceId("mtkeip")
///                 .build())
///             .resourceGroupName("resourcegroupname")
///             .sizeGiB(9.0)
///             .volumeGroupName("volumegroupname")
///             .volumeName("volumename")
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
/// const volume = new azure_native.elasticsan.Volume("volume", {
///     creationData: {
///         createSource: azure_native.elasticsan.VolumeCreateOption.None,
///         sourceId: "ARM Id of Resource",
///     },
///     elasticSanName: "elasticsanname",
///     managedBy: {
///         resourceId: "mtkeip",
///     },
///     resourceGroupName: "resourcegroupname",
///     sizeGiB: 9,
///     volumeGroupName: "volumegroupname",
///     volumeName: "volumename",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume = azure_native.elasticsan.Volume("volume",
///     creation_data={
///         "create_source": azure_native.elasticsan.VolumeCreateOption.NONE,
///         "source_id": "ARM Id of Resource",
///     },
///     elastic_san_name="elasticsanname",
///     managed_by={
///         "resource_id": "mtkeip",
///     },
///     resource_group_name="resourcegroupname",
///     size_gi_b=9,
///     volume_group_name="volumegroupname",
///     volume_name="volumename")
///
/// ```
///
/// ```yaml
/// resources:
///   volume:
///     type: azure-native:elasticsan:Volume
///     properties:
///       creationData:
///         createSource: None
///         sourceId: ARM Id of Resource
///       elasticSanName: elasticsanname
///       managedBy:
///         resourceId: mtkeip
///       resourceGroupName: resourcegroupname
///       sizeGiB: 9
///       volumeGroupName: volumegroupname
///       volumeName: volumename
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Volumes_Create_MinimumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var volume = new AzureNative.ElasticSan.Volume("volume", new()
///     {
///         ElasticSanName = "elasticsanname",
///         ResourceGroupName = "resourcegroupname",
///         SizeGiB = 9,
///         VolumeGroupName = "volumegroupname",
///         VolumeName = "volumename",
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
/// 		_, err := elasticsan.NewVolume(ctx, "volume", &elasticsan.VolumeArgs{
/// 			ElasticSanName:    pulumi.String("elasticsanname"),
/// 			ResourceGroupName: pulumi.String("resourcegroupname"),
/// 			SizeGiB:           pulumi.Float64(9),
/// 			VolumeGroupName:   pulumi.String("volumegroupname"),
/// 			VolumeName:        pulumi.String("volumename"),
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
/// import com.pulumi.azurenative.elasticsan.Volume;
/// import com.pulumi.azurenative.elasticsan.VolumeArgs;
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
///         var volume = new Volume("volume", VolumeArgs.builder()
///             .elasticSanName("elasticsanname")
///             .resourceGroupName("resourcegroupname")
///             .sizeGiB(9.0)
///             .volumeGroupName("volumegroupname")
///             .volumeName("volumename")
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
/// const volume = new azure_native.elasticsan.Volume("volume", {
///     elasticSanName: "elasticsanname",
///     resourceGroupName: "resourcegroupname",
///     sizeGiB: 9,
///     volumeGroupName: "volumegroupname",
///     volumeName: "volumename",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// volume = azure_native.elasticsan.Volume("volume",
///     elastic_san_name="elasticsanname",
///     resource_group_name="resourcegroupname",
///     size_gi_b=9,
///     volume_group_name="volumegroupname",
///     volume_name="volumename")
///
/// ```
///
/// ```yaml
/// resources:
///   volume:
///     type: azure-native:elasticsan:Volume
///     properties:
///       elasticSanName: elasticsanname
///       resourceGroupName: resourcegroupname
///       sizeGiB: 9
///       volumeGroupName: volumegroupname
///       volumeName: volumename
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
/// $ pulumi import azure-native:elasticsan:Volume o /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ElasticSan/elasticSans/{elasticSanName}/volumegroups/{volumeGroupName}/volumes/{volumeName}
/// ```
class Volume extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// State of the operation on the resource.
  late final pulumi.Output<SourceCreationDataResponse?> creationData;

  /// Parent resource information.
  late final pulumi.Output<ManagedByInfoResponse?> managedBy;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// State of the operation on the resource.
  late final pulumi.Output<String> provisioningState;

  /// Volume size.
  late final pulumi.Output<double> sizeGiB;

  /// Storage target information
  late final pulumi.Output<IscsiTargetInfoResponse> storageTarget;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Unique Id of the volume in GUID format
  late final pulumi.Output<String> volumeId;

  /// Creates a new [Volume].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Volume]. {@macro pulumi_elasticsan_volume_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Volume(String name, {VolumeArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure-native:elasticsan:Volume',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    creationData = registerOutput<SourceCreationDataResponse?>('creationData');
    managedBy = registerOutput<ManagedByInfoResponse?>('managedBy');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    sizeGiB = registerOutput<double>('sizeGiB');
    storageTarget = registerOutput<IscsiTargetInfoResponse>('storageTarget');
    systemData = registerOutput<SystemDataResponse>('systemData');
    type = registerOutput<String>('type');
    volumeId = registerOutput<String>('volumeId');
  }
}
