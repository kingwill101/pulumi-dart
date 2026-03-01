import 'package:pulumi/pulumi.dart' as pulumi;
import 'loadbalancer_common_bandwidth_package_attachment_args.dart';
import 'loadbalancer_common_bandwidth_package_attachment_state.dart';

/// Provides a NLB Loadbalancer Common Bandwidth Package Attachment resource.
///
/// Bandwidth Package Operation.
///
/// For information about NLB Loadbalancer Common Bandwidth Package Attachment and how to use it, see [What is Loadbalancer Common Bandwidth Package Attachment](https://www.alibabacloud.com/help/en/server-load-balancer/latest/nlb-instances-change).
///
/// > **NOTE:** Available since v1.209.0.
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
/// const defaultCommonBandwithPackage = new alicloud.vpc.CommonBandwithPackage("default", {
///     bandwidth: "2",
///     internetChargeType: "PayByTraffic",
///     bandwidthPackageName: name,
///     description: name,
/// });
/// const defaultLoadbalancerCommonBandwidthPackageAttachment = new alicloud.nlb.LoadbalancerCommonBandwidthPackageAttachment("default", {
///     bandwidthPackageId: defaultCommonBandwithPackage.id,
///     loadBalancerId: defaultLoadBalancer.id,
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
/// default_common_bandwith_package = alicloud.vpc.CommonBandwithPackage("default",
///     bandwidth="2",
///     internet_charge_type="PayByTraffic",
///     bandwidth_package_name=name,
///     description=name)
/// default_loadbalancer_common_bandwidth_package_attachment = alicloud.nlb.LoadbalancerCommonBandwidthPackageAttachment("default",
///     bandwidth_package_id=default_common_bandwith_package.id,
///     load_balancer_id=default_load_balancer.id)
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
///     var defaultCommonBandwithPackage = new AliCloud.Vpc.CommonBandwithPackage("default", new()
///     {
///         Bandwidth = "2",
///         InternetChargeType = "PayByTraffic",
///         BandwidthPackageName = name,
///         Description = name,
///     });
///
///     var defaultLoadbalancerCommonBandwidthPackageAttachment = new AliCloud.Nlb.LoadbalancerCommonBandwidthPackageAttachment("default", new()
///     {
///         BandwidthPackageId = defaultCommonBandwithPackage.Id,
///         LoadBalancerId = defaultLoadBalancer.Id,
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
/// 		defaultCommonBandwithPackage, err := vpc.NewCommonBandwithPackage(ctx, "default", &vpc.CommonBandwithPackageArgs{
/// 			Bandwidth:            pulumi.String("2"),
/// 			InternetChargeType:   pulumi.String("PayByTraffic"),
/// 			BandwidthPackageName: pulumi.String(name),
/// 			Description:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = nlb.NewLoadbalancerCommonBandwidthPackageAttachment(ctx, "default", &nlb.LoadbalancerCommonBandwidthPackageAttachmentArgs{
/// 			BandwidthPackageId: defaultCommonBandwithPackage.ID(),
/// 			LoadBalancerId:     defaultLoadBalancer.ID(),
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
/// import com.pulumi.alicloud.vpc.CommonBandwithPackage;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageArgs;
/// import com.pulumi.alicloud.nlb.LoadbalancerCommonBandwidthPackageAttachment;
/// import com.pulumi.alicloud.nlb.LoadbalancerCommonBandwidthPackageAttachmentArgs;
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
///         var defaultCommonBandwithPackage = new CommonBandwithPackage("defaultCommonBandwithPackage", CommonBandwithPackageArgs.builder()
///             .bandwidth("2")
///             .internetChargeType("PayByTraffic")
///             .bandwidthPackageName(name)
///             .description(name)
///             .build());
///
///         var defaultLoadbalancerCommonBandwidthPackageAttachment = new LoadbalancerCommonBandwidthPackageAttachment("defaultLoadbalancerCommonBandwidthPackageAttachment", LoadbalancerCommonBandwidthPackageAttachmentArgs.builder()
///             .bandwidthPackageId(defaultCommonBandwithPackage.id())
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
///   defaultCommonBandwithPackage:
///     type: alicloud:vpc:CommonBandwithPackage
///     name: default
///     properties:
///       bandwidth: 2
///       internetChargeType: PayByTraffic
///       bandwidthPackageName: ${name}
///       description: ${name}
///   defaultLoadbalancerCommonBandwidthPackageAttachment:
///     type: alicloud:nlb:LoadbalancerCommonBandwidthPackageAttachment
///     name: default
///     properties:
///       bandwidthPackageId: ${defaultCommonBandwithPackage.id}
///       loadBalancerId: ${defaultLoadBalancer.id}
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
/// NLB Loadbalancer Common Bandwidth Package Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:nlb/loadbalancerCommonBandwidthPackageAttachment:LoadbalancerCommonBandwidthPackageAttachment example <load_balancer_id>:<bandwidth_package_id>
/// ```
class LoadbalancerCommonBandwidthPackageAttachment extends pulumi.CustomResource {
  /// Specifies whether only to precheck the request. Valid values:
  late final pulumi.Output<String> bandwidthPackageId;
  /// The ID of the EIP bandwidth plan.
  late final pulumi.Output<String> loadBalancerId;
  /// Network-based load balancing instance status. Value:, indicating that the instance listener will no longer forward traffic.
  late final pulumi.Output<String> status;

  /// Creates a new [LoadbalancerCommonBandwidthPackageAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadbalancerCommonBandwidthPackageAttachment]. {@macro pulumi_nlb_loadbalancer_common_bandwidth_package_attachment_loadbalancer_common_bandwidth_package_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadbalancerCommonBandwidthPackageAttachment(
    String name, {
    LoadbalancerCommonBandwidthPackageAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/loadbalancerCommonBandwidthPackageAttachment:LoadbalancerCommonBandwidthPackageAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.status = registerOutput<String>('status');
  }

  /// Gets an existing [LoadbalancerCommonBandwidthPackageAttachment] resource's state with the given [name] and [id].
  static LoadbalancerCommonBandwidthPackageAttachment get(
    String name,
    pulumi.Input<String> id, {
    LoadbalancerCommonBandwidthPackageAttachmentState? state,
  }) {
    return LoadbalancerCommonBandwidthPackageAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LoadbalancerCommonBandwidthPackageAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:nlb/loadbalancerCommonBandwidthPackageAttachment:LoadbalancerCommonBandwidthPackageAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthPackageId = registerOutput<String>('bandwidthPackageId');
    this.loadBalancerId = registerOutput<String>('loadBalancerId');
    this.status = registerOutput<String>('status');
  }
}
