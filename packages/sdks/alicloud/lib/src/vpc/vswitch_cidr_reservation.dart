import 'package:pulumi/pulumi.dart' as pulumi;
import 'vswitch_cidr_reservation_args.dart';
import 'vswitch_cidr_reservation_state.dart';

/// Provides a Vpc Vswitch Cidr Reservation resource. The reserved network segment of the vswitch. This resource type can be used only in ap-southeast region.
///
/// For information about Vpc Vswitch Cidr Reservation and how to use it, see [What is Vswitch Cidr Reservation](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/610154).
///
/// > **NOTE:** Available since v1.205.0.
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
///     vpcName: name,
///     cidrBlock: "10.0.0.0/8",
/// });
/// const defaultVSwitch = new alicloud.vpc.Switch("defaultVSwitch", {
///     vpcId: defaultVpc.id,
///     cidrBlock: "10.0.0.0/20",
///     vswitchName: `${name}1`,
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultVswitchCidrReservation = new alicloud.vpc.VswitchCidrReservation("default", {
///     ipVersion: "IPv4",
///     vswitchId: defaultVSwitch.id,
///     cidrReservationDescription: name,
///     cidrReservationCidr: "10.0.10.0/24",
///     vswitchCidrReservationName: name,
///     cidrReservationType: "Prefix",
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
///     vpc_name=name,
///     cidr_block="10.0.0.0/8")
/// default_v_switch = alicloud.vpc.Switch("defaultVSwitch",
///     vpc_id=default_vpc.id,
///     cidr_block="10.0.0.0/20",
///     vswitch_name=f"{name}1",
///     zone_id=default.zones[0].id)
/// default_vswitch_cidr_reservation = alicloud.vpc.VswitchCidrReservation("default",
///     ip_version="IPv4",
///     vswitch_id=default_v_switch.id,
///     cidr_reservation_description=name,
///     cidr_reservation_cidr="10.0.10.0/24",
///     vswitch_cidr_reservation_name=name,
///     cidr_reservation_type="Prefix")
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
///         VpcName = name,
///         CidrBlock = "10.0.0.0/8",
///     });
///
///     var defaultVSwitch = new AliCloud.Vpc.Switch("defaultVSwitch", new()
///     {
///         VpcId = defaultVpc.Id,
///         CidrBlock = "10.0.0.0/20",
///         VswitchName = $"{name}1",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultVswitchCidrReservation = new AliCloud.Vpc.VswitchCidrReservation("default", new()
///     {
///         IpVersion = "IPv4",
///         VswitchId = defaultVSwitch.Id,
///         CidrReservationDescription = name,
///         CidrReservationCidr = "10.0.10.0/24",
///         VswitchCidrReservationName = name,
///         CidrReservationType = "Prefix",
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
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.0.0.0/8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVSwitch, err := vpc.NewSwitch(ctx, "defaultVSwitch", &vpc.SwitchArgs{
/// 			VpcId:       defaultVpc.ID(),
/// 			CidrBlock:   pulumi.String("10.0.0.0/20"),
/// 			VswitchName: pulumi.Sprintf("%v1", name),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewVswitchCidrReservation(ctx, "default", &vpc.VswitchCidrReservationArgs{
/// 			IpVersion:                  pulumi.String("IPv4"),
/// 			VswitchId:                  defaultVSwitch.ID(),
/// 			CidrReservationDescription: pulumi.String(name),
/// 			CidrReservationCidr:        pulumi.String("10.0.10.0/24"),
/// 			VswitchCidrReservationName: pulumi.String(name),
/// 			CidrReservationType:        pulumi.String("Prefix"),
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
/// import com.pulumi.alicloud.vpc.VswitchCidrReservation;
/// import com.pulumi.alicloud.vpc.VswitchCidrReservationArgs;
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
///             .vpcName(name)
///             .cidrBlock("10.0.0.0/8")
///             .build());
///
///         var defaultVSwitch = new Switch("defaultVSwitch", SwitchArgs.builder()
///             .vpcId(defaultVpc.id())
///             .cidrBlock("10.0.0.0/20")
///             .vswitchName(String.format("%s1", name))
///             .zoneId(default_.zones()[0].id())
///             .build());
///
///         var defaultVswitchCidrReservation = new VswitchCidrReservation("defaultVswitchCidrReservation", VswitchCidrReservationArgs.builder()
///             .ipVersion("IPv4")
///             .vswitchId(defaultVSwitch.id())
///             .cidrReservationDescription(name)
///             .cidrReservationCidr("10.0.10.0/24")
///             .vswitchCidrReservationName(name)
///             .cidrReservationType("Prefix")
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
///       cidrBlock: 10.0.0.0/8
///   defaultVSwitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vpcId: ${defaultVpc.id}
///       cidrBlock: 10.0.0.0/20
///       vswitchName: ${name}1
///       zoneId: ${default.zones[0].id}
///   defaultVswitchCidrReservation:
///     type: alicloud:vpc:VswitchCidrReservation
///     name: default
///     properties:
///       ipVersion: IPv4
///       vswitchId: ${defaultVSwitch.id}
///       cidrReservationDescription: ${name}
///       cidrReservationCidr: 10.0.10.0/24
///       vswitchCidrReservationName: ${name}
///       cidrReservationType: Prefix
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
/// Vpc Vswitch Cidr Reservation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/vswitchCidrReservation:VswitchCidrReservation example <vswitch_id>:<vswitch_cidr_reservation_id>
/// ```
class VswitchCidrReservation extends pulumi.CustomResource {
  /// Reserved network segment CIdrBlock.
  late final pulumi.Output<String> cidrReservationCidr;
  /// The description of the reserved CIDR block.
  late final pulumi.Output<String?> cidrReservationDescription;
  /// Reserved segment mask.
  late final pulumi.Output<String?> cidrReservationMask;
  /// Reserved CIDR Block Type.Valid values: `Prefix`. Default value: Prefix.
  late final pulumi.Output<String> cidrReservationType;
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;
  /// Reserved ip version of network segment, valid values: `IPv4`, `IPv6`, default IPv4.
  late final pulumi.Output<String> ipVersion;
  /// The status of the resource.
  late final pulumi.Output<String> status;
  /// The id of the vpc instance to which the reserved CIDR block belongs.
  late final pulumi.Output<String> vpcId;
  /// The resource attribute field of the resource ID.
  late final pulumi.Output<String> vswitchCidrReservationId;
  /// The name of the resource.
  late final pulumi.Output<String?> vswitchCidrReservationName;
  /// The Id of the switch instance.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [VswitchCidrReservation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VswitchCidrReservation]. {@macro pulumi_vpc_vswitch_cidr_reservation_vswitch_cidr_reservation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VswitchCidrReservation(
    String name, {
    VswitchCidrReservationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vswitchCidrReservation:VswitchCidrReservation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrReservationCidr = registerOutput<String>('cidrReservationCidr');
    this.cidrReservationDescription = registerOutput<String?>('cidrReservationDescription');
    this.cidrReservationMask = registerOutput<String?>('cidrReservationMask');
    this.cidrReservationType = registerOutput<String>('cidrReservationType');
    this.createTime = registerOutput<String>('createTime');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchCidrReservationId = registerOutput<String>('vswitchCidrReservationId');
    this.vswitchCidrReservationName = registerOutput<String?>('vswitchCidrReservationName');
    this.vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [VswitchCidrReservation] resource's state with the given [name] and [id].
  static VswitchCidrReservation get(
    String name,
    pulumi.Input<String> id, {
    VswitchCidrReservationState? state,
  }) {
    return VswitchCidrReservation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VswitchCidrReservation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/vswitchCidrReservation:VswitchCidrReservation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrReservationCidr = registerOutput<String>('cidrReservationCidr');
    this.cidrReservationDescription = registerOutput<String?>('cidrReservationDescription');
    this.cidrReservationMask = registerOutput<String?>('cidrReservationMask');
    this.cidrReservationType = registerOutput<String>('cidrReservationType');
    this.createTime = registerOutput<String>('createTime');
    this.ipVersion = registerOutput<String>('ipVersion');
    this.status = registerOutput<String>('status');
    this.vpcId = registerOutput<String>('vpcId');
    this.vswitchCidrReservationId = registerOutput<String>('vswitchCidrReservationId');
    this.vswitchCidrReservationName = registerOutput<String?>('vswitchCidrReservationName');
    this.vswitchId = registerOutput<String>('vswitchId');
  }
}
