import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_ip_args.dart';
import 'security_ip_state.dart';

/// Provides a Click House Enterprise Db Cluster Security I P resource.
///
/// Enterprise Clickhouse instance Security IP.
///
/// For information about Click House Enterprise Db Cluster Security I P and how to use it, see [What is Enterprise Db Cluster Security I P](https://next.api.alibabacloud.com/document/clickhouse/2023-05-22/ModifySecurityIPList).
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
/// const regionId = config.get("regionId") || "cn-beijing";
/// const vswIpRangeI = config.get("vswIpRangeI") || "172.16.1.0/24";
/// const vpcIpRange = config.get("vpcIpRange") || "172.16.0.0/12";
/// const zoneIdI = config.get("zoneIdI") || "cn-beijing-i";
/// const defaultktKLuM = new alicloud.vpc.Network("defaultktKLuM", {cidrBlock: vpcIpRange});
/// const defaultTQWN3k = new alicloud.vpc.Switch("defaultTQWN3k", {
///     vpcId: defaultktKLuM.id,
///     zoneId: zoneIdI,
///     cidrBlock: vswIpRangeI,
/// });
/// const defaultn0nVrN = new alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultn0nVrN", {
///     zoneId: zoneIdI,
///     vpcId: defaultktKLuM.id,
///     scaleMin: "8",
///     scaleMax: "16",
///     vswitchId: defaultTQWN3k.id,
/// });
/// const _default = new alicloud.clickhouseenterprisedbcluster.SecurityIp("default", {
///     groupName: "example_group",
///     securityIpList: "127.0.0.2",
///     dbInstanceId: defaultn0nVrN.id,
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
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-beijing"
/// vsw_ip_range_i = config.get("vswIpRangeI")
/// if vsw_ip_range_i is None:
///     vsw_ip_range_i = "172.16.1.0/24"
/// vpc_ip_range = config.get("vpcIpRange")
/// if vpc_ip_range is None:
///     vpc_ip_range = "172.16.0.0/12"
/// zone_id_i = config.get("zoneIdI")
/// if zone_id_i is None:
///     zone_id_i = "cn-beijing-i"
/// defaultkt_k_lu_m = alicloud.vpc.Network("defaultktKLuM", cidr_block=vpc_ip_range)
/// default_tqwn3k = alicloud.vpc.Switch("defaultTQWN3k",
///     vpc_id=defaultkt_k_lu_m.id,
///     zone_id=zone_id_i,
///     cidr_block=vsw_ip_range_i)
/// defaultn0n_vr_n = alicloud.clickhouseenterprisedbcluster.ClickHouseEnterpriseDbCluster("defaultn0nVrN",
///     zone_id=zone_id_i,
///     vpc_id=defaultkt_k_lu_m.id,
///     scale_min="8",
///     scale_max="16",
///     vswitch_id=default_tqwn3k.id)
/// default = alicloud.clickhouseenterprisedbcluster.SecurityIp("default",
///     group_name="example_group",
///     security_ip_list="127.0.0.2",
///     db_instance_id=defaultn0n_vr_n.id)
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
///     var regionId = config.Get("regionId") ?? "cn-beijing";
///     var vswIpRangeI = config.Get("vswIpRangeI") ?? "172.16.1.0/24";
///     var vpcIpRange = config.Get("vpcIpRange") ?? "172.16.0.0/12";
///     var zoneIdI = config.Get("zoneIdI") ?? "cn-beijing-i";
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
///     var defaultn0nVrN = new AliCloud.ClickHouseEnterpriseDbCluster.ClickHouseEnterpriseDbCluster("defaultn0nVrN", new()
///     {
///         ZoneId = zoneIdI,
///         VpcId = defaultktKLuM.Id,
///         ScaleMin = "8",
///         ScaleMax = "16",
///         VswitchId = defaultTQWN3k.Id,
///     });
///
///     var @default = new AliCloud.ClickHouseEnterpriseDbCluster.SecurityIp("default", new()
///     {
///         GroupName = "example_group",
///         SecurityIpList = "127.0.0.2",
///         DbInstanceId = defaultn0nVrN.Id,
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
/// 		regionId := "cn-beijing"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		vswIpRangeI := "172.16.1.0/24"
/// 		if param := cfg.Get("vswIpRangeI"); param != "" {
/// 			vswIpRangeI = param
/// 		}
/// 		vpcIpRange := "172.16.0.0/12"
/// 		if param := cfg.Get("vpcIpRange"); param != "" {
/// 			vpcIpRange = param
/// 		}
/// 		zoneIdI := "cn-beijing-i"
/// 		if param := cfg.Get("zoneIdI"); param != "" {
/// 			zoneIdI = param
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
/// 		defaultn0nVrN, err := clickhouseenterprisedbcluster.NewClickHouseEnterpriseDbCluster(ctx, "defaultn0nVrN", &clickhouseenterprisedbcluster.ClickHouseEnterpriseDbClusterArgs{
/// 			ZoneId:    pulumi.String(zoneIdI),
/// 			VpcId:     defaultktKLuM.ID(),
/// 			ScaleMin:  pulumi.String("8"),
/// 			ScaleMax:  pulumi.String("16"),
/// 			VswitchId: defaultTQWN3k.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = clickhouseenterprisedbcluster.NewSecurityIp(ctx, "default", &clickhouseenterprisedbcluster.SecurityIpArgs{
/// 			GroupName:      pulumi.String("example_group"),
/// 			SecurityIpList: pulumi.String("127.0.0.2"),
/// 			DbInstanceId:   defaultn0nVrN.ID(),
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
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.SecurityIp;
/// import com.pulumi.alicloud.clickhouseenterprisedbcluster.SecurityIpArgs;
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
///         final var regionId = config.get("regionId").orElse("cn-beijing");
///         final var vswIpRangeI = config.get("vswIpRangeI").orElse("172.16.1.0/24");
///         final var vpcIpRange = config.get("vpcIpRange").orElse("172.16.0.0/12");
///         final var zoneIdI = config.get("zoneIdI").orElse("cn-beijing-i");
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
///         var defaultn0nVrN = new ClickHouseEnterpriseDbCluster("defaultn0nVrN", ClickHouseEnterpriseDbClusterArgs.builder()
///             .zoneId(zoneIdI)
///             .vpcId(defaultktKLuM.id())
///             .scaleMin("8")
///             .scaleMax("16")
///             .vswitchId(defaultTQWN3k.id())
///             .build());
///
///         var default_ = new SecurityIp("default", SecurityIpArgs.builder()
///             .groupName("example_group")
///             .securityIpList("127.0.0.2")
///             .dbInstanceId(defaultn0nVrN.id())
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
///   regionId:
///     type: string
///     default: cn-beijing
///   vswIpRangeI:
///     type: string
///     default: 172.16.1.0/24
///   vpcIpRange:
///     type: string
///     default: 172.16.0.0/12
///   zoneIdI:
///     type: string
///     default: cn-beijing-i
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
///   defaultn0nVrN:
///     type: alicloud:clickhouseenterprisedbcluster:ClickHouseEnterpriseDbCluster
///     properties:
///       zoneId: ${zoneIdI}
///       vpcId: ${defaultktKLuM.id}
///       scaleMin: '8'
///       scaleMax: '16'
///       vswitchId: ${defaultTQWN3k.id}
///   default:
///     type: alicloud:clickhouseenterprisedbcluster:SecurityIp
///     properties:
///       groupName: example_group
///       securityIpList: 127.0.0.2
///       dbInstanceId: ${defaultn0nVrN.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Click House Enterprise Db Cluster Security I P can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:clickhouseenterprisedbcluster/securityIp:SecurityIp example <db_instance_id>:<group_name>
/// ```
class SecurityIp extends pulumi.CustomResource {
  /// The cluster ID.
  late final pulumi.Output<String> dbInstanceId;

  /// The whitelist name.
  late final pulumi.Output<String> groupName;

  /// The IP address list under the whitelist group.
  late final pulumi.Output<String> securityIpList;

  /// Creates a new [SecurityIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityIp]. {@macro pulumi_clickhouseenterprisedbcluster_security_ip_security_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityIp(
    String name, {
    SecurityIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/securityIp:SecurityIp',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbInstanceId = registerOutput<String>('dbInstanceId');
    groupName = registerOutput<String>('groupName');
    securityIpList = registerOutput<String>('securityIpList');
  }

  /// Gets an existing [SecurityIp] resource's state with the given [name] and [id].
  static SecurityIp get(
    String name,
    pulumi.Input<String> id, {
    SecurityIpState? state,
  }) {
    return SecurityIp._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecurityIp._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:clickhouseenterprisedbcluster/securityIp:SecurityIp',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    dbInstanceId = registerOutput<String>('dbInstanceId');
    groupName = registerOutput<String>('groupName');
    securityIpList = registerOutput<String>('securityIpList');
  }
}
