import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_args.dart';
import 'listener_state.dart';

/// Provides a GWLB Listener resource.
///
///
///
/// For information about GWLB Listener and how to use it, see [What is Listener](https://www.alibabacloud.com/help/en/slb/gateway-based-load-balancing-gwlb/developer-reference/api-gwlb-2024-04-15-createlistener).
///
/// &gt; **NOTE:** Available since v1.234.0.
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
/// const zoneId1 = config.get("zoneId1") || "cn-wulanchabu-b";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     cidrBlock: "10.0.0.0/8",
///     vpcName: name,
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     zoneId: zoneId1,
///     cidrBlock: "10.0.0.0/24",
///     vswitchName: std.format({
///         input: "%s1",
///         args: [name],
///     }).then(invoke => invoke.result),
/// });
/// const defaultLoadBalancer = new alicloud.gwlb.LoadBalancer("default", {
///     vpcId: defaultNetwork.id,
///     loadBalancerName: std.format({
///         input: "%s3",
///         args: [name],
///     }).then(invoke => invoke.result),
///     zoneMappings: [{
///         vswitchId: defaultSwitch.id,
///         zoneId: zoneId1,
///     }],
///     addressIpVersion: "Ipv4",
/// });
/// const defaultServerGroup = new alicloud.gwlb.ServerGroup("default", {
///     protocol: "GENEVE",
///     serverGroupName: "tfaccgwlb62413",
///     serverGroupType: "Ip",
///     servers: [
///         {
///             serverId: "10.0.0.1",
///             serverIp: "10.0.0.1",
///             serverType: "Ip",
///         },
///         {
///             serverId: "10.0.0.2",
///             serverIp: "10.0.0.2",
///             serverType: "Ip",
///         },
///         {
///             serverId: "10.0.0.3",
///             serverIp: "10.0.0.3",
///             serverType: "Ip",
///         },
///     ],
///     connectionDrainConfig: {
///         connectionDrainEnabled: true,
///         connectionDrainTimeout: 1,
///     },
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
///     dryRun: false,
///     healthCheckConfig: {
///         healthCheckProtocol: "HTTP",
///         healthCheckHttpCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         healthCheckInterval: 10,
///         healthCheckPath: "/health-check",
///         unhealthyThreshold: 2,
///         healthCheckConnectPort: 80,
///         healthCheckConnectTimeout: 5,
///         healthCheckDomain: "www.domain.com",
///         healthCheckEnabled: true,
///         healthyThreshold: 2,
///     },
///     vpcId: defaultNetwork.id,
///     scheduler: "5TCH",
/// });
/// const defaultListener = new alicloud.gwlb.Listener("default", {
///     listenerDescription: "example-tf-lsn",
///     serverGroupId: defaultServerGroup.id,
///     loadBalancerId: defaultLoadBalancer.id,
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
/// zone_id1 = config.get("zoneId1")
/// if zone_id1 is None:
///     zone_id1 = "cn-wulanchabu-b"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_network = alicloud.vpc.Network("default",
///     cidr_block="10.0.0.0/8",
///     vpc_name=name)
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     zone_id=zone_id1,
///     cidr_block="10.0.0.0/24",
///     vswitch_name=std.format(input="%s1",
///         args=[name]).result)
/// default_load_balancer = alicloud.gwlb.LoadBalancer("default",
///     vpc_id=default_network.id,
///     load_balancer_name=std.format(input="%s3",
///         args=[name]).result,
///     zone_mappings=[{
///         "vswitch_id": default_switch.id,
///         "zone_id": zone_id1,
///     }],
///     address_ip_version="Ipv4")
/// default_server_group = alicloud.gwlb.ServerGroup("default",
///     protocol="GENEVE",
///     server_group_name="tfaccgwlb62413",
///     server_group_type="Ip",
///     servers=[
///         {
///             "server_id": "10.0.0.1",
///             "server_ip": "10.0.0.1",
///             "server_type": "Ip",
///         },
///         {
///             "server_id": "10.0.0.2",
///             "server_ip": "10.0.0.2",
///             "server_type": "Ip",
///         },
///         {
///             "server_id": "10.0.0.3",
///             "server_ip": "10.0.0.3",
///             "server_type": "Ip",
///         },
///     ],
///     connection_drain_config={
///         "connection_drain_enabled": True,
///         "connection_drain_timeout": 1,
///     },
///     resource_group_id=default.ids[0],
///     dry_run=False,
///     health_check_config={
///         "health_check_protocol": "HTTP",
///         "health_check_http_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         "health_check_interval": 10,
///         "health_check_path": "/health-check",
///         "unhealthy_threshold": 2,
///         "health_check_connect_port": 80,
///         "health_check_connect_timeout": 5,
///         "health_check_domain": "www.domain.com",
///         "health_check_enabled": True,
///         "healthy_threshold": 2,
///     },
///     vpc_id=default_network.id,
///     scheduler="5TCH")
/// default_listener = alicloud.gwlb.Listener("default",
///     listener_description="example-tf-lsn",
///     server_group_id=default_server_group.id,
///     load_balancer_id=default_load_balancer.id)
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
///     var zoneId1 = config.Get("zoneId1") ?? "cn-wulanchabu-b";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///         VpcName = name,
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
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
///     var defaultLoadBalancer = new AliCloud.Gwlb.LoadBalancer("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         LoadBalancerName = Std.Format.Invoke(new()
///         {
///             Input = "%s3",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         ZoneMappings = new[]
///         {
///             new AliCloud.Gwlb.Inputs.LoadBalancerZoneMappingArgs
///             {
///                 VswitchId = defaultSwitch.Id,
///                 ZoneId = zoneId1,
///             },
///         },
///         AddressIpVersion = "Ipv4",
///     });
///
///     var defaultServerGroup = new AliCloud.Gwlb.ServerGroup("default", new()
///     {
///         Protocol = "GENEVE",
///         ServerGroupName = "tfaccgwlb62413",
///         ServerGroupType = "Ip",
///         Servers = new[]
///         {
///             new AliCloud.Gwlb.Inputs.ServerGroupServerArgs
///             {
///                 ServerId = "10.0.0.1",
///                 ServerIp = "10.0.0.1",
///                 ServerType = "Ip",
///             },
///             new AliCloud.Gwlb.Inputs.ServerGroupServerArgs
///             {
///                 ServerId = "10.0.0.2",
///                 ServerIp = "10.0.0.2",
///                 ServerType = "Ip",
///             },
///             new AliCloud.Gwlb.Inputs.ServerGroupServerArgs
///             {
///                 ServerId = "10.0.0.3",
///                 ServerIp = "10.0.0.3",
///                 ServerType = "Ip",
///             },
///         },
///         ConnectionDrainConfig = new AliCloud.Gwlb.Inputs.ServerGroupConnectionDrainConfigArgs
///         {
///             ConnectionDrainEnabled = true,
///             ConnectionDrainTimeout = 1,
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///         DryRun = false,
///         HealthCheckConfig = new AliCloud.Gwlb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckProtocol = "HTTP",
///             HealthCheckHttpCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///             HealthCheckInterval = 10,
///             HealthCheckPath = "/health-check",
///             UnhealthyThreshold = 2,
///             HealthCheckConnectPort = 80,
///             HealthCheckConnectTimeout = 5,
///             HealthCheckDomain = "www.domain.com",
///             HealthCheckEnabled = true,
///             HealthyThreshold = 2,
///         },
///         VpcId = defaultNetwork.Id,
///         Scheduler = "5TCH",
///     });
///
///     var defaultListener = new AliCloud.Gwlb.Listener("default", new()
///     {
///         ListenerDescription = "example-tf-lsn",
///         ServerGroupId = defaultServerGroup.Id,
///         LoadBalancerId = defaultLoadBalancer.Id,
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
/// 		zoneId1 := "cn-wulanchabu-b"
/// 		if param := cfg.Get("zoneId1"); param != "" {
/// 			zoneId1 = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
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
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(zoneId1),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 			VswitchName: pulumi.String(invokeFormat.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat1, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s3",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultLoadBalancer, err := gwlb.NewLoadBalancer(ctx, "default", &gwlb.LoadBalancerArgs{
/// 			VpcId:            defaultNetwork.ID(),
/// 			LoadBalancerName: pulumi.String(invokeFormat1.Result),
/// 			ZoneMappings: gwlb.LoadBalancerZoneMappingArray{
/// 				&gwlb.LoadBalancerZoneMappingArgs{
/// 					VswitchId: defaultSwitch.ID(),
/// 					ZoneId:    pulumi.String(zoneId1),
/// 				},
/// 			},
/// 			AddressIpVersion: pulumi.String("Ipv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultServerGroup, err := gwlb.NewServerGroup(ctx, "default", &gwlb.ServerGroupArgs{
/// 			Protocol:        pulumi.String("GENEVE"),
/// 			ServerGroupName: pulumi.String("tfaccgwlb62413"),
/// 			ServerGroupType: pulumi.String("Ip"),
/// 			Servers: gwlb.ServerGroupServerArray{
/// 				&gwlb.ServerGroupServerArgs{
/// 					ServerId:   pulumi.String("10.0.0.1"),
/// 					ServerIp:   pulumi.String("10.0.0.1"),
/// 					ServerType: pulumi.String("Ip"),
/// 				},
/// 				&gwlb.ServerGroupServerArgs{
/// 					ServerId:   pulumi.String("10.0.0.2"),
/// 					ServerIp:   pulumi.String("10.0.0.2"),
/// 					ServerType: pulumi.String("Ip"),
/// 				},
/// 				&gwlb.ServerGroupServerArgs{
/// 					ServerId:   pulumi.String("10.0.0.3"),
/// 					ServerIp:   pulumi.String("10.0.0.3"),
/// 					ServerType: pulumi.String("Ip"),
/// 				},
/// 			},
/// 			ConnectionDrainConfig: &gwlb.ServerGroupConnectionDrainConfigArgs{
/// 				ConnectionDrainEnabled: pulumi.Bool(true),
/// 				ConnectionDrainTimeout: pulumi.Int(1),
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
/// 			DryRun:          pulumi.Bool(false),
/// 			HealthCheckConfig: &gwlb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckProtocol: pulumi.String("HTTP"),
/// 				HealthCheckHttpCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 				HealthCheckInterval:       pulumi.Int(10),
/// 				HealthCheckPath:           pulumi.String("/health-check"),
/// 				UnhealthyThreshold:        pulumi.Int(2),
/// 				HealthCheckConnectPort:    pulumi.Int(80),
/// 				HealthCheckConnectTimeout: pulumi.Int(5),
/// 				HealthCheckDomain:         pulumi.String("www.domain.com"),
/// 				HealthCheckEnabled:        pulumi.Bool(true),
/// 				HealthyThreshold:          pulumi.Int(2),
/// 			},
/// 			VpcId:     defaultNetwork.ID(),
/// 			Scheduler: pulumi.String("5TCH"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gwlb.NewListener(ctx, "default", &gwlb.ListenerArgs{
/// 			ListenerDescription: pulumi.String("example-tf-lsn"),
/// 			ServerGroupId:       defaultServerGroup.ID(),
/// 			LoadBalancerId:      defaultLoadBalancer.ID(),
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
/// import com.pulumi.alicloud.gwlb.ServerGroup;
/// import com.pulumi.alicloud.gwlb.ServerGroupArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupServerArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupConnectionDrainConfigArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupHealthCheckConfigArgs;
/// import com.pulumi.alicloud.gwlb.Listener;
/// import com.pulumi.alicloud.gwlb.ListenerArgs;
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
///         final var zoneId1 = config.get("zoneId1").orElse("cn-wulanchabu-b");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .vpcName(name)
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .zoneId(zoneId1)
///             .cidrBlock("10.0.0.0/24")
///             .vswitchName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s1")
///                 .args(name)
///                 .build()).result())
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .loadBalancerName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s3")
///                 .args(name)
///                 .build()).result())
///             .zoneMappings(LoadBalancerZoneMappingArgs.builder()
///                 .vswitchId(defaultSwitch.id())
///                 .zoneId(zoneId1)
///                 .build())
///             .addressIpVersion("Ipv4")
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .protocol("GENEVE")
///             .serverGroupName("tfaccgwlb62413")
///             .serverGroupType("Ip")
///             .servers(
///                 ServerGroupServerArgs.builder()
///                     .serverId("10.0.0.1")
///                     .serverIp("10.0.0.1")
///                     .serverType("Ip")
///                     .build(),
///                 ServerGroupServerArgs.builder()
///                     .serverId("10.0.0.2")
///                     .serverIp("10.0.0.2")
///                     .serverType("Ip")
///                     .build(),
///                 ServerGroupServerArgs.builder()
///                     .serverId("10.0.0.3")
///                     .serverIp("10.0.0.3")
///                     .serverType("Ip")
///                     .build())
///             .connectionDrainConfig(ServerGroupConnectionDrainConfigArgs.builder()
///                 .connectionDrainEnabled(true)
///                 .connectionDrainTimeout(1)
///                 .build())
///             .resourceGroupId(default_.ids()[0])
///             .dryRun(false)
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckProtocol("HTTP")
///                 .healthCheckHttpCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .healthCheckInterval(10)
///                 .healthCheckPath("/health-check")
///                 .unhealthyThreshold(2)
///                 .healthCheckConnectPort(80)
///                 .healthCheckConnectTimeout(5)
///                 .healthCheckDomain("www.domain.com")
///                 .healthCheckEnabled(true)
///                 .healthyThreshold(2)
///                 .build())
///             .vpcId(defaultNetwork.id())
///             .scheduler("5TCH")
///             .build());
///
///         var defaultListener = new Listener("defaultListener", ListenerArgs.builder()
///             .listenerDescription("example-tf-lsn")
///             .serverGroupId(defaultServerGroup.id())
///             .loadBalancerId(defaultLoadBalancer.id())
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
///   zoneId1:
///     type: string
///     default: cn-wulanchabu-b
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       cidrBlock: 10.0.0.0/8
///       vpcName: ${name}
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
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
///   defaultLoadBalancer:
///     type: alicloud:gwlb:LoadBalancer
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       loadBalancerName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s3'
///             args:
///               - ${name}
///           return: result
///       zoneMappings:
///         - vswitchId: ${defaultSwitch.id}
///           zoneId: ${zoneId1}
///       addressIpVersion: Ipv4
///   defaultServerGroup:
///     type: alicloud:gwlb:ServerGroup
///     name: default
///     properties:
///       protocol: GENEVE
///       serverGroupName: tfaccgwlb62413
///       serverGroupType: Ip
///       servers:
///         - serverId: 10.0.0.1
///           serverIp: 10.0.0.1
///           serverType: Ip
///         - serverId: 10.0.0.2
///           serverIp: 10.0.0.2
///           serverType: Ip
///         - serverId: 10.0.0.3
///           serverIp: 10.0.0.3
///           serverType: Ip
///       connectionDrainConfig:
///         connectionDrainEnabled: 'true'
///         connectionDrainTimeout: '1'
///       resourceGroupId: ${default.ids[0]}
///       dryRun: 'false'
///       healthCheckConfig:
///         healthCheckProtocol: HTTP
///         healthCheckHttpCodes:
///           - http_2xx
///           - http_3xx
///           - http_4xx
///         healthCheckInterval: '10'
///         healthCheckPath: /health-check
///         unhealthyThreshold: '2'
///         healthCheckConnectPort: '80'
///         healthCheckConnectTimeout: '5'
///         healthCheckDomain: www.domain.com
///         healthCheckEnabled: 'true'
///         healthyThreshold: '2'
///       vpcId: ${defaultNetwork.id}
///       scheduler: 5TCH
///   defaultListener:
///     type: alicloud:gwlb:Listener
///     name: default
///     properties:
///       listenerDescription: example-tf-lsn
///       serverGroupId: ${defaultServerGroup.id}
///       loadBalancerId: ${defaultLoadBalancer.id}
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
/// GWLB Listener can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gwlb/listener:Listener example <id>
/// ```
class Listener extends pulumi.CustomResource {
  /// Specifies whether to perform a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// The description of the listener.
  ///
  /// The description must be 2 to 256 characters in length, and can contain letters, digits, commas (,), periods (.), semicolons (;), forward slashes (/), at signs (@), underscores (\_), and hyphens (-).
  late final pulumi.Output<String?> listenerDescription;
  /// The GWLB instance ID.
  late final pulumi.Output<String> loadBalancerId;
  /// The region ID.
  late final pulumi.Output<String> regionId;
  /// The server group ID.
  late final pulumi.Output<String> serverGroupId;
  /// The status of the listener.
  late final pulumi.Output<String> status;
  /// The tags. You can specify at most 20 tags in each call.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Listener].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Listener]. {@macro pulumi_gwlb_listener_listener_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Listener(
    String name, {
    ListenerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gwlb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dryRun = registerOutput<bool?>('dryRun');
    listenerDescription = registerOutput<String?>('listenerDescription');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    regionId = registerOutput<String>('regionId');
    serverGroupId = registerOutput<String>('serverGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
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
          'alicloud:gwlb/listener:Listener',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dryRun = registerOutput<bool?>('dryRun');
    listenerDescription = registerOutput<String?>('listenerDescription');
    loadBalancerId = registerOutput<String>('loadBalancerId');
    regionId = registerOutput<String>('regionId');
    serverGroupId = registerOutput<String>('serverGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
