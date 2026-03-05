import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_features.dart';
import 'image_state.dart';

/// Provides a ECS Image resource.
///
/// &gt; **NOTE:**  If you want to create a template from an ECS instance, you can specify the instance ID (InstanceId) to create a custom image. You must make sure that the status of the specified instance is Running or Stopped. After a successful invocation, each disk of the specified instance has a new snapshot created.
///
/// &gt; **NOTE:**  If you want to create a custom image based on the system disk of your ECS instance, you can specify one of the system disk snapshots (SnapshotId) to create a custom image. However, the specified snapshot cannot be created on or before July 15, 2013.
///
/// &gt; **NOTE:**  If you want to combine snapshots of multiple disks into an image template, you can specify DiskDeviceMapping to create a custom image.
///
/// For information about ECS Image and how to use it, see [What is Image](https://www.alibabacloud.com/help/en/ecs/developer-reference/api-ecs-2014-05-26-createimage).
///
/// &gt; **NOTE:** Available since v1.64.0.
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
/// import * as random from "@pulumi/random";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "Instance",
/// });
/// const defaultGetInstanceTypes = alicloud.ecs.getInstanceTypes({
///     instanceTypeFamily: "ecs.sn1ne",
/// });
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
///     name: "terraform-example",
///     vpcId: defaultNetwork.id,
/// });
/// const defaultInstance = new alicloud.ecs.Instance("default", {
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     instanceName: "terraform-example",
///     securityGroups: [defaultSecurityGroup.id],
///     vswitchId: defaultSwitch.id,
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.ids?.[0]),
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.ids?.[0]),
///     internetMaxBandwidthOut: 10,
/// });
/// const defaultGetResourceGroups = alicloud.resourcemanager.getResourceGroups({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultImage = new alicloud.ecs.Image("default", {
///     instanceId: defaultInstance.id,
///     imageName: `terraform-example-${defaultInteger.result}`,
///     description: "terraform-example",
///     architecture: "x86_64",
///     resourceGroupId: defaultGetResourceGroups.then(defaultGetResourceGroups => defaultGetResourceGroups.ids?.[0]),
///     tags: {
///         FinanceDept: "FinanceDeptJoshua",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = alicloud.get_zones(available_resource_creation="Instance")
/// default_get_instance_types = alicloud.ecs.get_instance_types(instance_type_family="ecs.sn1ne")
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
///     name="terraform-example",
///     vpc_id=default_network.id)
/// default_instance = alicloud.ecs.Instance("default",
///     availability_zone=default.zones[0].id,
///     instance_name="terraform-example",
///     security_groups=[default_security_group.id],
///     vswitch_id=default_switch.id,
///     instance_type=default_get_instance_types.ids[0],
///     image_id=default_get_images.ids[0],
///     internet_max_bandwidth_out=10)
/// default_get_resource_groups = alicloud.resourcemanager.get_resource_groups()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_image = alicloud.ecs.Image("default",
///     instance_id=default_instance.id,
///     image_name=f"terraform-example-{default_integer['result']}",
///     description="terraform-example",
///     architecture="x86_64",
///     resource_group_id=default_get_resource_groups.ids[0],
///     tags={
///         "FinanceDept": "FinanceDeptJoshua",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "Instance",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         InstanceTypeFamily = "ecs.sn1ne",
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
///         Name = "terraform-example",
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultInstance = new AliCloud.Ecs.Instance("default", new()
///     {
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         InstanceName = "terraform-example",
///         SecurityGroups = new[]
///         {
///             defaultSecurityGroup.Id,
///         },
///         VswitchId = defaultSwitch.Id,
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Ids[0]),
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Ids[0]),
///         InternetMaxBandwidthOut = 10,
///     });
///
///     var defaultGetResourceGroups = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultImage = new AliCloud.Ecs.Image("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ImageName = $"terraform-example-{defaultInteger.Result}",
///         Description = "terraform-example",
///         Architecture = "x86_64",
///         ResourceGroupId = defaultGetResourceGroups.Apply(getResourceGroupsResult => getResourceGroupsResult.Ids[0]),
///         Tags =
///         {
///             { "FinanceDept", "FinanceDeptJoshua" },
///         },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("Instance"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			InstanceTypeFamily: pulumi.StringRef("ecs.sn1ne"),
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
/// 			Name:  pulumi.String("terraform-example"),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ecs.NewInstance(ctx, "default", &ecs.InstanceArgs{
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			InstanceName:     pulumi.String("terraform-example"),
/// 			SecurityGroups: pulumi.StringArray{
/// 				defaultSecurityGroup.ID(),
/// 			},
/// 			VswitchId:               defaultSwitch.ID(),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.Ids[0]),
/// 			ImageId:                 pulumi.String(defaultGetImages.Ids[0]),
/// 			InternetMaxBandwidthOut: pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetResourceGroups, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewImage(ctx, "default", &ecs.ImageArgs{
/// 			InstanceId:      defaultInstance.ID(),
/// 			ImageName:       pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description:     pulumi.String("terraform-example"),
/// 			Architecture:    pulumi.String("x86_64"),
/// 			ResourceGroupId: pulumi.String(defaultGetResourceGroups.Ids[0]),
/// 			Tags: pulumi.StringMap{
/// 				"FinanceDept": pulumi.String("FinanceDeptJoshua"),
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
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ecs.Image;
/// import com.pulumi.alicloud.ecs.ImageArgs;
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
///             .availableResourceCreation("Instance")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .instanceTypeFamily("ecs.sn1ne")
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
///             .name("terraform-example")
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .instanceName("terraform-example")
///             .securityGroups(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .instanceType(defaultGetInstanceTypes.ids()[0])
///             .imageId(defaultGetImages.ids()[0])
///             .internetMaxBandwidthOut(10)
///             .build());
///
///         final var defaultGetResourceGroups = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultImage = new Image("defaultImage", ImageArgs.builder()
///             .instanceId(defaultInstance.id())
///             .imageName(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("terraform-example")
///             .architecture("x86_64")
///             .resourceGroupId(defaultGetResourceGroups.ids()[0])
///             .tags(Map.of("FinanceDept", "FinanceDeptJoshua"))
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
///       name: terraform-example
///       vpcId: ${defaultNetwork.id}
///   defaultInstance:
///     type: alicloud:ecs:Instance
///     name: default
///     properties:
///       availabilityZone: ${default.zones[0].id}
///       instanceName: terraform-example
///       securityGroups:
///         - ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///       instanceType: ${defaultGetInstanceTypes.ids[0]}
///       imageId: ${defaultGetImages.ids[0]}
///       internetMaxBandwidthOut: 10
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultImage:
///     type: alicloud:ecs:Image
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       imageName: terraform-example-${defaultInteger.result}
///       description: terraform-example
///       architecture: x86_64
///       resourceGroupId: ${defaultGetResourceGroups.ids[0]}
///       tags:
///         FinanceDept: FinanceDeptJoshua
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: Instance
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         instanceTypeFamily: ecs.sn1ne
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         owners: system
///   defaultGetResourceGroups:
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
/// ECS Image can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/image:Image example <id>
/// ```
class Image extends pulumi.CustomResource {
  /// The system architecture of the system disk. If you specify a data disk snapshot to create the system disk of the custom image, you must use Architecture to specify the system architecture of the system disk. Valid values: `i386`, `x86\_64`, `arm64`. Default value: `x86\_64`.
  late final pulumi.Output<String?> architecture;

