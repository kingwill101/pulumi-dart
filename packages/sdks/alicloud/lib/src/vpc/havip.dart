import 'package:pulumi/pulumi.dart' as pulumi;
import 'havip_args.dart';
import 'havip_state.dart';

/// ## Example Usage
///
/// Basic Usage
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
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "10.4.0.0/24",
///     vpcId: example.id,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const exampleHAVip = new alicloud.vpc.HAVip("example", {
///     vswitchId: exampleSwitch.id,
///     description: name,
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
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="10.4.0.0/24",
///     vpc_id=example.id,
///     zone_id=default.zones[0].id)
/// example_ha_vip = alicloud.vpc.HAVip("example",
///     vswitch_id=example_switch.id,
///     description=name)
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
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "10.4.0.0/24",
///         VpcId = example.Id,
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var exampleHAVip = new AliCloud.Vpc.HAVip("example", new()
///     {
///         VswitchId = exampleSwitch.Id,
///         Description = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("10.4.0.0/24"),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewHAVip(ctx, "example", &vpc.HAVipArgs{
/// 			VswitchId:   exampleSwitch.ID(),
/// 			Description: pulumi.String(name),
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
/// import com.pulumi.alicloud.vpc.HAVip;
/// import com.pulumi.alicloud.vpc.HAVipArgs;
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
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("10.4.0.0/24")
///             .vpcId(example.id())
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var exampleHAVip = new HAVip("exampleHAVip", HAVipArgs.builder()
///             .vswitchId(exampleSwitch.id())
///             .description(name)
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
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 10.4.0.0/24
///       vpcId: ${example.id}
///       zoneId: ${default.zones[0].id}
///   exampleHAVip:
///     type: alicloud:vpc:HAVip
///     name: example
///     properties:
///       vswitchId: ${exampleSwitch.id}
///       description: ${name}
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
/// The havip can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/hAVip:HAVip foo havip-abc123456
/// ```
class HAVip extends pulumi.CustomResource {
  /// The elastic IP address (EIP) associated with the HAVIP.
  late final pulumi.Output<List<String>> associatedEipAddresses;
  /// The type of the instance with which the HAVIP is associated. Valid values:
  /// - `EcsInstance`: an ECS instance.
  /// - `NetworkInterface`: an ENI.
  late final pulumi.Output<String> associatedInstanceType;
  /// The ID of the instance with which the HAVIP is associated.
  late final pulumi.Output<List<String>> associatedInstances;
  /// The time when the HAVIP was created.
  late final pulumi.Output<String> createTime;
  /// The description of the HaVip instance.
  late final pulumi.Output<String?> description;
  /// The ID of the HAVIP.
  late final pulumi.Output<String> haVipId;
  /// The name of the HAVIP.
  late final pulumi.Output<String> haVipName;
  /// The name of the HaVip instance.
  late final pulumi.Output<String> havipName;
  /// The ip address of the HaVip. If not filled, the default will be assigned one from the vswitch.
  late final pulumi.Output<String> ipAddress;
  /// The ID of the active instance that is associated with the HAVIP.
  late final pulumi.Output<String> masterInstanceId;
  /// The ID of the resource group to which the HAVIP belongs.
  late final pulumi.Output<String> resourceGroupId;
  /// (Available since v1.120.0) The status of the HaVip instance.
  late final pulumi.Output<String> status;
  /// The list of tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the VPC to which the HAVIP belongs.
  late final pulumi.Output<String> vpcId;
  /// The vswitch_id of the HaVip, the field can't be changed.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [HAVip].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HAVip]. {@macro pulumi_vpc_h_avip_havip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HAVip(
    String name, {
    HAVipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/hAVip:HAVip',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedEipAddresses = registerOutput<List<String>>('associatedEipAddresses');
    this.associatedInstanceType = registerOutput<String>('associatedInstanceType');
    this.associatedInstances = registerOutput<List<String>>('associatedInstances');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.haVipId = registerOutput<String>('haVipId');
    this.haVipName = registerOutput<String>('haVipName');
    this.havipName = registerOutput<String>('havipName');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.masterInstanceId = registerOutput<String>('masterInstanceId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [HAVip] resource's state with the given [name] and [id].
  static HAVip get(
    String name,
    pulumi.Input<String> id, {
    HAVipState? state,
  }) {
    return HAVip._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HAVip._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/hAVip:HAVip',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.associatedEipAddresses = registerOutput<List<String>>('associatedEipAddresses');
    this.associatedInstanceType = registerOutput<String>('associatedInstanceType');
    this.associatedInstances = registerOutput<List<String>>('associatedInstances');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.haVipId = registerOutput<String>('haVipId');
    this.haVipName = registerOutput<String>('haVipName');
    this.havipName = registerOutput<String>('havipName');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.masterInstanceId = registerOutput<String>('masterInstanceId');
    this.resourceGroupId = registerOutput<String>('resourceGroupId');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
