import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_args.dart';
import 'server_group_connection_drain_config.dart';
import 'server_group_health_check_config.dart';
import 'server_group_state.dart';

/// Provides a GWLB Server Group resource.
///
///
///
/// For information about GWLB Server Group and how to use it, see [What is Server Group](https://www.alibabacloud.com/help/en/slb/gateway-based-load-balancing-gwlb/developer-reference/api-gwlb-2024-04-15-createservergroup).
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
/// const regionId = config.get("regionId") || "cn-wulanchabu";
/// const zoneId1 = config.get("zoneId1") || "cn-wulanchabu-b";
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultEaxcvb = new alicloud.vpc.Network("defaultEaxcvb", {
///     cidrBlock: "10.0.0.0/8",
///     vpcName: "tf-gwlb-vpc",
/// });
/// const defaultc3uVID = new alicloud.vpc.Switch("defaultc3uVID", {
///     vpcId: defaultEaxcvb.id,
///     zoneId: zoneId1,
///     cidrBlock: "10.0.0.0/24",
///     vswitchName: "tf-example-vsw1",
/// });
/// const default7NNxRl = new alicloud.ecs.SecurityGroup("default7NNxRl", {
///     description: "sg",
///     securityGroupName: "sg_name",
///     vpcId: defaultEaxcvb.id,
///     securityGroupType: "normal",
/// });
/// const defaultH6McvC = new alicloud.ecs.Instance("defaultH6McvC", {
///     vswitchId: defaultc3uVID.id,
///     imageId: "aliyun_2_1903_x64_20G_alibase_20231221.vhd",
///     instanceType: "ecs.g6.large",
///     systemDiskCategory: "cloud_efficiency",
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     instanceName: std.format({
///         input: "%s4",
///         args: [name],
///     }).then(invoke => invoke.result),
///     description: "tf-example-ecs",
///     securityGroups: [default7NNxRl.id],
///     availabilityZone: defaultc3uVID.zoneId,
///     instanceChargeType: "PostPaid",
/// });
/// const defaultServerGroup = new alicloud.gwlb.ServerGroup("default", {
///     dryRun: false,
///     servers: [{
///         serverId: defaultH6McvC.id,
///         serverType: "Ecs",
///     }],
///     scheduler: "5TCH",
///     protocol: "GENEVE",
///     connectionDrainConfig: {
///         connectionDrainEnabled: true,
///         connectionDrainTimeout: 1,
///     },
///     vpcId: defaultEaxcvb.id,
///     serverGroupType: "Instance",
///     serverGroupName: name,
///     healthCheckConfig: {
///         healthCheckConnectPort: 80,
///         healthCheckEnabled: true,
///         healthCheckProtocol: "HTTP",
///         healthCheckConnectTimeout: 5,
///         healthCheckDomain: "www.domain.com",
///         healthCheckHttpCodes: [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         healthCheckInterval: 10,
///         healthCheckPath: "/health-check",
///         healthyThreshold: 2,
///         unhealthyThreshold: 2,
///     },
///     resourceGroupId: _default.then(_default => _default.ids?.[0]),
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
/// zone_id1 = config.get("zoneId1")
/// if zone_id1 is None:
///     zone_id1 = "cn-wulanchabu-b"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_eaxcvb = alicloud.vpc.Network("defaultEaxcvb",
///     cidr_block="10.0.0.0/8",
///     vpc_name="tf-gwlb-vpc")
/// defaultc3u_vid = alicloud.vpc.Switch("defaultc3uVID",
///     vpc_id=default_eaxcvb.id,
///     zone_id=zone_id1,
///     cidr_block="10.0.0.0/24",
///     vswitch_name="tf-example-vsw1")
/// default7_n_nx_rl = alicloud.ecs.SecurityGroup("default7NNxRl",
///     description="sg",
///     security_group_name="sg_name",
///     vpc_id=default_eaxcvb.id,
///     security_group_type="normal")
/// default_h6_mcv_c = alicloud.ecs.Instance("defaultH6McvC",
///     vswitch_id=defaultc3u_vid.id,
///     image_id="aliyun_2_1903_x64_20G_alibase_20231221.vhd",
///     instance_type="ecs.g6.large",
///     system_disk_category="cloud_efficiency",
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     instance_name=std.format(input="%s4",
///         args=[name]).result,
///     description="tf-example-ecs",
///     security_groups=[default7_n_nx_rl.id],
///     availability_zone=defaultc3u_vid.zone_id,
///     instance_charge_type="PostPaid")
/// default_server_group = alicloud.gwlb.ServerGroup("default",
///     dry_run=False,
///     servers=[{
///         "server_id": default_h6_mcv_c.id,
///         "server_type": "Ecs",
///     }],
///     scheduler="5TCH",
///     protocol="GENEVE",
///     connection_drain_config={
///         "connection_drain_enabled": True,
///         "connection_drain_timeout": 1,
///     },
///     vpc_id=default_eaxcvb.id,
///     server_group_type="Instance",
///     server_group_name=name,
///     health_check_config={
///         "health_check_connect_port": 80,
///         "health_check_enabled": True,
///         "health_check_protocol": "HTTP",
///         "health_check_connect_timeout": 5,
///         "health_check_domain": "www.domain.com",
///         "health_check_http_codes": [
///             "http_2xx",
///             "http_3xx",
///             "http_4xx",
///         ],
///         "health_check_interval": 10,
///         "health_check_path": "/health-check",
///         "healthy_threshold": 2,
///         "unhealthy_threshold": 2,
///     },
///     resource_group_id=default.ids[0])
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
///     var zoneId1 = config.Get("zoneId1") ?? "cn-wulanchabu-b";
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultEaxcvb = new AliCloud.Vpc.Network("defaultEaxcvb", new()
///     {
///         CidrBlock = "10.0.0.0/8",
///         VpcName = "tf-gwlb-vpc",
///     });
///
///     var defaultc3uVID = new AliCloud.Vpc.Switch("defaultc3uVID", new()
///     {
///         VpcId = defaultEaxcvb.Id,
///         ZoneId = zoneId1,
///         CidrBlock = "10.0.0.0/24",
///         VswitchName = "tf-example-vsw1",
///     });
///
///     var default7NNxRl = new AliCloud.Ecs.SecurityGroup("default7NNxRl", new()
///     {
///         Description = "sg",
///         SecurityGroupName = "sg_name",
///         VpcId = defaultEaxcvb.Id,
///         SecurityGroupType = "normal",
///     });
///
///     var defaultH6McvC = new AliCloud.Ecs.Instance("defaultH6McvC", new()
///     {
///         VswitchId = defaultc3uVID.Id,
///         ImageId = "aliyun_2_1903_x64_20G_alibase_20231221.vhd",
///         InstanceType = "ecs.g6.large",
///         SystemDiskCategory = "cloud_efficiency",
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         InstanceName = Std.Format.Invoke(new()
///         {
///             Input = "%s4",
///             Args = new[]
///             {
///                 name,
///             },
///         }).Apply(invoke => invoke.Result),
///         Description = "tf-example-ecs",
///         SecurityGroups = new[]
///         {
///             default7NNxRl.Id,
///         },
///         AvailabilityZone = defaultc3uVID.ZoneId,
///         InstanceChargeType = "PostPaid",
///     });
///
///     var defaultServerGroup = new AliCloud.Gwlb.ServerGroup("default", new()
///     {
///         DryRun = false,
///         Servers = new[]
///         {
///             new AliCloud.Gwlb.Inputs.ServerGroupServerArgs
///             {
///                 ServerId = defaultH6McvC.Id,
///                 ServerType = "Ecs",
///             },
///         },
///         Scheduler = "5TCH",
///         Protocol = "GENEVE",
///         ConnectionDrainConfig = new AliCloud.Gwlb.Inputs.ServerGroupConnectionDrainConfigArgs
///         {
///             ConnectionDrainEnabled = true,
///             ConnectionDrainTimeout = 1,
///         },
///         VpcId = defaultEaxcvb.Id,
///         ServerGroupType = "Instance",
///         ServerGroupName = name,
///         HealthCheckConfig = new AliCloud.Gwlb.Inputs.ServerGroupHealthCheckConfigArgs
///         {
///             HealthCheckConnectPort = 80,
///             HealthCheckEnabled = true,
///             HealthCheckProtocol = "HTTP",
///             HealthCheckConnectTimeout = 5,
///             HealthCheckDomain = "www.domain.com",
///             HealthCheckHttpCodes = new[]
///             {
///                 "http_2xx",
///                 "http_3xx",
///                 "http_4xx",
///             },
///             HealthCheckInterval = 10,
///             HealthCheckPath = "/health-check",
///             HealthyThreshold = 2,
///             UnhealthyThreshold = 2,
///         },
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0])),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		zoneId1 := "cn-wulanchabu-b"
/// 		if param := cfg.Get("zoneId1"); param != "" {
/// 			zoneId1 = param
/// 		}
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEaxcvb, err := vpc.NewNetwork(ctx, "defaultEaxcvb", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 			VpcName:   pulumi.String("tf-gwlb-vpc"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultc3uVID, err := vpc.NewSwitch(ctx, "defaultc3uVID", &vpc.SwitchArgs{
/// 			VpcId:       defaultEaxcvb.ID(),
/// 			ZoneId:      pulumi.String(zoneId1),
/// 			CidrBlock:   pulumi.String("10.0.0.0/24"),
/// 			VswitchName: pulumi.String("tf-example-vsw1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default7NNxRl, err := ecs.NewSecurityGroup(ctx, "default7NNxRl", &ecs.SecurityGroupArgs{
/// 			Description:       pulumi.String("sg"),
/// 			SecurityGroupName: pulumi.String("sg_name"),
/// 			VpcId:             defaultEaxcvb.ID(),
/// 			SecurityGroupType: pulumi.String("normal"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFormat, err := std.Format(ctx, &std.FormatArgs{
/// 			Input: "%s4",
/// 			Args: []string{
/// 				name,
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultH6McvC, err := ecs.NewInstance(ctx, "defaultH6McvC", &ecs.InstanceArgs{
/// 			VswitchId:               defaultc3uVID.ID(),
/// 			ImageId:                 pulumi.String("aliyun_2_1903_x64_20G_alibase_20231221.vhd"),
/// 			InstanceType:            pulumi.String("ecs.g6.large"),
/// 			SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 			InternetChargeType:      pulumi.String("PayByTraffic"),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 			InstanceName:            pulumi.String(invokeFormat.Result),
/// 			Description:             pulumi.String("tf-example-ecs"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				default7NNxRl.ID(),
/// 			},
/// 			AvailabilityZone:   defaultc3uVID.ZoneId,
/// 			InstanceChargeType: pulumi.String("PostPaid"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = gwlb.NewServerGroup(ctx, "default", &gwlb.ServerGroupArgs{
/// 			DryRun: pulumi.Bool(false),
/// 			Servers: gwlb.ServerGroupServerArray{
/// 				&gwlb.ServerGroupServerArgs{
/// 					ServerId:   defaultH6McvC.ID(),
/// 					ServerType: pulumi.String("Ecs"),
/// 				},
/// 			},
/// 			Scheduler: pulumi.String("5TCH"),
/// 			Protocol:  pulumi.String("GENEVE"),
/// 			ConnectionDrainConfig: &gwlb.ServerGroupConnectionDrainConfigArgs{
/// 				ConnectionDrainEnabled: pulumi.Bool(true),
/// 				ConnectionDrainTimeout: pulumi.Int(1),
/// 			},
/// 			VpcId:           defaultEaxcvb.ID(),
/// 			ServerGroupType: pulumi.String("Instance"),
/// 			ServerGroupName: pulumi.String(name),
/// 			HealthCheckConfig: &gwlb.ServerGroupHealthCheckConfigArgs{
/// 				HealthCheckConnectPort:    pulumi.Int(80),
/// 				HealthCheckEnabled:        pulumi.Bool(true),
/// 				HealthCheckProtocol:       pulumi.String("HTTP"),
/// 				HealthCheckConnectTimeout: pulumi.Int(5),
/// 				HealthCheckDomain:         pulumi.String("www.domain.com"),
/// 				HealthCheckHttpCodes: pulumi.StringArray{
/// 					pulumi.String("http_2xx"),
/// 					pulumi.String("http_3xx"),
/// 					pulumi.String("http_4xx"),
/// 				},
/// 				HealthCheckInterval: pulumi.Int(10),
/// 				HealthCheckPath:     pulumi.String("/health-check"),
/// 				HealthyThreshold:    pulumi.Int(2),
/// 				UnhealthyThreshold:  pulumi.Int(2),
/// 			},
/// 			ResourceGroupId: pulumi.String(_default.Ids[0]),
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
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FormatArgs;
/// import com.pulumi.alicloud.gwlb.ServerGroup;
/// import com.pulumi.alicloud.gwlb.ServerGroupArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupServerArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupConnectionDrainConfigArgs;
/// import com.pulumi.alicloud.gwlb.inputs.ServerGroupHealthCheckConfigArgs;
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
///         final var zoneId1 = config.get("zoneId1").orElse("cn-wulanchabu-b");
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultEaxcvb = new Network("defaultEaxcvb", NetworkArgs.builder()
///             .cidrBlock("10.0.0.0/8")
///             .vpcName("tf-gwlb-vpc")
///             .build());
///
///         var defaultc3uVID = new Switch("defaultc3uVID", SwitchArgs.builder()
///             .vpcId(defaultEaxcvb.id())
///             .zoneId(zoneId1)
///             .cidrBlock("10.0.0.0/24")
///             .vswitchName("tf-example-vsw1")
///             .build());
///
///         var default7NNxRl = new SecurityGroup("default7NNxRl", SecurityGroupArgs.builder()
///             .description("sg")
///             .securityGroupName("sg_name")
///             .vpcId(defaultEaxcvb.id())
///             .securityGroupType("normal")
///             .build());
///
///         var defaultH6McvC = new Instance("defaultH6McvC", InstanceArgs.builder()
///             .vswitchId(defaultc3uVID.id())
///             .imageId("aliyun_2_1903_x64_20G_alibase_20231221.vhd")
///             .instanceType("ecs.g6.large")
///             .systemDiskCategory("cloud_efficiency")
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .instanceName(StdFunctions.format(FormatArgs.builder()
///                 .input("%s4")
///                 .args(name)
///                 .build()).result())
///             .description("tf-example-ecs")
///             .securityGroups(default7NNxRl.id())
///             .availabilityZone(defaultc3uVID.zoneId())
///             .instanceChargeType("PostPaid")
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .dryRun(false)
///             .servers(ServerGroupServerArgs.builder()
///                 .serverId(defaultH6McvC.id())
///                 .serverType("Ecs")
///                 .build())
///             .scheduler("5TCH")
///             .protocol("GENEVE")
///             .connectionDrainConfig(ServerGroupConnectionDrainConfigArgs.builder()
///                 .connectionDrainEnabled(true)
///                 .connectionDrainTimeout(1)
///                 .build())
///             .vpcId(defaultEaxcvb.id())
///             .serverGroupType("Instance")
///             .serverGroupName(name)
///             .healthCheckConfig(ServerGroupHealthCheckConfigArgs.builder()
///                 .healthCheckConnectPort(80)
///                 .healthCheckEnabled(true)
///                 .healthCheckProtocol("HTTP")
///                 .healthCheckConnectTimeout(5)
///                 .healthCheckDomain("www.domain.com")
///                 .healthCheckHttpCodes(
///                     "http_2xx",
///                     "http_3xx",
///                     "http_4xx")
///                 .healthCheckInterval(10)
///                 .healthCheckPath("/health-check")
///                 .healthyThreshold(2)
///                 .unhealthyThreshold(2)
///                 .build())
///             .resourceGroupId(default_.ids()[0])
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
///   zoneId1:
///     type: string
///     default: cn-wulanchabu-b
/// resources:
///   defaultEaxcvb:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 10.0.0.0/8
///       vpcName: tf-gwlb-vpc
///   defaultc3uVID:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultEaxcvb.id}
///       zoneId: ${zoneId1}
///       cidrBlock: 10.0.0.0/24
///       vswitchName: tf-example-vsw1
///   default7NNxRl:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       description: sg
///       securityGroupName: sg_name
///       vpcId: ${defaultEaxcvb.id}
///       securityGroupType: normal
///   defaultH6McvC:
///     type: alicloud:ecs:Instance
///     properties:
///       vswitchId: ${defaultc3uVID.id}
///       imageId: aliyun_2_1903_x64_20G_alibase_20231221.vhd
///       instanceType: ecs.g6.large
///       systemDiskCategory: cloud_efficiency
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: 5
///       instanceName:
///         fn::invoke:
///           function: std:format
///           arguments:
///             input: '%s4'
///             args:
///               - ${name}
///           return: result
///       description: tf-example-ecs
///       securityGroups:
///         - ${default7NNxRl.id}
///       availabilityZone: ${defaultc3uVID.zoneId}
///       instanceChargeType: PostPaid
///   defaultServerGroup:
///     type: alicloud:gwlb:ServerGroup
///     name: default
///     properties:
///       dryRun: 'false'
///       servers:
///         - serverId: ${defaultH6McvC.id}
///           serverType: Ecs
///       scheduler: 5TCH
///       protocol: GENEVE
///       connectionDrainConfig:
///         connectionDrainEnabled: 'true'
///         connectionDrainTimeout: '1'
///       vpcId: ${defaultEaxcvb.id}
///       serverGroupType: Instance
///       serverGroupName: ${name}
///       healthCheckConfig:
///         healthCheckConnectPort: '80'
///         healthCheckEnabled: 'true'
///         healthCheckProtocol: HTTP
///         healthCheckConnectTimeout: '5'
///         healthCheckDomain: www.domain.com
///         healthCheckHttpCodes:
///           - http_2xx
///           - http_3xx
///           - http_4xx
///         healthCheckInterval: '10'
///         healthCheckPath: /health-check
///         healthyThreshold: '2'
///         unhealthyThreshold: '2'
///       resourceGroupId: ${default.ids[0]}
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
/// GWLB Server Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:gwlb/serverGroup:ServerGroup example <id>
/// ```
class ServerGroup extends pulumi.CustomResource {
  /// Connected graceful interrupt configuration. See `connection_drain_config` below.
  late final pulumi.Output<ServerGroupConnectionDrainConfig> connectionDrainConfig;
  /// The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  late final pulumi.Output<String> createTime;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// Health check configurations. See `health_check_config` below.
  late final pulumi.Output<ServerGroupHealthCheckConfig> healthCheckConfig;
  /// The backend protocol. Valid values:
  ///
  /// - `GENEVE`(default)
  late final pulumi.Output<String> protocol;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The scheduling algorithm. Valid values:
  ///
  /// - `5TCH` (default): specifies consistent hashing that is based on the following factors: source IP address, destination IP address, source port, protocol, and destination port. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  /// - `3TCH`: specifies consistent hashing that is based on the following factors: source IP address, destination IP address, and protocol. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  /// - `2TCH`: specifies consistent hashing that is based on the following factors: source IP address and destination IP address. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  late final pulumi.Output<String> scheduler;
  /// The server group name.
  ///
  /// The name must be 2 to 128 characters in length, and can contain digits, periods (.), underscores (\_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String?> serverGroupName;
  /// The type of server group. Valid values:
  ///
  /// - `Instance` (default): allows you to specify servers of the `Ecs`, `Eni`, or `Eci` type.
  /// - `Ip`: allows you to add servers of by specifying IP addresses.
  late final pulumi.Output<String> serverGroupType;
  /// The backend servers that you want to remove.
  ///
  /// &gt; **NOTE:**  You can remove at most 200 backend servers in each call.
  /// See `servers` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> servers;
  /// Indicates the status of the backend server.
  late final pulumi.Output<String> status;
  /// The tag keys.
  ///
  /// You can specify at most 20 tags in each call.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The VPC ID.
  ///
  /// &gt; **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [ServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroup]. {@macro pulumi_gwlb_server_group_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroup(
    String name, {
    ServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gwlb/serverGroup:ServerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionDrainConfig = registerOutput<ServerGroupConnectionDrainConfig>('connectionDrainConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupConnectionDrainConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dryRun = registerOutput<bool?>('dryRun');
    healthCheckConfig = registerOutput<ServerGroupHealthCheckConfig>('healthCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String>('protocol');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String?>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [ServerGroup] resource's state with the given [name] and [id].
  static ServerGroup get(
    String name,
    pulumi.Input<String> id, {
    ServerGroupState? state,
  }) {
    return ServerGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:gwlb/serverGroup:ServerGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    connectionDrainConfig = registerOutput<ServerGroupConnectionDrainConfig>('connectionDrainConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupConnectionDrainConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    dryRun = registerOutput<bool?>('dryRun');
    healthCheckConfig = registerOutput<ServerGroupHealthCheckConfig>('healthCheckConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServerGroupHealthCheckConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    protocol = registerOutput<String>('protocol');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    scheduler = registerOutput<String>('scheduler');
    serverGroupName = registerOutput<String?>('serverGroupName');
    serverGroupType = registerOutput<String>('serverGroupType');
    servers = registerOutput<List<Map<String, dynamic>>?>('servers');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