  /// The new boot mode of the image. Valid values:
  ///
  /// *   BIOS: Basic Input/Output System (BIOS)
  ///
  /// *   UEFI: Unified Extensible Firmware Interface (UEFI)
  ///
  /// *   UEFI-Preferred: BIOS and UEFI
  ///
  /// &gt; **NOTE:**   Before you change the boot mode, we recommend that you obtain the boot modes supported by the image. If you specify an unsupported boot mode for the image, ECS instances that use the image cannot start as expected. If you do not know which boot modes are supported by the image, we recommend that you use the image check feature to perform a check. For information about the image check feature, see [Overview](https://www.alibabacloud.com/help/en/doc-detail/439819.html).
  ///
  /// &gt; **NOTE:**   For information about the UEFI-Preferred boot mode, see [Best practices for ECS instance boot modes](https://www.alibabacloud.com/help/en/doc-detail/2244655.html).
  late final pulumi.Output<String> bootMode;

  /// The create time
  late final pulumi.Output<String> createTime;

  /// Not the public attribute and it used to automatically delete dependence snapshots while deleting the image.
  late final pulumi.Output<bool?> deleteAutoSnapshot;

  /// The new description of the custom image. The description must be 2 to 256 characters in length It cannot start with `http://` or `https://`. This parameter is empty by default, which specifies that the original description is retained.
  late final pulumi.Output<String?> description;

  /// The mode in which to check the custom image. If you do not specify this parameter, the image is not checked. Only the standard check mode is supported.
  ///
  /// &gt; **NOTE:**   This parameter is supported for most Linux and Windows operating system versions. For information about image check items and operating system limits for image check, see [Overview of image check](https://www.alibabacloud.com/help/en/doc-detail/439819.html) and [Operating system limits for image check](https://www.alibabacloud.com/help/en/doc-detail/475800.html).
  late final pulumi.Output<String?> detectionStrategy;

  /// Snapshot information for the image See `disk_device_mapping` below.
  late final pulumi.Output<List<Map<String, dynamic>>> diskDeviceMappings;

  /// Features See `features` below.
  late final pulumi.Output<ImageFeatures> features;

