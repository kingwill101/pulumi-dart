import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_cache_args.dart';
import 'image_cache_image_registry_credential.dart';

/// An ECI Image Cache can help user to solve the time-consuming problem of image pull. For information about Alicloud ECI Image Cache and how to use it, see [What is Resource Alicloud ECI Image Cache](https://www.alibabacloud.com/help/doc-detail/146891.htm).
///
/// > **NOTE:** Available since v1.89.0.
///
/// > **NOTE:** Each image cache corresponds to a snapshot, and the user does not delete the snapshot directly, otherwise the cache will fail.
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
/// const _default = alicloud.eci.getZones({});
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vswitchName: name,
///     cidrBlock: "10.1.0.0/16",
///     vpcId: defaultNetwork.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.zoneIds?.[0]),
/// });
/// const defaultSecurityGroup = new alicloud.ecs.SecurityGroup("default", {
///     name: name,
///     vpcId: defaultNetwork.id,
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {
///     isp: "BGP",
///     addressName: name,
///     netmode: "public",
///     bandwidth: "1",
///     securityProtectionTypes: ["AntiDDoS_Enhanced"],
///     paymentType: "PayAsYouGo",
/// });
/// const defaultGetRegions = alicloud.getRegions({
///     current: true,
/// });
/// const defaultImageCache = new alicloud.eci.ImageCache("default", {
///     imageCacheName: name,
///     images: [defaultGetRegions.then(defaultGetRegions => `registry-vpc.${defaultGetRegions.regions?.[0]?.id}.aliyuncs.com/eci_open/nginx:alpine`)],
///     securityGroupId: defaultSecurityGroup.id,
///     vswitchId: defaultSwitch.id,
///     eipInstanceId: defaultEipAddress.id,
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
/// default = alicloud.eci.get_zones()
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_switch = alicloud.vpc.Switch("default",
///     vswitch_name=name,
///     cidr_block="10.1.0.0/16",
///     vpc_id=default_network.id,
///     zone_id=default.zones[0].zone_ids[0])
/// default_security_group = alicloud.ecs.SecurityGroup("default",
///     name=name,
///     vpc_id=default_network.id)
/// default_eip_address = alicloud.ecs.EipAddress("default",
///     isp="BGP",
///     address_name=name,
///     netmode="public",
///     bandwidth="1",
///     security_protection_types=["AntiDDoS_Enhanced"],
///     payment_type="PayAsYouGo")
/// default_get_regions = alicloud.get_regions(current=True)
/// default_image_cache = alicloud.eci.ImageCache("default",
///     image_cache_name=name,
///     images=[f"registry-vpc.{default_get_regions.regions[0].id}.aliyuncs.com/eci_open/nginx:alpine"],
///     security_group_id=default_security_group.id,
///     vswitch_id=default_switch.id,
///     eip_instance_id=default_eip_address.id)
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
///     var @default = AliCloud.Eci.GetZones.Invoke();
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
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.ZoneIds[0])),
///     });
///
///     var defaultSecurityGroup = new AliCloud.Ecs.SecurityGroup("default", new()
///     {
///         Name = name,
///         VpcId = defaultNetwork.Id,
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         Isp = "BGP",
///         AddressName = name,
///         Netmode = "public",
///         Bandwidth = "1",
///         SecurityProtectionTypes = new[]
///         {
///             "AntiDDoS_Enhanced",
///         },
///         PaymentType = "PayAsYouGo",
///     });
///
///     var defaultGetRegions = AliCloud.GetRegions.Invoke(new()
///     {
///         Current = true,
///     });
///
///     var defaultImageCache = new AliCloud.Eci.ImageCache("default", new()
///     {
///         ImageCacheName = name,
///         Images = new[]
///         {
///             $"registry-vpc.{defaultGetRegions.Apply(getRegionsResult => getRegionsResult.Regions[0]?.Id)}.aliyuncs.com/eci_open/nginx:alpine",
///         },
///         SecurityGroupId = defaultSecurityGroup.Id,
///         VswitchId = defaultSwitch.Id,
///         EipInstanceId = defaultEipAddress.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/eci"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
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
/// 		_default, err := eci.GetZones(ctx, &eci.GetZonesArgs{}, nil)
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
/// 			ZoneId:      pulumi.String(_default.Zones[0].ZoneIds[0]),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityGroup, err := ecs.NewSecurityGroup(ctx, "default", &ecs.SecurityGroupArgs{
/// 			Name:  pulumi.String(name),
/// 			VpcId: defaultNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			Isp:         pulumi.String("BGP"),
/// 			AddressName: pulumi.String(name),
/// 			Netmode:     pulumi.String("public"),
/// 			Bandwidth:   pulumi.String("1"),
/// 			SecurityProtectionTypes: pulumi.StringArray{
/// 				pulumi.String("AntiDDoS_Enhanced"),
/// 			},
/// 			PaymentType: pulumi.String("PayAsYouGo"),
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
/// 		_, err = eci.NewImageCache(ctx, "default", &eci.ImageCacheArgs{
/// 			ImageCacheName: pulumi.String(name),
/// 			Images: pulumi.StringArray{
/// 				pulumi.Sprintf("registry-vpc.%v.aliyuncs.com/eci_open/nginx:alpine", defaultGetRegions.Regions[0].Id),
/// 			},
/// 			SecurityGroupId: defaultSecurityGroup.ID(),
/// 			VswitchId:       defaultSwitch.ID(),
/// 			EipInstanceId:   defaultEipAddress.ID(),
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
/// import com.pulumi.alicloud.eci.EciFunctions;
/// import com.pulumi.alicloud.eci.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetRegionsArgs;
/// import com.pulumi.alicloud.eci.ImageCache;
/// import com.pulumi.alicloud.eci.ImageCacheArgs;
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
///         final var default = EciFunctions.getZones(GetZonesArgs.builder()
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
///             .zoneId(default_.zones()[0].zoneIds()[0])
///             .build());
///
///         var defaultSecurityGroup = new SecurityGroup("defaultSecurityGroup", SecurityGroupArgs.builder()
///             .name(name)
///             .vpcId(defaultNetwork.id())
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .isp("BGP")
///             .addressName(name)
///             .netmode("public")
///             .bandwidth("1")
///             .securityProtectionTypes("AntiDDoS_Enhanced")
///             .paymentType("PayAsYouGo")
///             .build());
///
///         final var defaultGetRegions = AlicloudFunctions.getRegions(GetRegionsArgs.builder()
///             .current(true)
///             .build());
///
///         var defaultImageCache = new ImageCache("defaultImageCache", ImageCacheArgs.builder()
///             .imageCacheName(name)
///             .images(String.format("registry-vpc.%s.aliyuncs.com/eci_open/nginx:alpine", defaultGetRegions.regions()[0].id()))
///             .securityGroupId(defaultSecurityGroup.id())
///             .vswitchId(defaultSwitch.id())
///             .eipInstanceId(defaultEipAddress.id())
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
///       cidrBlock: 10.0.0.0/8
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.1.0.0/16
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${default.zones[0].zoneIds[0]}
///   defaultSecurityGroup:
///     type: alicloud:ecs:SecurityGroup
///     name: default
///     properties:
///       name: ${name}
///       vpcId: ${defaultNetwork.id}
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       isp: BGP
///       addressName: ${name}
///       netmode: public
///       bandwidth: '1'
///       securityProtectionTypes:
///         - AntiDDoS_Enhanced
///       paymentType: PayAsYouGo
///   defaultImageCache:
///     type: alicloud:eci:ImageCache
///     name: default
///     properties:
///       imageCacheName: ${name}
///       images:
///         - registry-vpc.${defaultGetRegions.regions[0].id}.aliyuncs.com/eci_open/nginx:alpine
///       securityGroupId: ${defaultSecurityGroup.id}
///       vswitchId: ${defaultSwitch.id}
///       eipInstanceId: ${defaultEipAddress.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:eci:getZones
///       arguments: {}
///   defaultGetRegions:
///     fn::invoke:
///       function: alicloud:getRegions
///       arguments:
///         current: true
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// ECI Image Cache can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:eci/imageCache:ImageCache example abc123456
/// ```
class ImageCache extends pulumi.CustomResource {
  /// The ID of the container group job that is used to create the image cache.
  late final pulumi.Output<String> containerGroupId;
  /// The instance ID of the Elastic IP Address (EIP). If you want to pull images from the Internet, you must specify an EIP to make sure that the container group can access the Internet. You can also configure the network address translation (NAT) gateway. We recommend that you configure the NAT gateway for the Internet access. Refer to [Public Network Access Method](https://help.aliyun.com/document_detail/99146.html)
  late final pulumi.Output<String?> eipInstanceId;
  /// The name of the image cache.
  late final pulumi.Output<String> imageCacheName;
  /// The size of the image cache. Default to `20`. Unit: GiB.
  late final pulumi.Output<int?> imageCacheSize;
  /// The Image Registry parameters about the image to be cached. See `image_registry_credential` below.
  late final pulumi.Output<List<ImageCacheImageRegistryCredential>?> imageRegistryCredentials;
  /// The images to be cached. The image name must be versioned.
  late final pulumi.Output<List<String>> images;
  /// The ID of the resource group.
  late final pulumi.Output<String?> resourceGroupId;
  /// The retention days of the image cache. Once the image cache expires, it will be cleared. By default, the image cache never expires. Note: The image cache that fails to be created is retained for only one day.
  late final pulumi.Output<int?> retentionDays;
  /// The ID of the security group. You do not need to specify the same security group as the container group.
  late final pulumi.Output<String> securityGroupId;
  /// The status of the image cache.
  late final pulumi.Output<String> status;
  /// The ID of the VSwitch. You do not need to specify the same VSwitch as the container group.
  late final pulumi.Output<String> vswitchId;
  /// The zone id to cache image.
  late final pulumi.Output<String?> zoneId;

  /// Creates a new [ImageCache].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageCache]. {@macro pulumi_eci_image_cache_image_cache_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageCache(
    String name, {
    ImageCacheArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:eci/imageCache:ImageCache',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.containerGroupId = registerOutput<String>('containerGroupId');
    this.eipInstanceId = registerOutput<String?>('eipInstanceId');
    this.imageCacheName = registerOutput<String>('imageCacheName');
    this.imageCacheSize = registerOutput<int?>('imageCacheSize');
    this.imageRegistryCredentials = registerOutput<List<ImageCacheImageRegistryCredential>?>('imageRegistryCredentials');
    this.images = registerOutput<List<String>>('images');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.securityGroupId = registerOutput<String>('securityGroupId');
    this.status = registerOutput<String>('status');
    this.vswitchId = registerOutput<String>('vswitchId');
    this.zoneId = registerOutput<String?>('zoneId');
  }
}
