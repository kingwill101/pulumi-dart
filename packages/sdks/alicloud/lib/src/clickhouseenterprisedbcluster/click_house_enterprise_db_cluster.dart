import 'package:pulumi/pulumi.dart' as pulumi;
import 'click_house_enterprise_db_cluster_args.dart';
import 'click_house_enterprise_db_cluster_state.dart';

/// Provides a Click House Enterprise Db Cluster resource.
///
/// Enterprise Edition Cluster Resources.
///
/// For information about Click House Enterprise Db Cluster and how to use it, see [What is Enterprise Db Cluster](https://next.api.alibabacloud.com/document/clickhouse/2023-05-22/CreateDBInstance).
///
/// &gt; **NOTE:** Available since v1.247.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const vswIpRangeI = config.get("vswIpRangeI") || "172.16.1.0/24";
/// const regionId = config.get("regionId") || "cn-beijing";
/// const vpcIpRange = config.get("vpcIpRange") || "172.16.0.0/12";
/// const vswIpRangeK = config.get("vswIpRangeK") || "172.16.3.0/24";
/// const vswIpRangeL = config.get("vswIpRangeL") || "172.16.2.0/24";
/// const zoneIdI = config.get("zoneIdI") || "cn-beijing-i";
/// const zoneIdL = config.get("zoneIdL") || "cn-beijing-l";
/// const zoneIdK = config.get("zoneIdK") || "cn-beijing-k";
/// const defaultktKLuM = new alicloud.vpc.Network("defaultktKLuM", {cidrBlock: vpcIpRange});
/// const defaultTQWN3k = new alicloud.vpc.Switch("defaultTQWN3k", {
///     vpcId: defaultktKLuM.id,
///     zoneId: zoneIdI,
///     cidrBlock: vswIpRangeI,
/// });
/// const defaultylyLu8 = new alicloud.vpc.Switch("defaultylyLu8", {
///     vpcId: defaultktKLuM.id,
///     zoneId: zoneIdL,
///     cidrBlock: vswIpRangeL,
/// });
/// const defaultRNbPh8 = new alicloud.vpc.Switch("defaultRNbPh8", {
///     vpcId: defaultktKLuM.id,
///     zoneId: zoneIdK,
///     cidrBlock: vswIpRangeK,
/// });
/// const _default = new alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("default", {
///     zoneId: zoneIdI,
///     vpcId: defaultktKLuM.id,
///     scaleMin: "8",
///     scaleMax: "16",
///     vswitchId: defaultTQWN3k.id,
///     multiZones: [
///         {
///             vswitchIds: [defaultTQWN3k.id],
///             zoneId: zoneIdI,
///         },
///         {
///             vswitchIds: [defaultylyLu8.id],
///             zoneId: zoneIdL,
///         },
///         {
///             vswitchIds: [defaultRNbPh8.id],
///             zoneId: zoneIdK,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// vsw_ip_range_i = config.get("vswIpRangeI")
/// if vsw_ip_range_i is None:
///     vsw_ip_range_i = "172.16.1.0/24"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-beijing"
/// vpc_ip_range = config.get("vpcIpRange")
/// if vpc_ip_range is None:
///     vpc_ip_range = "172.16.0.0/12"
/// vsw_ip_range_k = config.get("vswIpRangeK")
/// if vsw_ip_range_k is None:
///     vsw_ip_range_k = "172.16.3.0/24"
/// vsw_ip_range_l = config.get("vswIpRangeL")
/// if vsw_ip_range_l is None:
///     vsw_ip_range_l = "172.16.2.0/24"
/// zone_id_i = config.get("zoneIdI")
/// if zone_id_i is None:
///     zone_id_i = "cn-beijing-i"
/// zone_id_l = config.get("zoneIdL")
/// if zone_id_l is None:
///     zone_id_l = "cn-beijing-l"
/// zone_id_k = config.get("zoneIdK")
/// if zone_id_k is None:
///     zone_id_k = "cn-beijing-k"
/// defaultkt_k_lu_m = alicloud.vpc.Network("defaultktKLuM", cidr_block=vpc_ip_range)
/// default_tqwn3k = alicloud.vpc.Switch("defaultTQWN3k",
///     vpc_id=defaultkt_k_lu_m.id,
///     zone_id=zone_id_i,
///     cidr_block=vsw_ip_range_i)
/// defaultyly_lu8 = alicloud.vpc.Switch("defaultylyLu8",
///     vpc_id=defaultkt_k_lu_m.id,
///     zone_id=zone_id_l,
///     cidr_block=vsw_ip_range_l)
/// default_r_nb_ph8 = alicloud.vpc.Switch("defaultRNbPh8",
///     vpc_id=defaultkt_k_lu_m.id,
///     zone_id=zone_id_k,
///     cidr_block=vsw_ip_range_k)
/// default = alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("default",
///     zone_id=zone_id_i,
///     vpc_id=defaultkt_k_lu_m.id,
///     scale_min="8",
///     scale_max="16",
///     vswitch_id=default_tqwn3k.id,
///     multi_zones=[
///         {
///             "vswitch_ids": [default_tqwn3k.id],
///             "zone_id": zone_id_i,
///         },
///         {
///             "vswitch_ids": [defaultyly_lu8.id],
///             "zone_id": zone_id_l,
///         },
///         {
///             "vswitch_ids": [default_r_nb_ph8.id],
///             "zone_id": zone_id_k,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var vswIpRangeI = config.Get("vswIpRangeI") ?? "172.16.1.0/24";
///     var regionId = config.Get("regionId") ?? "cn-beijing";
///     var vpcIpRange = config.Get("vpcIpRange") ?? "172.16.0.0/12";
///     var vswIpRangeK = config.Get("vswIpRangeK") ?? "172.16.3.0/24";
///     var vswIpRangeL = config.Get("vswIpRangeL") ?? "172.16.2.0/24";
///     var zoneIdI = config.Get("zoneIdI") ?? "cn-beijing-i";
///     var zoneIdL = config.Get("zoneIdL") ?? "cn-beijing-l";
///     var zoneIdK = config.Get("zoneIdK") ?? "cn-beijing-k";
///     var defaultktKLuM = new AliCloud.Vpc.Network("defaultktKLuM", new()
///     {
///         CidrBlock = vpcIpRange,
///     });
///
///     var defaultTQWN3k = new AliCloud.Vpc.Switch("defaultTQWN3k", new()
///     {
///         VpcId = defaultktKLuM.Id,
///         ZoneId = zoneIdI,
///         CidrBlock = vswIpRangeI,
///     });
///
///     var defaultylyLu8 = new AliCloud.Vpc.Switch("defaultylyLu8", new()
///     {
///         VpcId = defaultktKLuM.Id,
///         ZoneId = zoneIdL,
///         CidrBlock = vswIpRangeL,
///     });
///
///     var defaultRNbPh8 = new AliCloud.Vpc.Switch("defaultRNbPh8", new()
///     {
///         VpcId = defaultktKLuM.Id,
///         ZoneId = zoneIdK,
///         CidrBlock = vswIpRangeK,
///     });
///
///     var @default = new AliCloud.ClickHouseEnterpriseDbCluster.ClickHouseEnterpriseDbCluster("default", new()
///     {
///         ZoneId = zoneIdI,
///         VpcId = defaultktKLuM.Id,
///         ScaleMin = "8",
///         ScaleMax = "16",
///         VswitchId = defaultTQWN3k.Id,
///         MultiZones = new[]
///         {
///             new AliCloud.clickHouseEnterpriseDbCluster.Inputs.ClickHouseEnterpriseDbClusterMultiZoneArgs
///             {
///                 VswitchIds = new[]
///                 {
///                     defaultTQWN3k.Id,
///                 },
///                 ZoneId = zoneIdI,
///             },
///             new AliCloud.clickHouseEnterpriseDbCluster.Inputs.ClickHouseEnterpriseDbClusterMultiZoneArgs
///             {
///                 VswitchIds = new[]
///                 {
///                     defaultylyLu8.Id,
///                 },
///                 ZoneId = zoneIdL,
///             },
///             new AliCloud.clickHouseEnterpriseDbCluster.Inputs.ClickHouseEnterpriseDbClusterMultiZoneArgs
///             {
///                 VswitchIds = new[]
///                 {
///                     defaultRNbPh8.Id,
///                 },
///                 ZoneId = zoneIdK,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/clickhouseenterprisedbcluster"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		vswIpRangeI := "172.16.1.0/24"
/// 		if param := cfg.Get("vswIpRangeI"); param != "" {
/// 			vswIpRangeI = param
/// 		}
/// 		regionId := "cn-beijing"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		vpcIpRange := "172.16.0.0/12"
/// 		if param := cfg.Get("vpcIpRange"); param != "" {
/// 			vpcIpRange = param
/// 		}
/// 		vswIpRangeK := "172.16.3.0/24"
/// 		if param := cfg.Get("vswIpRangeK"); param != "" {
/// 			vswIpRangeK = param
/// 		}
/// 		vswIpRangeL := "172.16.2.0/24"
/// 		if param := cfg.Get("vswIpRangeL"); param != "" {
/// 			vswIpRangeL = param
/// 		}
/// 		zoneIdI := "cn-beijing-i"
/// 		if param := cfg.Get("zoneIdI"); param != "" {
/// 			zoneIdI = param
/// 		}
/// 		zoneIdL := "cn-beijing-l"
/// 		if param := cfg.Get("zoneIdL"); param != "" {
/// 			zoneIdL = param
/// 		}
/// 		zoneIdK := "cn-beijing-k"
/// 		if param := cfg.Get("zoneIdK"); param != "" {
/// 			zoneIdK = param
/// 		}
/// 		defaultktKLuM, err := vpc.NewNetwork(ctx, "defaultktKLuM", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String(vpcIpRange),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTQWN3k, err := vpc.NewSwitch(ctx, "defaultTQWN3k", &vpc.SwitchArgs{
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			CidrBlock: pulumi.String(vswIpRangeI),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultylyLu8, err := vpc.NewSwitch(ctx, "defaultylyLu8", &vpc.SwitchArgs{
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ZoneId:    pulumi.String(zoneIdL),
/// 			CidrBlock: pulumi.String(vswIpRangeL),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRNbPh8, err := vpc.NewSwitch(ctx, "defaultRNbPh8", &vpc.SwitchArgs{
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ZoneId:    pulumi.String(zoneIdK),
/// 			CidrBlock: pulumi.String(vswIpRangeK),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouseenterprisedbcluster.NewClickHouseEnterpriseDbCluster(ctx, "default", &clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs{
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ScaleMin:  pulumi.String("8"),
/// 			ScaleMax:  pulumi.String("16"),
/// 			VswitchId: defaultTQWN3k.ID(),
/// 			MultiZones: clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterMultiZoneArray{
/// 				&clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterMultiZoneArgs{
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultTQWN3k.ID(),
/// 					},
/// 					ZoneId: pulumi.String(zoneIdI),
/// 				},
/// 				&clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterMultiZoneArgs{
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultylyLu8.ID(),
/// 					},
/// 					ZoneId: pulumi.String(zoneIdL),
/// 				},
/// 				&clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterMultiZoneArgs{
/// 					VswitchIds: pulumi.StringArray{
/// 						defaultRNbPh8.ID(),
/// 					},
/// 					ZoneId: pulumi.String(zoneIdK),
/// 				},
/// 			},
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.inputs.ClickHouseEnterpriseDbClusterMultiZoneArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var vswIpRangeI = config.get("vswIpRangeI").orElse("172.16.1.0/24");
///         final var regionId = config.get("regionId").orElse("cn-beijing");
///         final var vpcIpRange = config.get("vpcIpRange").orElse("172.16.0.0/12");
///         final var vswIpRangeK = config.get("vswIpRangeK").orElse("172.16.3.0/24");
///         final var vswIpRangeL = config.get("vswIpRangeL").orElse("172.16.2.0/24");
///         final var zoneIdI = config.get("zoneIdI").orElse("cn-beijing-i");
///         final var zoneIdL = config.get("zoneIdL").orElse("cn-beijing-l");
///         final var zoneIdK = config.get("zoneIdK").orElse("cn-beijing-k");
///         var defaultktKLuM = new Network("defaultktKLuM", NetworkArgs.builder()
///             .cidrBlock(vpcIpRange)
///             .build());
///
///         var defaultTQWN3k = new Switch("defaultTQWN3k", SwitchArgs.builder()
///             .vpcId(defaultktKLuM.id())
///             .zoneId(zoneIdI)
///             .cidrBlock(vswIpRangeI)
///             .build());
///
///         var defaultylyLu8 = new Switch("defaultylyLu8", SwitchArgs.builder()
///             .vpcId(defaultktKLuM.id())
///             .zoneId(zoneIdL)
///             .cidrBlock(vswIpRangeL)
///             .build());
///
///         var defaultRNbPh8 = new Switch("defaultRNbPh8", SwitchArgs.builder()
///             .vpcId(defaultktKLuM.id())
///             .zoneId(zoneIdK)
///             .cidrBlock(vswIpRangeK)
///             .build());
///
///         var default_ = new ClickHouseEnterpriseDbCluster("default", ClickHouseEnterpriseDbClusterArgs.builder()
///             .zoneId(zoneIdI)
///             .vpcId(defaultktKLuM.id())
///             .scaleMin("8")
///             .scaleMax("16")
///             .vswitchId(defaultTQWN3k.id())
///             .multiZones(
///                 ClickHouseEnterpriseDbClusterMultiZoneArgs.builder()
///                     .vswitchIds(defaultTQWN3k.id())
///                     .zoneId(zoneIdI)
///                     .build(),
///                 ClickHouseEnterpriseDbClusterMultiZoneArgs.builder()
///                     .vswitchIds(defaultylyLu8.id())
///                     .zoneId(zoneIdL)
///                     .build(),
///                 ClickHouseEnterpriseDbClusterMultiZoneArgs.builder()
///                     .vswitchIds(defaultRNbPh8.id())
///                     .zoneId(zoneIdK)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
///   vswIpRangeI:
///     type: string
///     default: 172.16.1.0/24
///   regionId:
///     type: string
///     default: cn-beijing
///   vpcIpRange:
///     type: string
///     default: 172.16.0.0/12
///   vswIpRangeK:
///     type: string
///     default: 172.16.3.0/24
///   vswIpRangeL:
///     type: string
///     default: 172.16.2.0/24
///   zoneIdI:
///     type: string
///     default: cn-beijing-i
///   zoneIdL:
///     type: string
///     default: cn-beijing-l
///   zoneIdK:
///     type: string
///     default: cn-beijing-k
/// resources:
///   defaultktKLuM:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: ${vpcIpRange}
///   defaultTQWN3k:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultktKLuM.id}
///       zoneId: ${zoneIdI}
///       cidrBlock: ${vswIpRangeI}
///   defaultylyLu8:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultktKLuM.id}
///       zoneId: ${zoneIdL}
///       cidrBlock: ${vswIpRangeL}
///   defaultRNbPh8:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultktKLuM.id}
///       zoneId: ${zoneIdK}
///       cidrBlock: ${vswIpRangeK}
///   default:
///     type: alicloud:clickhouseenterprisedbcluster:ClickHouseEnterpriseDbCluster
///     properties:
///       zoneId: ${zoneIdI}
///       vpcId: ${defaultktKLuM.id}
///       scaleMin: '8'
///       scaleMax: '16'
///       vswitchId: ${defaultTQWN3k.id}
///       multiZones:
///         - vswitchIds:
///             - ${defaultTQWN3k.id}
///           zoneId: ${zoneIdI}
///         - vswitchIds:
///             - ${defaultylyLu8.id}
///           zoneId: ${zoneIdL}
///         - vswitchIds:
///             - ${defaultRNbPh8.id}
///           zoneId: ${zoneIdK}
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Enterprise Db Cluster can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouseenterprisedbcluster/clickHouseEnterpriseDbCluster:ClickHouseEnterpriseDbCluster example <db_instance_id>
/// ```
class ClickHouseEnterpriseDbCluster extends pulumi.CustomResource {
  /// Instance type.
  late final pulumi.Output<String> category;

  /// The billing method.
  late final pulumi.Output<String> chargeType;

  /// List of computing group IDs.
  late final pulumi.Output<List<String>> computingGroupIds;

  /// The cluster creation time, in the format yyyy-MM-ddTHH:mm:ssZ.
  late final pulumi.Output<String> createTime;

  /// Cluster description.
  late final pulumi.Output<String> description;

  /// List of endpoint details.
  late final pulumi.Output<List<Map<String, dynamic>>> endpoints;

  /// The minor version number of the cluster engine.
  late final pulumi.Output<String> engineMinorVersion;

  /// Network type of the instance.
  late final pulumi.Output<String> instanceNetworkType;

  /// The multi-zone configuration. See `multi_zones` below.
  late final pulumi.Output<List<Map<String, dynamic>>> multiZones;

  /// The number of nodes. Valid values: 2 to 16. This parameter is required when NodeScaleMin and NodeScaleMax are configured to define the auto-scaling range.
  late final pulumi.Output<int> nodeCount;

  /// Maximum value for serverless node auto scaling. Valid values range from 4 to 32 and must be greater than the minimum value.
  late final pulumi.Output<int> nodeScaleMax;

  /// The minimum value for serverless node auto-scaling. Valid values: 4–32.
  late final pulumi.Output<int> nodeScaleMin;

  /// The region ID.
  late final pulumi.Output<String> regionId;

  /// Resource group ID of the cluster.
  late final pulumi.Output<String> resourceGroupId;

  /// The maximum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  late final pulumi.Output<String> scaleMax;

  /// The minimum value for serverless auto scaling. This parameter is not recommended. We recommend that you use NodeCount, NodeScaleMin, and NodeScaleMax to configure auto scaling capabilities.
  late final pulumi.Output<String> scaleMin;

  /// The instance status.
  late final pulumi.Output<String> status;

  /// Pre-purchased storage capacity (GB).
  late final pulumi.Output<String> storageQuota;

  /// The storage capacity.
  late final pulumi.Output<int> storageSize;

  /// The storage type.
  late final pulumi.Output<String> storageType;

  /// Tag information.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The VPC ID.
  late final pulumi.Output<String?> vpcId;

  /// vSwitch ID.
  late final pulumi.Output<String?> vswitchId;

  /// The zone ID.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ClickHouseEnterpriseDbCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClickHouseEnterpriseDbCluster]. {@macro pulumi_clickhouseenterprisedbcluster_click_house_enterprise_db_cluster_click_house_enterprise_db_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClickHouseEnterpriseDbCluster(
    String name, {
    ClickHouseEnterpriseDbClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/clickHouseEnterpriseDbCluster:ClickHouseEnterpriseDbCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String>('category');
    chargeType = registerOutput<String>('chargeType');
    computingGroupIds = registerOutput<List<String>>('computingGroupIds');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineMinorVersion = registerOutput<String>('engineMinorVersion');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    multiZones = registerOutput<List<Map<String, dynamic>>>('multiZones');
    nodeCount = registerOutput<int>('nodeCount');
    nodeScaleMax = registerOutput<int>('nodeScaleMax');
    nodeScaleMin = registerOutput<int>('nodeScaleMin');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scaleMax = registerOutput<String>('scaleMax');
    scaleMin = registerOutput<String>('scaleMin');
    status = registerOutput<String>('status');
    storageQuota = registerOutput<String>('storageQuota');
    storageSize = registerOutput<int>('storageSize');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }

  /// Gets an existing [ClickHouseEnterpriseDbCluster] resource's state with the given [name] and [id].
  static ClickHouseEnterpriseDbCluster get(
    String name,
    pulumi.Input<String> id, {
    ClickHouseEnterpriseDbClusterState? state,
  }) {
    return ClickHouseEnterpriseDbCluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ClickHouseEnterpriseDbCluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/clickHouseEnterpriseDbCluster:ClickHouseEnterpriseDbCluster',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    category = registerOutput<String>('category');
    chargeType = registerOutput<String>('chargeType');
    computingGroupIds = registerOutput<List<String>>('computingGroupIds');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    endpoints = registerOutput<List<Map<String, dynamic>>>('endpoints');
    engineMinorVersion = registerOutput<String>('engineMinorVersion');
    instanceNetworkType = registerOutput<String>('instanceNetworkType');
    multiZones = registerOutput<List<Map<String, dynamic>>>('multiZones');
    nodeCount = registerOutput<int>('nodeCount');
    nodeScaleMax = registerOutput<int>('nodeScaleMax');
    nodeScaleMin = registerOutput<int>('nodeScaleMin');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scaleMax = registerOutput<String>('scaleMax');
    scaleMin = registerOutput<String>('scaleMin');
    status = registerOutput<String>('status');
    storageQuota = registerOutput<String>('storageQuota');
    storageSize = registerOutput<int>('storageSize');
    storageType = registerOutput<String>('storageType');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String?>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String?>('zoneId');
  }
}