  /// Whether to perform forced deletion. Value range:
  /// - true: forcibly deletes the custom image, ignoring whether the current image is used by other instances.
  /// - false: The custom image is deleted normally. Before deleting the custom image, check whether the current image is used by other instances.
  ///
  /// Default value: false
  late final pulumi.Output<bool?> force;

  /// The name of the image family. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty.
  late final pulumi.Output<String?> imageFamily;

  /// The name of the custom image. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with acs: or aliyun. It cannot contain http:// or https://. It can contain letters, digits, periods (.), colons (:), underscores (\_), and hyphens (-). By default, this parameter is empty. In this case, the original name is retained.
  late final pulumi.Output<String> imageName;

  /// The image version.
  ///
  /// &gt; **NOTE:**  If you specify an instance by configuring `InstanceId`, and the instance uses an Alibaba Cloud Marketplace image or a custom image that is created from an Alibaba Cloud Marketplace image, you must leave this parameter empty or set this parameter to the value of ImageVersion of the instance.
  late final pulumi.Output<String?> imageVersion;

  /// The instance ID.
  late final pulumi.Output<String?> instanceId;

  /// The type of the license that is used to activate the operating system after the image is imported. Set the value to BYOL. BYOL: The license that comes with the source operating system is used. When you use the BYOL license, make sure that your license key is supported by Alibaba Cloud.
  late final pulumi.Output<String?> licenseType;

  /// . Field 'name' has been deprecated from provider version 1.227.0. New field 'image_name' instead.
  late final pulumi.Output<String> name;

  /// The operating system distribution for the system disk in the custom image. If you specify a data disk snapshot to create the system disk of the custom image, use Platform to specify the operating system distribution for the system disk. Valid values: `Aliyun`, `Anolis`, `CentOS`, `Ubuntu`, `CoreOS`, `SUSE`, `Debian`, `OpenSUSE`, `FreeBSD`, `RedHat`, `Kylin`, `UOS`, `Fedora`, `Fedora CoreOS`, `CentOS Stream`, `AlmaLinux`, `Rocky Linux`, `Gentoo`, `Customized Linux`, `Others Linux`, `Windows Server 2022`, `Windows Server 2019`, `Windows Server 2016`, `Windows Server 2012`, `Windows Server 2008`, `Windows Server 2003`. Default value: `Others Linux`.
  late final pulumi.Output<String> platform;

  /// The ID of the resource group to which to assign the custom image. If you do not specify this parameter, the image is assigned to the default resource group.
  ///
  /// &gt; **NOTE:**   If you call the CreateImage operation as a Resource Access Management (RAM) user who does not have the permissions to manage the default resource group and do not specify `ResourceGroupId`, the `Forbbiden: User not authorized to operate on the specified resource` error message is returned. You must specify the ID of a resource group that the RAM user has the permissions to manage or grant the RAM user the permissions to manage the default resource group before you call the CreateImage operation again.
  late final pulumi.Output<String> resourceGroupId;

  /// The ID of the snapshot that you want to use to create the custom image.
  late final pulumi.Output<String?> snapshotId;

  /// The status of the image. By default, if you do not specify this parameter, only images in the Available state are returned.
  late final pulumi.Output<String> status;

  /// The tag
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_ecs_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(String name, {ImageArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'alicloud:ecs/image:Image',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    architecture = registerOutput<String?>('architecture');
    bootMode = registerOutput<String>('bootMode');
    createTime = registerOutput<String>('createTime');
    deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    description = registerOutput<String?>('description');
    detectionStrategy = registerOutput<String?>('detectionStrategy');
    diskDeviceMappings = registerOutput<List<Map<String, dynamic>>>(
      'diskDeviceMappings',
    );
    features = registerOutput<ImageFeatures>(
      'features',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageFeatures.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    force = registerOutput<bool?>('force');
    imageFamily = registerOutput<String?>('imageFamily');
    imageName = registerOutput<String>('imageName');
    imageVersion = registerOutput<String?>('imageVersion');
    instanceId = registerOutput<String?>('instanceId');
    licenseType = registerOutput<String?>('licenseType');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(String name, pulumi.Input<String> id, {ImageState? state}) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/image:Image',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    architecture = registerOutput<String?>('architecture');
    bootMode = registerOutput<String>('bootMode');
    createTime = registerOutput<String>('createTime');
    deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    description = registerOutput<String?>('description');
    detectionStrategy = registerOutput<String?>('detectionStrategy');
    diskDeviceMappings = registerOutput<List<Map<String, dynamic>>>(
      'diskDeviceMappings',
    );
    features = registerOutput<ImageFeatures>(
      'features',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ImageFeatures.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    force = registerOutput<bool?>('force');
    imageFamily = registerOutput<String?>('imageFamily');
    imageName = registerOutput<String>('imageName');
    imageVersion = registerOutput<String?>('imageVersion');
    instanceId = registerOutput<String?>('instanceId');
    licenseType = registerOutput<String?>('licenseType');
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    snapshotId = registerOutput<String?>('snapshotId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
