import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_state.dart';
import 'load_balancer_zone_mapping.dart';

/// Provides a GWLB Load Balancer resource.
///
///
///
/// For information about GWLB Load Balancer and how to use it, see [What is Load Balancer](https://www.alibabacloud.com/help/en/slb/gateway-based-load-balancing-gwlb/developer-reference/api-gwlb-2024-04-15-createloadbalancer).
///
/// > **NOTE:** Available since v1.234.0.
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
/// import * as std from "@pulumi/std";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const regionId = config.get("regionId") || "cn-wulanchabu";
/// const zoneId2 = config.get("zoneId2") || "cn-wulanchabu-c";
/// const zoneId1 = config.get("zoneId1") || "cn-wulanchabu-b";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaulti9Axhl = new alicloud.vpc.Network("defaulti9Axhl", {
///     cidrBlock: "10.0.0.0/8",
///     vpcName: name,
/// });
/// const default9NaKmL = new alicloud.vpc.Switch("default9NaKmL", {
///     vpcId: defaulti9Axhl.id,
///     zoneId: zoneId1,
///     cidrBlock: "10.0.0.0/24",
///     vswitchName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const defaultH4pKT4 = new alicloud.vpc.Switch("defaultH4pKT4", {
///     vpcId: defaulti9Axhl.id,
///     zoneId: zoneId2,
///     cidrBlock: "10.0.1.0/24",
///     vswitchName: std.format({
///         input: "%s2",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const defaultLoadBalancer = new alicloud.gwlb.LoadBalancer("default", {
///     vpcId: defaulti9Axhl.id,
///     loadBalancerName: name,
///     zoneMappings: [{
///         vswitchId: default9NaKmL.id,
///         zoneId: zoneId1,
///     }],
///     addressIpVersion: "Ipv4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_std as std
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// region_id = config.get("regionId")
/// if region_id is None:
///     region_id = "cn-wulanchabu"
/// zone_id2 = config.get("zoneId2")
/// if zone_id2 is None:
///     zone_id2 = "cn-wulanchabu-c"
/// zone_id1 = config.get("zoneId1")
/// if zone_id1 is None:
///     zone_id1 = "cn-wulanchabu-b"
/// default = alicloud.resourcemanager.get_resource_groups()
/// defaulti9_axhl = alicloud.vpc.Network("defaulti9Axhl",
///     cidr_block="10.0.0.0/8",
///     vpc_name=name)
/// default9_na_km_l = alicloud.vpc.Switch("default9NaKmL",
///     vpc_id=defaulti9_axhl.id,
///     zone_id=zone_id1,
///     cidr_block="10.0.0.0/24",
///     vswitch_name=std.format(input="%s1",
///         args=[name]).result)
/// default_h4p_kt4 = alicloud.vpc.Switch("defaultH4pKT4",
///     vpc_id=defaulti9_axhl.id,
///     zone_id=zone_id2,
///     cidr_block="10.0.1.0/24",
///     vswitch_name=std.format(input="%s2",
///         args=[name]).result)
/// default_load_balancer = alicloud.gwlb.LoadBalancer("default",
///     vpc_id=defaulti9_axhl.id,
///     load_balancer_name=name,
///     zone_mappings=[{
///         "vswitch_id": default9_na_km_l.id,
///         "zone_id": zone_id1,
///     }],
///     address_ip_version="Ipv4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var regionId = config.Get("regionId") ?? "cn-wulanchabu";
///     var zoneId2 = config.Get("zoneId2") ?? "cn-wulanchabu-c";
///     var zoneId1 = config.Get("zoneId1") ?? "cn-wulanchabu-b";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaulti9Axhl = new AliCloud.Vpc.Network("defaulti9Axhl", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///         VpcName = name,
///     });
///
///     var default9NaKmL = new AliCloud.Vpc.Switch("default9NaKmL", new()
///     {
///         VpcId = defaulti9Axhl.Id,
///         ZoneId = zoneId1,
///         CidrBlock = "10.0.0.0/24",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s1",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultH4pKT4 = new AliCloud.Vpc.Switch("defaultH4pKT4", new()
///     {
///         VpcId = defaulti9Axhl.Id,
///         ZoneId = zoneId2,
///         CidrBlock = "10.0.1.0/24",
///         VswitchName = Std.Format.Invoke(new()
///         {
///             Input = "%s2",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///     });
///
///     var defaultLoadBalancer = new AliCloud.Gwlb.LoadBalancer("default", new()
///     {
///         VpcId = defaulti9Axhl.Id,
///         LoadBalancerName = name,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Gwlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = default9NaKmL.Id,
///                 ZoneId = zoneId1,
///             },
///         },
///         AddressIpVersion = "Ipv4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/gwlb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
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
/// 		regionId := "cn-wulanchabu"
/// 		if param := cfg.Get("regionId"); param != "" {
/// 			regionId = param
/// 		}
/// 		zoneId2 := "cn-wulanchabu-c"
/// 		if param := cfg.Get("zoneId2"); param != "" {
/// 			zoneId2 = param
/// 		}
/// 		zoneId1 := "cn-wulanchabu-b"
/// 		if param := cfg.Get("zoneId1"); param != "" {
/// 			zoneId1 = param
/// 		}
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaulti9Axhl, err := vpc.NewNetwork(ctx, "defaulti9Axhl", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s1",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default9NaKmL, err := vpc.NewSwitch(ctx, "default9NaKmL", &vpc.SwitchArgs{
/// 			VpcId:       defaulti9Axhl.ID(),
/// 			ZoneId:      pulumi.String(zoneId1),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s2",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSwitch(ctx, "defaultH4pKT4", &vpc.SwitchArgs{
/// 			VpcId:       defaulti9Axhl.ID(),
/// 			ZoneId:      pulumi.String(zoneId2),
/// 			CidrBlock:   pulumi.String("10.0.1.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat1.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gwlb.NewLoadBalancer(ctx, "default", &gwlb.LoadBalancerArgs{
/// 			VpcId:            defaulti9Axhl.ID(),
/// 			LoadBalancerName: pulumi.String(name),
/// 			ZoneMappings: gwlb.LoadBalancerZoneMappingArray{
/// 				&gwlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: default9NaKmL.ID(),
/// 					ZoneId:    pulumi.String(zoneId1),
/// 				},
/// 			},
/// 			AddressIpVersion: pulumi.String("Ipv4"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.gwlb.LoadBalancer;
/// import com.pulumi.alicloud.gwlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.gwlb.inputs.LoadBalancerZoneMappingArgs;
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
///         final var regionId = config.get("regionId").orElse("cn-wulanchabu");
///         final var zoneId2 = config.get("zoneId2").orElse("cn-wulanchabu-c");
///         final var zoneId1 = config.get("zoneId1").orElse("cn-wulanchabu-b");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaulti9Axhl = new Network("defaulti9Axhl", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .vpcName(name)
///             .build());
///
///         var default9NaKmL = new Switch("default9NaKmL", SwitchArgs.builder()
///             .vpcId(defaulti9Axhl.id())
///             .zoneId(zoneId1)
///             .cidrBlock("10.0.0.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var defaultH4pKT4 = new Switch("defaultH4pKT4", SwitchArgs.builder()
///             .vpcId(defaulti9Axhl.id())
///             .zoneId(zoneId2)
///             .cidrBlock("10.0.1.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s2")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaulti9Axhl.id())
///             .loadBalancerName(name)
///             .zoneMappings(LoadBalancerZoneMappingArgs.builder()
///                 .vswitchId(default9NaKmL.id())
///                 .zoneId(zoneId1)
///                 .build())
///             .addressIpVersion("Ipv4")
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
///     default: cn-wulanchabu
///   zoneId2:
///     type: string
///     default: cn-wulanchabu-c
///   zoneId1:
///     type: string
///     default: cn-wulanchabu-b
/// resources:
///   defaulti9Axhl:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 10.0.0.0/8
///       vpcName: ${name}
///   default9NaKmL:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaulti9Axhl.id}
///       zoneId: ${zoneId1}
///       cidrBlock: 10.0.0.0/24
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s1'
///             args:
///               - ${name}
///           return: result
///   defaultH4pKT4:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaulti9Axhl.id}
///       zoneId: ${zoneId2}
///       cidrBlock: 10.0.1.0/24
///       vswitchName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s2'
///             args:
///               - ${name}
///           return: result
///   defaultLoadBalancer:
///     type: alicloud:gwlb:LoadBalancer
///     name: default
///     properties:
///       vpcId: ${defaulti9Axhl.id}
///       loadBalancerName: ${name}
///       zoneMappings:
///         - vswitchId: ${default9NaKmL.id}
///           zoneId: ${zoneId1}
///       addressIpVersion: Ipv4
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// GWLB Load Balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gwlb/loadBalancer:LoadBalancer example <id>
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The IP version. Valid values:
  ///
  /// - `Ipv4`: IPv4 (default)
  late final pulumi.Output<String> addressIpVersion;
  /// The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The GWLB instance name.
  ///
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String?> loadBalancerName;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The GWLB instance status.
  late final pulumi.Output<String> status;
  /// The tag keys. You can specify at most 20 tags in each call.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The virtual private cloud (VPC) ID.
  late final pulumi.Output<String> vpcId;
  /// The mappings between zones and vSwitches. You must specify at least one zone. You can specify at most 20 zones. If the region supports two or more zones, we recommend that you select two or more zones. See `zone_mappings` below.
  late final pulumi.Output<List<LoadBalancerZoneMapping>> zoneMappings;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_gwlb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gwlb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.loadBalancerName = registerOutput<String?>('loadBalancerName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.zoneMappings = registerOutput<List<LoadBalancerZoneMapping>>('zoneMappings');
  }

  /// Gets an existing [LoadBalancer] resource's state with the given [name] and [id].
  static LoadBalancer get(
    String name,
    pulumi.Input<String> id, {
    LoadBalancerState? state,
  }) {
    return LoadBalancer._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadBalancer._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gwlb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressIpVersion = registerOutput<String>('addressIpVersion');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.loadBalancerName = registerOutput<String?>('loadBalancerName');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.zoneMappings = registerOutput<List<LoadBalancerZoneMapping>>('zoneMappings');
  }
}
