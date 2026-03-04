import 'package:pulumi/pulumi.dart' as pulumi;
import 'anycast_eip_address_attachment_args.dart';
import 'anycast_eip_address_attachment_state.dart';

/// Provides a Eipanycast Anycast Eip Address Attachment resource.
///
/// For information about Eipanycast Anycast Eip Address Attachment and how to use it, see [What is Anycast Eip Address Attachment](https://www.alibabacloud.com/help/en/anycast-eip/latest/api-eipanycast-2020-03-09-associateanycasteipaddress).
///
/// &gt; **NOTE:** Available since v1.113.0.
///
/// &gt; **NOTE:** The following regions support currently while Slb instance support bound.
/// [eu-west-1-gb33-a01,cn-hongkong-am4-c04,ap-southeast-os30-a01,us-west-ot7-a01,ap-south-in73-a01,ap-southeast-my88-a01]
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
/// const _default = alicloud.slb.getZones({
///     availableSlbAddressType: "vpc",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultApplicationLoadBalancer = new alicloud.slb.ApplicationLoadBalancer("default", {
///     addressType: "intranet",
///     vswitchId: defaultSwitch.id,
///     loadBalancerName: name,
///     loadBalancerSpec: "slb.s1.small",
///     masterZoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultAnycastEipAddress = new alicloud.eipanycast.AnycastEipAddress("default", {
///     anycastEipAddressName: name,
///     serviceLocation: "ChineseMainland",
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultAnycastEipAddressAttachment = new alicloud.eipanycast.AnycastEipAddressAttachment("default", {
///     bindInstanceId: defaultApplicationLoadBalancer.id,
///     bindInstanceType: "SlbInstance",
///     bindInstanceRegionId: defaultGetRegions.then(defaultGetRegions => defaultGetRegions.regions?.[0]?.id),
///     anycastId: defaultAnycastEipAddress.id,
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
/// default = alicloud.slb.get_zones(available_slb_address_type="vpc")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_application_load_balancer = alicloud.slb.ApplicationLoadBalancer("default",
///     address_type="intranet",
///     vswitch_id=default_switch.id,
///     load_balancer_name=name,
///     load_balancer_spec="slb.s1.small",
///     master_zone_id=default.zones[0].id)
/// default_anycast_eip_address = alicloud.eipanycast.AnycastEipAddress("default",
///     anycast_eip_address_name=name,
///     service_location="ChineseMainland")
/// default_get_regions = alicloud.get_regions(current=True)
/// default_anycast_eip_address_attachment = alicloud.eipanycast.AnycastEipAddressAttachment("default",
///     bind_instance_id=default_application_load_balancer.id,
///     bind_instance_type="SlbInstance",
///     bind_instance_region_id=default_get_regions.regions[0].id,
///     anycast_id=default_anycast_eip_address.id)
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
///     var @default = AliCloud.Slb.GetZones.Invoke(new()
///     {
///         AvailableSlbAddressType = "vpc",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.1.0.0/16",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultApplicationLoadBalancer = new AliCloud.Slb.ApplicationLoadBalancer("default", new()
///     {
///         AddressType = "intranet",
///         VswitchId = defaultSwitch.Id,
///         LoadBalancerName = name,
///         LoadBalancerSpec = "slb.s1.small",
///         MasterZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultAnycastEipAddress = new AliCloud.EipAnycast.AnycastEipAddress("default", new()
///     {
///         AnycastEipAddressName = name,
///         ServiceLocation = "ChineseMainland",
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultAnycastEipAddressAttachment = new AliCloud.EipAnycast.AnycastEipAddressAttachment("default", new()
///     {
///         BindInstanceId = defaultApplicationLoadBalancer.Id,
///         BindInstanceType = "SlbInstance",
///         BindInstanceRegionId = defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id),
///         AnycastId = defaultAnycastEipAddress.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eipanycast"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/slb"
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
/// 		_default, err := slb.GetZones(ctx, &slb.GetZonesArgs{
/// 			AvailableSlbAddressType: pulumi.StringRef("vpc"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.1.0.0/16"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultApplicationLoadBalancer, err := slb.NewApplicationLoadBalancer(ctx, "default", &slb.ApplicationLoadBalancerArgs{
/// 			AddressType:      pulumi.String("intranet"),
/// 			VswitchId:        defaultSwitch.ID(),
/// 			LoadBalancerName: pulumi.String(name),
/// 			LoadBalancerSpec: pulumi.String("slb.s1.small"),
/// 			MasterZoneId:     pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultAnycastEipAddress, err := eipanycast.NewAnycastEipAddress(ctx, "default", &eipanycast.AnycastEipAddressArgs{
/// 			AnycastEipAddressName: pulumi.String(name),
/// 			ServiceLocation:       pulumi.String("ChineseMainland"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetRegions, err := alicloud.GetRegions(ctx, &alicloud.GetRegionsArgs{
/// 			Current: pulumi.BoolRef(true),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eipanycast.NewAnycastEipAddressAttachment(ctx, "default", &eipanycast.AnycastEipAddressAttachmentArgs{
/// 			BindInstanceId:       defaultApplicationLoadBalancer.ID(),
/// 			BindInstanceType:     pulumi.String("SlbInstance"),
/// 			BindInstanceRegionId: pulumi.String(defaultGetRegions.Regions[0].Id),
/// 			AnycastId:            defaultAnycastEipAddress.ID(),
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
/// import com.pulumi.alicloud.slb.SlbFunctions;
/// import com.pulumi.alicloud.slb.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancer;
/// import com.pulumi.alicloud.slb.ApplicationLoadBalancerArgs;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddress;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressAttachment;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressAttachmentArgs;
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
///         final var default = SlbFunctions.getZones(GetZonesArgs.builder()
///             .availableSlbAddressType("vpc")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.1.0.0/16")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultApplicationLoadBalancer = new ApplicationLoadBalancer("defaultApplicationLoadBalancer", ApplicationLoadBalancerArgs.builder()
///             .addressType("intranet")
///             .vswitchId(defaultSwitch.id())
///             .loadBalancerName(name)
///             .loadBalancerSpec("slb.s1.small")
///             .masterZoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultAnycastEipAddress = new AnycastEipAddress("defaultAnycastEipAddress", AnycastEipAddressArgs.builder()
///             .anycastEipAddressName(name)
///             .serviceLocation("ChineseMainland")
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultAnycastEipAddressAttachment = new AnycastEipAddressAttachment("defaultAnycastEipAddressAttachment", AnycastEipAddressAttachmentArgs.builder()
///             .bindInstanceId(defaultApplicationLoadBalancer.id())
///             .bindInstanceType("SlbInstance")
///             .bindInstanceRegionId(defaultGetRegions.regions()[0].id())
///             .anycastId(defaultAnycastEipAddress.id())
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
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultApplicationLoadBalancer:
///     type: alicloud:slb:ApplicationLoadBalancer
///     name: default
///     properties:
///       addressType: intranet
///       vswitchId: ${defaultSwitch.id}
///       loadBalancerName: ${name}
///       loadBalancerSpec: slb.s1.small
///       masterZoneId: ${default.zones[0].id}
///   defaultAnycastEipAddress:
///     type: alicloud:eipanycast:AnycastEipAddress
///     name: default
///     properties:
///       anycastEipAddressName: ${name}
///       serviceLocation: ChineseMainland
///   defaultAnycastEipAddressAttachment:
///     type: alicloud:eipanycast:AnycastEipAddressAttachment
///     name: default
///     properties:
///       bindInstanceId: ${defaultApplicationLoadBalancer.id}
///       bindInstanceType: SlbInstance
///       bindInstanceRegionId: ${defaultGetRegions.regions[0].id}
///       anycastId: ${defaultAnycastEipAddress.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:slb:getZones
///       arguments:
///         availableSlbAddressType: vpc
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// Multiple Usage
///
/// &gt; **NOTE:**  Anycast EIP supports binding cloud resource instances in multiple regions. Only one cloud resource instance is supported as the default origin station, and the rest are normal origin stations. When no access point is specified or an access point is added, the access request is forwarded to the default origin by default.  If you are bound for the first time, the Default value of the binding mode is **Default * *. /li&gt; li&gt; If you are not binding for the first time, you can set the binding mode to **Default**, and the new Default origin will take effect. The original Default origin will be changed to a common origin.
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
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultVsw = new alicloud.vpc.Switch("defaultVsw", {
///     vpcId: defaultVpc.id,
///     cidrBlock: "192.168.0.0/24",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultuBsECI = new alicloud.ecs.SecurityGroup("defaultuBsECI", {vpcId: defaultVpc.id});
/// const default9KDlN7 = new alicloud.ecs.Instance("default9KDlN7", {
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     instanceName: name,
///     securityGroups: [defaultuBsECI.id],
///     availabilityZone: defaultVsw.zoneId,
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultVsw.id,
/// });
/// const defaultXkpFRs = new alicloud.eipanycast.AnycastEipAddress("defaultXkpFRs", {serviceLocation: "ChineseMainland"});
/// const defaultVpc2 = new alicloud.vpc.Network("defaultVpc2", {
///     vpcName: `${name}6`,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const default2 = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const default2GetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const default2GetInstanceTypes = default2.then(default2 => alicloud.ecs.getInstanceTypes({
///     availabilityZone: default2.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultdsVsw2 = new alicloud.vpc.Switch("defaultdsVsw2", {
///     vpcId: defaultVpc2.id,
///     cidrBlock: "192.168.0.0/24",
///     zoneId: default2.then(default2 => default2.zones?.[1]?.id),
/// });
/// const defaultuBsECI2 = new alicloud.ecs.SecurityGroup("defaultuBsECI2", {vpcId: defaultVpc2.id});
/// const defaultEcs2 = new alicloud.ecs.Instance("defaultEcs2", {
///     imageId: default2GetImages.then(default2GetImages => default2GetImages.images?.[0]?.id),
///     instanceType: default2GetInstanceTypes.then(default2GetInstanceTypes => default2GetInstanceTypes.instanceTypes?.[0]?.id),
///     instanceName: name,
///     securityGroups: [defaultuBsECI2.id],
///     availabilityZone: defaultdsVsw2.zoneId,
///     instanceChargeType: "PostPaid",
///     systemDiskCategory: "cloud_efficiency",
///     vswitchId: defaultdsVsw2.id,
/// });
/// const defaultEfYBJY = new alicloud.eipanycast.AnycastEipAddressAttachment("defaultEfYBJY", {
///     bindInstanceId: default9KDlN7.networkInterfaceId,
///     bindInstanceType: "NetworkInterface",
///     bindInstanceRegionId: "cn-beijing",
///     anycastId: defaultXkpFRs.id,
///     associationMode: "Default",
/// });
/// const normal = new alicloud.eipanycast.AnycastEipAddressAttachment("normal", {
///     bindInstanceId: defaultEcs2.networkInterfaceId,
///     bindInstanceType: "NetworkInterface",
///     bindInstanceRegionId: "cn-hangzhou",
///     anycastId: defaultEfYBJY.anycastId,
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
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_vpc = alicloud.vpc.Network("defaultVpc",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_vsw = alicloud.vpc.Switch("defaultVsw",
///     vpc_id=default_vpc.id,
///     cidr_block="192.168.0.0/24",
///     zone_id=default.zones[0].id)
/// defaultu_bs_eci = alicloud.ecs.SecurityGroup("defaultuBsECI", vpc_id=default_vpc.id)
/// default9_k_dl_n7 = alicloud.ecs.Instance("default9KDlN7",
///     image_id=default_get_images.images[0].id,
///     instance_type=default_get_instance_types.instance_types[0].id,
///     instance_name=name,
///     security_groups=[defaultu_bs_eci.id],
///     availability_zone=default_vsw.zone_id,
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=default_vsw.id)
/// default_xkp_frs = alicloud.eipanycast.AnycastEipAddress("defaultXkpFRs", service_location="ChineseMainland")
/// default_vpc2 = alicloud.vpc.Network("defaultVpc2",
///     vpc_name=f"{name}6",
///     cidr_block="192.168.0.0/16")
/// default2 = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default2_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default2_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default2.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// defaultds_vsw2 = alicloud.vpc.Switch("defaultdsVsw2",
///     vpc_id=default_vpc2.id,
///     cidr_block="192.168.0.0/24",
///     zone_id=default2.zones[1].id)
/// defaultu_bs_eci2 = alicloud.ecs.SecurityGroup("defaultuBsECI2", vpc_id=default_vpc2.id)
/// default_ecs2 = alicloud.ecs.Instance("defaultEcs2",
///     image_id=default2_get_images.images[0].id,
///     instance_type=default2_get_instance_types.instance_types[0].id,
///     instance_name=name,
///     security_groups=[defaultu_bs_eci2.id],
///     availability_zone=defaultds_vsw2.zone_id,
///     instance_charge_type="PostPaid",
///     system_disk_category="cloud_efficiency",
///     vswitch_id=defaultds_vsw2.id)
/// default_ef_ybjy = alicloud.eipanycast.AnycastEipAddressAttachment("defaultEfYBJY",
///     bind_instance_id=default9_k_dl_n7.network_interface_id,
///     bind_instance_type="NetworkInterface",
///     bind_instance_region_id="cn-beijing",
///     anycast_id=default_xkp_frs.id,
///     association_mode="Default")
/// normal = alicloud.eipanycast.AnycastEipAddressAttachment("normal",
///     bind_instance_id=default_ecs2.network_interface_id,
///     bind_instance_type="NetworkInterface",
///     bind_instance_region_id="cn-hangzhou",
///     anycast_id=default_ef_ybjy.anycast_id)
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
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultVsw = new AliCloud.Vpc.Switch("defaultVsw", new()
///     {
///         VpcId = defaultVpc.Id,
///         CidrBlock = "192.168.0.0/24",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultuBsECI = new AliCloud.Ecs.SecurityGroup("defaultuBsECI", new()
///     {
///         VpcId = defaultVpc.Id,
///     });
///
///     var default9KDlN7 = new AliCloud.Ecs.Instance("default9KDlN7", new()
///     {
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InstanceName = name,
///         SecurityGroups = new[]
///         {
///             defaultuBsECI.Id,
///         },
///         AvailabilityZone = defaultVsw.ZoneId,
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultVsw.Id,
///     });
///
///     var defaultXkpFRs = new AliCloud.EipAnycast.AnycastEipAddress("defaultXkpFRs", new()
///     {
///         ServiceLocation = "ChineseMainland",
///     });
///
///     var defaultVpc2 = new AliCloud.Vpc.Network("defaultVpc2", new()
///     {
///         VpcName = $"{name}6",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var default2 = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var default2GetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var default2GetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = default2.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultdsVsw2 = new AliCloud.Vpc.Switch("defaultdsVsw2", new()
///     {
///         VpcId = defaultVpc2.Id,
///         CidrBlock = "192.168.0.0/24",
///         ZoneId = default2.Apply(getZonesResult => getZonesResult.Zones[1]?.Id),
///     });
///
///     var defaultuBsECI2 = new AliCloud.Ecs.SecurityGroup("defaultuBsECI2", new()
///     {
///         VpcId = defaultVpc2.Id,
///     });
///
///     var defaultEcs2 = new AliCloud.Ecs.Instance("defaultEcs2", new()
///     {
///         ImageId = default2GetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceType = default2GetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InstanceName = name,
///         SecurityGroups = new[]
///         {
///             defaultuBsECI2.Id,
///         },
///         AvailabilityZone = defaultdsVsw2.ZoneId,
///         InstanceChargeType = "PostPaid",
///         SystemDiskCategory = "cloud_efficiency",
///         VswitchId = defaultdsVsw2.Id,
///     });
///
///     var defaultEfYBJY = new AliCloud.EipAnycast.AnycastEipAddressAttachment("defaultEfYBJY", new()
///     {
///         BindInstanceId = default9KDlN7.NetworkInterfaceId,
///         BindInstanceType = "NetworkInterface",
///         BindInstanceRegionId = "cn-beijing",
///         AnycastId = defaultXkpFRs.Id,
///         AssociationMode = "Default",
///     });
///
///     var normal = new AliCloud.EipAnycast.AnycastEipAddressAttachment("normal", new()
///     {
///         BindInstanceId = defaultEcs2.NetworkInterfaceId,
///         BindInstanceType = "NetworkInterface",
///         BindInstanceRegionId = "cn-hangzhou",
///         AnycastId = defaultEfYBJY.AnycastId,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eipanycast"
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
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
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
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVsw, err := vpc.NewSwitch(ctx, "defaultVsw", &vpc.SwitchArgs{
/// 			VpcId:     defaultVpc.ID(),
/// 			CidrBlock: pulumi.String("192.168.0.0/24"),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultuBsECI, err := ecs.NewSecurityGroup(ctx, "defaultuBsECI", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultVpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default9KDlN7, err := ecs.NewInstance(ctx, "default9KDlN7", &ecs.InstanceArgs{
/// 			ImageId:      pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceType: pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			InstanceName: pulumi.String(name),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultuBsECI.ID(),
/// 			},
/// 			AvailabilityZone:   defaultVsw.ZoneId,
/// 			InstanceChargeType: pulumi.String("PostPaid"),
/// 			SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// 			VswitchId:          defaultVsw.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultXkpFRs, err := eipanycast.NewAnycastEipAddress(ctx, "defaultXkpFRs", &eipanycast.AnycastEipAddressArgs{
/// 			ServiceLocation: pulumi.String("ChineseMainland"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpc2, err := vpc.NewNetwork(ctx, "defaultVpc2", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.Sprintf("%v6", name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2GetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		default2GetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(default2.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultdsVsw2, err := vpc.NewSwitch(ctx, "defaultdsVsw2", &vpc.SwitchArgs{
/// 			VpcId:     defaultVpc2.ID(),
/// 			CidrBlock: pulumi.String("192.168.0.0/24"),
/// 			ZoneId:    pulumi.String(default2.Zones[1].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultuBsECI2, err := ecs.NewSecurityGroup(ctx, "defaultuBsECI2", &ecs.SecurityGroupArgs{
/// 			VpcId: defaultVpc2.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEcs2, err := ecs.NewInstance(ctx, "defaultEcs2", &ecs.InstanceArgs{
/// 			ImageId:      pulumi.String(default2GetImages.Images[0].Id),
/// 			InstanceType: pulumi.String(default2GetInstanceTypes.InstanceTypes[0].Id),
/// 			InstanceName: pulumi.String(name),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultuBsECI2.ID(),
/// 			},
/// 			AvailabilityZone:   defaultdsVsw2.ZoneId,
/// 			InstanceChargeType: pulumi.String("PostPaid"),
/// 			SystemDiskCategory: pulumi.String("cloud_efficiency"),
/// 			VswitchId:          defaultdsVsw2.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEfYBJY, err := eipanycast.NewAnycastEipAddressAttachment(ctx, "defaultEfYBJY", &eipanycast.AnycastEipAddressAttachmentArgs{
/// 			BindInstanceId:       default9KDlN7.NetworkInterfaceId,
/// 			BindInstanceType:     pulumi.String("NetworkInterface"),
/// 			BindInstanceRegionId: pulumi.String("cn-beijing"),
/// 			AnycastId:            defaultXkpFRs.ID(),
/// 			AssociationMode:      pulumi.String("Default"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eipanycast.NewAnycastEipAddressAttachment(ctx, "normal", &eipanycast.AnycastEipAddressAttachmentArgs{
/// 			BindInstanceId:       defaultEcs2.NetworkInterfaceId,
/// 			BindInstanceType:     pulumi.String("NetworkInterface"),
/// 			BindInstanceRegionId: pulumi.String("cn-hangzhou"),
/// 			AnycastId:            defaultEfYBJY.AnycastId,
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
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddress;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressArgs;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressAttachment;
/// import com.pulumi.alicloud.eipanycast.AnycastEipAddressAttachmentArgs;
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
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultVsw = new Switch("defaultVsw", SwitchArgs.builder()
///             .vpcId(defaultVpc.id())
///             .cidrBlock("192.168.0.0/24")
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultuBsECI = new SecurityGroup("defaultuBsECI", SecurityGroupArgs.builder()
///             .vpcId(defaultVpc.id())
///             .build());
///
///         var default9KDlN7 = new Instance("default9KDlN7", InstanceArgs.builder()
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .instanceName(name)
///             .securityGroups(defaultuBsECI.id())
///             .availabilityZone(defaultVsw.zoneId())
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultVsw.id())
///             .build());
///
///         var defaultXkpFRs = new AnycastEipAddress("defaultXkpFRs", AnycastEipAddressArgs.builder()
///             .serviceLocation("ChineseMainland")
///             .build());
///
///         var defaultVpc2 = new Network("defaultVpc2", NetworkArgs.builder()
///             .vpcName(String.format("%s6", name))
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         final var default2 = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var default2GetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var default2GetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default2.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         var defaultdsVsw2 = new Switch("defaultdsVsw2", SwitchArgs.builder()
///             .vpcId(defaultVpc2.id())
///             .cidrBlock("192.168.0.0/24")
///             .zoneId(default2.zones()[1].id())
///             .build());
///
///         var defaultuBsECI2 = new SecurityGroup("defaultuBsECI2", SecurityGroupArgs.builder()
///             .vpcId(defaultVpc2.id())
///             .build());
///
///         var defaultEcs2 = new Instance("defaultEcs2", InstanceArgs.builder()
///             .imageId(default2GetImages.images()[0].id())
///             .instanceType(default2GetInstanceTypes.instanceTypes()[0].id())
///             .instanceName(name)
///             .securityGroups(defaultuBsECI2.id())
///             .availabilityZone(defaultdsVsw2.zoneId())
///             .instanceChargeType("PostPaid")
///             .systemDiskCategory("cloud_efficiency")
///             .vswitchId(defaultdsVsw2.id())
///             .build());
///
///         var defaultEfYBJY = new AnycastEipAddressAttachment("defaultEfYBJY", AnycastEipAddressAttachmentArgs.builder()
///             .bindInstanceId(default9KDlN7.networkInterfaceId())
///             .bindInstanceType("NetworkInterface")
///             .bindInstanceRegionId("cn-beijing")
///             .anycastId(defaultXkpFRs.id())
///             .associationMode("Default")
///             .build());
///
///         var normal = new AnycastEipAddressAttachment("normal", AnycastEipAddressAttachmentArgs.builder()
///             .bindInstanceId(defaultEcs2.networkInterfaceId())
///             .bindInstanceType("NetworkInterface")
///             .bindInstanceRegionId("cn-hangzhou")
///             .anycastId(defaultEfYBJY.anycastId())
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
///   defaultVpc:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultVsw:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultVpc.id}
///       cidrBlock: 192.168.0.0/24
///       zoneId: ${default.zones[0].id}
///   defaultuBsECI:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       vpcId: ${defaultVpc.id}
///   default9KDlN7:
///     type: alicloud:ecs:Instance
///     properties:
///       imageId: ${defaultGetImages.images[0].id}
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       instanceName: ${name}
///       securityGroups:
///         - ${defaultuBsECI.id}
///       availabilityZone: ${defaultVsw.zoneId}
///       instanceChargeType: PostPaid
///       systemDiskCategory: cloud_efficiency
///       vswitchId: ${defaultVsw.id}
///   defaultXkpFRs:
///     type: alicloud:eipanycast:AnycastEipAddress
///     properties:
///       serviceLocation: ChineseMainland
///   defaultVpc2:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}6
///       cidrBlock: 192.168.0.0/16
///   defaultdsVsw2:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultVpc2.id}
///       cidrBlock: 192.168.0.0/24
///       zoneId: ${default2.zones[1].id}
///   defaultuBsECI2:
///     type: alicloud:ecs:SecurityGroup
///     properties:
///       vpcId: ${defaultVpc2.id}
///   defaultEcs2:
///     type: alicloud:ecs:Instance
///     properties:
///       imageId: ${default2GetImages.images[0].id}
///       instanceType: ${default2GetInstanceTypes.instanceTypes[0].id}
///       instanceName: ${name}
///       securityGroups:
///         - ${defaultuBsECI2.id}
///       availabilityZone: ${defaultdsVsw2.zoneId}
///       instanceChargeType: PostPaid
///       systemDiskCategory: cloud_efficiency
///       vswitchId: ${defaultdsVsw2.id}
///   defaultEfYBJY:
///     type: alicloud:eipanycast:AnycastEipAddressAttachment
///     properties:
///       bindInstanceId: ${default9KDlN7.networkInterfaceId}
///       bindInstanceType: NetworkInterface
///       bindInstanceRegionId: cn-beijing
///       anycastId: ${defaultXkpFRs.id}
///       associationMode: Default
///   normal:
///     type: alicloud:eipanycast:AnycastEipAddressAttachment
///     properties:
///       bindInstanceId: ${defaultEcs2.networkInterfaceId}
///       bindInstanceType: NetworkInterface
///       bindInstanceRegionId: cn-hangzhou
///       anycastId: ${defaultEfYBJY.anycastId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   default2:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   default2GetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   default2GetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default2.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Eipanycast Anycast Eip Address Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eipanycast/anycastEipAddressAttachment:AnycastEipAddressAttachment example <anycast_id>:<bind_instance_id>:<bind_instance_region_id>:<bind_instance_type>
/// ```
class AnycastEipAddressAttachment extends pulumi.CustomResource {
  /// The ID of the Anycast EIP instance.
  late final pulumi.Output<String> anycastId;

  /// Binding mode, value:
  /// - **Default**: The Default mode. The cloud resource instance to be bound is set as the Default origin.
  /// - **Normal**: In Normal mode, the cloud resource instance to be bound is set to the common source station.
  late final pulumi.Output<String> associationMode;

  /// The ID of the cloud resource instance to be bound.
  late final pulumi.Output<String> bindInstanceId;

  /// The region ID of the cloud resource instance to be bound.You can only bind cloud resource instances in some regions. You can call the describeanystserverregions operation to obtain the region ID of the cloud resource instances that can be bound.
  late final pulumi.Output<String> bindInstanceRegionId;

  /// The type of the cloud resource instance to be bound. Value:
  /// - **SlbInstance**: a private network SLB instance.
  /// - **NetworkInterface**: ENI.
  late final pulumi.Output<String> bindInstanceType;

  /// Binding time.Time is expressed according to ISO8601 standard and UTC time is used. The format is: 'YYYY-MM-DDThh:mm:ssZ'.
  late final pulumi.Output<String> bindTime;

  /// The access point information of the associated access area when the cloud resource instance is bound.If you are binding for the first time, this parameter does not need to be configured, and the system automatically associates all access areas. See `pop_locations` below.
  late final pulumi.Output<List<Map<String, dynamic>>?> popLocations;

  /// The secondary private IP address of the elastic network card to be bound.This parameter takes effect only when **BindInstanceType** is set to **NetworkInterface. When you do not enter, this parameter is the primary private IP of the ENI by default.
  late final pulumi.Output<String?> privateIpAddress;

  /// The status of the bound cloud resource instance. Value:BINDING: BINDING.Bound: Bound.UNBINDING: UNBINDING.DELETED: DELETED.MODIFYING: being modified.
  late final pulumi.Output<String> status;

  /// Creates a new [AnycastEipAddressAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AnycastEipAddressAttachment]. {@macro pulumi_eipanycast_anycast_eip_address_attachment_anycast_eip_address_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AnycastEipAddressAttachment(
    String name, {
    AnycastEipAddressAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eipanycast/anycastEipAddressAttachment:AnycastEipAddressAttachment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    anycastId = registerOutput<String>('anycastId');
    associationMode = registerOutput<String>('associationMode');
    bindInstanceId = registerOutput<String>('bindInstanceId');
    bindInstanceRegionId = registerOutput<String>('bindInstanceRegionId');
    bindInstanceType = registerOutput<String>('bindInstanceType');
    bindTime = registerOutput<String>('bindTime');
    popLocations = registerOutput<List<Map<String, dynamic>>?>('popLocations');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [AnycastEipAddressAttachment] resource's state with the given [name] and [id].
  static AnycastEipAddressAttachment get(
    String name,
    pulumi.Input<String> id, {
    AnycastEipAddressAttachmentState? state,
  }) {
    return AnycastEipAddressAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AnycastEipAddressAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:eipanycast/anycastEipAddressAttachment:AnycastEipAddressAttachment',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    anycastId = registerOutput<String>('anycastId');
    associationMode = registerOutput<String>('associationMode');
    bindInstanceId = registerOutput<String>('bindInstanceId');
    bindInstanceRegionId = registerOutput<String>('bindInstanceRegionId');
    bindInstanceType = registerOutput<String>('bindInstanceType');
    bindTime = registerOutput<String>('bindTime');
    popLocations = registerOutput<List<Map<String, dynamic>>?>('popLocations');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    status = registerOutput<String>('status');
  }
}
