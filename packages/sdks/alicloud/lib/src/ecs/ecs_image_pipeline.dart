import 'package:pulumi/pulumi.dart' as pulumi;
import 'ecs_image_pipeline_args.dart';
import 'ecs_image_pipeline_state.dart';

/// Provides a ECS Image Pipeline resource.
///
/// For information about ECS Image Pipeline and how to use it, see [What is Image Pipeline](https://www.alibabacloud.com/help/en/doc-detail/200427.html).
///
/// &gt; **NOTE:** Available in v1.163.0+.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({
///     nameRegex: "default",
/// });
/// const defaultGetZones = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const defaultGetInstanceTypes = defaultGetImages.then(defaultGetImages => alicloud.ecs.getInstanceTypes({
///     imageId: defaultGetImages.ids?.[0],
/// }));
/// const defaultGetAccount = alicloud.getAccount({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: defaultGetZones.then(defaultGetZones => defaultGetZones.zones?.[0]?.id),
/// });
/// const defaultEcsImagePipeline = new alicloud.ecs.EcsImagePipeline("default", {
///     addAccounts: [defaultGetAccount.then(defaultGetAccount => defaultGetAccount.id)],
///     baseImage: defaultGetImages.then(defaultGetImages => defaultGetImages.ids?.[0]),
///     baseImageType: "IMAGE",
///     buildContent: "RUN yum update -y",
///     deleteInstanceOnFailure: false,
///     imageName: "terraform-example",
///     name: "terraform-example",
///     description: "terraform-example",
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.ids?.[0]),
///     resourceGroupId: _default.then(_default => _default.groups?.[0]?.id),
///     internetMaxBandwidthOut: 20,
///     systemDiskSize: 40,
///     toRegionIds: [
///         "cn-qingdao",
///         "cn-zhangjiakou",
///     ],
///     vswitchId: defaultSwitch.id,
///     tags: {
///         Created: "TF",
///         For: "Acceptance-test",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.resourcemanager.get_resource_groups(name_regex="default")
/// default_get_zones = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// default_get_instance_types = alicloud.ecs.get_instance_types(image_id=default_get_images.ids[0])
/// default_get_account = alicloud.get_account()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name="terraform-example",
///     cidr_block="172.17.3.0/24",
///     vpc_id=default_network.id,
///     zone_id=default_get_zones.zones[0].id)
/// default_ecs_image_pipeline = alicloud.ecs.EcsImagePipeline("default",
///     add_accounts=[default_get_account.id],
///     base_image=default_get_images.ids[0],
///     base_image_type="IMAGE",
///     build_content="RUN yum update -y",
///     delete_instance_on_failure=False,
///     image_name="terraform-example",
///     name="terraform-example",
///     description="terraform-example",
///     instance_type=default_get_instance_types.ids[0],
///     resource_group_id=default.groups[0].id,
///     internet_max_bandwidth_out=20,
///     system_disk_size=40,
///     to_region_ids=[
///         "cn-qingdao",
///         "cn-zhangjiakou",
///     ],
///     vswitch_id=default_switch.id,
///     tags={
///         "Created": "TF",
///         "For": "Acceptance-test",
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         NameRegex = "default",
///     });
///
///     var defaultGetZones = AliCloud.GetZones.Invoke(new()
///     {
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
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Ids[0]),
///     });
///
///     var defaultGetAccount = AliCloud.GetAccount.Invoke();
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
///         ZoneId = defaultGetZones.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///     });
///
///     var defaultEcsImagePipeline = new AliCloud.Ecs.EcsImagePipeline("default", new()
///     {
///         AddAccounts = new[]
///         {
///             defaultGetAccount.Apply(getAccountResult => getAccountResult.Id),
///         },
///         BaseImage = defaultGetImages.Apply(getImagesResult => getImagesResult.Ids[0]),
///         BaseImageType = "IMAGE",
///         BuildContent = "RUN yum update -y",
///         DeleteInstanceOnFailure = false,
///         ImageName = "terraform-example",
///         Name = "terraform-example",
///         Description = "terraform-example",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.Ids[0]),
///         ResourceGroupId = @default.Apply(@default => @default.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id)),
///         InternetMaxBandwidthOut = 20,
///         SystemDiskSize = 40,
///         ToRegionIds = new[]
///         {
///             "cn-qingdao",
///             "cn-zhangjiakou",
///         },
///         VswitchId = defaultSwitch.Id,
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "Acceptance-test" },
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			NameRegex: pulumi.StringRef("default"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetZones, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
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
/// 			ImageId: pulumi.StringRef(defaultGetImages.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetAccount, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
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
/// 			ZoneId:      pulumi.String(defaultGetZones.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEcsImagePipeline(ctx, "default", &ecs.EcsImagePipelineArgs{
/// 			AddAccounts: pulumi.StringArray{
/// 				pulumi.String(defaultGetAccount.Id),
/// 			},
/// 			BaseImage:               pulumi.String(defaultGetImages.Ids[0]),
/// 			BaseImageType:           pulumi.String("IMAGE"),
/// 			BuildContent:            pulumi.String("RUN yum update -y"),
/// 			DeleteInstanceOnFailure: pulumi.Bool(false),
/// 			ImageName:               pulumi.String("terraform-example"),
/// 			Name:                    pulumi.String("terraform-example"),
/// 			Description:             pulumi.String("terraform-example"),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.Ids[0]),
/// 			ResourceGroupId:         pulumi.String(_default.Groups[0].Id),
/// 			InternetMaxBandwidthOut: pulumi.Int(20),
/// 			SystemDiskSize:          pulumi.Int(40),
/// 			ToRegionIds: pulumi.StringArray{
/// 				pulumi.String("cn-qingdao"),
/// 				pulumi.String("cn-zhangjiakou"),
/// 			},
/// 			VswitchId: defaultSwitch.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("Acceptance-test"),
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.EcsImagePipeline;
/// import com.pulumi.alicloud.ecs.EcsImagePipelineArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .nameRegex("default")
///             .build());
///
///         final var defaultGetZones = AlicloudFunctions.getZones(GetZonesArgs.builder()
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
///             .imageId(defaultGetImages.ids()[0])
///             .build());
///
///         final var defaultGetAccount = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
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
///             .zoneId(defaultGetZones.zones()[0].id())
///             .build());
///
///         var defaultEcsImagePipeline = new EcsImagePipeline("defaultEcsImagePipeline", EcsImagePipelineArgs.builder()
///             .addAccounts(defaultGetAccount.id())
///             .baseImage(defaultGetImages.ids()[0])
///             .baseImageType("IMAGE")
///             .buildContent("RUN yum update -y")
///             .deleteInstanceOnFailure(false)
///             .imageName("terraform-example")
///             .name("terraform-example")
///             .description("terraform-example")
///             .instanceType(defaultGetInstanceTypes.ids()[0])
///             .resourceGroupId(default_.groups()[0].id())
///             .internetMaxBandwidthOut(20)
///             .systemDiskSize(40)
///             .toRegionIds(
///                 "cn-qingdao",
///                 "cn-zhangjiakou")
///             .vswitchId(defaultSwitch.id())
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "Acceptance-test")
///             ))
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
///       zoneId: ${defaultGetZones.zones[0].id}
///   defaultEcsImagePipeline:
///     type: alicloud:ecs:EcsImagePipeline
///     name: default
///     properties:
///       addAccounts:
///         - ${defaultGetAccount.id}
///       baseImage: ${defaultGetImages.ids[0]}
///       baseImageType: IMAGE
///       buildContent: RUN yum update -y
///       deleteInstanceOnFailure: false
///       imageName: terraform-example
///       name: terraform-example
///       description: terraform-example
///       instanceType: ${defaultGetInstanceTypes.ids[0]}
///       resourceGroupId: ${default.groups[0].id}
///       internetMaxBandwidthOut: 20
///       systemDiskSize: 40
///       toRegionIds:
///         - cn-qingdao
///         - cn-zhangjiakou
///       vswitchId: ${defaultSwitch.id}
///       tags:
///         Created: TF
///         For: Acceptance-test
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         nameRegex: default
///   defaultGetZones:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
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
///         imageId: ${defaultGetImages.ids[0]}
///   defaultGetAccount:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECS Image Pipeline can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/ecsImagePipeline:EcsImagePipeline example <id>
/// ```
class EcsImagePipeline extends pulumi.CustomResource {
  /// The ID of Alibaba Cloud account to which to share the created image.
  late final pulumi.Output<List<String>?> addAccounts;
  /// The source image. When you set `base_image_type` to `IMAGE`, set `base_image` to the ID of a custom image. When you set `base_image_type` to `IMAGE_FAMILY`, set `base_image` to the name of an image family.
  late final pulumi.Output<String> baseImage;
  /// The type of the source image. Valid values: `IMAGE`, `IMAGE_FAMILY`.
  /// - IMAGE: custom image.
  /// - IMAGE_FAMILY: image family.
  late final pulumi.Output<String> baseImageType;
  /// The content of the image template. The content cannot be greater than 16 KB in size, and can contain up to 127 commands.
  late final pulumi.Output<String?> buildContent;
  /// Specifies whether to release the intermediate instance if the image cannot be created.
  late final pulumi.Output<bool> deleteInstanceOnFailure;
  /// The description of the image template. The description must be `2` to `256` characters in length and cannot start with `http://` or `https://`. **Note:** If the intermediate instance cannot be started, the instance is released by default.
  late final pulumi.Output<String?> description;
  /// The name prefix of the image to be created. The prefix must be `2` to `64` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  late final pulumi.Output<String?> imageName;
  /// The instance type of the instance. You can call the DescribeInstanceTypes operation to query instance types. If you do not specify this parameter, an instance type that provides the fewest vCPUs and memory resources is automatically selected. This configuration is subject to resource availability of instance types. For example, the `ecs.g6.large` instance type is selected by default. If available `ecs.g6.large` resources are insufficient, the `ecs.g6.xlarge` instance type is selected.
  late final pulumi.Output<String?> instanceType;
  /// The size of the outbound public bandwidth for the intermediate instance. Unit: `Mbit/s`. Valid values: `0` to `100`. Default value: `0`.
  late final pulumi.Output<int> internetMaxBandwidthOut;
  /// The name of the image template. The name must be `2` to `128` characters in length. It must start with a letter and cannot start with `http://` or `https://`. It can contain letters, digits, colons (:), underscores (_), periods (.),and hyphens (-).
  late final pulumi.Output<String> name;
  /// The ID of the resource group.
  late final pulumi.Output<String> resourceGroupId;
  /// The size of the system disk of the intermediate instance. Unit: GiB. Valid values: `20` to `500`. Default value: `40`.
  late final pulumi.Output<int> systemDiskSize;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of region to which to distribute the created image.
  late final pulumi.Output<List<String>?> toRegionIds;
  /// The ID of the vSwitch. If you do not specify this parameter, a virtual private cloud (VPC) and a vSwitch are created by default.
  late final pulumi.Output<String?> vswitchId;

