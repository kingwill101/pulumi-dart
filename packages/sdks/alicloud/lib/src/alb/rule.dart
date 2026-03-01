import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_args.dart';
import 'rule_rule_action.dart';
import 'rule_rule_condition.dart';
import 'rule_state.dart';

/// Provides a Application Load Balancer (ALB) Rule resource.
///
/// For information about Application Load Balancer (ALB) Rule and how to use it, see [What is Rule](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-createrule).
///
/// > **NOTE:** Available since v1.133.0.
///
/// > **NOTE:** This version only supports forwarding rules in the request direction.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.alb.getZones({});
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const defaultSwitch: alicloud.vpc.Switch[] = [];
/// for (const range = {value: 0}; range.value < 2; range.value++) {
///     defaultSwitch.push(new alicloud.vpc.Switch(`default-${range.value}`, {
///         vpcId: defaultNetwork.id,
///         cidrBlock: std.format({
///             input: "10.4.%d.0/24",
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///         zoneId: _default.then(_default => _default.zones[range.value].id),
///         vswitchName: std.format({
///             input: `${name}_%d`,
///             args: [range.value + 1],
///         }).then(invoke => invoke.result),
///     }));
/// }
/// const defaultLoadBalancer = new alicloud.alb.LoadBalancer("default", {
///     vpcId: defaultNetwork.id,
///     addressType: "Internet",
///     addressAllocatedMode: "Fixed",
///     loadBalancerName: name,
///     loadBalancerEdition: "Standard",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     loadBalancerBillingConfig: {
///         payType: "PayAsYouGo",
///     },
///     tags: {
///         Created: "TF",
///     },
///     zoneMappings: [
///         {
///             vswitchId: defaultSwitch[0].id,
///             zoneId: _default.then(_default => _default.zones?.[0]?.id),
///         },
///         {
///             vswitchId: defaultSwitch[1].id,
///             zoneId: _default.then(_default => _default.zones?.[1]?.id),
///         },
///     ],
/// });
/// const defaultServerGroup = new alicloud.alb.ServerGroup("default", {
///     protocol: "HTTP",
///     vpcId: defaultNetwork.id,
///     serverGroupName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
///     healthCheckConfig: {
///         healthCheckEnabled: false,
///     },
///     stickySessionConfig: {
///         stickySessionEnabled: false,
///     },
///     tags: {
///         Created: "TF",
///     },
/// });
/// const defaultListener = new alicloud.alb.Listener("default", {
///     loadBalancerId: defaultLoadBalancer.id,
///     listenerProtocol: "HTTP",
///     listenerPort: 80,
///     listenerDescription: name,
///     defaultActions: [{
///         type: "ForwardGroup",
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///     }],
/// });
/// const defaultRule = new alicloud.alb.Rule("default", {
///     ruleName: name,
///     listenerId: defaultListener.id,
///     priority: 555,
///     ruleConditions: [{
///         cookieConfig: {
///             values: [{
///                 key: "created",
///                 value: "tf",
///             }],
///         },
///         type: "Cookie",
///     }],
///     ruleActions: [{
///         forwardGroupConfig: {
///             serverGroupTuples: [{
///                 serverGroupId: defaultServerGroup.id,
///             }],
///         },
///         order: 9,
///         type: "ForwardGroup",
///     }],
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
///     name = "tf_example"
/// default = alicloud.alb.get_zones()
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// default_switch = []
/// for range in [{"value": i} for i in range(0, 2)]:
///     default_switch.append(alicloud.vpc.Switch(f"default-{range['value']}",
///         vpc_id=default_network.id,
///         cidr_block=std.format(input="10.4.%d.0/24",
///             args=[range["value"] + 1]).result,
///         zone_id=default.zones[range["value"]].id,
///         vswitch_name=std.format(input=f"{name}_%d",
///             args=[range["value"] + 1]).result))
/// default_load_balancer = alicloud.alb.LoadBalancer("default",
///     vpc_id=default_network.id,
///     address_type="Internet",
///     address_allocated_mode="Fixed",
///     load_balancer_name=name,
///     load_balancer_edition="Standard",
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     load_balancer_billing_config={
///         "pay_type": "PayAsYouGo",
///     },
///     tags={
///         "Created": "TF",
///     },
///     zone_mappings=[
///         {
///             "vswitch_id": default_switch[0].id,
///             "zone_id": default.zones[0].id,
///         },
///         {
///             "vswitch_id": default_switch[1].id,
///             "zone_id": default.zones[1].id,
///         },
///     ])
/// default_server_group = alicloud.alb.ServerGroup("default",
///     protocol="HTTP",
///     vpc_id=default_network.id,
///     server_group_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id,
///     health_check_config={
///         "health_check_enabled": False,
///     },
///     sticky_session_config={
///         "sticky_session_enabled": False,
///     },
///     tags={
///         "Created": "TF",
///     })
/// default_listener = alicloud.alb.Listener("default",
///     load_balancer_id=default_load_balancer.id,
///     listener_protocol="HTTP",
///     listener_port=80,
///     listener_description=name,
///     default_actions=[{
///         "type": "ForwardGroup",
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///     }])
/// default_rule = alicloud.alb.Rule("default",
///     rule_name=name,
///     listener_id=default_listener.id,
///     priority=555,
///     rule_conditions=[{
///         "cookie_config": {
///             "values": [{
///                 "key": "created",
///                 "value": "tf",
///             }],
///         },
///         "type": "Cookie",
///     }],
///     rule_actions=[{
///         "forward_group_config": {
///             "server_group_tuples": [{
///                 "server_group_id": default_server_group.id,
///             }],
///         },
///         "order": 9,
///         "type": "ForwardGroup",
///     }])
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Alb.GetZones.Invoke();
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var defaultSwitch = new List<AliCloud.Vpc.Switch>();
///     for (var rangeIndex = 0; rangeIndex < 2; rangeIndex++)
///     {
///         var range = new { Value = rangeIndex };
///         defaultSwitch.Add(new AliCloud.Vpc.Switch($"default-{range.Value}", new()
///         {
///             VpcId = defaultNetwork.Id,
///             CidrBlock = Std.Format.Invoke(new()
///             {
///                 Input = "10.4.%d.0/24",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[range.Value].Id),
///             VswitchName = Std.Format.Invoke(new()
///             {
///                 Input = $"{name}_%d",
///                 Args = new[]
///                 {
///                     range.Value + 1,
///                 },
///             }).Apply(invoke => invoke.Result),
///         }));
///     }
///     var defaultLoadBalancer = new AliCloud.Alb.LoadBalancer("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         AddressType = "Internet",
///         AddressAllocatedMode = "Fixed",
///         LoadBalancerName = name,
///         LoadBalancerEdition = "Standard",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         LoadBalancerBillingConfig = new AliCloud.Alb.Inputs.LoadBalancerLoadBalancerBillingConfigArgs
///         {
///             PayType = "PayAsYouGo",
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///         ZoneMappings = new[]
///         {
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[0].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[1].Id,
///                 ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[1]?.Id)),
///             },
///         },
///     });
///
///     var defaultServerGroup = new AliCloud.Alb.ServerGroup("default", new()
///     {
///         Protocol = "HTTP",
///         VpcId = defaultNetwork.Id,
///         ServerGroupName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         HealthCheckConfig = new AliCloud.Alb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckEnabled = false,
///         },
///         StickySessionConfig = new AliCloud.Alb.Inputs.ServerGroupStickySessionConfigArgs
///         {
///             StickySessionEnabled = false,
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///         },
///     });
///
///     var defaultListener = new AliCloud.Alb.Listener("default", new()
///     {
///         LoadBalancerId = defaultLoadBalancer.Id,
///         ListenerProtocol = "HTTP",
///         ListenerPort = 80,
///         ListenerDescription = name,
///         DefaultActions = new[]
///         {
///             new AliCloud.Alb.Inputs.ListenerDefaultActionArgs
///             {
///                 Type = "ForwardGroup",
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var defaultRule = new AliCloud.Alb.Rule("default", new()
///     {
///         RuleName = name,
///         ListenerId = defaultListener.Id,
///         Priority = 555,
///         RuleConditions = new[]
///         {
///             new AliCloud.Alb.Inputs.RuleRuleConditionArgs
///             {
///                 CookieConfig = new AliCloud.Alb.Inputs.RuleRuleConditionCookieConfigArgs
///                 {
///                     Values = new[]
///                     {
///                         new AliCloud.Alb.Inputs.RuleRuleConditionCookieConfigValueArgs
///                         {
///                             Key = "created",
///                             Value = "tf",
///                         },
///                     },
///                 },
///                 Type = "Cookie",
///             },
///         },
///         RuleActions = new[]
///         {
///             new AliCloud.Alb.Inputs.RuleRuleActionArgs
///             {
///                 ForwardGroupConfig = new AliCloud.Alb.Inputs.RuleRuleActionForwardGroupConfigArgs
///                 {
///                     ServerGroupTuples = new[]
///                     {
///                         new AliCloud.Alb.Inputs.RuleRuleActionForwardGroupConfigServerGroupTupleArgs
///                         {
///                             ServerGroupId = defaultServerGroup.Id,
///                         },
///                     },
///                 },
///                 Order = 9,
///                 Type = "ForwardGroup",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/alb"
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
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alb.GetZones(ctx, &alb.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
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
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "10.4.%d.0/24",
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: fmt.Sprintf("%v%v", name, "_%d"),
/// 			Args: []float64{
/// 				val0 + 1,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var defaultSwitch []*vpc.Switch
/// 		for index := 0; index < 2; index++ {
/// 			key0 := index
/// 			val0 := index
/// 			__res, err := vpc.NewSwitch(ctx, fmt.Sprintf("default-%v", key0), &vpc.SwitchArgs{
/// 				VpcId:       defaultNetwork.ID(),
/// 				CidrBlock:   pulumi.String(invokeFormat.Result),
/// 				ZoneId:      _default.Zones[val0].Id,
/// 				VswitchName: pulumi.String(invokeFormat1.Result),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			defaultSwitch = append(defaultSwitch, __res)
/// 		}
/// 		defaultLoadBalancer, err := alb.NewLoadBalancer(ctx, "default", &alb.LoadBalancerArgs{
/// 			VpcId:                defaultNetwork.ID(),
/// 			AddressType:          pulumi.String("Internet"),
/// 			AddressAllocatedMode: pulumi.String("Fixed"),
/// 			LoadBalancerName:     pulumi.String(name),
/// 			LoadBalancerEdition:  pulumi.String("Standard"),
/// 			ResourceGroupId:      pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			LoadBalancerBillingConfig: &alb.LoadBalancerLoadBalancerBillingConfigArgs{
/// 				PayType: pulumi.String("PayAsYouGo"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 			ZoneMappings: alb.LoadBalancerZoneMappingArray{
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[0].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[1].ID(),
/// 					ZoneId:    pulumi.String(_default.Zones[1].Id),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := alb.NewServerGroup(ctx, "default", &alb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("HTTP"),
/// 			VpcId:           defaultNetwork.ID(),
/// 			ServerGroupName: pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 			HealthCheckConfig: &alb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckEnabled: pulumi.Bool(false),
/// 			},
/// 			StickySessionConfig: &alb.ServerGroupStickySessionConfigArgs{
/// 				StickySessionEnabled: pulumi.Bool(false),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultListener, err := alb.NewListener(ctx, "default", &alb.ListenerArgs{
/// 			LoadBalancerId:      defaultLoadBalancer.ID(),
/// 			ListenerProtocol:    pulumi.String("HTTP"),
/// 			ListenerPort:        pulumi.Int(80),
/// 			ListenerDescription: pulumi.String(name),
/// 			DefaultActions: alb.ListenerDefaultActionArray{
/// 				&alb.ListenerDefaultActionArgs{
/// 					Type: pulumi.String("ForwardGroup"),
/// 					ForwardGroupConfig: &alb.ListenerDefaultActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewRule(ctx, "default", &alb.RuleArgs{
/// 			RuleName:   pulumi.String(name),
/// 			ListenerId: defaultListener.ID(),
/// 			Priority:   pulumi.Int(555),
/// 			RuleConditions: alb.RuleRuleConditionArray{
/// 				&alb.RuleRuleConditionArgs{
/// 					CookieConfig: &alb.RuleRuleConditionCookieConfigArgs{
/// 						Values: alb.RuleRuleConditionCookieConfigValueArray{
/// 							&alb.RuleRuleConditionCookieConfigValueArgs{
/// 								Key:   pulumi.String("created"),
/// 								Value: pulumi.String("tf"),
/// 							},
/// 						},
/// 					},
/// 					Type: pulumi.String("Cookie"),
/// 				},
/// 			},
/// 			RuleActions: alb.RuleRuleActionArray{
/// 				&alb.RuleRuleActionArgs{
/// 					ForwardGroupConfig: &alb.RuleRuleActionForwardGroupConfigArgs{
/// 						ServerGroupTuples: alb.RuleRuleActionForwardGroupConfigServerGroupTupleArray{
/// 							&alb.RuleRuleActionForwardGroupConfigServerGroupTupleArgs{
/// 								ServerGroupId: defaultServerGroup.ID(),
/// 							},
/// 						},
/// 					},
/// 					Order: pulumi.Int(9),
/// 					Type:  pulumi.String("ForwardGroup"),
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
/// import com.pulumi.alicloud.alb.AlbFunctions;
/// import com.pulumi.alicloud.alb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.alb.LoadBalancer;
/// import com.pulumi.alicloud.alb.LoadBalancerArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerLoadBalancerBillingConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.alb.ServerGroup;
/// import com.pulumi.alicloud.alb.ServerGroupArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.ServerGroupStickySessionConfigArgs;
/// import com.pulumi.alicloud.alb.Listener;
/// import com.pulumi.alicloud.alb.ListenerArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionArgs;
/// import com.pulumi.alicloud.alb.inputs.ListenerDefaultActionForwardGroupConfigArgs;
/// import com.pulumi.alicloud.alb.Rule;
/// import com.pulumi.alicloud.alb.RuleArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleConditionArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleConditionCookieConfigArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleActionArgs;
/// import com.pulumi.alicloud.alb.inputs.RuleRuleActionForwardGroupConfigArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         final var name = config.get("name").orElse("tf_example");
///         final var default = AlbFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         for (var i = 0; i < 2; i++) {
///             new Switch("defaultSwitch-" + i, SwitchArgs.builder()
///                 .vpcId(defaultNetwork.id())
///                 .cidrBlock(StdFunctions.format(FormatArgs.builder()
///                     .input("10.4.%d.0/24")
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .zoneId(default_.zones()[range.value()].id())
///                 .vswitchName(StdFunctions.format(FormatArgs.builder()
///                     .input(String.format("%s_%d", name))
///                     .args(range.value() + 1)
///                     .build()).result())
///                 .build());
///
///
/// }
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .addressType("Internet")
///             .addressAllocatedMode("Fixed")
///             .loadBalancerName(name)
///             .loadBalancerEdition("Standard")
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .loadBalancerBillingConfig(LoadBalancerLoadBalancerBillingConfigArgs.builder()
///                 .payType("PayAsYouGo")
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .zoneMappings(
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[0].id())
///                     .zoneId(default_.zones()[0].id())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[1].id())
///                     .zoneId(default_.zones()[1].id())
///                     .build())
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("HTTP")
///             .vpcId(defaultNetwork.id())
///             .serverGroupName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckEnabled(false)
///                 .build())
///             .stickySessionConfig(ServerGroupStickySessionConfigArgs.builder()
///                 .stickySessionEnabled(false)
///                 .build())
///             .tags(Map.of("Created", "TF"))
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .loadBalancerId(defaultLoadBalancer.id())
///             .listenerProtocol("HTTP")
///             .listenerPort(80)
///             .listenerDescription(name)
///             .defaultActions(ListenerDefaultActionArgs.builder()
///                 .type("ForwardGroup")
///                 .forwardGroupConfig(ListenerDefaultActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(ListenerDefaultActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var defaultRule = new Rule("defaultRule", RuleArgs.builder()
///             .ruleName(name)
///             .listenerId(defaultListener.id())
///             .priority(555)
///             .ruleConditions(RuleRuleConditionArgs.builder()
///                 .cookieConfig(RuleRuleConditionCookieConfigArgs.builder()
///                     .values(RuleRuleConditionCookieConfigValueArgs.builder()
///                         .key("created")
///                         .value("tf")
///                         .build())
///                     .build())
///                 .type("Cookie")
///                 .build())
///             .ruleActions(RuleRuleActionArgs.builder()
///                 .forwardGroupConfig(RuleRuleActionForwardGroupConfigArgs.builder()
///                     .serverGroupTuples(RuleRuleActionForwardGroupConfigServerGroupTupleArgs.builder()
///                         .serverGroupId(defaultServerGroup.id())
///                         .build())
///                     .build())
///                 .order(9)
///                 .type("ForwardGroup")
///                 .build())
///             .build());
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
/// Application Load Balancer (ALB) Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/rule:Rule example <id>
/// ```
class Rule extends pulumi.CustomResource {
  /// The direction to which the forwarding rule is applied. Default value: `Request`. Valid values:
  /// - `Request`: The forwarding rule is applied to the client requests received by ALB.
  /// - `Response`: The forwarding rule is applied to the responses returned by backend servers.
  late final pulumi.Output<String> direction;
  /// Specifies whether to precheck this request.
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the listener to which the forwarding rule belongs.
  late final pulumi.Output<String> listenerId;
  /// The priority of the rule. Valid values: `1` to `10000`. A smaller value indicates a higher priority. **Note*:* The priority of each rule within the same listener must be unique.
  late final pulumi.Output<int> priority;
  /// The actions of the forwarding rules. See `rule_actions` below.
  late final pulumi.Output<List<RuleRuleAction>> ruleActions;
  /// The conditions of the forwarding rule. See `rule_conditions` below.
  late final pulumi.Output<List<RuleRuleCondition>> ruleConditions;
  /// The name of the forwarding rule. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (_), and hyphens (-). The name must start with a letter.
  late final pulumi.Output<String> ruleName;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [Rule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Rule]. {@macro pulumi_alb_rule_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Rule(
    String name, {
    RuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/rule:Rule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.direction = registerOutput<String>('direction');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.listenerId = registerOutput<String>('listenerId');
    this.priority = registerOutput<int>('priority');
    this.ruleActions = registerOutput<List<RuleRuleAction>>('ruleActions');
    this.ruleConditions = registerOutput<List<RuleRuleCondition>>('ruleConditions');
    this.ruleName = registerOutput<String>('ruleName');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [Rule] resource's state with the given [name] and [id].
  static Rule get(
    String name,
    pulumi.Input<String> id, {
    RuleState? state,
  }) {
    return Rule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Rule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:alb/rule:Rule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.direction = registerOutput<String>('direction');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.listenerId = registerOutput<String>('listenerId');
    this.priority = registerOutput<int>('priority');
    this.ruleActions = registerOutput<List<RuleRuleAction>>('ruleActions');
    this.ruleConditions = registerOutput<List<RuleRuleCondition>>('ruleConditions');
    this.ruleName = registerOutput<String>('ruleName');
    this.status = registerOutput<String>('status');
  }
}
