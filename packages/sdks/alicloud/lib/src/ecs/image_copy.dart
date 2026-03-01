import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_copy_args.dart';
import 'image_copy_state.dart';

/// Copies a custom image from one region to another. You can use copied images to perform operations in the target region, such as creating instances (RunInstances) and replacing system disks (ReplaceSystemDisk).
///
/// > **NOTE:** You can only copy the custom image when it is in the Available state.
///
/// > **NOTE:** You can only copy the image belonging to your Alibaba Cloud account. Images cannot be copied from one account to another.
///
/// > **NOTE:** If the copying is not completed, you cannot call DeleteImage to delete the image but you can call CancelCopyImage to cancel the copying.
///
/// > **NOTE:** Available since v1.66.0.
///
/// ## Example Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
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
/// const defaultImage = new alicloud.ecs.Image("default", {
///     instanceId: defaultInstance.id,
///     imageName: "terraform-example",
///     description: "terraform-example",
/// });
/// const defaultImageCopy = new alicloud.ecs.ImageCopy("default", {
///     sourceImageId: defaultImage.id,
///     sourceRegionId: "cn-hangzhou",
///     imageName: "terraform-example",
///     description: "terraform-example",
///     tags: {
///         FinanceDept: "FinanceDeptJoshua",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
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
/// default_image = alicloud.ecs.Image("default",
///     instance_id=default_instance.id,
///     image_name="terraform-example",
///     description="terraform-example")
/// default_image_copy = alicloud.ecs.ImageCopy("default",
///     source_image_id=default_image.id,
///     source_region_id="cn-hangzhou",
///     image_name="terraform-example",
///     description="terraform-example",
///     tags={
///         "FinanceDept": "FinanceDeptJoshua",
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
///     var defaultImage = new AliCloud.Ecs.Image("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ImageName = "terraform-example",
///         Description = "terraform-example",
///     });
///
///     var defaultImageCopy = new AliCloud.Ecs.ImageCopy("default", new()
///     {
///         SourceImageId = defaultImage.Id,
///         SourceRegionId = "cn-hangzhou",
///         ImageName = "terraform-example",
///         Description = "terraform-example",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		defaultImage, err := ecs.NewImage(ctx, "default", &ecs.ImageArgs{
/// 			InstanceId:  defaultInstance.ID(),
/// 			ImageName:   pulumi.String("terraform-example"),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewImageCopy(ctx, "default", &ecs.ImageCopyArgs{
/// 			SourceImageId:  defaultImage.ID(),
/// 			SourceRegionId: pulumi.String("cn-hangzhou"),
/// 			ImageName:      pulumi.String("terraform-example"),
/// 			Description:    pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.ecs.Image;
/// import com.pulumi.alicloud.ecs.ImageArgs;
/// import com.pulumi.alicloud.ecs.ImageCopy;
/// import com.pulumi.alicloud.ecs.ImageCopyArgs;
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
///         var defaultImage = new Image("defaultImage", ImageArgs.builder()
///             .instanceId(defaultInstance.id())
///             .imageName("terraform-example")
///             .description("terraform-example")
///             .build());
///
///         var defaultImageCopy = new ImageCopy("defaultImageCopy", ImageCopyArgs.builder()
///             .sourceImageId(defaultImage.id())
///             .sourceRegionId("cn-hangzhou")
///             .imageName("terraform-example")
///             .description("terraform-example")
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
///   defaultImage:
///     type: alicloud:ecs:Image
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       imageName: terraform-example
///       description: terraform-example
///   defaultImageCopy:
///     type: alicloud:ecs:ImageCopy
///     name: default
///     properties:
///       sourceImageId: ${defaultImage.id}
///       sourceRegionId: cn-hangzhou
///       imageName: terraform-example
///       description: terraform-example
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
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Attributes Reference0
///
/// The following attributes are exported:
///
/// * `id` - ID of the image.
///
/// ## Import
///
/// image can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/imageCopy:ImageCopy default m-uf66871ape***yg1q***
/// ```
class ImageCopy extends pulumi.CustomResource {
  late final pulumi.Output<bool?> deleteAutoSnapshot;
  /// The description of the image. It must be 2 to 256 characters in length and must not start with http:// or https://. Default value: null.
  late final pulumi.Output<String?> description;
  /// Indicates whether to encrypt the image.
  late final pulumi.Output<bool?> encrypted;
  /// Indicates whether to force delete the custom image, Default is `false`.
  /// - true：Force deletes the custom image, regardless of whether the image is currently being used by other instances.
  /// - false：Verifies that the image is not currently in use by any other instances before deleting the image.
  late final pulumi.Output<bool?> force;
  /// The image name. It must be 2 to 128 characters in length, and must begin with a letter or Chinese character (beginning with http:// or https:// is not allowed). It can contain digits, colons (:), underscores (_), or hyphens (-). Default value: null.
  late final pulumi.Output<String> imageName;
  /// Key ID used to encrypt the image.
  late final pulumi.Output<String?> kmsKeyId;
  late final pulumi.Output<String> name;
  /// The source image ID.
  late final pulumi.Output<String> sourceImageId;
  /// The ID of the region to which the source custom image belongs. You can call [DescribeRegions](https://www.alibabacloud.com/help/doc-detail/25609.htm) to view the latest regions of Alibaba Cloud.
  late final pulumi.Output<String> sourceRegionId;
  /// The tag value of an image. The value of N ranges from 1 to 20.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ImageCopy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageCopy]. {@macro pulumi_ecs_image_copy_image_copy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageCopy(
    String name, {
    ImageCopyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/imageCopy:ImageCopy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.force = registerOutput<bool?>('force');
    this.imageName = registerOutput<String>('imageName');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.sourceImageId = registerOutput<String>('sourceImageId');
    this.sourceRegionId = registerOutput<String>('sourceRegionId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ImageCopy] resource's state with the given [name] and [id].
  static ImageCopy get(
    String name,
    pulumi.Input<String> id, {
    ImageCopyState? state,
  }) {
    return ImageCopy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageCopy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/imageCopy:ImageCopy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deleteAutoSnapshot = registerOutput<bool?>('deleteAutoSnapshot');
    this.description = registerOutput<String?>('description');
    this.encrypted = registerOutput<bool?>('encrypted');
    this.force = registerOutput<bool?>('force');
    this.imageName = registerOutput<String>('imageName');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.sourceImageId = registerOutput<String>('sourceImageId');
    this.sourceRegionId = registerOutput<String>('sourceRegionId');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
