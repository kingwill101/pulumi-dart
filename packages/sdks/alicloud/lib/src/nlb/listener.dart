import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_proxy_protocol_config.dart';
import 'listener_state.dart';

/// Provides a Network Load Balancer (NLB) Listener resource.
///
///
///
/// For information about Network Load Balancer (NLB) Listener and how to use it, see [What is Listener](https://www.alibabacloud.com/help/en/server-load-balancer/latest/api-nlb-2022-04-30-createlistener).
///
/// > **NOTE:** Available since v1.191.0.
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
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
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
/// const defaultServerGroup = new alicloud.nlb.ServerGroup("default", {
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     serverGroupName: name,
///     serverGroupType: "Instance",
///     vpcId: defaultNetwork.id,
///     scheduler: "Wrr",
///     protocol: "TCP",
///     connectionDrainEnabled: true,
///     connectionDrainTimeout: 60,
///     addressIpVersion: "Ipv4",
///     healthCheck: {
///         healthCheckEnabled: true,
///         healthCheckType: "TCP",
///         healthCheckConnectPort: 0,
///         healthyThreshold: 2,
///         unhealthyThreshold: 2,
///         healthCheckConnectTimeout: 5,
///         healthCheckInterval: 10,
///         httpCheckMethod: "GET",
///         healthCheckHttpCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///     },
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultListener = new alicloud.nlb.Listener("default", {
///     listenerProtocol: "TCP",
///     listenerPort: 80,
///     listenerDescription: name,
///     loadBalancerId: defaultLoadBalancer.id,
///     serverGroupId: defaultServerGroup.id,
///     idleTimeout: 900,
///     proxyProtocolEnabled: true,
///     cps: 10000,
///     mss: 0,
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
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
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
/// default_server_group = alicloud.nlb.ServerGroup("default",
///     resource_group_id=default.ids[0],
///     server_group_name=name,
///     server_group_type="Instance",
///     vpc_id=default_network.id,
///     scheduler="Wrr",
///     protocol="TCP",
///     connection_drain_enabled=True,
///     connection_drain_timeout=60,
///     address_ip_version="Ipv4",
///     health_check={
///         "health_check_enabled": True,
///         "health_check_type": "TCP",
///         "health_check_connect_port": 0,
///         "healthy_threshold": 2,
///         "unhealthy_threshold": 2,
///         "health_check_connect_timeout": 5,
///         "health_check_interval": 10,
///         "http_check_method": "GET",
///         "health_check_http_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///     },
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_listener = alicloud.nlb.Listener("default",
///     listener_protocol="TCP",
///     listener_port=80,
///     listener_description=name,
///     load_balancer_id=default_load_balancer.id,
///     server_group_id=default_server_group.id,
///     idle_timeout=900,
///     proxy_protocol_enabled=True,
///     cps=10000,
///     mss=0)
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
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
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
///     var defaultServerGroup = new AliCloud.Nlb.ServerGroup("default", new()
///     {
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         ServerGroupName = name,
///         ServerGroupType = "Instance",
///         VpcId = defaultNetwork.Id,
///         Scheduler = "Wrr",
///         Protocol = "TCP",
///         ConnectionDrainEnabled = true,
///         ConnectionDrainTimeout = 60,
///         AddressIpVersion = "Ipv4",
///         HealthCheck = new AliCloud.Nlb.Inputs.ServerGroupHealthCheckArgs
///         {
///             HealthCheckEnabled = true,
///             HealthCheckType = "TCP",
///             HealthCheckConnectPort = 0,
///             HealthyThreshold = 2,
///             UnhealthyThreshold = 2,
///             HealthCheckConnectTimeout = 5,
///             HealthCheckInterval = 10,
///             HttpCheckMethod = "GET",
///             HealthCheckHttpCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///         },
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultListener = new AliCloud.Nlb.Listener("default", new()
///     {
///         ListenerProtocol = "TCP",
///         ListenerPort = 80,
///         ListenerDescription = name,
///         LoadBalancerId = defaultLoadBalancer.Id,
///         ServerGroupId = defaultServerGroup.Id,
///         IdleTimeout = 900,
///         ProxyProtocolEnabled = true,
///         Cps = 10000,
///         Mss = 0,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_, err = ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultLoadBalancer, err := nlb.NewLoadBalancer(ctx, "default", &nlb.LoadBalancerArgs{
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
/// 		defaultServerGroup, err := nlb.NewServerGroup(ctx, "default", &nlb.ServerGroupArgs{
/// 			ResourceGroupId:        pulumi.String(_default.Ids[0]),
/// 			ServerGroupName:        pulumi.String(name),
/// 			ServerGroupType:        pulumi.String("Instance"),
/// 			VpcId:                  defaultNetwork.ID(),
/// 			Scheduler:              pulumi.String("Wrr"),
/// 			Protocol:               pulumi.String("TCP"),
/// 			ConnectionDrainEnabled: pulumi.Bool(true),
/// 			ConnectionDrainTimeout: pulumi.Int(60),
/// 			AddressIpVersion:       pulumi.String("Ipv4"),
/// 			HealthCheck: &nlb.ServerGroupHealthCheckArgs{
/// 				HealthCheckEnabled:        pulumi.Bool(true),
/// 				HealthCheckType:           pulumi.String("TCP"),
/// 				HealthCheckConnectPort:    pulumi.Int(0),
/// 				HealthyThreshold:          pulumi.Int(2),
/// 				UnhealthyThreshold:        pulumi.Int(2),
/// 				HealthCheckConnectTimeout: pulumi.Int(5),
/// 				HealthCheckInterval:       pulumi.Int(10),
/// 				HttpCheckMethod:           pulumi.String("GET"),
/// 				HealthCheckHttpCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewListener(ctx, "default", &nlb.ListenerArgs{
/// 			ListenerProtocol:     pulumi.String("TCP"),
/// 			ListenerPort:         pulumi.Int(80),
/// 			ListenerDescription:  pulumi.String(name),
/// 			LoadBalancerId:       defaultLoadBalancer.ID(),
/// 			ServerGroupId:        defaultServerGroup.ID(),
/// 			IdleTimeout:          pulumi.Int(900),
/// 			ProxyProtocolEnabled: pulumi.Bool(true),
/// 			Cps:                  pulumi.Int(10000),
/// 			Mss:                  pulumi.Int(0),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.nlb.LoadBalancer;
/// import com.pulumi.alicloud.nlb.LoadBalancerArgs;
/// import com.pulumi.alicloud.nlb.inputs.LoadBalancerZoneMappingArgs;
/// import com.pulumi.alicloud.nlb.ServerGroup;
/// import com.pulumi.alicloud.nlb.ServerGroupArgs;
/// import com.pulumi.alicloud.nlb.inputs.ServerGroupHealthCheckArgs;
/// import com.pulumi.alicloud.nlb.Listener;
/// import com.pulumi.alicloud.nlb.ListenerArgs;
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
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
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
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .resourceGroupId(default_.ids()[0])
///             .serverGroupName(name)
///             .serverGroupType("Instance")
///             .vpcId(defaultNetwork.id())
///             .scheduler("Wrr")
///             .protocol("TCP")
///             .connectionDrainEnabled(true)
///             .connectionDrainTimeout(60)
///             .addressIpVersion("Ipv4")
///             .healthCheck(ServerGroupHealthCheckArgs.builder()
///                 .healthCheckEnabled(true)
///                 .healthCheckType("TCP")
///                 .healthCheckConnectPort(0)
///                 .healthyThreshold(2)
///                 .unhealthyThreshold(2)
///                 .healthCheckConnectTimeout(5)
///                 .healthCheckInterval(10)
///                 .httpCheckMethod("GET")
///                 .healthCheckHttpCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .build())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .listenerProtocol("TCP")
///             .listenerPort(80)
///             .listenerDescription(name)
///             .loadBalancerId(defaultLoadBalancer.id())
///             .serverGroupId(defaultServerGroup.id())
///             .idleTimeout(900)
///             .proxyProtocolEnabled(true)
///             .cps(10000)
///             .mss(0)
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
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
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
///   defaultServerGroup:
///     type: alicloud:nlb:ServerGroup
///     name: default
///     properties:
///       resourceGroupId: ${default.ids[0]}
///       serverGroupName: ${name}
///       serverGroupType: Instance
///       vpcId: ${defaultNetwork.id}
///       scheduler: Wrr
///       protocol: TCP
///       connectionDrainEnabled: true
///       connectionDrainTimeout: 60
///       addressIpVersion: Ipv4
///       healthCheck:
///         healthCheckEnabled: true
///         healthCheckType: TCP
///         healthCheckConnectPort: 0
///         healthyThreshold: 2
///         unhealthyThreshold: 2
///         healthCheckConnectTimeout: 5
///         healthCheckInterval: 10
///         httpCheckMethod: GET
///         healthCheckHttpCodes:
///           - http_2xx
///           - http_3xx
///           - http_4xx
///       tags:
///         Created: TF
///         For: example
///   defaultListener:
///     type: alicloud:nlb:Listener
///     name: default
///     properties:
///       listenerProtocol: TCP
///       listenerPort: '80'
///       listenerDescription: ${name}
///       loadBalancerId: ${defaultLoadBalancer.id}
///       serverGroupId: ${defaultServerGroup.id}
///       idleTimeout: '900'
///       proxyProtocolEnabled: 'true'
///       cps: '10000'
///       mss: '0'
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
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Network Load Balancer (NLB) Listener can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/listener:Listener example <id>
/// ```
class Listener extends pulumi.CustomResource {
  /// Specifies whether to enable Application-Layer Protocol Negotiation (ALPN). Valid values:
  late final pulumi.Output<bool> alpnEnabled;
  /// The ALPN policy. Valid values:
  /// - `HTTP1Only`: uses only HTTP 1.x. The priority of HTTP 1.1 is higher than the priority of HTTP 1.0.
  /// - `HTTP2Only`: uses only HTTP 2.0.
  /// - `HTTP2Optional`: preferentially uses HTTP 1.x over HTTP 2.0. The priority of HTTP 1.1 is higher than the priority of HTTP 1.0, and the priority of HTTP 1.0 is higher than the priority of HTTP 2.0.
  /// - `HTTP2Preferred`: preferentially uses HTTP 2.0 over HTTP 1.x. The priority of HTTP 2.0 is higher than the priority of HTTP 1.1, and the priority of HTTP 1.1 is higher than the priority of HTTP 1.0.
  ///
  /// > **NOTE:**  This parameter is required if AlpnEnabled is set to true.
  ///
  /// > **NOTE:**  Effective only for TCPSSL listener.
  late final pulumi.Output<String?> alpnPolicy;
  /// The list of certificate authority (CA) certificates. This parameter takes effect only for listeners that use SSL over TCP.
  ///
  /// > **NOTE:**  Only one CA certificate is supported.
  late final pulumi.Output<List<String>?> caCertificateIds;
  /// Specifies whether to enable mutual authentication. Valid values:
  late final pulumi.Output<bool> caEnabled;
  /// The list of server certificates. This parameter takes effect only for listeners that use SSL over TCP.
  ///
  /// > **NOTE:**  This parameter takes effect only for TCPSSL listeners.
  late final pulumi.Output<List<String>?> certificateIds;
  /// The maximum number of connections that can be created per second on the NLB instance. Valid values: `0` to `1000000`. `0` specifies that the number of connections is unlimited.
  late final pulumi.Output<int?> cps;
  /// The last port in the listener port range. Valid values: `0` to `65535`. The number of the last port must be greater than the number of the first port.
  ///
  /// > **NOTE:**  This parameter is required when `ListenerPort` is set to `0`.
  late final pulumi.Output<int?> endPort;
  /// The timeout period of idle connections. Unit: seconds. Valid values: `1` to `900`. Default value: `900`.
  late final pulumi.Output<int> idleTimeout;
  /// Enter a name for the listener.
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  late final pulumi.Output<String?> listenerDescription;
  /// The listener port. Valid values: `0` to `65535`.
  /// If you set the value to `0`, the listener listens by port range. If you set the value to `0`, you must specify `StartPort` and `EndPort`.
  late final pulumi.Output<int> listenerPort;
  /// The listening protocol. Valid values: `TCP`, `UDP`, and `TCPSSL`.
  late final pulumi.Output<String> listenerProtocol;
  /// The ID of the Network Load Balancer (NLB) instance.
  late final pulumi.Output<String> loadBalancerId;
  /// The maximum size of a TCP segment. Unit: bytes. Valid values: `0` to `1500`. `0` specifies that the maximum segment size remains unchanged.
  ///
  /// > **NOTE:**  This parameter is supported only by TCP listeners and listeners that use SSL over TCP.
  late final pulumi.Output<int?> mss;
  /// The Proxy Protocol is used to carry the VpcId, PrivateLinkEpId, and PrivateLinkEpsId information to the backend server for configuration. See `proxy_protocol_config` below.
  late final pulumi.Output<ListenerProxyProtocolConfig> proxyProtocolConfig;
  /// Specifies whether to use the Proxy protocol to pass client IP addresses to backend servers. Valid values:
  late final pulumi.Output<bool> proxyProtocolEnabled;
  /// The ID of the region where the Network Load Balancer (NLB) instance is deployed.
  /// You can call the [DescribeRegions](https://www.alibabacloud.com/help/en/doc-detail/443657.html) operation to query the most recent region list.
  late final pulumi.Output<String> regionId;
  /// Specifies whether to enable fine-grained monitoring. Valid values:
  late final pulumi.Output<bool> secSensorEnabled;
  /// The security policy ID. System security policies and custom security policies are supported.
  ///
  /// Valid values: `tls_cipher_policy\_1\_0` (default), `tls_cipher_policy\_1\_1`, `tls_cipher_policy\_1\_2`, `tls_cipher_policy\_1\_2\_strict`, and `tls_cipher_policy\_1\_2\_strict_with\_1\_3`.
  ///
  /// > **NOTE:**  This parameter takes effect only for listeners that use SSL over TCP.
  late final pulumi.Output<String> securityPolicyId;
  /// The ID of the server group.
  late final pulumi.Output<String> serverGroupId;
  /// The first port in the listener port range. Valid values: `0` to `65535`.
  ///
  /// > **NOTE:**  This parameter is required when `ListenerPort` is set to `0`.
  late final pulumi.Output<int?> startPort;
  /// The status of the resource. Valid values: `Running`, `Stopped`. When you want to enable this instance, you can set the property value to `Running`;
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_nlb_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alpnEnabled = registerOutput<bool>('alpnEnabled');
    this.alpnPolicy = registerOutput<String?>('alpnPolicy');
    this.caCertificateIds = registerOutput<List<String>?>('caCertificateIds');
    this.caEnabled = registerOutput<bool>('caEnabled');
    this.certificateIds = registerOutput<List<String>?>('certificateIds');
    this.cps = registerOutput<int?>('cps');
    this.endPort = registerOutput<int?>('endPort');
    this.idleTimeout = registerOutput<int>('idleTimeout');
    this.listenerDescription = registerOutput<String?>('listenerDescription');
    this.listenerPort = registerOutput<int>('listenerPort');
    this.listenerProtocol = registerOutput<String>('listenerProtocol');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.mss = registerOutput<int?>('mss');
    this.proxyProtocolConfig = registerOutput<ListenerProxyProtocolConfig>('proxyProtocolConfig');
    this.proxyProtocolEnabled = registerOutput<bool>('proxyProtocolEnabled');
    this.regionId = registerOutput<String>('regionId');
    this.secSensorEnabled = registerOutput<bool>('secSensorEnabled');
    this.securityPolicyId = registerOutput<String>('securityPolicyId');
    this.serverGroupId = registerOutput<String>('serverGroupId');
    this.startPort = registerOutput<int?>('startPort');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Listener] resource's state with the given [name] and [id].
  static Listener get(
    String name,
    pulumi.Input<String> id, {
    ListenerState? state,
  }) {
    return Listener._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Listener._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alpnEnabled = registerOutput<bool>('alpnEnabled');
    this.alpnPolicy = registerOutput<String?>('alpnPolicy');
    this.caCertificateIds = registerOutput<List<String>?>('caCertificateIds');
    this.caEnabled = registerOutput<bool>('caEnabled');
    this.certificateIds = registerOutput<List<String>?>('certificateIds');
    this.cps = registerOutput<int?>('cps');
    this.endPort = registerOutput<int?>('endPort');
    this.idleTimeout = registerOutput<int>('idleTimeout');
    this.listenerDescription = registerOutput<String?>('listenerDescription');
    this.listenerPort = registerOutput<int>('listenerPort');
    this.listenerProtocol = registerOutput<String>('listenerProtocol');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.mss = registerOutput<int?>('mss');
    this.proxyProtocolConfig = registerOutput<ListenerProxyProtocolConfig>('proxyProtocolConfig');
    this.proxyProtocolEnabled = registerOutput<bool>('proxyProtocolEnabled');
    this.regionId = registerOutput<String>('regionId');
    this.secSensorEnabled = registerOutput<bool>('secSensorEnabled');
    this.securityPolicyId = registerOutput<String>('securityPolicyId');
    this.serverGroupId = registerOutput<String>('serverGroupId');
    this.startPort = registerOutput<int?>('startPort');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
