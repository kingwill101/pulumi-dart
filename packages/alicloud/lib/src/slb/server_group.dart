import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_args.dart';
import 'server_group_server.dart';

/// Provides a Load Balancer Virtual Backend Server Group resource.
///
/// For information about Load Balancer Virtual Backend Server Group and how to use it, see [What is Virtual Backend Server Group](https://www.alibabacloud.com/help/en/doc-detail/35215.html).
///
/// > **NOTE:** Available since v1.6.0.
///
/// > **NOTE:** One ECS instance can be added into multiple virtual server groups.
///
/// > **NOTE:** One virtual server group can be attached with multiple listeners in one load balancer.
///
/// > **NOTE:** One Classic and Internet load balancer, its virtual server group can add Classic and VPC ECS instances.
///
/// > **NOTE:** One Classic and Intranet load balancer, its virtual server group can only add Classic ECS instances.
///
/// > **NOTE:** One VPC load balancer, its virtual server group can only add the same VPC ECS instances.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/16",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/16",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     loadBalancerName: name,
///     vswitchId: defaultSwitch.id,
///     loadBalancerSpec: "slb.s2.small",
/// });
/// const defaultServerGroup = new alicloud.slb.ServerGroup("default", {
///     loadBalancerId: defaultApplicationLoadBalancer.id,
///     name: name,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/16")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/16",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     load_balancer_name=name,
///     vswitch_id=default_switch.id,
///     load_balancer_spec="slb.s2.small")
/// default_server_group = alicloud.slb.ServerGroup("default",
///     load_balancer_id=default_application_load_balancer.id,
///     name=name)
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
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/16",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/16",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerSpec = "slb.s2.small",
///     });
///
///     var defaultServerGroup = new AliCloud.Slb.ServerGroup("default", new()
///     {
///         LoadBalancerId = defaultApplicationLoadBalancer.Id,
///         Name = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/16"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewServerGroup(ctx, "default", &slb.ServerGroupArgs{
/// 			LoadBalancerId: defaultApplicationLoadBalancer.ID(),
/// 			Name:           pulumi.String(name),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.slb.ServerGroup;
/// import com.pulumi.alicloud.slb.ServerGroupArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/16")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/16")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerSpec("slb.s2.small")
///             .build());
///
///         var defaultServerGroup = new ServerGroup("defaultServerGroup", ServerGroupArgs.builder()
///             .loadBalancerId(defaultApplicationLoadBalancer.id())
///             .name(name)
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
///       cidrBlock: 172.16.0.0/16
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/16
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerSpec: slb.s2.small
///   defaultServerGroup:
///     type: alicloud:slb:ServerGroup
///     name: default
///     properties:
///       loadBalancerId: ${defaultApplicationLoadBalancer.id}
///       name: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Load Balancer Virtual Backend Server Group can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/serverGroup:ServerGroup example <id>
/// ```
class ServerGroup extends pulumi.CustomResource {
  /// Checking DeleteProtection of SLB instance before deleting. Default value: `false`. If `delete_protection_validation` is set to `true`, this resource will not be deleted when its SLB instance enabled DeleteProtection.
  late final pulumi.Output<bool?> deleteProtectionValidation;
  /// The ID of the Server Load Balancer (SLB) instance.
  late final pulumi.Output<String> loadBalancerId;
  /// The name of the vServer group. Default value: `tf-server-group`.
  late final pulumi.Output<String> name;
  /// The list of backend servers to be added. See `servers` below.
  /// > **NOTE:** Field `servers` has been deprecated from provider version 1.163.0, and it will be removed in the future version. Please use the new resource `alicloud.slb.ServerGroupServerAttachment`.
  late final pulumi.Output<List<ServerGroupServer>> servers;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ServerGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerGroup]. {@macro pulumi_slb_server_group_server_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerGroup(
    String name, {
    ServerGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/serverGroup:ServerGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteProtectionValidation = registerOutput<bool?>('deleteProtectionValidation');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.name = registerOutput<String>('name');
    this.servers = registerOutput<List<ServerGroupServer>>('servers');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
