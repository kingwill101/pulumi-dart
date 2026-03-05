import 'package:pulumi/pulumi.dart' as pulumi;
import 'snat_entry_args.dart';
import 'snat_entry_state.dart';

/// Provides a NAT Gateway Snat Entry resource.
///
///
///
/// For information about NAT Gateway Snat Entry and how to use it, see [What is Snat Entry](https://www.alibabacloud.com/help/en/nat-gateway/developer-reference/api-vpc-2016-04-28-createsnatentry-natgws).
///
/// &gt; **NOTE:** Available since v1.119.0.
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
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultNatGateway = new alicloud.vpc.NatGateway("default", {
///     vpcId: defaultNetwork.id,
///     natGatewayName: name,
///     paymentType: "PayAsYouGo",
///     vswitchId: defaultSwitch.id,
///     natType: "Enhanced",
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {addressName: name});
/// const defaultEipAssociation = new alicloud.ecs.EipAssociation("default", {
///     allocationId: defaultEipAddress.id,
///     instanceId: defaultNatGateway.id,
/// });
/// const defaultSnatEntry = new alicloud.vpc.SnatEntry("default", {
///     snatTableId: defaultNatGateway.snatTableIds,
///     sourceVswitchId: defaultSwitch.id,
///     snatIp: defaultEipAddress.ipAddress,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_nat_gateway = alicloud.vpc.NatGateway("default",
///     vpc_id=default_network.id,
///     nat_gateway_name=name,
///     payment_type="PayAsYouGo",
///     vswitch_id=default_switch.id,
///     nat_type="Enhanced")
/// default_eip_address = alicloud.ecs.EipAddress("default", address_name=name)
/// default_eip_association = alicloud.ecs.EipAssociation("default",
///     allocation_id=default_eip_address.id,
///     instance_id=default_nat_gateway.id)
/// default_snat_entry = alicloud.vpc.SnatEntry("default",
///     snat_table_id=default_nat_gateway.snat_table_ids,
///     source_vswitch_id=default_switch.id,
///     snat_ip=default_eip_address.ip_address)
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
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultNatGateway = new AliCloud.Vpc.NatGateway("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         NatGatewayName = name,
///         PaymentType = "PayAsYouGo",
///         VswitchId = defaultSwitch.Id,
///         NatType = "Enhanced",
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         AddressName = name,
///     });
///
///     var defaultEipAssociation = new AliCloud.Ecs.EipAssociation("default", new()
///     {
///         AllocationId = defaultEipAddress.Id,
///         InstanceId = defaultNatGateway.Id,
///     });
///
///     var defaultSnatEntry = new AliCloud.Vpc.SnatEntry("default", new()
///     {
///         SnatTableId = defaultNatGateway.SnatTableIds,
///         SourceVswitchId = defaultSwitch.Id,
///         SnatIp = defaultEipAddress.IpAddress,
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNatGateway, err := vpc.NewNatGateway(ctx, "default", &vpc.NatGatewayArgs{
/// 			VpcId:          defaultNetwork.ID(),
/// 			NatGatewayName: pulumi.String(name),
/// 			PaymentType:    pulumi.String("PayAsYouGo"),
/// 			VswitchId:      defaultSwitch.ID(),
/// 			NatType:        pulumi.String("Enhanced"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEipAssociation(ctx, "default", &ecs.EipAssociationArgs{
/// 			AllocationId: defaultEipAddress.ID(),
/// 			InstanceId:   defaultNatGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewSnatEntry(ctx, "default", &vpc.SnatEntryArgs{
/// 			SnatTableId:     defaultNatGateway.SnatTableIds,
/// 			SourceVswitchId: defaultSwitch.ID(),
/// 			SnatIp:          defaultEipAddress.IpAddress,
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
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
/// import com.pulumi.alicloud.vpc.SnatEntry;
/// import com.pulumi.alicloud.vpc.SnatEntryArgs;
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
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultNatGateway = new NatGateway("defaultNatGateway", NatGatewayArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .natGatewayName(name)
///             .paymentType("PayAsYouGo")
///             .vswitchId(defaultSwitch.id())
///             .natType("Enhanced")
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var defaultEipAssociation = new EipAssociation("defaultEipAssociation", EipAssociationArgs.builder()
///             .allocationId(defaultEipAddress.id())
///             .instanceId(defaultNatGateway.id())
///             .build());
///
///         var defaultSnatEntry = new SnatEntry("defaultSnatEntry", SnatEntryArgs.builder()
///             .snatTableId(defaultNatGateway.snatTableIds())
///             .sourceVswitchId(defaultSwitch.id())
///             .snatIp(defaultEipAddress.ipAddress())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       natGatewayName: ${name}
///       paymentType: PayAsYouGo
///       vswitchId: ${defaultSwitch.id}
///       natType: Enhanced
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       addressName: ${name}
///   defaultEipAssociation:
///     type: alicloud:ecs:EipAssociation
///     name: default
///     properties:
///       allocationId: ${defaultEipAddress.id}
///       instanceId: ${defaultNatGateway.id}
///   defaultSnatEntry:
///     type: alicloud:vpc:SnatEntry
///     name: default
///     properties:
///       snatTableId: ${defaultNatGateway.snatTableIds}
///       sourceVswitchId: ${defaultSwitch.id}
///       snatIp: ${defaultEipAddress.ipAddress}
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
/// NAT Gateway Snat Entry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/snatEntry:SnatEntry example <snat_table_id>:<snat_entry_id>
/// ```
///
/// ```sh
/// $ pulumi import alicloud:vpc/snatEntry:SnatEntry example <snat_entry_id>
/// ```
class SnatEntry extends pulumi.CustomResource {
  /// Specifies whether to enable EIP affinity. Default value: `0`. Valid values:
  late final pulumi.Output<int?> eipAffinity;
  /// The id of the snat entry on the server.
  late final pulumi.Output<String> snatEntryId;
  /// The name of the SNAT entry. The name must be `2` to `128` characters in length. It must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> snatEntryName;
  /// The IP of a SNAT entry. Separate multiple EIP or NAT IP addresses with commas (,). **NOTE:** From version 1.241.0, `snat_ip` can be modified.
  late final pulumi.Output<String> snatIp;
  /// The ID of the SNAT table.
  late final pulumi.Output<String> snatTableId;
  /// The source CIDR block specified in the SNAT entry.
  late final pulumi.Output<String> sourceCidr;
  /// The ID of the vSwitch.
  late final pulumi.Output<String> sourceVswitchId;
  /// (Available since v1.119.1) The ID of the SNAT entry.
  late final pulumi.Output<String> status;

  /// Creates a new [SnatEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SnatEntry]. {@macro pulumi_vpc_snat_entry_snat_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SnatEntry(
    String name, {
    SnatEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/snatEntry:SnatEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eipAffinity = registerOutput<int?>('eipAffinity');
    snatEntryId = registerOutput<String>('snatEntryId');
    snatEntryName = registerOutput<String?>('snatEntryName');
    snatIp = registerOutput<String>('snatIp');
    snatTableId = registerOutput<String>('snatTableId');
    sourceCidr = registerOutput<String>('sourceCidr');
    sourceVswitchId = registerOutput<String>('sourceVswitchId');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [SnatEntry] resource's state with the given [name] and [id].
  static SnatEntry get(
    String name,
    pulumi.Input<String> id, {
    SnatEntryState? state,
  }) {
    return SnatEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SnatEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/snatEntry:SnatEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    eipAffinity = registerOutput<int?>('eipAffinity');
    snatEntryId = registerOutput<String>('snatEntryId');
    snatEntryName = registerOutput<String?>('snatEntryName');
    snatIp = registerOutput<String>('snatIp');
    snatTableId = registerOutput<String>('snatTableId');
    sourceCidr = registerOutput<String>('sourceCidr');
    sourceVswitchId = registerOutput<String>('sourceVswitchId');
    status = registerOutput<String>('status');
  }
}
