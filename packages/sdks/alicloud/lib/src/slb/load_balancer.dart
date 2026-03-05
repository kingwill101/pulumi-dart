import 'package:pulumi/pulumi.dart' as pulumi;
import 'load_balancer_args.dart';
import 'load_balancer_state.dart';

/// &gt; **NOTE:** Deprecated since v1.123.1.
///
/// &gt; **DEPRECATED:** This resource has been renamed to alicloud.slb.ApplicationLoadBalancer from version 1.123.1.
///
/// Provides an Application Load Balancer resource.
///
/// &gt; **NOTE:** At present, to avoid some unnecessary regulation confusion, SLB can not support alicloud international account to create "paybybandwidth" instance.
///
/// &gt; **NOTE:** The supported specifications vary by region. Currently not all regions support guaranteed-performance instances.
/// For more details about guaranteed-performance instance, see [Guaranteed-performance instances](https://www.alibabacloud.com/help/en/slb/classic-load-balancer/developer-reference/api-createloadbalancer-2#t4182.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraformslbconfig";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultLoadBalancer = new alicloud.slb.LoadBalancer("default", {
///     loadBalancerName: name,
///     loadBalancerSpec: "slb.s2.small",
///     vswitchId: defaultSwitch.id,
///     tags: {
///         tag_a: "1",
///         tag_b: "2",
///         tag_c: "3",
///         tag_d: "4",
///         tag_e: "5",
///         tag_f: "6",
///         tag_g: "7",
///         tag_h: "8",
///         tag_i: "9",
///         tag_j: "10",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraformslbconfig"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_load_balancer = alicloud.slb.LoadBalancer("default",
///     load_balancer_name=name,
///     load_balancer_spec="slb.s2.small",
///     vswitch_id=default_switch.id,
///     tags={
///         "tag_a": "1",
///         "tag_b": "2",
///         "tag_c": "3",
///         "tag_d": "4",
///         "tag_e": "5",
///         "tag_f": "6",
///         "tag_g": "7",
///         "tag_h": "8",
///         "tag_i": "9",
///         "tag_j": "10",
///     })
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
///     var name = config.Get("name") ?? "terraformslbconfig";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultLoadBalancer = new AliCloud.Slb.LoadBalancer("default", new()
///     {
///         LoadBalancerName = name,
///         LoadBalancerSpec = "slb.s2.small",
///         VswitchId = defaultSwitch.Id,
///         Tags =
///         {
///             { "tag_a", "1" },
///             { "tag_b", "2" },
///             { "tag_c", "3" },
///             { "tag_d", "4" },
///             { "tag_e", "5" },
///             { "tag_f", "6" },
///             { "tag_g", "7" },
///             { "tag_h", "8" },
///             { "tag_i", "9" },
///             { "tag_j", "10" },
///         },
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
/// 		name := "terraformslbconfig"
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
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = slb.NewLoadBalancer(ctx, "default", &slb.LoadBalancerArgs{
/// 			LoadBalancerName: pulumi.String(name),
/// 			LoadBalancerSpec: pulumi.String("slb.s2.small"),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"tag_a": pulumi.String("1"),
/// 				"tag_b": pulumi.String("2"),
/// 				"tag_c": pulumi.String("3"),
/// 				"tag_d": pulumi.String("4"),
/// 				"tag_e": pulumi.String("5"),
/// 				"tag_f": pulumi.String("6"),
/// 				"tag_g": pulumi.String("7"),
/// 				"tag_h": pulumi.String("8"),
/// 				"tag_i": pulumi.String("9"),
/// 				"tag_j": pulumi.String("10"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.LoadBalancer;
/// import com.pulumi.alicloud.slb.LoadBalancerArgs;
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
///         final var name = config.get("name").orElse("terraformslbconfig");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultLoadBalancer = new LoadBalancer("defaultLoadBalancer", LoadBalancerArgs.builder()
///             .loadBalancerName(name)
///             .loadBalancerSpec("slb.s2.small")
///             .vswitchId(defaultSwitch.id())
///             .tags(Map.ofEntries(
///                 Map.entry("tag_a", "1"),
///                 Map.entry("tag_b", "2"),
///                 Map.entry("tag_c", "3"),
///                 Map.entry("tag_d", "4"),
///                 Map.entry("tag_e", "5"),
///                 Map.entry("tag_f", "6"),
///                 Map.entry("tag_g", "7"),
///                 Map.entry("tag_h", "8"),
///                 Map.entry("tag_i", "9"),
///                 Map.entry("tag_j", "10")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraformslbconfig
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultLoadBalancer:
///     type: alicloud:slb:LoadBalancer
///     name: default
///     properties:
///       loadBalancerName: ${name}
///       loadBalancerSpec: slb.s2.small
///       vswitchId: ${defaultSwitch.id}
///       tags:
///         tag_a: 1
///         tag_b: 2
///         tag_c: 3
///         tag_d: 4
///         tag_e: 5
///         tag_f: 6
///         tag_g: 7
///         tag_h: 8
///         tag_i: 9
///         tag_j: 10
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
/// Load balancer can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:slb/loadBalancer:LoadBalancer example lb-abc123456
/// ```
class LoadBalancer extends pulumi.CustomResource {
  /// Specify the IP address of the private network for the SLB instance, which must be in the destination CIDR block of the correspond ing switch.
  late final pulumi.Output<String> address;
  /// The IP version of the SLB instance to be created, which can be set to ipv4 or ipv6 . Default to "ipv4". Now, only internet instance support ipv6 address.
  late final pulumi.Output<String?> addressIpVersion;
  /// The network type of the SLB instance. Valid values: ["internet", "intranet"]. If load balancer launched in VPC, this value must be "intranet".
  /// - internet: After an Internet SLB instance is created, the system allocates a public IP address so that the instance can forward requests from the Internet.
  /// - intranet: After an intranet SLB instance is created, the system allocates an intranet IP address so that the instance can only forward intranet requests.
  late final pulumi.Output<String> addressType;
  /// Valid
  /// value is between 1 and 1000, If argument "internet_charge_type" is "paybytraffic", then this value will be ignore.
  late final pulumi.Output<int?> bandwidth;
  /// Whether enable the deletion protection or not. on: Enable deletion protection. off: Disable deletion protection. Default to off. Only postpaid instance support this function.
  late final pulumi.Output<String?> deleteProtection;
  /// The billing method of the load balancer. Valid values are "PrePaid" and "PostPaid". Default to "PostPaid".
  late final pulumi.Output<String> instanceChargeType;
  /// Valid
  /// values are `PayByBandwidth`, `PayByTraffic`. If this value is "PayByBandwidth", then argument "internet" must be "true". Default is "PayByTraffic". If load balancer launched in VPC, this value must be "PayByTraffic".
  /// Before version 1.10.1, the valid values are "paybybandwidth" and "paybytraffic".
  late final pulumi.Output<String?> internetChargeType;
  late final pulumi.Output<String> loadBalancerName;
  /// The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance. Launching "Performance-guaranteed" instance, it must be specified. Valid values: `slb.s1.small`, `slb.s2.small`, `slb.s2.medium`.
  late final pulumi.Output<String> loadBalancerSpec;
  /// The primary zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  late final pulumi.Output<String> masterZoneId;
  /// The reason of modification protection. It's effective when `modification_protection_status` is `ConsoleProtection`.
  late final pulumi.Output<String?> modificationProtectionReason;
  /// The status of modification protection. Valid values: `ConsoleProtection` and `NonProtection`. Default value: `NonProtection`.
  late final pulumi.Output<String> modificationProtectionStatus;
  /// Field `name` has been deprecated from provider version 1.123.1 New field `load_balancer_name` instead.
  late final pulumi.Output<String> name;
  /// The billing method of the load balancer. Valid values are `PayAsYouGo` and `Subscription`. Default to `PayAsYouGo`.
  late final pulumi.Output<String> paymentType;
  /// The duration that you will buy the resource, in month. It is valid when `instance_charge_type` is `PrePaid`. Valid values: [1-9, 12, 24, 36].
  /// &gt; **NOTE:** The attribute `period` is only used to create Subscription instance or modify the PayAsYouGo instance to Subscription. Once effect, it will not be modified that means running `pulumi up` will not effect the resource.
  late final pulumi.Output<int?> period;
  /// The Id of resource group which the SLB belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The standby zone ID of the SLB instance. If not specified, the system will be randomly assigned. You can query the primary and standby zones in a region by calling the DescribeZone API.
  late final pulumi.Output<String> slaveZoneId;
  /// The specification of the Server Load Balancer instance. Default to empty string indicating it is "Shared-Performance" instance.
  /// Launching "[Performance-guaranteed](https://www.alibabacloud.com/help/en/slb/product-overview/announcements-and-updates)" instance, it is must be specified and it valid values are: "slb.s1.small", "slb.s2.small", "slb.s2.medium",
  /// "slb.s3.small", "slb.s3.medium", "slb.s3.large" and "slb.s4.large".
  late final pulumi.Output<String> specification;
  /// The status of slb load balancer. Valid values: `active` and `inactice`. The system default value is `active`.
  ///
  /// &gt; **NOTE:** A "Shared-Performance" instance can be changed to "Performance-guaranteed", but the change is irreversible.
  ///
  /// &gt; **NOTE:** To change a "Shared-Performance" instance to a "Performance-guaranteed" instance, the SLB will have a short probability of business interruption (10 seconds-30 seconds). Advise to change it during the business downturn, or migrate business to other SLB Instances by using GSLB before changing.
  ///
  /// &gt; **NOTE:** Currently, the alibaba cloud international account does not support creating a PrePaid SLB instance.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource. The `tags` can have a maximum of 10 tag for every load balancer instance.
  late final pulumi.Output<Map<String, String>> tags;
  /// The vSwitch ID to launch in. If `address_type` is internet, it will be ignore.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [LoadBalancer].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LoadBalancer]. {@macro pulumi_slb_load_balancer_load_balancer_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LoadBalancer(
    String name, {
    LoadBalancerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:slb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    addressIpVersion = registerOutput<String?>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidth = registerOutput<int?>('bandwidth');
    deleteProtection = registerOutput<String?>('deleteProtection');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    loadBalancerName = registerOutput<String>('loadBalancerName');
    loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    masterZoneId = registerOutput<String>('masterZoneId');
    modificationProtectionReason = registerOutput<String?>('modificationProtectionReason');
    modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    slaveZoneId = registerOutput<String>('slaveZoneId');
    specification = registerOutput<String>('specification');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>>('tags');
    vswitchId = registerOutput<String?>('vswitchId');
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
          'alicloud:slb/loadBalancer:LoadBalancer',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    address = registerOutput<String>('address');
    addressIpVersion = registerOutput<String?>('addressIpVersion');
    addressType = registerOutput<String>('addressType');
    bandwidth = registerOutput<int?>('bandwidth');
    deleteProtection = registerOutput<String?>('deleteProtection');
    instanceChargeType = registerOutput<String>('instanceChargeType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    loadBalancerName = registerOutput<String>('loadBalancerName');
    loadBalancerSpec = registerOutput<String>('loadBalancerSpec');
    masterZoneId = registerOutput<String>('masterZoneId');
    modificationProtectionReason = registerOutput<String?>('modificationProtectionReason');
    modificationProtectionStatus = registerOutput<String>('modificationProtectionStatus');
    this.name = registerOutput<String>('name');
    paymentType = registerOutput<String>('paymentType');
    period = registerOutput<int?>('period');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    slaveZoneId = registerOutput<String>('slaveZoneId');
    specification = registerOutput<String>('specification');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>>('tags');
    vswitchId = registerOutput<String?>('vswitchId');
  }
}