  /// Creates a new [EcsImagePipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EcsImagePipeline]. {@macro pulumi_ecs_ecs_image_pipeline_ecs_image_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EcsImagePipeline(
    String name, {
    EcsImagePipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsImagePipeline:EcsImagePipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addAccounts = registerOutput<List<String>?>('addAccounts');
    baseImage = registerOutput<String>('baseImage');
    baseImageType = registerOutput<String>('baseImageType');
    buildContent = registerOutput<String?>('buildContent');
    deleteInstanceOnFailure = registerOutput<bool>('deleteInstanceOnFailure');
    description = registerOutput<String?>('description');
    imageName = registerOutput<String?>('imageName');
    instanceType = registerOutput<String?>('instanceType');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    toRegionIds = registerOutput<List<String>?>('toRegionIds');
    vswitchId = registerOutput<String?>('vswitchId');
  }

  /// Gets an existing [EcsImagePipeline] resource's state with the given [name] and [id].
  static EcsImagePipeline get(
    String name,
    pulumi.Input<String> id, {
    EcsImagePipelineState? state,
  }) {
    return EcsImagePipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EcsImagePipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/ecsImagePipeline:EcsImagePipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addAccounts = registerOutput<List<String>?>('addAccounts');
    baseImage = registerOutput<String>('baseImage');
    baseImageType = registerOutput<String>('baseImageType');
    buildContent = registerOutput<String?>('buildContent');
    deleteInstanceOnFailure = registerOutput<bool>('deleteInstanceOnFailure');
    description = registerOutput<String?>('description');
    imageName = registerOutput<String?>('imageName');
    instanceType = registerOutput<String?>('instanceType');
    internetMaxBandwidthOut = registerOutput<int>('internetMaxBandwidthOut');
    this.name = registerOutput<String>('name');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    systemDiskSize = registerOutput<int>('systemDiskSize');
    tags = registerOutput<Map<String, String>?>('tags');
    toRegionIds = registerOutput<List<String>?>('toRegionIds');
    vswitchId = registerOutput<String?>('vswitchId');
  }
}
