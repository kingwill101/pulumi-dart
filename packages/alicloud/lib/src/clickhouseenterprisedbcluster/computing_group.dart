import 'package:pulumi/pulumi.dart' as pulumi;
import 'computing_group_args.dart';

/// Provides a Click House Enterprise Db Cluster Computing Group resource.
///
/// ClickHouse Enterprise Edition Cluster Compute Group.
///
/// For information about Click House Enterprise Db Cluster Computing Group and how to use it, see [What is Enterprise Db Cluster Computing Group](https://next.api.alibabacloud.com/document/clickhouse/2023-05-22/CreateComputingGroup).
///
/// > **NOTE:** Available since v1.270.0.
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
/// const defaultp2mwWM = new alicloud.vpc.Network("defaultp2mwWM", {cidrBlock: vpcIpRange});
/// const defaultkCZhNu = new alicloud.vpc.Switch("defaultkCZhNu", {
///     vpcId: defaultp2mwWM.id,
///     zoneId: zoneIdI,
///     cidrBlock: vswIpRangeI,
/// });
/// const defaultQ5vukB = new alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultQ5vukB", {
///     zoneId: defaultkCZhNu.zoneId,
///     vpcId: defaultp2mwWM.id,
///     nodeScaleMin: 4,
///     nodeScaleMax: 4,
///     nodeCount: 2,
///     vswitchId: defaultkCZhNu.id,
/// });
/// const _default = new alicloud.clickhouseenterprisedbcluster.ComputingGroup("default", {
///     nodeScaleMin: 4,
///     computingGroupDescription: "example",
///     nodeCount: 2,
///     dbInstanceId: defaultQ5vukB.id,
///     nodeScaleMax: 4,
///     isReadonly: false,
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
/// defaultp2mw_wm = alicloud.vpc.Network("defaultp2mwWM", cidr_block=vpc_ip_range)
/// defaultk_c_zh_nu = alicloud.vpc.Switch("defaultkCZhNu",
///     vpc_id=defaultp2mw_wm.id,
///     zone_id=zone_id_i,
///     cidr_block=vsw_ip_range_i)
/// default_q5vuk_b = alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultQ5vukB",
///     zone_id=defaultk_c_zh_nu.zone_id,
///     vpc_id=defaultp2mw_wm.id,
///     node_scale_min=4,
///     node_scale_max=4,
///     node_count=2,
///     vswitch_id=defaultk_c_zh_nu.id)
/// default = alicloud.clickhouseenterprisedbcluster.ComputingGroup("default",
///     node_scale_min=4,
///     computing_group_description="example",
///     node_count=2,
///     db_instance_id=default_q5vuk_b.id,
///     node_scale_max=4,
///     is_readonly=False)
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
///     var defaultp2mwWM = new AliCloud.Vpc.Network("defaultp2mwWM", new()
///     {
///         CidrBlock = vpcIpRange,
///     });
///
///     var defaultkCZhNu = new AliCloud.Vpc.Switch("defaultkCZhNu", new()
///     {
///         VpcId = defaultp2mwWM.Id,
///         ZoneId = zoneIdI,
///         CidrBlock = vswIpRangeI,
///     });
///
///     var defaultQ5vukB = new AliCloud.ClickHouseEnterpriseDbCluster.ClickHouseEnterpriseDbCluster("defaultQ5vukB", new()
///     {
///         ZoneId = defaultkCZhNu.ZoneId,
///         VpcId = defaultp2mwWM.Id,
///         NodeScaleMin = 4,
///         NodeScaleMax = 4,
///         NodeCount = 2,
///         VswitchId = defaultkCZhNu.Id,
///     });
///
///     var @default = new AliCloud.ClickHouseEnterpriseDbCluster.ComputingGroup("default", new()
///     {
///         NodeScaleMin = 4,
///         ComputingGroupDescription = "example",
///         NodeCount = 2,
///         DbInstanceId = defaultQ5vukB.Id,
///         NodeScaleMax = 4,
///         IsReadonly = false,
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
/// 		defaultp2mwWM, err := vpc.NewNetwork(ctx, "defaultp2mwWM", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String(vpcIpRange),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultkCZhNu, err := vpc.NewSwitch(ctx, "defaultkCZhNu", &vpc.SwitchArgs{
/// 			VpcId:     defaultp2mwWM.ID(),
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			CidrBlock: pulumi.String(vswIpRangeI),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultQ5vukB, err := clickhouseenterprisedbcluster.NewClickHouseEnterpriseDbCluster(ctx, "defaultQ5vukB", &clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs{
/// 			ZoneId:       defaultkCZhNu.ZoneId,
/// 			VpcId:        defaultp2mwWM.ID(),
/// 			NodeScaleMin: pulumi.Int(4),
/// 			NodeScaleMax: pulumi.Int(4),
/// 			NodeCount:    pulumi.Int(2),
/// 			VswitchId:    defaultkCZhNu.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouseenterprisedbcluster.NewComputingGroup(ctx, "default", &clickhouseenterprisedbcluster.ComputingGroupArgs{
/// 			NodeScaleMin:              pulumi.Int(4),
/// 			ComputingGroupDescription: pulumi.String("example"),
/// 			NodeCount:                 pulumi.Int(2),
/// 			DbInstanceId:              defaultQ5vukB.ID(),
/// 			NodeScaleMax:              pulumi.Int(4),
/// 			IsReadonly:                pulumi.Bool(false),
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
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ComputingGroup;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.ComputingGroupArgs;
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
///         var defaultp2mwWM = new Network("defaultp2mwWM", NetworkArgs.builder()
///             .cidrBlock(vpcIpRange)
///             .build());
///
///         var defaultkCZhNu = new Switch("defaultkCZhNu", SwitchArgs.builder()
///             .vpcId(defaultp2mwWM.id())
///             .zoneId(zoneIdI)
///             .cidrBlock(vswIpRangeI)
///             .build());
///
///         var defaultQ5vukB = new ClickHouseEnterpriseDbCluster("defaultQ5vukB", ClickHouseEnterpriseDbClusterArgs.builder()
///             .zoneId(defaultkCZhNu.zoneId())
///             .vpcId(defaultp2mwWM.id())
///             .nodeScaleMin(4)
///             .nodeScaleMax(4)
///             .nodeCount(2)
///             .vswitchId(defaultkCZhNu.id())
///             .build());
///
///         var default_ = new ComputingGroup("default", ComputingGroupArgs.builder()
///             .nodeScaleMin(4)
///             .computingGroupDescription("example")
///             .nodeCount(2)
///             .dbInstanceId(defaultQ5vukB.id())
///             .nodeScaleMax(4)
///             .isReadonly(false)
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
///   defaultp2mwWM:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: ${vpcIpRange}
///   defaultkCZhNu:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultp2mwWM.id}
///       zoneId: ${zoneIdI}
///       cidrBlock: ${vswIpRangeI}
///   defaultQ5vukB:
///     type: alicloud:clickhouseenterprisedbcluster:ClickHouseEnterpriseDbCluster
///     properties:
///       zoneId: ${defaultkCZhNu.zoneId}
///       vpcId: ${defaultp2mwWM.id}
///       nodeScaleMin: '4'
///       nodeScaleMax: '4'
///       nodeCount: '2'
///       vswitchId: ${defaultkCZhNu.id}
///   default:
///     type: alicloud:clickhouseenterprisedbcluster:ComputingGroup
///     properties:
///       nodeScaleMin: '4'
///       computingGroupDescription: example
///       nodeCount: '2'
///       dbInstanceId: ${defaultQ5vukB.id}
///       nodeScaleMax: '4'
///       isReadonly: false
/// ```
///
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Enterprise Db Cluster Computing Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouseenterprisedbcluster/computingGroup:ComputingGroup example <db_instance_id>:<computing_group_id>
/// ```
class ComputingGroup extends pulumi.CustomResource {
  /// Computing group name
  late final pulumi.Output<String?> computingGroupDescription;
  /// A list of computing group endpoint names.
  late final pulumi.Output<List<String>> computingGroupEndpointNames;
  /// List of computing group endpoints.
  late final pulumi.Output<List<String>> computingGroupEndpoints;
  /// A resource property field representing the primary resource ID.
  late final pulumi.Output<String> computingGroupId;
  /// List of public endpoints for the computing group.
  late final pulumi.Output<List<String>> computingGroupPublicEndpoints;
  /// Computing group status.
  late final pulumi.Output<String> computingGroupStatus;
  /// ClickHouse Enterprise Edition instance ID
  late final pulumi.Output<String> dbInstanceId;
  /// Computing group read-only
  late final pulumi.Output<bool> isReadonly;
  /// Number of computing group nodes
  late final pulumi.Output<int> nodeCount;
  /// Computing group node elasticity upper limit
  late final pulumi.Output<int> nodeScaleMax;
  /// Lower limit of computing group node elasticity
  late final pulumi.Output<int> nodeScaleMin;

  /// Creates a new [ComputingGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ComputingGroup]. {@macro pulumi_clickhouseenterprisedbcluster_computing_group_computing_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ComputingGroup(
    String name, {
    ComputingGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:clickhouseenterprisedbcluster/computingGroup:ComputingGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.computingGroupDescription = registerOutput<String?>('computingGroupDescription');
    this.computingGroupEndpointNames = registerOutput<List<String>>('computingGroupEndpointNames');
    this.computingGroupEndpoints = registerOutput<List<String>>('computingGroupEndpoints');
    this.computingGroupId = registerOutput<String>('computingGroupId');
    this.computingGroupPublicEndpoints = registerOutput<List<String>>('computingGroupPublicEndpoints');
    this.computingGroupStatus = registerOutput<String>('computingGroupStatus');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.isReadonly = registerOutput<bool>('isReadonly');
    this.nodeCount = registerOutput<int>('nodeCount');
    this.nodeScaleMax = registerOutput<int>('nodeScaleMax');
    this.nodeScaleMin = registerOutput<int>('nodeScaleMin');
  }
}
