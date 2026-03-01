import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_launch_template_args.dart';
import 'ecs_launch_template_data_disk.dart';
import 'ecs_launch_template_image_options.dart';
import 'ecs_launch_template_network_interfaces.dart';
import 'ecs_launch_template_system_disk.dart';

/// Provides a ECS Launch Template resource.
///
/// For information about ECS Launch Template and how to use it, see [What is Launch Template](https://www.alibabacloud.com/help/en/doc-detail/74686.htm).
///
/// > **NOTE:** Available since v1.120.0.
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
/// const _default = alicloud.getZones({
///     availableDiskCategory: "cloud_efficiency",
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     owners: "system",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     securityGroupName: "terraform-example",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEcsLaunchTemplate = new alicloud.ecs.EcsLaunchTemplate("default", {
///     launchTemplateName: "terraform-example",
///     description: "terraform-example",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     hostName: "terraform-example",
///     instanceChargeType: "PrePaid",
///     instanceName: "terraform-example",
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     internetChargeType: "PayByBandwidth",
///     internetMaxBandwidthIn: 5,
///     internetMaxBandwidthOut: 5,
///     ioOptimized: "optimized",
///     keyPairName: "key_pair_name",
///     ramRoleName: "ram_role_name",
///     networkType: "vpc",
///     securityEnhancementStrategy: "Active",
///     spotPriceLimit: 5,
///     spotStrategy: "SpotWithPriceLimit",
///     securityGroupIds: [defaultSecurityGroup.id],
///     systemDisk: {
///         category: "cloud_ssd",
///         description: "Test For Terraform",
///         name: "terraform-example",
///         size: 40,
///         deleteWithInstance: false,
///     },
///     userData: "xxxxxxx",
///     vswitchId: defaultSwitch.id,
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     templateTags: {
///         Create: "Terraform",
///         For: "example",
///     },
///     networkInterfaces: {
///         name: "eth0",
///         description: "hello1",
///         primaryIp: "10.0.0.2",
///         securityGroupId: defaultSecurityGroup.id,
///         vswitchId: defaultSwitch.id,
///     },
///     dataDisks: [
///         {
///             name: "disk1",
///             description: "description",
///             deleteWithInstance: true,
///             category: "cloud",
///             encrypted: false,
///             performanceLevel: "PL0",
///             size: 20,
///         },
///         {
///             name: "disk2",
///             description: "description2",
///             deleteWithInstance: true,
///             category: "cloud",
///             encrypted: false,
///             performanceLevel: "PL0",
///             size: 20,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_disk_category="cloud_efficiency",
///     available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     owners="system")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id)
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     security_group_name="terraform-example",
///     vpc_id=default_network.id)
/// default_ecs_launch_template = alicloud.ecs.EcsLaunchTemplate("default",
///     launch_template_name="terraform-example",
///     description="terraform-example",
///     image_id=default_get_images.images[0].id,
///     host_name="terraform-example",
///     instance_charge_type="PrePaid",
///     instance_name="terraform-example",
///     instance_type=default_get_instance_types.instance_types[0].id,
///     internet_charge_type="PayByBandwidth",
///     internet_max_bandwidth_in=5,
///     internet_max_bandwidth_out=5,
///     io_optimized="optimized",
///     key_pair_name="key_pair_name",
///     ram_role_name="ram_role_name",
///     network_type="vpc",
///     security_enhancement_strategy="Active",
///     spot_price_limit=5,
///     spot_strategy="SpotWithPriceLimit",
///     security_group_ids=[default_security_group.id],
///     system_disk={
///         "category": "cloud_ssd",
///         "description": "Test For Terraform",
///         "name": "terraform-example",
///         "size": 40,
///         "delete_with_instance": False,
///     },
///     user_data="xxxxxxx",
///     vswitch_id=default_switch.id,
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].id,
///     template_tags={
///         "Create": "Terraform",
///         "For": "example",
///     },
///     network_interfaces={
///         "name": "eth0",
///         "description": "hello1",
///         "primary_ip": "10.0.0.2",
///         "security_group_id": default_security_group.id,
///         "vswitch_id": default_switch.id,
///     },
///     data_disks=[
///         {
///             "name": "disk1",
///             "description": "description",
///             "delete_with_instance": True,
///             "category": "cloud",
///             "encrypted": False,
///             "performance_level": "PL0",
///             "size": 20,
///         },
///         {
///             "name": "disk2",
///             "description": "description2",
///             "delete_with_instance": True,
///             "category": "cloud",
///             "encrypted": False,
///             "performance_level": "PL0",
///             "size": 20,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableDiskCategory = "cloud_efficiency",
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         Owners = "system",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VswitchName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         SecurityGroupName = "terraform-example",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEcsLaunchTemplate = new AliCloud.Ecs.EcsLaunchTemplate("default", new()
///     {
///         LaunchTemplateName = "terraform-example",
///         Description = "terraform-example",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         HostName = "terraform-example",
///         InstanceChargeType = "PrePaid",
///         InstanceName = "terraform-example",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InternetChargeType = "PayByBandwidth",
///         InternetMaxBandwidthIn = 5,
///         InternetMaxBandwidthOut = 5,
///         IoOptimized = "optimized",
///         KeyPairName = "key_pair_name",
///         RamRoleName = "ram_role_name",
///         NetworkType = "vpc",
///         SecurityEnhancementStrategy = "Active",
///         SpotPriceLimit = 5,
///         SpotStrategy = "SpotWithPriceLimit",
///         SecurityGroupIds = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         SystemDisk = new AliCloud.Ecs.Inputs.EcsLaunchTemplateSystemDiskArgs
///         {
///             Category = "cloud_ssd",
///             Description = "Test For Terraform",
///             Name = "terraform-example",
///             Size = 40,
///             DeleteWithInstance = false,
///         },
///         UserData = "xxxxxxx",
///         VswitchId = defaultSwitch.Id,
///         VpcId = defaultNetwork.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         TemplateTags =
///         {
///             { "Create", "Terraform" },
///             { "For", "example" },
///         },
///         NetworkInterfaces = new AliCloud.Ecs.Inputs.EcsLaunchTemplateNetworkInterfacesArgs
///         {
///             Name = "eth0",
///             Description = "hello1",
///             PrimaryIp = "10.0.0.2",
///             SecurityGroupId = defaultSecurityGroup.Id,
///             VswitchId = defaultSwitch.Id,
///         },
///         DataDisks = new[]
///         {
///             new AliCloud.Ecs.Inputs.EcsLaunchTemplateDataDiskArgs
///             {
///                 Name = "disk1",
///                 Description = "description",
///                 DeleteWithInstance = true,
///                 Category = "cloud",
///                 Encrypted = false,
///                 PerformanceLevel = "PL0",
///                 Size = 20,
///             },
///             new AliCloud.Ecs.Inputs.EcsLaunchTemplateDataDiskArgs
///             {
///                 Name = "disk2",
///                 Description = "description2",
///                 DeleteWithInstance = true,
///                 Category = "cloud",
///                 Encrypted = false,
///                 PerformanceLevel = "PL0",
///                 Size = 20,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableDiskCategory:     pulumi.StringRef("cloud_efficiency"),
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex: pulumi.StringRef("^ubuntu_18.*64"),
/// 			Owners:    pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String("terraform-example"),
/// 			CidrBlock:   pulumi.String("172.17.3.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			SecurityGroupName: pulumi.String("terraform-example"),
/// 			VpcId:             defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsLaunchTemplate(ctx, "default", &ecs.EcsLaunchTemplateArgs{
/// 			LaunchTemplateName:          pulumi.String("terraform-example"),
/// 			Description:                 pulumi.String("terraform-example"),
/// 			ImageId:                     pulumi.String(defaultGetImages.Images[0].Id),
/// 			HostName:                    pulumi.String("terraform-example"),
/// 			InstanceChargeType:          pulumi.String("PrePaid"),
/// 			InstanceName:                pulumi.String("terraform-example"),
/// 			InstanceType:                pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			InternetChargeType:          pulumi.String("PayByBandwidth"),
/// 			InternetMaxBandwidthIn:      pulumi.Int(5),
/// 			InternetMaxBandwidthOut:     pulumi.Int(5),
/// 			IoOptimized:                 pulumi.String("optimized"),
/// 			KeyPairName:                 pulumi.String("key_pair_name"),
/// 			RamRoleName:                 pulumi.String("ram_role_name"),
/// 			NetworkType:                 pulumi.String("vpc"),
/// 			SecurityEnhancementStrategy: pulumi.String("Active"),
/// 			SpotPriceLimit:              pulumi.Float64(5),
/// 			SpotStrategy:                pulumi.String("SpotWithPriceLimit"),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			SystemDisk: &ecs.EcsLaunchTemplateSystemDiskArgs{
/// 				Category:           pulumi.String("cloud_ssd"),
/// 				Description:        pulumi.String("Test For Terraform"),
/// 				Name:               pulumi.String("terraform-example"),
/// 				Size:               pulumi.Int(40),
/// 				DeleteWithInstance: pulumi.Bool(false),
/// 			},
/// 			UserData:  pulumi.String("xxxxxxx"),
/// 			VswitchId: defaultSwitch.ID(),
/// 			VpcId:     defaultNetwork.ID(),
/// 			ZoneId:    pulumi.String(_default.Zones[0].Id),
/// 			TemplateTags: pulumi.StringMap{
/// 				"Create": pulumi.String("Terraform"),
/// 				"For":    pulumi.String("example"),
/// 			},
/// 			NetworkInterfaces: &ecs.EcsLaunchTemplateNetworkInterfacesArgs{
/// 				Name:            pulumi.String("eth0"),
/// 				Description:     pulumi.String("hello1"),
/// 				PrimaryIp:       pulumi.String("10.0.0.2"),
/// 				SecurityGroupId: defaultSecurityGroup.ID(),
/// 				VswitchId:       defaultSwitch.ID(),
/// 			},
/// 			DataDisks: ecs.EcsLaunchTemplateDataDiskArray{
/// 				&ecs.EcsLaunchTemplateDataDiskArgs{
/// 					Name:               pulumi.String("disk1"),
/// 					Description:        pulumi.String("description"),
/// 					DeleteWithInstance: pulumi.Bool(true),
/// 					Category:           pulumi.String("cloud"),
/// 					Encrypted:          pulumi.Bool(false),
/// 					PerformanceLevel:   pulumi.String("PL0"),
/// 					Size:               pulumi.Int(20),
/// 				},
/// 				&ecs.EcsLaunchTemplateDataDiskArgs{
/// 					Name:               pulumi.String("disk2"),
/// 					Description:        pulumi.String("description2"),
/// 					DeleteWithInstance: pulumi.Bool(true),
/// 					Category:           pulumi.String("cloud"),
/// 					Encrypted:          pulumi.Bool(false),
/// 					PerformanceLevel:   pulumi.String("PL0"),
/// 					Size:               pulumi.Int(20),
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
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplate;
/// import com.pulumi.alicloud.ecs.EcsLaunchTemplateArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateSystemDiskArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateNetworkInterfacesArgs;
/// import com.pulumi.alicloud.ecs.inputs.EcsLaunchTemplateDataDiskArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableDiskCategory("cloud_efficiency")
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .owners("system")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vswitchName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .securityGroupName("terraform-example")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEcsLaunchTemplate = new EcsLaunchTemplate("defaultEcsLaunchTemplate", EcsLaunchTemplateArgs.builder()
///             .launchTemplateName("terraform-example")
///             .description("terraform-example")
///             .imageId(defaultGetImages.images()[0].id())
///             .hostName("terraform-example")
///             .instanceChargeType("PrePaid")
///             .instanceName("terraform-example")
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .internetChargeType("PayByBandwidth")
///             .internetMaxBandwidthIn(5)
///             .internetMaxBandwidthOut(5)
///             .ioOptimized("optimized")
///             .keyPairName("key_pair_name")
///             .ramRoleName("ram_role_name")
///             .networkType("vpc")
///             .securityEnhancementStrategy("Active")
///             .spotPriceLimit(5.0)
///             .spotStrategy("SpotWithPriceLimit")
///             .securityGroupIds(defaultSecurityGroup.id())
///             .systemDisk(EcsLaunchTemplateSystemDiskArgs.builder()
///                 .category("cloud_ssd")
///                 .description("Test For Terraform")
///                 .name("terraform-example")
///                 .size(40)
///                 .deleteWithInstance(false)
///                 .build())
///             .userData("xxxxxxx")
///             .vswitchId(defaultSwitch.id())
///             .vpcId(defaultNetwork.id())
///             .zoneId(default_.zones()[0].id())
///             .templateTags(Map.ofEntries(
///                 Map.entry("Create", "Terraform"),
///                 Map.entry("For", "example")
///             ))
///             .networkInterfaces(EcsLaunchTemplateNetworkInterfacesArgs.builder()
///                 .name("eth0")
///                 .description("hello1")
///                 .primaryIp("10.0.0.2")
///                 .securityGroupId(defaultSecurityGroup.id())
///                 .vswitchId(defaultSwitch.id())
///                 .build())
///             .dataDisks(
///                 EcsLaunchTemplateDataDiskArgs.builder()
///                     .name("disk1")
///                     .description("description")
///                     .deleteWithInstance(true)
///                     .category("cloud")
///                     .encrypted(false)
///                     .performanceLevel("PL0")
///                     .size(20)
///                     .build(),
///                 EcsLaunchTemplateDataDiskArgs.builder()
///                     .name("disk2")
///                     .description("description2")
///                     .deleteWithInstance(true)
///                     .category("cloud")
///                     .encrypted(false)
///                     .performanceLevel("PL0")
///                     .size(20)
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: terraform-example
///       cidrBlock: 172.17.3.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       securityGroupName: terraform-example
///       vpcId: ${defaultNetwork.id}
///   defaultEcsLaunchTemplate:
///     type: alicloud:ecs:EcsLaunchTemplate
///     name: default
///     properties:
///       launchTemplateName: terraform-example
///       description: terraform-example
///       imageId: ${defaultGetImages.images[0].id}
///       hostName: terraform-example
///       instanceChargeType: PrePaid
///       instanceName: terraform-example
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       internetChargeType: PayByBandwidth
///       internetMaxBandwidthIn: '5'
///       internetMaxBandwidthOut: '5'
///       ioOptimized: optimized
///       keyPairName: key_pair_name
///       ramRoleName: ram_role_name
///       networkType: vpc
///       securityEnhancementStrategy: Active
///       spotPriceLimit: '5'
///       spotStrategy: SpotWithPriceLimit
///       securityGroupIds:
///         - ${defaultSecurityGroup.id}
///       systemDisk:
///         category: cloud_ssd
///         description: Test For Terraform
///         name: terraform-example
///         size: '40'
///         deleteWithInstance: 'false'
///       userData: xxxxxxx
///       vswitchId: ${defaultSwitch.id}
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].id}
///       templateTags:
///         Create: Terraform
///         For: example
///       networkInterfaces:
///         name: eth0
///         description: hello1
///         primaryIp: 10.0.0.2
///         securityGroupId: ${defaultSecurityGroup.id}
///         vswitchId: ${defaultSwitch.id}
///       dataDisks:
///         - name: disk1
///           description: description
///           deleteWithInstance: 'true'
///           category: cloud
///           encrypted: 'false'
///           performanceLevel: PL0
///           size: '20'
///         - name: disk2
///           description: description2
///           deleteWithInstance: 'true'
///           category: cloud
///           encrypted: 'false'
///           performanceLevel: PL0
///           size: '20'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableDiskCategory: cloud_efficiency
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Launch Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsLaunchTemplate:EcsLaunchTemplate example <id>
/// ```
class EcsLaunchTemplate extends pulumi.CustomResource {
  /// Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  late final pulumi.Output<String?> autoReleaseTime;
  /// Specifies whether to enable auto-renewal for the instance. This parameter is valid only if `internet_charge_type` is set to `PrePaid`.
  late final pulumi.Output<bool> autoRenew;
  /// The auto-renewal period of the instance. Valid values when `period_unit` is set to `Month`: 1, 2, 3, 6, 12, 24, 36, 48, and 60. Default value: 1.
  late final pulumi.Output<int> autoRenewPeriod;
  /// The list of data disks created with instance. See `data_disks` below.
  late final pulumi.Output<List<EcsLaunchTemplateDataDisk>?> dataDisks;
  /// The version number of the default launch template version. Default to 1. It is conflict with `update_default_version_number`.
  late final pulumi.Output<int> defaultVersionNumber;
  /// The Deployment Set Id.
  late final pulumi.Output<String?> deploymentSetId;
  /// Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  late final pulumi.Output<String?> description;
  /// Whether to enable the instance operating system configuration.
  late final pulumi.Output<bool?> enableVmOsConfig;
  /// Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  late final pulumi.Output<String?> hostName;
  /// Whether to enable access to instance metadata. Valid values:
  /// - enabled: Enabled.
  /// - disabled: Disabled.
  /// **NOTE:** From version 1.260.0, `http_endpoint` can be modified.
  late final pulumi.Output<String> httpEndpoint;
  /// The HTTP PUT response hop limit required for instance metadata requests. **NOTE:** From version 1.260.0, `http_put_response_hop_limit` can be modified.
  late final pulumi.Output<int> httpPutResponseHopLimit;
  /// Whether to use the hardened mode (IMDSv2) when accessing instance metadata. Valid values:
  /// - optional: Not mandatory.
  /// - required: Mandatory. After this value is set, the normal mode cannot access instance metadata.
  /// **NOTE:** From version 1.260.0, `http_tokens` can be modified.
  late final pulumi.Output<String> httpTokens;
  /// The Image ID.
  late final pulumi.Output<String?> imageId;
  /// The options of images. See `image_options` below.
  late final pulumi.Output<EcsLaunchTemplateImageOptions> imageOptions;
  /// Mirror source. Valid values: `system`, `self`, `others`, `marketplace`, `""`. Default to: `""`.
  late final pulumi.Output<String?> imageOwnerAlias;
  /// Billing methods. Valid values: `PostPaid`, `PrePaid`.
  late final pulumi.Output<String?> instanceChargeType;
  /// The name of the instance. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), periods (.), commas (,), brackets ([]), and hyphens (-).
  late final pulumi.Output<String?> instanceName;
  /// Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  late final pulumi.Output<String?> instanceType;
  /// Internet bandwidth billing method. Valid values: `PayByTraffic`, `PayByBandwidth`.
  late final pulumi.Output<String?> internetChargeType;
  /// The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  late final pulumi.Output<int> internetMaxBandwidthIn;
  /// Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  late final pulumi.Output<int?> internetMaxBandwidthOut;
  /// Whether it is an I/O-optimized instance or not. Valid values: `none`, `optimized`.
  late final pulumi.Output<String?> ioOptimized;
  /// The name of the key pair.
  /// - Ignore this parameter for Windows instances. It is null by default. Even if you enter this parameter, only the  Password content is used.
  /// - The password logon method for Linux instances is set to forbidden upon initialization.
  late final pulumi.Output<String?> keyPairName;
  /// The latest version number of the launch template.
  late final pulumi.Output<int> latestVersionNumber;
  /// The name of Launch Template.
  late final pulumi.Output<String> launchTemplateName;
  /// It has been deprecated from version 1.120.0, and use field `launch_template_name` instead.
  late final pulumi.Output<String> name;
  /// The list of network interfaces created with instance. See `network_interfaces` below.
  late final pulumi.Output<EcsLaunchTemplateNetworkInterfaces?> networkInterfaces;
  /// Network type of the instance. Valid values: `classic`, `vpc`.
  late final pulumi.Output<String?> networkType;
  /// Whether to use the password preset by the mirror.
  late final pulumi.Output<bool?> passwordInherit;
  /// The subscription period of the instance. Unit: months. This parameter takes effect and is required only when InstanceChargeType is set to PrePaid. If the DedicatedHostId parameter is specified, the value of the Period parameter must be within the subscription period of the dedicated host.
  /// - When the `period_unit` is set to `Week`, the valid values of the Period parameter are `1`, `2`, `3`.
  /// - When the `period_unit` is set to `Month`, the valid values of the Period parameter are `1`, `2`, `3`, `6`, `12`, `24`, `36`, `48`, and `60`.
  late final pulumi.Output<int> period;
  /// The unit of the subscription period. Default value: `Month`. Valid values: `Week`, `Month`.
  late final pulumi.Output<String> periodUnit;
  /// The private IP address of the instance.
  late final pulumi.Output<String?> privateIpAddress;
  /// The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  late final pulumi.Output<String?> ramRoleName;
  /// The ID of the resource group to which to assign the instance, Elastic Block Storage (EBS) device, and ENI.
  late final pulumi.Output<String?> resourceGroupId;
  /// Whether or not to activate the security enhancement feature and install network security software free of charge. Valid values: `Active`, `Deactive`.
  late final pulumi.Output<String?> securityEnhancementStrategy;
  /// The security group ID.
  late final pulumi.Output<String?> securityGroupId;
  /// The ID of security group N to which to assign the instance.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// The protection period of the preemptible instance. Unit: hours. Valid values: `0`, `1`, `2`, `3`, `4`, `5`, and `6`. Default to: `1`.
  late final pulumi.Output<String?> spotDuration;
  /// Sets the maximum hourly instance price. Supports up to three decimal places.
  late final pulumi.Output<double?> spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Valid values: `NoSpot`, `SpotAsPriceGo`, `SpotWithPriceLimit`.
  late final pulumi.Output<String?> spotStrategy;
  /// The System Disk. See `system_disk` below.
  late final pulumi.Output<EcsLaunchTemplateSystemDisk> systemDisk;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  late final pulumi.Output<String> systemDiskCategory;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  late final pulumi.Output<String> systemDiskDescription;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  late final pulumi.Output<String> systemDiskName;
  /// It has been deprecated from version 1.120.0, and use field `system_disk` instead.
  late final pulumi.Output<int> systemDiskSize;
  /// A mapping of tags to assign to instance, block storage, and elastic network.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The template resource group id.
  late final pulumi.Output<String?> templateResourceGroupId;
  /// A mapping of tags to assign to the launch template.
  late final pulumi.Output<Map<String, String>?> templateTags;
  /// Whether to update the default version of the launch template to the latest version automatically. It is conflict with `default_version_number`.
  late final pulumi.Output<bool?> updateDefaultVersionNumber;
  /// The User Data.
  late final pulumi.Output<String> userData;
  /// It has been deprecated from version 1.120.0, and use field `user_data` instead.
  late final pulumi.Output<String> userdata;
  /// The description of the launch template version. The description must be 2 to 256 characters in length and cannot start with http:// or https://.
  late final pulumi.Output<String?> versionDescription;
  /// The ID of the VPC.
  late final pulumi.Output<String> vpcId;
  /// When creating a VPC-Connected instance, you must specify its VSwitch ID.
  late final pulumi.Output<String?> vswitchId;
  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [EcsLaunchTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsLaunchTemplate]. {@macro pulumi_ecs_ecs_launch_template_ecs_launch_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsLaunchTemplate(
    String name, {
    EcsLaunchTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsLaunchTemplate:EcsLaunchTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    this.autoRenew = registerOutput<bool>('autoRenew');
    this.autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    this.dataDisks = registerOutput<List<EcsLaunchTemplateDataDisk>?>('dataDisks');
    this.defaultVersionNumber = registerOutput<int>('defaultVersionNumber');
    this.deploymentSetId = registerOutput<String?>('deploymentSetId');
    this.description = registerOutput<String?>('description');
    this.enableVmOsConfig = registerOutput<bool?>('enableVmOsConfig');
    this.hostName = registerOutput<String?>('hostName');
    this.httpEndpoint = registerOutput<String>('httpEndpoint');
    this.httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    this.httpTokens = registerOutput<String>('httpTokens');
    this.imageId = registerOutput<String?>('imageId');
    this.imageOptions = registerOutput<EcsLaunchTemplateImageOptions>('imageOptions');
    this.imageOwnerAlias = registerOutput<String?>('imageOwnerAlias');
    this.instanceChargeType = registerOutput<String?>('instanceChargeType');
    this.instanceName = registerOutput<String?>('instanceName');
    this.instanceType = registerOutput<String?>('instanceType');
    this.internetChargeType = registerOutput<String?>('internetChargeType');
    this.internetMaxBandwidthIn = registerOutput<int>('internetMaxBandwidthIn');
    this.internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    this.ioOptimized = registerOutput<String?>('ioOptimized');
    this.keyPairName = registerOutput<String?>('keyPairName');
    this.latestVersionNumber = registerOutput<int>('latestVersionNumber');
    this.launchTemplateName = registerOutput<String>('launchTemplateName');
    this.name = registerOutput<String>('name');
    this.networkInterfaces = registerOutput<EcsLaunchTemplateNetworkInterfaces?>('networkInterfaces');
    this.networkType = registerOutput<String?>('networkType');
    this.passwordInherit = registerOutput<bool?>('passwordInherit');
    this.period = registerOutput<int>('period');
    this.periodUnit = registerOutput<String>('periodUnit');
    this.privateIpAddress = registerOutput<String?>('privateIpAddress');
    this.ramRoleName = registerOutput<String?>('ramRoleName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.securityEnhancementStrategy = registerOutput<String?>('securityEnhancementStrategy');
    this.securityGroupId = registerOutput<String?>('securityGroupId');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.spotDuration = registerOutput<String?>('spotDuration');
    this.spotPriceLimit = registerOutput<double?>('spotPriceLimit');
    this.spotStrategy = registerOutput<String?>('spotStrategy');
    this.systemDisk = registerOutput<EcsLaunchTemplateSystemDisk>('systemDisk');
    this.systemDiskCategory = registerOutput<String>('systemDiskCategory');
    this.systemDiskDescription = registerOutput<String>('systemDiskDescription');
    this.systemDiskName = registerOutput<String>('systemDiskName');
    this.systemDiskSize = registerOutput<int>('systemDiskSize');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.templateResourceGroupId = registerOutput<String?>('templateResourceGroupId');
    this.templateTags = registerOutput<Map<String, String>?>('templateTags');
    this.updateDefaultVersionNumber = registerOutput<bool?>('updateDefaultVersionNumber');
    this.userData = registerOutput<String>('userData');
    this.userdata = registerOutput<String>('userdata');
    this.versionDescription = registerOutput<String?>('versionDescription');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String?>('vswitchId');
    this.zoneId = registerOutput<String>('zoneId');
  }
}
