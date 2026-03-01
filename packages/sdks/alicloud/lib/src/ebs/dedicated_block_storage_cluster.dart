import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_block_storage_cluster_args.dart';
import 'dedicated_block_storage_cluster_state.dart';

/// Provides a Ebs Dedicated Block Storage Cluster resource.
///
/// For information about Ebs Dedicated Block Storage Cluster and how to use it, see [What is Dedicated Block Storage Cluster](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-ebs-2021-07-30-creatededicatedblockstoragecluster).
///
/// > **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = new alicloud.ebs.DedicatedBlockStorageCluster("default", {
///     type: "Premium",
///     zoneId: "cn-heyuan-b",
///     dedicatedBlockStorageClusterName: "dedicated_block_storage_cluster_name",
///     totalCapacity: "61440",
///     regionId: "cn-heyuan",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.ebs.DedicatedBlockStorageCluster("default",
///     type="Premium",
///     zone_id="cn-heyuan-b",
///     dedicated_block_storage_cluster_name="dedicated_block_storage_cluster_name",
///     total_capacity="61440",
///     region_id="cn-heyuan")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new AliCloud.Ebs.DedicatedBlockStorageCluster("default", new()
///     {
///         Type = "Premium",
///         ZoneId = "cn-heyuan-b",
///         DedicatedBlockStorageClusterName = "dedicated_block_storage_cluster_name",
///         TotalCapacity = "61440",
///         RegionId = "cn-heyuan",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ebs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ebs.NewDedicatedBlockStorageCluster(ctx, "default", &ebs.DedicatedBlockStorageClusterArgs{
/// 			Type:                             pulumi.String("Premium"),
/// 			ZoneId:                           pulumi.String("cn-heyuan-b"),
/// 			DedicatedBlockStorageClusterName: pulumi.String("dedicated_block_storage_cluster_name"),
/// 			TotalCapacity:                    pulumi.String("61440"),
/// 			RegionId:                         "cn-heyuan",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.ebs.DedicatedBlockStorageCluster;
/// import com.pulumi.alicloud.ebs.DedicatedBlockStorageClusterArgs;
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
///         var default_ = new DedicatedBlockStorageCluster("default", DedicatedBlockStorageClusterArgs.builder()
///             .type("Premium")
///             .zoneId("cn-heyuan-b")
///             .dedicatedBlockStorageClusterName("dedicated_block_storage_cluster_name")
///             .totalCapacity("61440")
///             .regionId("cn-heyuan")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:ebs:DedicatedBlockStorageCluster
///     properties:
///       type: Premium
///       zoneId: cn-heyuan-b
///       dedicatedBlockStorageClusterName: dedicated_block_storage_cluster_name
///       totalCapacity: 61440
///       regionId: cn-heyuan
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Ebs Dedicated Block Storage Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ebs/dedicatedBlockStorageCluster:DedicatedBlockStorageCluster example <id>
/// ```
class DedicatedBlockStorageCluster extends pulumi.CustomResource {
  /// The available capacity of the dedicated block storage cluster. Unit: GiB.
  late final pulumi.Output<String> availableCapacity;
  /// The type of cloud disk that can be created by a dedicated block storage cluster.
  late final pulumi.Output<String> category;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The first ID of the resource
  late final pulumi.Output<String> dedicatedBlockStorageClusterId;
  /// The name of the resource
  late final pulumi.Output<String> dedicatedBlockStorageClusterName;
  /// Capacity to be delivered in GB.
  late final pulumi.Output<String> deliveryCapacity;
  /// The description of the dedicated block storage cluster.
  late final pulumi.Output<String> description;
  /// The expiration time of the dedicated block storage cluster, in the Unix timestamp format, in seconds.
  late final pulumi.Output<String> expiredTime;
  /// Cloud disk performance level, possible values:-PL0.-PL1.-PL2.-PL3.> Only valid in SupportedCategory = cloud_essd.
  late final pulumi.Output<String> performanceLevel;
  /// The ID of the resource group
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// This parameter is not supported.
  late final pulumi.Output<String> supportedCategory;
  /// The total capacity of the dedicated block storage cluster. Unit: GiB.
  late final pulumi.Output<String> totalCapacity;
  /// The dedicated block storage cluster performance type. Possible values:-Standard: Basic type. This type of dedicated block storage cluster can create an ESSD PL0 cloud disk.-Premium: performance type. This type of dedicated block storage cluster can create an ESSD PL1 cloud disk.
  late final pulumi.Output<String> type;
  /// The used (created disk) capacity of the current cluster, in GB
  late final pulumi.Output<String> usedCapacity;
  /// The zone ID  of the resource
  late final pulumi.Output<String> zoneId;

  /// Creates a new [DedicatedBlockStorageCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DedicatedBlockStorageCluster]. {@macro pulumi_ebs_dedicated_block_storage_cluster_dedicated_block_storage_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DedicatedBlockStorageCluster(
    String name, {
    DedicatedBlockStorageClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/dedicatedBlockStorageCluster:DedicatedBlockStorageCluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availableCapacity = registerOutput<String>('availableCapacity');
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedBlockStorageClusterId = registerOutput<String>('dedicatedBlockStorageClusterId');
    this.dedicatedBlockStorageClusterName = registerOutput<String>('dedicatedBlockStorageClusterName');
    this.deliveryCapacity = registerOutput<String>('deliveryCapacity');
    this.description = registerOutput<String>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.supportedCategory = registerOutput<String>('supportedCategory');
    this.totalCapacity = registerOutput<String>('totalCapacity');
    this.type = registerOutput<String>('type');
    this.usedCapacity = registerOutput<String>('usedCapacity');
    this.zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [DedicatedBlockStorageCluster] resource's state with the given [name] and [id].
  static DedicatedBlockStorageCluster get(
    String name,
    pulumi.Input<String> id, {
    DedicatedBlockStorageClusterState? state,
  }) {
    return DedicatedBlockStorageCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DedicatedBlockStorageCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ebs/dedicatedBlockStorageCluster:DedicatedBlockStorageCluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.availableCapacity = registerOutput<String>('availableCapacity');
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.dedicatedBlockStorageClusterId = registerOutput<String>('dedicatedBlockStorageClusterId');
    this.dedicatedBlockStorageClusterName = registerOutput<String>('dedicatedBlockStorageClusterName');
    this.deliveryCapacity = registerOutput<String>('deliveryCapacity');
    this.description = registerOutput<String>('description');
    this.expiredTime = registerOutput<String>('expiredTime');
    this.performanceLevel = registerOutput<String>('performanceLevel');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.supportedCategory = registerOutput<String>('supportedCategory');
    this.totalCapacity = registerOutput<String>('totalCapacity');
    this.type = registerOutput<String>('type');
    this.usedCapacity = registerOutput<String>('usedCapacity');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
