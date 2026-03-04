import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_export_args.dart';
import 'image_export_state.dart';

/// Export a custom image to the OSS bucket in the same region as the custom image.
///
/// &gt; **NOTE:** If you create an ECS instance using a mirror image and create a system disk snapshot again, exporting a custom image created from the system disk snapshot is not supported.
///
/// &gt; **NOTE:** Support for exporting custom images that include data disk snapshot information in the image. The number of data disks cannot exceed 4 and the maximum capacity of a single data disk cannot exceed 500 GiB.
///
/// &gt; **NOTE:** Before exporting the image, you must authorize the cloud server ECS official service account to write OSS permissions through RAM.
///
/// &gt; **NOTE:** Available since v1.68.0.
///
/// ## Example Usage
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
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultImage = new alicloud.ecs.Image("default", {
///     instanceId: defaultInstance.id,
///     imageName: `terraform-example-${defaultInteger.result}`,
///     description: "terraform-example",
/// });
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `example-value-${defaultInteger.result}`});
/// const defaultImageExport = new alicloud.ecs.ImageExport("default", {
///     imageId: defaultImage.id,
///     ossBucket: defaultBucket.id,
///     ossPrefix: "ecsExport",
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
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_image = alicloud.ecs.Image("default",
///     instance_id=default_instance.id,
///     image_name=f"terraform-example-{default_integer['result']}",
///     description="terraform-example")
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"example-value-{default_integer['result']}")
/// default_image_export = alicloud.ecs.ImageExport("default",
///     image_id=default_image.id,
///     oss_bucket=default_bucket.id,
///     oss_prefix="ecsExport")
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultImage = new AliCloud.Ecs.Image("default", new()
///     {
///         InstanceId = defaultInstance.Id,
///         ImageName = $"terraform-example-{defaultInteger.Result}",
///         Description = "terraform-example",
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"example-value-{defaultInteger.Result}",
///     });
///
///     var defaultImageExport = new AliCloud.Ecs.ImageExport("default", new()
///     {
///         ImageId = defaultImage.Id,
///         OssBucket = defaultBucket.Id,
///         OssPrefix = "ecsExport",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
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
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultImage, err := ecs.NewImage(ctx, "default", &ecs.ImageArgs{
/// 			InstanceId:  defaultInstance.ID(),
/// 			ImageName:   pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("example-value-%v", defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewImageExport(ctx, "default", &ecs.ImageExportArgs{
/// 			ImageId:   defaultImage.ID(),
/// 			OssBucket: defaultBucket.ID(),
/// 			OssPrefix: pulumi.String("ecsExport"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.ecs.Image;
/// import com.pulumi.alicloud.ecs.ImageArgs;
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.ecs.ImageExport;
/// import com.pulumi.alicloud.ecs.ImageExportArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultImage = new Image("defaultImage", ImageArgs.builder()
///             .instanceId(defaultInstance.id())
///             .imageName(String.format("terraform-example-%s", defaultInteger.result()))
///             .description("terraform-example")
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("example-value-%s", defaultInteger.result()))
///             .build());
///
///         var defaultImageExport = new ImageExport("defaultImageExport", ImageExportArgs.builder()
///             .imageId(defaultImage.id())
///             .ossBucket(defaultBucket.id())
///             .ossPrefix("ecsExport")
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
///       max: 99999
///       min: 10000
///   defaultImage:
///     type: alicloud:ecs:Image
///     name: default
///     properties:
///       instanceId: ${defaultInstance.id}
///       imageName: terraform-example-${defaultInteger.result}
///       description: terraform-example
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: example-value-${defaultInteger.result}
///   defaultImageExport:
///     type: alicloud:ecs:ImageExport
///     name: default
///     properties:
///       imageId: ${defaultImage.id}
///       ossBucket: ${defaultBucket.id}
///       ossPrefix: ecsExport
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
class ImageExport extends pulumi.CustomResource {
  /// The source image ID.
  late final pulumi.Output<String> imageId;

  /// Save the exported OSS bucket.
  late final pulumi.Output<String> ossBucket;

  /// The prefix of your OSS Object. It can be composed of numbers or letters, and the character length is 1 ~ 30.
  late final pulumi.Output<String?> ossPrefix;

  /// Creates a new [ImageExport].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageExport]. {@macro pulumi_ecs_image_export_image_export_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageExport(
    String name, {
    ImageExportArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/imageExport:ImageExport',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    imageId = registerOutput<String>('imageId');
    ossBucket = registerOutput<String>('ossBucket');
    ossPrefix = registerOutput<String?>('ossPrefix');
  }

  /// Gets an existing [ImageExport] resource's state with the given [name] and [id].
  static ImageExport get(
    String name,
    pulumi.Input<String> id, {
    ImageExportState? state,
  }) {
    return ImageExport._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageExport._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:ecs/imageExport:ImageExport',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    imageId = registerOutput<String>('imageId');
    ossBucket = registerOutput<String>('ossBucket');
    ossPrefix = registerOutput<String?>('ossPrefix');
  }
}
