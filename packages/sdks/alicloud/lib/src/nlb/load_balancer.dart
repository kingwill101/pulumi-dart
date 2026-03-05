import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_deletion_protection_config.dart';
import 'load_balancer_modification_protection_config.dart';
import 'load_balancer_state.dart';

/// Provides a Network Load Balancer (NLB) Load Balancer resource.
///
///
///
/// For information about Network Load Balancer (NLB) Load Balancer and how to use it, see [What is Load Balancer](https://www.alibabacloud.com/help/en/server-load-balancer/latest/api-nlb-2022-04-30-createloadbalancer).
///
/// &gt; **NOTE:** Available since v1.191.0.
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
/// const name = config.get("name") || "tf-example";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultGetZones = alicloud.nlb.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const default1 = new alicloud.vpc.Switch("default1", {
///     vswitchName: name,
///     cidrBlock: "10.4.1.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[1]?.id),
/// });
/// const defaultLoadBalancer = new alicloud.nlb.LoadBalancer("default", {
///     loadBalancerName: name,
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     loadBalancerType: "Network",
///     addressType: "Internet",
///     addressIpVersion: "Ipv4",
///     vpcId: defaultNetwork.id,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     zoneMappings: [
///         {
///             vswitchId: defaultSwitch.id,
///             zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
///         },
///         {
///             vswitchId: default1.id,
///             zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[1]?.id),
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
///     name = "tf-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_get_zones = alicloud.nlb.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default1 = alicloud.vpc.Switch("default1",
///     vswitch_name=name,
///     cidr_block="10.4.1.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[1].id)
/// default_load_balancer = alicloud.nlb.LoadBalancer("default",
///     load_balancer_name=name,
///     resource_group_id=default.ids[0],
///     load_balancer_type="Network",
///     address_type="Internet",
///     address_ip_version="Ipv4",
///     vpc_id=default_network.id,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default_switch.id,
///             "zone_id": default_get_zones.zones[0].id,
///         },
///         {
///             "vswitch_id": default1.id,
///             "zone_id": default_get_zones.zones[1].id,
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
///     var name = config.Get("name") ?? "tf-example";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultGetZones = AliCloud.Nlb.GetZones.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var default1 = new AliCloud.Vpc.Switch("default1", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.1.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///     });
///
///     var defaultLoadBalancer = new AliCloud.Nlb.LoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         LoadBalancerType = "Network",
///         AddressType = "Internet",
///         AddressIpVersion = "Ipv4",
///         VpcId = defaultNetwork.Id,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///             },
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = default1.Id,
///                 ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := nlb.GetZones(ctx, &nlb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default1, err := vpc.NewSwitch(ctx, "default1", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.1.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[1].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewLoadBalancer(ctx, "default", &nlb.LoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			ResourceGroupId:  pulumi.String(_default.Ids[0]),
/// 			LoadBalancerType: pulumi.String("Network"),
/// 			AddressType:      pulumi.String("Internet"),
/// 			AddressIpVersion: pulumi.String("Ipv4"),
/// 			VpcId:            defaultNetwork.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			ZoneMappings: nlb.LoadBalancerZoneMappingArray{
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch.ID(),
/// 					ZoneId:    pulumi.String(defaultGetZones.Zones[0].Id),
/// 				},
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: default1.ID(),
/// 					ZoneId:    pulumi.String(defaultGetZones.Zones[1].Id),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.nlb.NlbFunctions;
/// import com.pulumi.alicloud.nlb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancer;
/// import com.pulumi.alicloud.nlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.nlb.inputs.LoadBalancerZoneMappingArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         final var defaultGetZones = NlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var default1 = new Switch("default1", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.1.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(defaultGetZones.zones()[1].id())
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .resourceGroupId(default_.ids()[0])
///             .loadBalancerType("Network")
///             .addressType("Internet")
///             .addressIpVersion("Ipv4")
///             .vpcId(defaultNetwork.id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch.id())
///                     .zoneId(defaultGetZones.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(default1.id())
///                     .zoneId(defaultGetZones.zones()[1].id())
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
///     default: tf-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[0].id}
///   default1:
///     type: alicloud:vpc:Switch
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.1.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${defaultGetZones.zones[1].id}
///   defaultLoadBalancer:
///     type: alicloud:nlb:LoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       resourceGroupId: ${default.ids[0]}
///       loadBalancerType: Network
///       addressType: Internet
///       addressIpVersion: Ipv4
///       vpcId: ${defaultNetwork.id}
///       tags:
///         Created: TF
///         For: example
///       zoneMappings:
///         - vswitchId: ${defaultSwitch.id}
///           zoneId: ${defaultGetZones.zones[0].id}
///         - vswitchId: ${default1.id}
///           zoneId: ${defaultGetZones.zones[1].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:nlb:getZones
///       arguments: {}
/// ```
///
///
/// DualStack Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const zone = config.getObject<any>("zone") || [
///     "cn-beijing-i",
///     "cn-beijing-k",
///     "cn-beijing-l",
/// ];
/// const vpc = new alicloud.vpc.Network("vpc", {
///     vpcName: name,
///     cidrBlock: "10.2.0.0/16",
///     enableIpv6: true,
/// });
/// const vsw: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     vsw.push(new alicloud.vpc.Switch(`vsw-${range.value}`, {
///         enableIpv6: true,
///         ipv6CidrBlockMask: `1${range.value}`,
///         vswitchName: `vsw-${range.value}-for-nlb`,
///         vpcId: vpc.id,
///         cidrBlock: `10.2.1${range.value}.0/24`,
///         zoneId: zone[range.value],
///     }));
/// }
/// const _default = new alicloud.vpc.Ipv6Gateway("default", {
///     ipv6GatewayName: name,
///     vpcId: vpc.id,
/// });
/// const nlb = new alicloud.nlb.LoadBalancer("nlb", {
///     loadBalancerName: name,
///     loadBalancerType: "Network",
///     addressType: "Intranet",
///     addressIpVersion: "DualStack",
///     ipv6AddressType: "Internet",
///     vpcId: vpc.id,
///     crossZoneEnabled: false,
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
///     zoneMappings: [
///         {
///             vswitchId: vsw[0].id,
///             zoneId: zone[0],
///         },
///         {
///             vswitchId: vsw[1].id,
///             zoneId: zone[1],
///         },
///     ],
/// }, {
///     dependsOn: [_default],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// zone = config.get_object("zone")
/// if zone is None:
///     zone = [
///         "cn-beijing-i",
///         "cn-beijing-k",
///         "cn-beijing-l",
///     ]
/// vpc = alicloud.vpc.Network("vpc",
///     vpc_name=name,
///     cidr_block="10.2.0.0/16",
///     enable_ipv6=True)
/// vsw = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     vsw.append(alicloud.vpc.Switch(f"vsw-{range['value']}",
///         enable_ipv6=True,
///         ipv6_cidr_block_mask=f"1{range['value']}",
///         vswitch_name=f"vsw-{range['value']}-for-nlb",
///         vpc_id=vpc.id,
///         cidr_block=f"10.2.1{range['value']}.0/24",
///         zone_id=zone[range["value"]]))
/// default = alicloud.vpc.Ipv6Gateway("default",
///     ipv6_gateway_name=name,
///     vpc_id=vpc.id)
/// nlb = alicloud.nlb.LoadBalancer("nlb",
///     load_balancer_name=name,
///     load_balancer_type="Network",
///     address_type="Intranet",
///     address_ip_version="DualStack",
///     ipv6_address_type="Internet",
///     vpc_id=vpc.id,
///     cross_zone_enabled=False,
///     tags={
///         "Created": "TF",
///         "For": "example",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": vsw[0].id,
///             "zone_id": zone[0],
///         },
///         {
///             "vswitch_id": vsw[1].id,
///             "zone_id": zone[1],
///         },
///     ],
///     opts = pulumi.ResourceOptions(depends_on=[default]))
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
///     var name = config.Get("name") ?? "tf-example";
///     var zone = config.GetObject<dynamic>("zone") ?? new[]
///     {
///         "cn-beijing-i",
///         "cn-beijing-k",
///         "cn-beijing-l",
///     };
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.2.0.0/16",
///         EnableIpv6 = true,
///     });
///
///     var vsw = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         vsw.Add(new AliCloud.Vpc.Switch($"vsw-{range.Value}", new()
///         {
///             EnableIpv6 = true,
///             Ipv6CidrBlockMask = $"1{range.Value}",
///             VswitchName = $"vsw-{range.Value}-for-nlb",
///             VpcId = vpc.Id,
///             CidrBlock = $"10.2.1{range.Value}.0/24",
///             ZoneId = zone[range.Value],
///         }));
///     }
///     var @default = new AliCloud.Vpc.Ipv6Gateway("default", new()
///     {
///         Ipv6GatewayName = name,
///         VpcId = vpc.Id,
///     });
///
///     var nlb = new AliCloud.Nlb.LoadBalancer("nlb", new()
///     {
///         LoadBalancerName = name,
///         LoadBalancerType = "Network",
///         AddressType = "Intranet",
///         AddressIpVersion = "DualStack",
///         Ipv6AddressType = "Internet",
///         VpcId = vpc.Id,
///         CrossZoneEnabled = false,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = vsw[0].Id,
///                 ZoneId = zone[0],
///             },
///             new AliCloud.Nlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = vsw[1].Id,
///                 ZoneId = zone[1],
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             @default,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nlb"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		zone := []string{
/// 			"cn-beijing-i",
/// 			"cn-beijing-k",
/// 			"cn-beijing-l",
/// 		}
/// 		if param := cfg.GetObject("zone"); param != nil {
/// 			zone = param
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			VpcName:    pulumi.String(name),
/// 			CidrBlock:  pulumi.String("10.2.0.0/16"),
/// 			EnableIpv6: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var vsw []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("vsw-%v", key0), &vpc.SwitchArgs{
/// 				EnableIpv6:        pulumi.Bool(true),
/// 				Ipv6CidrBlockMask: pulumi.Int(fmt.Sprintf("1%v", val0)),
/// 				VswitchName:       pulumi.Sprintf("vsw-%v-for-nlb", val0),
/// 				VpcId:             vpc.ID(),
/// 				CidrBlock:         pulumi.Sprintf("10.2.1%v.0/24", val0),
/// 				ZoneId:            zone[val0],
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			vsw = append(vsw, __res)
/// 		}
/// 		_default, err := vpc.NewIpv6Gateway(ctx, "default", &vpc.Ipv6GatewayArgs{
/// 			Ipv6GatewayName: pulumi.String(name),
/// 			VpcId:           vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewLoadBalancer(ctx, "nlb", &nlb.LoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			LoadBalancerType: pulumi.String("Network"),
/// 			AddressType:      pulumi.String("Intranet"),
/// 			AddressIpVersion: pulumi.String("DualStack"),
/// 			Ipv6AddressType:  pulumi.String("Internet"),
/// 			VpcId:            vpc.ID(),
/// 			CrossZoneEnabled: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 			ZoneMappings: nlb.LoadBalancerZoneMappingArray{
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: vsw[0].ID(),
/// 					ZoneId:    pulumi.Any(zone[0]),
/// 				},
/// 				&nlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: vsw[1].ID(),
/// 					ZoneId:    pulumi.Any(zone[1]),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			_default,
/// 		}))
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
/// import com.pulumi.alicloud.vpc.Ipv6Gateway;
/// import com.pulumi.alicloud.vpc.Ipv6GatewayArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancer;
/// import com.pulumi.alicloud.nlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.nlb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var name = config.get("name").orElse("tf-example");
///         final var zone = config.get("zone").orElse(List.of(
///             "cn-beijing-i",
///             "cn-beijing-k",
///             "cn-beijing-l"));
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.2.0.0/16")
///             .enableIpv6(true)
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("vsw-" + i, SwitchArgs.builder()
///                 .enableIpv6(true)
///                 .ipv6CidrBlockMask(String.format("1%s", range.value()))
///                 .vswitchName(String.format("vsw-%s-for-nlb", range.value()))
///                 .vpcId(vpc.id())
///                 .cidrBlock(String.format("10.2.1%s.0/24", range.value()))
///                 .zoneId(zone[range.value()])
///                 .build());
///
///
/// }
///         var default_ = new Ipv6Gateway("default", Ipv6GatewayArgs.builder()
///             .ipv6GatewayName(name)
///             .vpcId(vpc.id())
///             .build());
///
///         var nlb = new LoadBalancer("nlb", LoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .loadBalancerType("Network")
///             .addressType("Intranet")
///             .addressIpVersion("DualStack")
///             .ipv6AddressType("Internet")
///             .vpcId(vpc.id())
///             .crossZoneEnabled(false)
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(vsw[0].id())
///                     .zoneId(zone[0])
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(vsw[1].id())
///                     .zoneId(zone[1])
///                     .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(default_)
///                 .build());
///
///     }
/// }
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Network Load Balancer (NLB) Load Balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/loadBalancer:LoadBalancer example <id>
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// The protocol version. Valid values:
  ///
  /// - **ipv4:** IPv4. This is the default value.
  /// - **DualStack:** dual stack.
  late final pulumi.Output<String> addressIpVersion;
  /// The type of IPv4 address used by the NLB instance. Valid values:
  /// - `Internet`: The NLB instance uses a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: The NLB instance uses a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the virtual private cloud (VPC) where the NLB instance is deployed.
  ///
  /// &gt; **NOTE:**   To enable a public IPv6 address for an NLB instance, call the [EnableLoadBalancerIpv6Internet](https://www.alibabacloud.com/help/en/doc-detail/445878.html) operation.
  late final pulumi.Output<String> addressType;
  /// The ID of the EIP bandwidth plan that is associated with the Internet-facing NLB instance.
  late final pulumi.Output<String> bandwidthPackageId;
  /// The speed limit of new connections per second processed by NLB instances in each VIP. Value range: `0` to `1000000`.
  ///
  /// - *0** means no speed limit.
  late final pulumi.Output<int?> cps;
  /// Resource creation time, using Greenwich Mean Time, formating' yyyy-MM-ddTHH:mm:ssZ '.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to enable cross-zone load balancing for the NLB instance. Valid values:
  late final pulumi.Output<bool> crossZoneEnabled;
  /// Specifies whether to enable deletion protection. Default value: `false`. See `deletion_protection_config` below.
  late final pulumi.Output<LoadBalancerDeletionProtectionConfig> deletionProtectionConfig;
  /// Specifies whether to enable deletion protection. Default value: `false`. Valid values:
  late final pulumi.Output<bool> deletionProtectionEnabled;
  /// The reason why the deletion protection feature is enabled or disabled. The `deletion_protection_reason` takes effect only when `deletion_protection_enabled` is set to `true`.
  late final pulumi.Output<String> deletionProtectionReason;
  /// The domain name of the NLB instance.
  late final pulumi.Output<String> dnsName;
  /// The type of IPv6 address used by the NLB instance. Valid values:
  /// - `Internet`: a public IP address. The domain name of the NLB instance is resolved to the public IP address. Therefore, the NLB instance can be accessed over the Internet.
  /// - `Intranet`: a private IP address. The domain name of the NLB instance is resolved to the private IP address. Therefore, the NLB instance can be accessed over the VPC where the NLB instance is deployed.
  late final pulumi.Output<String> ipv6AddressType;
  /// The business status of the NLB instance.
  late final pulumi.Output<String> loadBalancerBusinessStatus;
  /// The name of the NLB instance.
  /// The value must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The value must start with a letter.
  late final pulumi.Output<String?> loadBalancerName;
  /// The type of the Server Load Balancer (SLB) instance. Set the value to `network`, which specifies NLB.
  late final pulumi.Output<String> loadBalancerType;
  /// Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. See `modification_protection_config` below.
  late final pulumi.Output<LoadBalancerModificationProtectionConfig> modificationProtectionConfig;
  /// The reason why the configuration read-only mode is enabled. The `modification_protection_reason` takes effect only when `modification_protection_status` is set to `ConsoleProtection`.
  late final pulumi.Output<String> modificationProtectionReason;
  /// Specifies whether to enable the configuration read-only mode. Default value: `NonProtection`. Valid values:
  /// - `NonProtection`: Does not enable the configuration read-only mode. You cannot set the `modification_protection_reason`. If the `modification_protection_reason` is set, the value is cleared.
  /// - `ConsoleProtection`: Enables the configuration read-only mode. You can set the `modification_protection_reason`.
  late final pulumi.Output<String> modificationProtectionStatus;
  /// The payment type of the resource
  late final pulumi.Output<String> paymentType;
  /// The ID of the region where the NLB instance is deployed.
  late final pulumi.Output<String> regionId;
  /// The ID of the new resource group.
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  late final pulumi.Output<String> resourceGroupId;
  /// The security group to which the network-based SLB instance belongs.
  late final pulumi.Output<List<String>> securityGroupIds;
  /// Zone Status
  late final pulumi.Output<String> status;
  /// List of labels.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC where the NLB instance is deployed.
  late final pulumi.Output<String> vpcId;
  /// Available Area Configuration List. You must add at least two zones. You can add a maximum of 10 zones. See `zone_mappings` below.
  late final pulumi.Output<List<Map<String, dynamic>>> zoneMappings;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_nlb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressIpVersion = registerOutput<String>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    cps = registerOutput<int?>('cps');
    createTime = registerOutput<String>('createTime');
    crossZoneEnabled = registerOutput<bool>('crossZoneEnabled');
    deletionProtectionConfig = registerOutput<LoadBalancerDeletionProtectionConfig>('deletionProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerDeletionProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    deletionProtectionReason = registerOutput<String>('deletionProtectionReason');
    dnsName = registerOutput<String>('dnsName');
    ipv6AddressType = registerOutput<String>('ipv6AddressType');
    loadBalancerBusinessStatus = registerOutput<String>('loadBalancerBusinessStatus');
    loadBalancerName = registerOutput<String?>('loadBalancerName');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    modificationProtectionConfig = registerOutput<LoadBalancerModificationProtectionConfig>('modificationProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerModificationProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modificationProtectionReason = registerOutput<String>('modificationProtectionReason');
    modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    zoneMappings = registerOutput<List<Map<String, dynamic>>>('zoneMappings');
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
          'alicloud:nlb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressIpVersion = registerOutput<String>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    cps = registerOutput<int?>('cps');
    createTime = registerOutput<String>('createTime');
    crossZoneEnabled = registerOutput<bool>('crossZoneEnabled');
    deletionProtectionConfig = registerOutput<LoadBalancerDeletionProtectionConfig>('deletionProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerDeletionProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionProtectionEnabled = registerOutput<bool>('deletionProtectionEnabled');
    deletionProtectionReason = registerOutput<String>('deletionProtectionReason');
    dnsName = registerOutput<String>('dnsName');
    ipv6AddressType = registerOutput<String>('ipv6AddressType');
    loadBalancerBusinessStatus = registerOutput<String>('loadBalancerBusinessStatus');
    loadBalancerName = registerOutput<String?>('loadBalancerName');
    loadBalancerType = registerOutput<String>('loadBalancerType');
    modificationProtectionConfig = registerOutput<LoadBalancerModificationProtectionConfig>('modificationProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LoadBalancerModificationProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modificationProtectionReason = registerOutput<String>('modificationProtectionReason');
    modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    paymentType = registerOutput<String>('paymentType');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    securityGroupIds = registerOutput<List<String>>('securityGroupIds');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    zoneMappings = registerOutput<List<Map<String, dynamic>>>('zoneMappings');
  }
}
