import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipv6_egress_rule_args.dart';

/// Provides a VPC Ipv6 Egress Rule resource. IPv6 address addition only active exit rule.
///
/// For information about VPC Ipv6 Egress Rule and how to use it, see [What is Ipv6 Egress Rule](https://www.alibabacloud.com/help/doc-detail/102200.htm).
///
/// > **NOTE:** Available since v1.142.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     systemDiskCategory: "cloud_efficiency",
///     cpuCoreCount: 4,
///     minimumEniIpv6AddressQuantity: 1,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     enableIpv6: true,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
///     ipv6CidrBlockMask: 64,
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     description: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     ipv6AddressCount: 1,
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     systemDiskCategory: "cloud_efficiency",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceName: name,
///     vswitchId: defaultSwitch.id,
///     internetMaxBandwidthOut: 10,
///     securityGroups: [defaultSecurityGroup.id],
/// });
/// const defaultIpv6Gateway = new alicloud.vpc.Ipv6Gateway("default", {
///     ipv6GatewayName: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultGetIpv6Addresses = alicloud.vpc.getIpv6AddressesOutput({
///     associatedInstanceId: defaultInstance.id,
///     status: "Available",
/// });
/// const defaultIpv6InternetBandwidth = new alicloud.vpc.Ipv6InternetBandwidth("default", {
///     ipv6AddressId: defaultGetIpv6Addresses.apply(defaultGetIpv6Addresses => defaultGetIpv6Addresses.addresses?.[0]?.id),
///     ipv6GatewayId: defaultIpv6Gateway.ipv6GatewayId,
///     internetChargeType: "PayByBandwidth",
///     bandwidth: 20,
/// });
/// const defaultIpv6EgressRule = new alicloud.vpc.Ipv6EgressRule("default", {
///     instanceId: defaultIpv6InternetBandwidth.ipv6AddressId,
///     ipv6EgressRuleName: name,
///     description: name,
///     ipv6GatewayId: defaultIpv6InternetBandwidth.ipv6GatewayId,
///     instanceType: "Ipv6Address",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     system_disk_category="cloud_efficiency",
///     cpu_core_count=4,
///     minimum_eni_ipv6_address_quantity=1)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     enable_ipv6=True,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name,
///     ipv6_cidr_block_mask=64)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     description=name,
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     ipv6_address_count=1,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     system_disk_category="cloud_efficiency",
///     image_id=default_get_images.images[0].id,
///     instance_name=name,
///     vswitch_id=default_switch.id,
///     internet_max_bandwidth_out=10,
///     security_groups=[default_security_group.id])
/// default_ipv6_gateway = alicloud.vpc.Ipv6Gateway("default",
///     ipv6_gateway_name=name,
///     vpc_id=default_network.id)
/// default_get_ipv6_addresses = alicloud.vpc.get_ipv6_addresses_output(associated_instance_id=default_instance.id,
///     status="Available")
/// default_ipv6_internet_bandwidth = alicloud.vpc.Ipv6InternetBandwidth("default",
///     ipv6_address_id=default_get_ipv6_addresses.addresses[0].id,
///     ipv6_gateway_id=default_ipv6_gateway.ipv6_gateway_id,
///     internet_charge_type="PayByBandwidth",
///     bandwidth=20)
/// default_ipv6_egress_rule = alicloud.vpc.Ipv6EgressRule("default",
///     instance_id=default_ipv6_internet_bandwidth.ipv6_address_id,
///     ipv6_egress_rule_name=name,
///     description=name,
///     ipv6_gateway_id=default_ipv6_internet_bandwidth.ipv6_gateway_id,
///     instance_type="Ipv6Address")
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         CpuCoreCount = 4,
///         MinimumEniIpv6AddressQuantity = 1,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         EnableIpv6 = true,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///         Ipv6CidrBlockMask = 64,
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         Description = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Ipv6AddressCount = 1,
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         SystemDiskCategory = "cloud_efficiency",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceName = name,
///         VswitchId = defaultSwitch.Id,
///         InternetMaxBandwidthOut = 10,
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///     });
///
///     var defaultIpv6Gateway = new AliCloud.Vpc.Ipv6Gateway("default", new()
///     {
///         Ipv6GatewayName = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultGetIpv6Addresses = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         AssociatedInstanceId = defaultInstance.Id,
///         Status = "Available",
///     });
///
///     var defaultIpv6InternetBandwidth = new AliCloud.Vpc.Ipv6InternetBandwidth("default", new()
///     {
///         Ipv6AddressId = defaultGetIpv6Addresses.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///         Ipv6GatewayId = defaultIpv6Gateway.Ipv6GatewayId,
///         InternetChargeType = "PayByBandwidth",
///         Bandwidth = 20,
///     });
///
///     var defaultIpv6EgressRule = new AliCloud.Vpc.Ipv6EgressRule("default", new()
///     {
///         InstanceId = defaultIpv6InternetBandwidth.Ipv6AddressId,
///         Ipv6EgressRuleName = name,
///         Description = name,
///         Ipv6GatewayId = defaultIpv6InternetBandwidth.Ipv6GatewayId,
///         InstanceType = "Ipv6Address",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone:              pulumi.StringRef(_default.Zones[0].Id),
/// 			SystemDiskCategory:            pulumi.StringRef("cloud_efficiency"),
/// 			CpuCoreCount:                  pulumi.IntRef(4),
/// 			MinimumEniIpv6AddressQuantity: pulumi.IntRef(1),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:    pulumi.String(name),
/// 			EnableIpv6: pulumi.Bool(true),
/// 			CidrBlock:  pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:             defaultNetwork.ID(),
/// 			CidrBlock:         pulumi.String("172.16.0.0/21"),
/// 			ZoneId:            pulumi.String(_default.Zones[0].Id),
/// 			VswitchName:       pulumi.String(name),
/// 			Ipv6CidrBlockMask: pulumi.Int(64),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String(name),
/// 			VpcId:       defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone:        pulumi.String(_default.Zones[0].Id),
/// 			Ipv6AddressCount:        pulumi.Int(1),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 			ImageId:                 pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceName:            pulumi.String(name),
/// 			VswitchId:               defaultSwitch.ID(),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpv6Gateway, err := vpc.NewIpv6Gateway(ctx, "default", &vpc.Ipv6GatewayArgs{
/// 			Ipv6GatewayName: pulumi.String(name),
/// 			VpcId:           defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetIpv6Addresses := vpc.GetIpv6AddressesOutput(ctx, vpc.GetIpv6AddressesOutputArgs{
/// 			AssociatedInstanceId: defaultInstance.ID(),
/// 			Status:               pulumi.String("Available"),
/// 		}, nil)
/// 		defaultIpv6InternetBandwidth, err := vpc.NewIpv6InternetBandwidth(ctx, "default", &vpc.Ipv6InternetBandwidthArgs{
/// 			Ipv6AddressId: pulumi.String(defaultGetIpv6Addresses.ApplyT(func(defaultGetIpv6Addresses vpc.GetIpv6AddressesResult) (*string, error) {
/// 				return &defaultGetIpv6Addresses.Addresses[0].Id, nil
/// 			}).(pulumi.StringPtrOutput)),
/// 			Ipv6GatewayId:      defaultIpv6Gateway.Ipv6GatewayId,
/// 			InternetChargeType: pulumi.String("PayByBandwidth"),
/// 			Bandwidth:          pulumi.Int(20),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewIpv6EgressRule(ctx, "default", &vpc.Ipv6EgressRuleArgs{
/// 			InstanceId:         defaultIpv6InternetBandwidth.Ipv6AddressId,
/// 			Ipv6EgressRuleName: pulumi.String(name),
/// 			Description:        pulumi.String(name),
/// 			Ipv6GatewayId:      defaultIpv6InternetBandwidth.Ipv6GatewayId,
/// 			InstanceType:       pulumi.String("Ipv6Address"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.Ipv6Gateway;
/// import com.pulumi.alicloud.vpc.Ipv6GatewayArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6AddressesArgs;
/// import com.pulumi.alicloud.vpc.Ipv6InternetBandwidth;
/// import com.pulumi.alicloud.vpc.Ipv6InternetBandwidthArgs;
/// import com.pulumi.alicloud.vpc.Ipv6EgressRule;
/// import com.pulumi.alicloud.vpc.Ipv6EgressRuleArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .cpuCoreCount(4)
///             .minimumEniIpv6AddressQuantity(1)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .enableIpv6(true)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .ipv6CidrBlockMask(64)
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .description(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .ipv6AddressCount(1)
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .systemDiskCategory("cloud_efficiency")
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceName(name)
///             .vswitchId(defaultSwitch.id())
///             .internetMaxBandwidthOut(10)
///             .securityGroups(defaultSecurityGroup.id())
///             .build());
///
///         var defaultIpv6Gateway = new Ipv6Gateway("defaultIpv6Gateway", Ipv6GatewayArgs.builder()
///             .ipv6GatewayName(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         final var defaultGetIpv6Addresses = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .associatedInstanceId(defaultInstance.id())
///             .status("Available")
///             .build());
///
///         var defaultIpv6InternetBandwidth = new Ipv6InternetBandwidth("defaultIpv6InternetBandwidth", Ipv6InternetBandwidthArgs.builder()
///             .ipv6AddressId(defaultGetIpv6Addresses.applyValue(_defaultGetIpv6Addresses -> _defaultGetIpv6Addresses.addresses()[0].id()))
///             .ipv6GatewayId(defaultIpv6Gateway.ipv6GatewayId())
///             .internetChargeType("PayByBandwidth")
///             .bandwidth(20)
///             .build());
///
///         var defaultIpv6EgressRule = new Ipv6EgressRule("defaultIpv6EgressRule", Ipv6EgressRuleArgs.builder()
///             .instanceId(defaultIpv6InternetBandwidth.ipv6AddressId())
///             .ipv6EgressRuleName(name)
///             .description(name)
///             .ipv6GatewayId(defaultIpv6InternetBandwidth.ipv6GatewayId())
///             .instanceType("Ipv6Address")
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
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       enableIpv6: 'true'
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///       ipv6CidrBlockMask: '64'
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       description: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       ipv6AddressCount: 1
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       systemDiskCategory: cloud_efficiency
///       imageId: ${defaultGetImages.images[0].id}
///       instanceName: ${name}
///       vswitchId: ${defaultSwitch.id}
///       internetMaxBandwidthOut: 10
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///   defaultIpv6Gateway:
///     type: alicloud:vpc:Ipv6Gateway
///     name: default
///     properties:
///       ipv6GatewayName: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultIpv6InternetBandwidth:
///     type: alicloud:vpc:Ipv6InternetBandwidth
///     name: default
///     properties:
///       ipv6AddressId: ${defaultGetIpv6Addresses.addresses[0].id}
///       ipv6GatewayId: ${defaultIpv6Gateway.ipv6GatewayId}
///       internetChargeType: PayByBandwidth
///       bandwidth: '20'
///   defaultIpv6EgressRule:
///     type: alicloud:vpc:Ipv6EgressRule
///     name: default
///     properties:
///       instanceId: ${defaultIpv6InternetBandwidth.ipv6AddressId}
///       ipv6EgressRuleName: ${name}
///       description: ${name}
///       ipv6GatewayId: ${defaultIpv6InternetBandwidth.ipv6GatewayId}
///       instanceType: Ipv6Address
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         systemDiskCategory: cloud_efficiency
///         cpuCoreCount: 4
///         minimumEniIpv6AddressQuantity: 1
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   defaultGetIpv6Addresses:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Addresses
///       arguments:
///         associatedInstanceId: ${defaultInstance.id}
///         status: Available
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// VPC Ipv6 Egress Rule can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/ipv6EgressRule:Ipv6EgressRule example <ipv6_gateway_id>:<ipv6_egress_rule_id>
/// ```
class Ipv6EgressRule extends pulumi.CustomResource {
  /// The description of the egress-only rule. The description must be `2` to `256` characters in length. It cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The ID of the IPv6 address to which you want to apply the egress-only rule.
  late final pulumi.Output<String> instanceId;
  /// The type of instance to which you want to apply the egress-only rule. Valid values: `Ipv6Address`. `Ipv6Address` (default): an IPv6 address.
  late final pulumi.Output<String> instanceType;
  /// The ID of the IPv6 EgressRule.
  late final pulumi.Output<String> ipv6EgressRuleId;
  /// The name of the egress-only rule. The name must be `2` to `128` characters in length, and can contain letters, digits, underscores (_), and hyphens (-). The name must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> ipv6EgressRuleName;
  /// The ID of the IPv6 gateway.
  late final pulumi.Output<String> ipv6GatewayId;
  /// The status of the resource.
  late final pulumi.Output<String> status;

  /// Creates a new [Ipv6EgressRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Ipv6EgressRule]. {@macro pulumi_vpc_ipv6_egress_rule_ipv6_egress_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Ipv6EgressRule(
    String name, {
    Ipv6EgressRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/ipv6EgressRule:Ipv6EgressRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.instanceId = registerOutput<String>('instanceId');
    this.instanceType = registerOutput<String>('instanceType');
    this.ipv6EgressRuleId = registerOutput<String>('ipv6EgressRuleId');
    this.ipv6EgressRuleName = registerOutput<String?>('ipv6EgressRuleName');
    this.ipv6GatewayId = registerOutput<String>('ipv6GatewayId');
    this.status = registerOutput<String>('status');
  }
}
