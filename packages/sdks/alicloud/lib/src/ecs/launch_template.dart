import 'package:pulumi/pulumi.dart' as pulumi;
import 'launch_template_args.dart';
import 'launch_template_image_options.dart';
import 'launch_template_network_interfaces.dart';
import 'launch_template_state.dart';
import 'launch_template_system_disk.dart';

/// Provides an ECS Launch Template resource.
///
/// For information about Launch Template and how to use it, see [Launch Template](https://www.alibabacloud.com/help/doc-detail/73916.html).
///
/// &gt; **DEPRECATED:**  This resource  has been deprecated from version `1.120.0`. Please use new resource alicloud_ecs_launch_template.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const images = alicloud.ecs.getImages({
///     owners: "system",
/// });
/// const instances = alicloud.ecs.getInstances({});
/// const template = new alicloud.ecs.LaunchTemplate("template", {
///     name: "tf-test-template",
///     description: "test1",
///     imageId: images.then(images => images.images?.[0]?.id),
///     hostName: "tf-test-host",
///     instanceChargeType: "PrePaid",
///     instanceName: "tf-instance-name",
///     instanceType: instances.then(instances => instances.instances?.[0]?.instanceType),
///     internetChargeType: "PayByBandwidth",
///     internetMaxBandwidthIn: 5,
///     internetMaxBandwidthOut: 0,
///     ioOptimized: "none",
///     keyPairName: "test-key-pair",
///     ramRoleName: "xxxxx",
///     networkType: "vpc",
///     securityEnhancementStrategy: "Active",
///     spotPriceLimit: 5,
///     spotStrategy: "SpotWithPriceLimit",
///     securityGroupId: "sg-zxcvj0lasdf102350asdf9a",
///     systemDiskCategory: "cloud_ssd",
///     systemDiskDescription: "test disk",
///     systemDiskName: "hello",
///     systemDiskSize: 40,
///     resourceGroupId: "rg-zkdfjahg9zxncv0",
///     userdata: "xxxxxxxxxxxxxx",
///     vswitchId: "sw-ljkngaksdjfj0nnasdf",
///     vpcId: "vpc-asdfnbg0as8dfk1nb2",
///     zoneId: "beijing-a",
///     tags: {
///         tag1: "hello",
///         tag2: "world",
///     },
///     networkInterfaces: {
///         name: "eth0",
///         description: "hello1",
///         primaryIp: "10.0.0.2",
///         securityGroupId: "xxxx",
///         vswitchId: "xxxxxxx",
///     },
///     dataDisks: [
///         {
///             name: "disk1",
///             description: "test1",
///         },
///         {
///             name: "disk2",
///             description: "test2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// images = alicloud.ecs.get_images(owners="system")
/// instances = alicloud.ecs.get_instances()
/// template = alicloud.ecs.LaunchTemplate("template",
///     name="tf-test-template",
///     description="test1",
///     image_id=images.images[0].id,
///     host_name="tf-test-host",
///     instance_charge_type="PrePaid",
///     instance_name="tf-instance-name",
///     instance_type=instances.instances[0].instance_type,
///     internet_charge_type="PayByBandwidth",
///     internet_max_bandwidth_in=5,
///     internet_max_bandwidth_out=0,
///     io_optimized="none",
///     key_pair_name="test-key-pair",
///     ram_role_name="xxxxx",
///     network_type="vpc",
///     security_enhancement_strategy="Active",
///     spot_price_limit=5,
///     spot_strategy="SpotWithPriceLimit",
///     security_group_id="sg-zxcvj0lasdf102350asdf9a",
///     system_disk_category="cloud_ssd",
///     system_disk_description="test disk",
///     system_disk_name="hello",
///     system_disk_size=40,
///     resource_group_id="rg-zkdfjahg9zxncv0",
///     userdata="xxxxxxxxxxxxxx",
///     vswitch_id="sw-ljkngaksdjfj0nnasdf",
///     vpc_id="vpc-asdfnbg0as8dfk1nb2",
///     zone_id="beijing-a",
///     tags={
///         "tag1": "hello",
///         "tag2": "world",
///     },
///     network_interfaces={
///         "name": "eth0",
///         "description": "hello1",
///         "primary_ip": "10.0.0.2",
///         "security_group_id": "xxxx",
///         "vswitch_id": "xxxxxxx",
///     },
///     data_disks=[
///         {
///             "name": "disk1",
///             "description": "test1",
///         },
///         {
///             "name": "disk2",
///             "description": "test2",
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
///     var images = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         Owners = "system",
///     });
///
///     var instances = AliCloud.Ecs.GetInstances.Invoke();
///
///     var template = new AliCloud.Ecs.LaunchTemplate("template", new()
///     {
///         Name = "tf-test-template",
///         Description = "test1",
///         ImageId = images.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         HostName = "tf-test-host",
///         InstanceChargeType = "PrePaid",
///         InstanceName = "tf-instance-name",
///         InstanceType = instances.Apply(getInstancesResult => getInstancesResult.Instances[0]?.InstanceType),
///         InternetChargeType = "PayByBandwidth",
///         InternetMaxBandwidthIn = 5,
///         InternetMaxBandwidthOut = 0,
///         IoOptimized = "none",
///         KeyPairName = "test-key-pair",
///         RamRoleName = "xxxxx",
///         NetworkType = "vpc",
///         SecurityEnhancementStrategy = "Active",
///         SpotPriceLimit = 5,
///         SpotStrategy = "SpotWithPriceLimit",
///         SecurityGroupId = "sg-zxcvj0lasdf102350asdf9a",
///         SystemDiskCategory = "cloud_ssd",
///         SystemDiskDescription = "test disk",
///         SystemDiskName = "hello",
///         SystemDiskSize = 40,
///         ResourceGroupId = "rg-zkdfjahg9zxncv0",
///         Userdata = "xxxxxxxxxxxxxx",
///         VswitchId = "sw-ljkngaksdjfj0nnasdf",
///         VpcId = "vpc-asdfnbg0as8dfk1nb2",
///         ZoneId = "beijing-a",
///         Tags =
///         {
///             { "tag1", "hello" },
///             { "tag2", "world" },
///         },
///         NetworkInterfaces = new AliCloud.Ecs.Inputs.LaunchTemplateNetworkInterfacesArgs
///         {
///             Name = "eth0",
///             Description = "hello1",
///             PrimaryIp = "10.0.0.2",
///             SecurityGroupId = "xxxx",
///             VswitchId = "xxxxxxx",
///         },
///         DataDisks = new[]
///         {
///             new AliCloud.Ecs.Inputs.LaunchTemplateDataDiskArgs
///             {
///                 Name = "disk1",
///                 Description = "test1",
///             },
///             new AliCloud.Ecs.Inputs.LaunchTemplateDataDiskArgs
///             {
///                 Name = "disk2",
///                 Description = "test2",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		images, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			Owners: pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		instances, err := ecs.GetInstances(ctx, &ecs.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewLaunchTemplate(ctx, "template", &ecs.LaunchTemplateArgs{
/// 			Name:                        pulumi.String("tf-test-template"),
/// 			Description:                 pulumi.String("test1"),
/// 			ImageId:                     pulumi.String(images.Images[0].Id),
/// 			HostName:                    pulumi.String("tf-test-host"),
/// 			InstanceChargeType:          pulumi.String("PrePaid"),
/// 			InstanceName:                pulumi.String("tf-instance-name"),
/// 			InstanceType:                pulumi.String(instances.Instances[0].InstanceType),
/// 			InternetChargeType:          pulumi.String("PayByBandwidth"),
/// 			InternetMaxBandwidthIn:      pulumi.Int(5),
/// 			InternetMaxBandwidthOut:     pulumi.Int(0),
/// 			IoOptimized:                 pulumi.String("none"),
/// 			KeyPairName:                 pulumi.String("test-key-pair"),
/// 			RamRoleName:                 pulumi.String("xxxxx"),
/// 			NetworkType:                 pulumi.String("vpc"),
/// 			SecurityEnhancementStrategy: pulumi.String("Active"),
/// 			SpotPriceLimit:              pulumi.Float64(5),
/// 			SpotStrategy:                pulumi.String("SpotWithPriceLimit"),
/// 			SecurityGroupId:             pulumi.String("sg-zxcvj0lasdf102350asdf9a"),
/// 			SystemDiskCategory:          pulumi.String("cloud_ssd"),
/// 			SystemDiskDescription:       pulumi.String("test disk"),
/// 			SystemDiskName:              pulumi.String("hello"),
/// 			SystemDiskSize:              pulumi.Int(40),
/// 			ResourceGroupId:             pulumi.String("rg-zkdfjahg9zxncv0"),
/// 			Userdata:                    pulumi.String("xxxxxxxxxxxxxx"),
/// 			VswitchId:                   pulumi.String("sw-ljkngaksdjfj0nnasdf"),
/// 			VpcId:                       pulumi.String("vpc-asdfnbg0as8dfk1nb2"),
/// 			ZoneId:                      pulumi.String("beijing-a"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("hello"),
/// 				"tag2": pulumi.String("world"),
/// 			},
/// 			NetworkInterfaces: &ecs.LaunchTemplateNetworkInterfacesArgs{
/// 				Name:            pulumi.String("eth0"),
/// 				Description:     pulumi.String("hello1"),
/// 				PrimaryIp:       pulumi.String("10.0.0.2"),
/// 				SecurityGroupId: pulumi.String("xxxx"),
/// 				VswitchId:       pulumi.String("xxxxxxx"),
/// 			},
/// 			DataDisks: ecs.LaunchTemplateDataDiskArray{
/// 				&ecs.LaunchTemplateDataDiskArgs{
/// 					Name:        pulumi.String("disk1"),
/// 					Description: pulumi.String("test1"),
/// 				},
/// 				&ecs.LaunchTemplateDataDiskArgs{
/// 					Name:        pulumi.String("disk2"),
/// 					Description: pulumi.String("test2"),
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.ecs.LaunchTemplate;
/// import com.pulumi.alicloud.ecs.LaunchTemplateArgs;
/// import com.pulumi.alicloud.ecs.inputs.LaunchTemplateNetworkInterfacesArgs;
/// import com.pulumi.alicloud.ecs.inputs.LaunchTemplateDataDiskArgs;
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
///         final var images = EcsFunctions.getImages(GetImagesArgs.builder()
///             .owners("system")
///             .build());
///
///         final var instances = EcsFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var template = new LaunchTemplate("template", LaunchTemplateArgs.builder()
///             .name("tf-test-template")
///             .description("test1")
///             .imageId(images.images()[0].id())
///             .hostName("tf-test-host")
///             .instanceChargeType("PrePaid")
///             .instanceName("tf-instance-name")
///             .instanceType(instances.instances()[0].instanceType())
///             .internetChargeType("PayByBandwidth")
///             .internetMaxBandwidthIn(5)
///             .internetMaxBandwidthOut(0)
///             .ioOptimized("none")
///             .keyPairName("test-key-pair")
///             .ramRoleName("xxxxx")
///             .networkType("vpc")
///             .securityEnhancementStrategy("Active")
///             .spotPriceLimit(5.0)
///             .spotStrategy("SpotWithPriceLimit")
///             .securityGroupId("sg-zxcvj0lasdf102350asdf9a")
///             .systemDiskCategory("cloud_ssd")
///             .systemDiskDescription("test disk")
///             .systemDiskName("hello")
///             .systemDiskSize(40)
///             .resourceGroupId("rg-zkdfjahg9zxncv0")
///             .userdata("xxxxxxxxxxxxxx")
///             .vswitchId("sw-ljkngaksdjfj0nnasdf")
///             .vpcId("vpc-asdfnbg0as8dfk1nb2")
///             .zoneId("beijing-a")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "hello"),
///                 Map.entry("tag2", "world")
///             ))
///             .networkInterfaces(LaunchTemplateNetworkInterfacesArgs.builder()
///                 .name("eth0")
///                 .description("hello1")
///                 .primaryIp("10.0.0.2")
///                 .securityGroupId("xxxx")
///                 .vswitchId("xxxxxxx")
///                 .build())
///             .dataDisks(
///                 LaunchTemplateDataDiskArgs.builder()
///                     .name("disk1")
///                     .description("test1")
///                     .build(),
///                 LaunchTemplateDataDiskArgs.builder()
///                     .name("disk2")
///                     .description("test2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   template:
///     type: alicloud:ecs:LaunchTemplate
///     properties:
///       name: tf-test-template
///       description: test1
///       imageId: ${images.images[0].id}
///       hostName: tf-test-host
///       instanceChargeType: PrePaid
///       instanceName: tf-instance-name
///       instanceType: ${instances.instances[0].instanceType}
///       internetChargeType: PayByBandwidth
///       internetMaxBandwidthIn: 5
///       internetMaxBandwidthOut: 0
///       ioOptimized: none
///       keyPairName: test-key-pair
///       ramRoleName: xxxxx
///       networkType: vpc
///       securityEnhancementStrategy: Active
///       spotPriceLimit: 5
///       spotStrategy: SpotWithPriceLimit
///       securityGroupId: sg-zxcvj0lasdf102350asdf9a
///       systemDiskCategory: cloud_ssd
///       systemDiskDescription: test disk
///       systemDiskName: hello
///       systemDiskSize: 40
///       resourceGroupId: rg-zkdfjahg9zxncv0
///       userdata: xxxxxxxxxxxxxx
///       vswitchId: sw-ljkngaksdjfj0nnasdf
///       vpcId: vpc-asdfnbg0as8dfk1nb2
///       zoneId: beijing-a
///       tags:
///         tag1: hello
///         tag2: world
///       networkInterfaces:
///         name: eth0
///         description: hello1
///         primaryIp: 10.0.0.2
///         securityGroupId: xxxx
///         vswitchId: xxxxxxx
///       dataDisks:
///         - name: disk1
///           description: test1
///         - name: disk2
///           description: test2
/// variables:
///   images:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         owners: system
///   instances:
///     fn::invoke:
///       function: alicloud:ecs:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Launch Template can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/launchTemplate:LaunchTemplate lt lt-abc1234567890000
/// ```
class LaunchTemplate extends pulumi.CustomResource {
  /// Instance auto release time. The time is presented using the ISO8601 standard and in UTC time. The format is  YYYY-MM-DDTHH:MM:SSZ.
  late final pulumi.Output<String?> autoReleaseTime;
  late final pulumi.Output<bool> autoRenew;
  late final pulumi.Output<int> autoRenewPeriod;
  /// The list of data disks created with instance.
  late final pulumi.Output<List<Map<String, dynamic>>?> dataDisks;
  late final pulumi.Output<int> defaultVersionNumber;
  late final pulumi.Output<String?> deploymentSetId;
  /// Description of instance launch template version 1. It can be [2, 256] characters in length. It cannot start with "http://" or "https://". The default value is null.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<bool?> enableVmOsConfig;
  /// Instance host name.It cannot start or end with a period (.) or a hyphen (-) and it cannot have two or more consecutive periods (.) or hyphens (-).For Windows: The host name can be [2, 15] characters in length. It can contain A-Z, a-z, numbers, periods (.), and hyphens (-). It cannot only contain numbers. For other operating systems: The host name can be [2, 64] characters in length. It can be segments separated by periods (.). It can contain A-Z, a-z, numbers, and hyphens (-).
  late final pulumi.Output<String?> hostName;
  late final pulumi.Output<String> httpEndpoint;
  late final pulumi.Output<int> httpPutResponseHopLimit;
  late final pulumi.Output<String> httpTokens;
  /// Image ID.
  late final pulumi.Output<String?> imageId;
  late final pulumi.Output<LaunchTemplateImageOptions> imageOptions;
  late final pulumi.Output<String?> imageOwnerAlias;
  /// Billing methods. Optional values:
  /// - PrePaid: Monthly, or annual subscription. Make sure that your registered credit card is invalid or you have insufficient balance in your PayPal account. Otherwise, InvalidPayMethod error may occur.
  /// - PostPaid: Pay-As-You-Go.
  ///
  /// Default value: PostPaid.
  late final pulumi.Output<String?> instanceChargeType;
  /// The name of the instance. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String?> instanceName;
  /// Instance type. For more information, call resource_alicloud_instances to obtain the latest instance type list.
  late final pulumi.Output<String?> instanceType;
  /// Internet bandwidth billing method. Optional values: `PayByTraffic` | `PayByBandwidth`.
  late final pulumi.Output<String?> internetChargeType;
  /// The maximum inbound bandwidth from the Internet network, measured in Mbit/s. Value range: [1, 200].
  late final pulumi.Output<int> internetMaxBandwidthIn;
  /// Maximum outbound bandwidth from the Internet, its unit of measurement is Mbit/s. Value range: [0, 100].
  late final pulumi.Output<int?> internetMaxBandwidthOut;
  /// Whether it is an I/O-optimized instance or not. Optional values:
  /// - none
  /// - optimized
  late final pulumi.Output<String?> ioOptimized;
  /// The name of the key pair.
  /// - Ignore this parameter for Windows instances. It is null by default. Even if you enter this parameter, only the  Password content is used.
  /// - The password logon method for Linux instances is set to forbidden upon initialization.
  late final pulumi.Output<String?> keyPairName;
  late final pulumi.Output<int> latestVersionNumber;
  late final pulumi.Output<String> launchTemplateName;
  /// Instance launch template name. Can contain [2, 128] characters in length. It must start with an English letter or Chinese, can contain numbers, periods (.), colons (:), underscores (_), and hyphens (-). It cannot start with "http://" or "https://".
  late final pulumi.Output<String> name;
  /// The list of network interfaces created with instance.
  late final pulumi.Output<LaunchTemplateNetworkInterfaces?> networkInterfaces;
  /// Network type of the instance. Value options: `classic` | `vpc`.
  late final pulumi.Output<String?> networkType;
  late final pulumi.Output<bool?> passwordInherit;
  late final pulumi.Output<int> period;
  late final pulumi.Output<String> periodUnit;
  late final pulumi.Output<String?> privateIpAddress;
  /// The RAM role name of the instance. You can use the RAM API ListRoles to query instance RAM role names.
  late final pulumi.Output<String?> ramRoleName;
  late final pulumi.Output<String?> resourceGroupId;
  /// Whether or not to activate the security enhancement feature and install network security software free of charge. Optional values: Active | Deactive.
  late final pulumi.Output<String?> securityEnhancementStrategy;
  /// The security group ID.
  late final pulumi.Output<String?> securityGroupId;
  late final pulumi.Output<List<String>?> securityGroupIds;
  late final pulumi.Output<String?> spotDuration;
  /// Sets the maximum hourly instance price. Supports up to three decimal places.
  late final pulumi.Output<double?> spotPriceLimit;
  /// The spot strategy for a Pay-As-You-Go instance. This parameter is valid and required only when InstanceChargeType is set to PostPaid. Value range:
  /// - NoSpot: Normal Pay-As-You-Go instance.
  /// - SpotWithPriceLimit: Sets the maximum price for a spot instance.
  /// - SpotAsPriceGo: The system automatically calculates the price. The maximum value is the Pay-As-You-Go price.
  late final pulumi.Output<String?> spotStrategy;
  late final pulumi.Output<LaunchTemplateSystemDisk> systemDisk;
  /// The category of the system disk. System disk type. Optional values:
  /// - cloud: Basic cloud disk.
  /// - cloud_efficiency: Ultra cloud disk.
  /// - cloud_ssd: SSD cloud Disks.
  /// - ephemeral_ssd: local SSD Disks
  /// - cloud_essd: ESSD cloud Disks.
  late final pulumi.Output<String> systemDiskCategory;
  /// System disk description. It cannot begin with http:// or https://.
  late final pulumi.Output<String> systemDiskDescription;
  /// System disk name. The name is a string of 2 to 128 characters. It must begin with an English or a Chinese character. It can contain A-Z, a-z, Chinese characters, numbers, periods (.), colons (:), underscores (_), and hyphens (-).
  late final pulumi.Output<String> systemDiskName;
  /// Size of the system disk, measured in GB. Value range: [20, 500].
  late final pulumi.Output<int> systemDiskSize;
  /// A mapping of tags to assign to the resource.
  /// - Key: It can be up to 64 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It cannot be a null string.
  /// - Value: It can be up to 128 characters in length. It cannot begin with "aliyun", "acs:", "http://", or "https://". It can be a null string.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<String?> templateResourceGroupId;
  late final pulumi.Output<Map<String, String>?> templateTags;
  late final pulumi.Output<bool?> updateDefaultVersionNumber;
  late final pulumi.Output<String> userData;
  /// User data of the instance, which is Base64-encoded. Size of the raw data cannot exceed 16 KB.
  late final pulumi.Output<String> userdata;
  late final pulumi.Output<String?> versionDescription;
  late final pulumi.Output<String> vpcId;
  /// When creating a VPC-Connected instance, you must specify its VSwitch ID.
  late final pulumi.Output<String?> vswitchId;
  /// The zone ID of the instance.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [LaunchTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LaunchTemplate]. {@macro pulumi_ecs_launch_template_launch_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LaunchTemplate(
    String name, {
    LaunchTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/launchTemplate:LaunchTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenew = registerOutput<bool>('autoRenew');
    autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    defaultVersionNumber = registerOutput<int>('defaultVersionNumber');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String?>('description');
    enableVmOsConfig = registerOutput<bool?>('enableVmOsConfig');
    hostName = registerOutput<String?>('hostName');
    httpEndpoint = registerOutput<String>('httpEndpoint');
    httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    httpTokens = registerOutput<String>('httpTokens');
    imageId = registerOutput<String?>('imageId');
    imageOptions = registerOutput<LaunchTemplateImageOptions>('imageOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateImageOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageOwnerAlias = registerOutput<String?>('imageOwnerAlias');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceName = registerOutput<String?>('instanceName');
    instanceType = registerOutput<String?>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    keyPairName = registerOutput<String?>('keyPairName');
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    launchTemplateName = registerOutput<String>('launchTemplateName');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<LaunchTemplateNetworkInterfaces?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateNetworkInterfaces.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkType = registerOutput<String?>('networkType');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    period = registerOutput<int>('period');
    periodUnit = registerOutput<String>('periodUnit');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    ramRoleName = registerOutput<String?>('ramRoleName');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    securityEnhancementStrategy = registerOutput<String?>('securityEnhancementStrategy');
    securityGroupId = registerOutput<String?>('securityGroupId');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotDuration = registerOutput<String?>('spotDuration');
    spotPriceLimit = registerOutput<double?>('spotPriceLimit');
    spotStrategy = registerOutput<String?>('spotStrategy');
    systemDisk = registerOutput<LaunchTemplateSystemDisk>('systemDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateSystemDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskDescription = registerOutput<String>('systemDiskDescription');
    systemDiskName = registerOutput<String>('systemDiskName');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    templateResourceGroupId = registerOutput<String?>('templateResourceGroupId');
    templateTags = registerOutput<Map<String, String>?>('templateTags');
    updateDefaultVersionNumber = registerOutput<bool?>('updateDefaultVersionNumber');
    userData = registerOutput<String>('userData');
    userdata = registerOutput<String>('userdata');
    versionDescription = registerOutput<String?>('versionDescription');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [LaunchTemplate] resource's state with the given [name] and [id].
  static LaunchTemplate get(
    String name,
    pulumi.Input<String> id, {
    LaunchTemplateState? state,
  }) {
    return LaunchTemplate._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LaunchTemplate._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/launchTemplate:LaunchTemplate',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoReleaseTime = registerOutput<String?>('autoReleaseTime');
    autoRenew = registerOutput<bool>('autoRenew');
    autoRenewPeriod = registerOutput<int>('autoRenewPeriod');
    dataDisks = registerOutput<List<Map<String, dynamic>>?>('dataDisks');
    defaultVersionNumber = registerOutput<int>('defaultVersionNumber');
    deploymentSetId = registerOutput<String?>('deploymentSetId');
    description = registerOutput<String?>('description');
    enableVmOsConfig = registerOutput<bool?>('enableVmOsConfig');
    hostName = registerOutput<String?>('hostName');
    httpEndpoint = registerOutput<String>('httpEndpoint');
    httpPutResponseHopLimit = registerOutput<int>('httpPutResponseHopLimit');
    httpTokens = registerOutput<String>('httpTokens');
    imageId = registerOutput<String?>('imageId');
    imageOptions = registerOutput<LaunchTemplateImageOptions>('imageOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateImageOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageOwnerAlias = registerOutput<String?>('imageOwnerAlias');
    instanceChargeType = registerOutput<String?>('instanceChargeType');
    instanceName = registerOutput<String?>('instanceName');
    instanceType = registerOutput<String?>('instanceType');
    internetChargeType = registerOutput<String?>('internetChargeType');
    internetMaxBandwidthIn = registerOutput<int>('internetMaxBandwidthIn');
    internetMaxBandwidthOut = registerOutput<int?>('internetMaxBandwidthOut');
    ioOptimized = registerOutput<String?>('ioOptimized');
    keyPairName = registerOutput<String?>('keyPairName');
    latestVersionNumber = registerOutput<int>('latestVersionNumber');
    launchTemplateName = registerOutput<String>('launchTemplateName');
    this.name = registerOutput<String>('name');
    networkInterfaces = registerOutput<LaunchTemplateNetworkInterfaces?>('networkInterfaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateNetworkInterfaces.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    networkType = registerOutput<String?>('networkType');
    passwordInherit = registerOutput<bool?>('passwordInherit');
    period = registerOutput<int>('period');
    periodUnit = registerOutput<String>('periodUnit');
    privateIpAddress = registerOutput<String?>('privateIpAddress');
    ramRoleName = registerOutput<String?>('ramRoleName');
    resourceGroupId = registerOutput<String?>('resourceGroupId');
    securityEnhancementStrategy = registerOutput<String?>('securityEnhancementStrategy');
    securityGroupId = registerOutput<String?>('securityGroupId');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    spotDuration = registerOutput<String?>('spotDuration');
    spotPriceLimit = registerOutput<double?>('spotPriceLimit');
    spotStrategy = registerOutput<String?>('spotStrategy');
    systemDisk = registerOutput<LaunchTemplateSystemDisk>('systemDisk', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LaunchTemplateSystemDisk.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemDiskCategory = registerOutput<String>('systemDiskCategory');
    systemDiskDescription = registerOutput<String>('systemDiskDescription');
    systemDiskName = registerOutput<String>('systemDiskName');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    templateResourceGroupId = registerOutput<String?>('templateResourceGroupId');
    templateTags = registerOutput<Map<String, String>?>('templateTags');
    updateDefaultVersionNumber = registerOutput<bool?>('updateDefaultVersionNumber');
    userData = registerOutput<String>('userData');
    userdata = registerOutput<String>('userdata');
    versionDescription = registerOutput<String?>('versionDescription');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String?>('vswitchId');
    zoneId = registerOutput<String>('zoneId');
  }
}
