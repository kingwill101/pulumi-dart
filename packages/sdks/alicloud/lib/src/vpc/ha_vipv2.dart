import 'package:pulumi/pulumi.dart' as pulumi;
import 'ha_vipv2_args.dart';
import 'ha_vipv2_state.dart';

/// Provides a VPC Ha Vip resource.
///
/// Highly available virtual IP.
///
/// For information about VPC Ha Vip and how to use it, see [What is Ha Vip](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/createhavip).
///
/// &gt; **NOTE:** Available since v1.205.0.
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
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultVpc = new alicloud.vpc.Network("defaultVpc", {
///     description: name,
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultVswitch = new alicloud.vpc.Switch("defaultVswitch", {
///     vpcId: defaultVpc.id,
///     cidrBlock: "192.168.0.0/21",
///     vswitchName: `${name}1`,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     description: name,
/// });
/// const defaultRg = new alicloud.resourcemanager.ResourceGroup("defaultRg", {
///     displayName: "tf-example-defaultRg",
///     resourceGroupName: `${name}2`,
/// });
/// const changeRg = new alicloud.resourcemanager.ResourceGroup("changeRg", {
///     displayName: "tf-example-changeRg",
///     resourceGroupName: `${name}3`,
/// });
/// const defaultHaVipv2 = new alicloud.vpc.HaVipv2("default", {
///     description: name,
///     vswitchId: defaultVswitch.id,
///     haVipName: name,
///     ipAddress: "192.168.1.101",
///     resourceGroupId: defaultRg.id,
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
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_vpc = alicloud.vpc.Network("defaultVpc",
///     description=name,
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_vswitch = alicloud.vpc.Switch("defaultVswitch",
///     vpc_id=default_vpc.id,
///     cidr_block="192.168.0.0/21",
///     vswitch_name=f"{name}1",
///     zone_id=default.zones[0].id,
///     description=name)
/// default_rg = alicloud.resourcemanager.ResourceGroup("defaultRg",
///     display_name="tf-example-defaultRg",
///     resource_group_name=f"{name}2")
/// change_rg = alicloud.resourcemanager.ResourceGroup("changeRg",
///     display_name="tf-example-changeRg",
///     resource_group_name=f"{name}3")
/// default_ha_vipv2 = alicloud.vpc.HaVipv2("default",
///     description=name,
///     vswitch_id=default_vswitch.id,
///     ha_vip_name=name,
///     ip_address="192.168.1.101",
///     resource_group_id=default_rg.id)
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
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultVpc = new AliCloud.Vpc.Network("defaultVpc", new()
///     {
///         Description = name,
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultVswitch = new AliCloud.Vpc.Switch("defaultVswitch", new()
///     {
///         VpcId = defaultVpc.Id,
///         CidrBlock = "192.168.0.0/21",
///         VswitchName = $"{name}1",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         Description = name,
///     });
///
///     var defaultRg = new AliCloud.ResourceManager.ResourceGroup("defaultRg", new()
///     {
///         DisplayName = "tf-example-defaultRg",
///         ResourceGroupName = $"{name}2",
///     });
///
///     var changeRg = new AliCloud.ResourceManager.ResourceGroup("changeRg", new()
///     {
///         DisplayName = "tf-example-changeRg",
///         ResourceGroupName = $"{name}3",
///     });
///
///     var defaultHaVipv2 = new AliCloud.Vpc.HaVipv2("default", new()
///     {
///         Description = name,
///         VswitchId = defaultVswitch.Id,
///         HaVipName = name,
///         IpAddress = "192.168.1.101",
///         ResourceGroupId = defaultRg.Id,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVpc, err := vpc.NewNetwork(ctx, "defaultVpc", &vpc.NetworkArgs{
/// 			Description: pulumi.String(name),
/// 			VpcName:     pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVswitch, err := vpc.NewSwitch(ctx, "defaultVswitch", &vpc.SwitchArgs{
/// 			VpcId:       defaultVpc.ID(),
/// 			CidrBlock:   pulumi.String("192.168.0.0/21"),
/// 			VswitchName: pulumi.Sprintf("%v1", name),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			Description: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRg, err := resourcemanager.NewResourceGroup(ctx, "defaultRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-example-defaultRg"),
/// 			ResourceGroupName: pulumi.Sprintf("%v2", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = resourcemanager.NewResourceGroup(ctx, "changeRg", &resourcemanager.ResourceGroupArgs{
/// 			DisplayName:       pulumi.String("tf-example-changeRg"),
/// 			ResourceGroupName: pulumi.Sprintf("%v3", name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewHaVipv2(ctx, "default", &vpc.HaVipv2Args{
/// 			Description:     pulumi.String(name),
/// 			VswitchId:       defaultVswitch.ID(),
/// 			HaVipName:       pulumi.String(name),
/// 			IpAddress:       pulumi.String("192.168.1.101"),
/// 			ResourceGroupId: defaultRg.ID(),
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
/// import com.pulumi.alicloud.resourcemanager.ResourceGroup;
/// import com.pulumi.alicloud.resourcemanager.ResourceGroupArgs;
/// import com.pulumi.alicloud.vpc.HaVipv2;
/// import com.pulumi.alicloud.vpc.HaVipv2Args;
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
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultVpc = new Network("defaultVpc", NetworkArgs.builder()
///             .description(name)
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultVswitch = new Switch("defaultVswitch", SwitchArgs.builder()
///             .vpcId(defaultVpc.id())
///             .cidrBlock("192.168.0.0/21")
///             .vswitchName(String.format("%s1", name))
///             .zoneId(default_.zones()[0].id())
///             .description(name)
///             .build());
///
///         var defaultRg = new ResourceGroup("defaultRg", ResourceGroupArgs.builder()
///             .displayName("tf-example-defaultRg")
///             .resourceGroupName(String.format("%s2", name))
///             .build());
///
///         var changeRg = new ResourceGroup("changeRg", ResourceGroupArgs.builder()
///             .displayName("tf-example-changeRg")
///             .resourceGroupName(String.format("%s3", name))
///             .build());
///
///         var defaultHaVipv2 = new HaVipv2("defaultHaVipv2", HaVipv2Args.builder()
///             .description(name)
///             .vswitchId(defaultVswitch.id())
///             .haVipName(name)
///             .ipAddress("192.168.1.101")
///             .resourceGroupId(defaultRg.id())
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
///       description: ${name}
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   defaultVswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultVpc.id}
///       cidrBlock: 192.168.0.0/21
///       vswitchName: ${name}1
///       zoneId: ${default.zones[0].id}
///       description: ${name}
///   defaultRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-example-defaultRg
///       resourceGroupName: ${name}2
///   changeRg:
///     type: alicloud:resourcemanager:ResourceGroup
///     properties:
///       displayName: tf-example-changeRg
///       resourceGroupName: ${name}3
///   defaultHaVipv2:
///     type: alicloud:vpc:HaVipv2
///     name: default
///     properties:
///       description: ${name}
///       vswitchId: ${defaultVswitch.id}
///       haVipName: ${name}
///       ipAddress: 192.168.1.101
///       resourceGroupId: ${defaultRg.id}
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
/// VPC Ha Vip can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/haVipv2:HaVipv2 example <id>
/// ```
class HaVipv2 extends pulumi.CustomResource {
  /// EIP bound to HaVip
  late final pulumi.Output<List<String>> associatedEipAddresses;
  /// The type of the instance that is bound to the HaVip. Value:
  /// - `EcsInstance`: ECS instance.
  /// - `NetworkInterface`: ENI instance.
  late final pulumi.Output<String> associatedInstanceType;
  /// The ID of the ECS instance to be associated with the HAVIP.
  late final pulumi.Output<List<String>> associatedInstances;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The description of the HAVIP. The description must be 1 to 255 characters in length and cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> description;
  /// The ID of the HaVip instance.
  late final pulumi.Output<String> haVipId;
  /// The name of the HAVIP. The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String> haVipName;
  /// . Field 'havip_name' has been deprecated from provider version 1.259.0. New field 'ha_vip_name' instead.
  late final pulumi.Output<String> havipName;
  /// The IP address of the HAVIP. The specified IP address must be an idle IP address that falls within the CIDR block of the vSwitch. If this parameter is not set, an idle IP address from the CIDR block of the vSwitch is randomly assigned to the HAVIP.
  late final pulumi.Output<String> ipAddress;
  /// The primary instance ID bound to HaVip
  late final pulumi.Output<String> masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// The status of this resource instance.
  late final pulumi.Output<String> status;
  /// The tags of HaVip.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The VPC ID to which the HaVip instance belongs
  late final pulumi.Output<String> vpcId;
  /// The switch ID to which the HaVip instance belongs
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [HaVipv2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HaVipv2]. {@macro pulumi_vpc_ha_vipv2_ha_vipv2_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HaVipv2(
    String name, {
    HaVipv2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/haVipv2:HaVipv2',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedEipAddresses = registerOutput<List<String>>('associatedEipAddresses');
    associatedInstanceType = registerOutput<String>('associatedInstanceType');
    associatedInstances = registerOutput<List<String>>('associatedInstances');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    haVipId = registerOutput<String>('haVipId');
    haVipName = registerOutput<String>('haVipName');
    havipName = registerOutput<String>('havipName');
    ipAddress = registerOutput<String>('ipAddress');
    masterInstanceId = registerOutput<String>('masterInstanceId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [HaVipv2] resource's state with the given [name] and [id].
  static HaVipv2 get(
    String name,
    pulumi.Input<String> id, {
    HaVipv2State? state,
  }) {
    return HaVipv2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HaVipv2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/haVipv2:HaVipv2',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associatedEipAddresses = registerOutput<List<String>>('associatedEipAddresses');
    associatedInstanceType = registerOutput<String>('associatedInstanceType');
    associatedInstances = registerOutput<List<String>>('associatedInstances');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String?>('description');
    haVipId = registerOutput<String>('haVipId');
    haVipName = registerOutput<String>('haVipName');
    havipName = registerOutput<String>('havipName');
    ipAddress = registerOutput<String>('ipAddress');
    masterInstanceId = registerOutput<String>('masterInstanceId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
    vswitchId = registerOutput<String>('vswitchId');
  }
}
