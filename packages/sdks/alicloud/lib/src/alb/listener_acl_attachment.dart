import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_acl_attachment_args.dart';
import 'listener_acl_attachment_state.dart';

/// Provides a ALB Listener Acl Attachment resource. Associating ACL to listening.
///
/// For information about ALB Listener Acl Attachment and how to use it, see [What is Listener Acl Attachment](https://www.alibabacloud.com/help/en/slb/application-load-balancer/developer-reference/api-alb-2020-06-16-associateaclswithlistener).
///
/// &gt; **NOTE:** Available since v1.163.0.
///
/// &gt; **NOTE:** You can associate at most three ACLs with a listener.
///
/// &gt; **NOTE:** You can only configure either a whitelist or a blacklist for listener, not at the same time.
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
///         zoneId: _default.then(_default => _default.zones[range.value + 3].id),
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
///             zoneId: defaultSwitch[0].zoneId,
///         },
///         {
///             vswitchId: defaultSwitch[1].id,
///             zoneId: defaultSwitch[1].zoneId,
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
/// const defaultAcl = new alicloud.alb.Acl("default", {
///     aclName: name,
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.groups?.[0]?.id),
/// });
/// const defaultAclEntryAttachment = new alicloud.alb.AclEntryAttachment("default", {
///     aclId: defaultAcl.id,
///     entry: "10.0.0.0/24",
///     description: name,
/// });
/// const defaultListenerAclAttachment = new alicloud.alb.ListenerAclAttachment("default", {
///     aclId: defaultAcl.id,
///     listenerId: defaultListener.id,
///     aclType: "White",
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
///         zone_id=default.zones[range["value"] + 3].id,
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
///             "zone_id": default_switch[0].zone_id,
///         },
///         {
///             "vswitch_id": default_switch[1].id,
///             "zone_id": default_switch[1].zone_id,
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
/// default_acl = alicloud.alb.Acl("default",
///     acl_name=name,
///     resource_group_id=default_get_resource_groups.groups[0].id)
/// default_acl_entry_attachment = alicloud.alb.AclEntryAttachment("default",
///     acl_id=default_acl.id,
///     entry="10.0.0.0/24",
///     description=name)
/// default_listener_acl_attachment = alicloud.alb.ListenerAclAttachment("default",
///     acl_id=default_acl.id,
///     listener_id=default_listener.id,
///     acl_type="White")
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
///             ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones)[range.Value + 3].Id),
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
///                 ZoneId = defaultSwitch[0].ZoneId,
///             },
///             new AliCloud.Alb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch[1].Id,
///                 ZoneId = defaultSwitch[1].ZoneId,
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
///     var defaultAcl = new AliCloud.Alb.Acl("default", new()
///     {
///         AclName = name,
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///     });
///
///     var defaultAclEntryAttachment = new AliCloud.Alb.AclEntryAttachment("default", new()
///     {
///         AclId = defaultAcl.Id,
///         Entry = "10.0.0.0/24",
///         Description = name,
///     });
///
///     var defaultListenerAclAttachment = new AliCloud.Alb.ListenerAclAttachment("default", new()
///     {
///         AclId = defaultAcl.Id,
///         ListenerId = defaultListener.Id,
///         AclType = "White",
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
/// 				ZoneId:      _default.Zones[val0+3].Id,
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
/// 					ZoneId:    defaultSwitch[0].ZoneId,
/// 				},
/// 				&alb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch[1].ID(),
/// 					ZoneId:    defaultSwitch[1].ZoneId,
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
/// 		defaultAcl, err := alb.NewAcl(ctx, "default", &alb.AclArgs{
/// 			AclName:         pulumi.String(name),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Groups[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewAclEntryAttachment(ctx, "default", &alb.AclEntryAttachmentArgs{
/// 			AclId:       defaultAcl.ID(),
/// 			Entry:       pulumi.String("10.0.0.0/24"),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = alb.NewListenerAclAttachment(ctx, "default", &alb.ListenerAclAttachmentArgs{
/// 			AclId:      defaultAcl.ID(),
/// 			ListenerId: defaultListener.ID(),
/// 			AclType:    pulumi.String("White"),
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
/// import com.pulumi.alicloud.alb.Acl;
/// import com.pulumi.alicloud.alb.AclArgs;
/// import com.pulumi.alicloud.alb.AclEntryAttachment;
/// import com.pulumi.alicloud.alb.AclEntryAttachmentArgs;
/// import com.pulumi.alicloud.alb.ListenerAclAttachment;
/// import com.pulumi.alicloud.alb.ListenerAclAttachmentArgs;
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
///                 .zoneId(default_.zones()[range.value() + 3].id())
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
///                     .zoneId(defaultSwitch[0].zoneId())
///                     .build(),
///                 LoadBalancerZoneMappingArgs.builder()
///                     .vswitchId(defaultSwitch[1].id())
///                     .zoneId(defaultSwitch[1].zoneId())
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
///         var defaultAcl = new Acl("defaultAcl", AclArgs.builder()
///             .aclName(name)
///             .resourceGroupId(defaultGetResourceGroups.groups()[0].id())
///             .build());
///
///         var defaultAclEntryAttachment = new AclEntryAttachment("defaultAclEntryAttachment", AclEntryAttachmentArgs.builder()
///             .aclId(defaultAcl.id())
///             .entry("10.0.0.0/24")
///             .description(name)
///             .build());
///
///         var defaultListenerAclAttachment = new ListenerAclAttachment("defaultListenerAclAttachment", ListenerAclAttachmentArgs.builder()
///             .aclId(defaultAcl.id())
///             .listenerId(defaultListener.id())
///             .aclType("White")
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
/// ALB Listener Acl Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:alb/listenerAclAttachment:ListenerAclAttachment example <listener_id>:<acl_id>
/// ```
class ListenerAclAttachment extends pulumi.CustomResource {
  /// The ID list of the access policy group bound by the listener.
  late final pulumi.Output<String> aclId;

  /// Access control type:
  /// - **White**: only requests from IP addresses or address segments in the selected access control list are forwarded. The whitelist applies to scenarios where only specific IP addresses are allowed to access. There are certain business risks in setting up a whitelist. Once the whitelist is set, only the IP addresses in the whitelist can access the load balancer listener. If whitelist access is enabled but no IP addresses are added to the access policy group, the server load balancer listener forwards all requests.
  /// - **Black**: All requests from IP addresses or address segments in the selected access control list are not forwarded. Blacklists are applicable to scenarios where only certain IP addresses are restricted. If blacklist access is enabled and no IP is added to the access policy group, the server load balancer listener forwards all requests.
  late final pulumi.Output<String> aclType;

  /// Listener instance ID.
  late final pulumi.Output<String> listenerId;

  /// Listener Status.
  late final pulumi.Output<String> status;

  /// Creates a new [ListenerAclAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ListenerAclAttachment]. {@macro pulumi_alb_listener_acl_attachment_listener_acl_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ListenerAclAttachment(
    String name, {
    ListenerAclAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/listenerAclAttachment:ListenerAclAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    aclType = registerOutput<String>('aclType');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ListenerAclAttachment] resource's state with the given [name] and [id].
  static ListenerAclAttachment get(
    String name,
    pulumi.Input<String> id, {
    ListenerAclAttachmentState? state,
  }) {
    return ListenerAclAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ListenerAclAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:alb/listenerAclAttachment:ListenerAclAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    aclId = registerOutput<String>('aclId');
    aclType = registerOutput<String>('aclType');
    listenerId = registerOutput<String>('listenerId');
    status = registerOutput<String>('status');
  }
}
