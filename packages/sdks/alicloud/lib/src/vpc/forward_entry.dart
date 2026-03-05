import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_entry_args.dart';
import 'forward_entry_state.dart';

/// Provides a forward resource.
///
/// &gt; **NOTE:** Available since v1.40.0.
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
/// const name = config.get("name") || "forward-entry-example-name";
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
///     internetChargeType: "PayByLcu",
///     natGatewayName: name,
///     natType: "Enhanced",
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {addressName: name});
/// const defaultEipAssociation = new alicloud.ecs.EipAssociation("default", {
///     allocationId: defaultEipAddress.id,
///     instanceId: defaultNatGateway.id,
/// });
/// const defaultForwardEntry = new alicloud.vpc.ForwardEntry("default", {
///     forwardTableId: defaultNatGateway.forwardTableIds,
///     externalIp: defaultEipAddress.ipAddress,
///     externalPort: "80",
///     ipProtocol: "tcp",
///     internalIp: "172.16.0.3",
///     internalPort: "8080",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "forward-entry-example-name"
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
///     internet_charge_type="PayByLcu",
///     nat_gateway_name=name,
///     nat_type="Enhanced",
///     vswitch_id=default_switch.id)
/// default_eip_address = alicloud.ecs.EipAddress("default", address_name=name)
/// default_eip_association = alicloud.ecs.EipAssociation("default",
///     allocation_id=default_eip_address.id,
///     instance_id=default_nat_gateway.id)
/// default_forward_entry = alicloud.vpc.ForwardEntry("default",
///     forward_table_id=default_nat_gateway.forward_table_ids,
///     external_ip=default_eip_address.ip_address,
///     external_port="80",
///     ip_protocol="tcp",
///     internal_ip="172.16.0.3",
///     internal_port="8080")
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
///     var name = config.Get("name") ?? "forward-entry-example-name";
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
///         InternetChargeType = "PayByLcu",
///         NatGatewayName = name,
///         NatType = "Enhanced",
///         VswitchId = defaultSwitch.Id,
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
///     var defaultForwardEntry = new AliCloud.Vpc.ForwardEntry("default", new()
///     {
///         ForwardTableId = defaultNatGateway.ForwardTableIds,
///         ExternalIp = defaultEipAddress.IpAddress,
///         ExternalPort = "80",
///         IpProtocol = "tcp",
///         InternalIp = "172.16.0.3",
///         InternalPort = "8080",
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
/// 		name := "forward-entry-example-name"
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
/// 			VpcId:              defaultNetwork.ID(),
/// 			InternetChargeType: pulumi.String("PayByLcu"),
/// 			NatGatewayName:     pulumi.String(name),
/// 			NatType:            pulumi.String("Enhanced"),
/// 			VswitchId:          defaultSwitch.ID(),
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
/// 		_, err = vpc.NewForwardEntry(ctx, "default", &vpc.ForwardEntryArgs{
/// 			ForwardTableId: defaultNatGateway.ForwardTableIds,
/// 			ExternalIp:     defaultEipAddress.IpAddress,
/// 			ExternalPort:   pulumi.String("80"),
/// 			IpProtocol:     pulumi.String("tcp"),
/// 			InternalIp:     pulumi.String("172.16.0.3"),
/// 			InternalPort:   pulumi.String("8080"),
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
/// import com.pulumi.alicloud.vpc.ForwardEntry;
/// import com.pulumi.alicloud.vpc.ForwardEntryArgs;
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
///         final var name = config.get("name").orElse("forward-entry-example-name");
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
///             .internetChargeType("PayByLcu")
///             .natGatewayName(name)
///             .natType("Enhanced")
///             .vswitchId(defaultSwitch.id())
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
///         var defaultForwardEntry = new ForwardEntry("defaultForwardEntry", ForwardEntryArgs.builder()
///             .forwardTableId(defaultNatGateway.forwardTableIds())
///             .externalIp(defaultEipAddress.ipAddress())
///             .externalPort("80")
///             .ipProtocol("tcp")
///             .internalIp("172.16.0.3")
///             .internalPort("8080")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: forward-entry-example-name
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
///       internetChargeType: PayByLcu
///       natGatewayName: ${name}
///       natType: Enhanced
///       vswitchId: ${defaultSwitch.id}
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
///   defaultForwardEntry:
///     type: alicloud:vpc:ForwardEntry
///     name: default
///     properties:
///       forwardTableId: ${defaultNatGateway.forwardTableIds}
///       externalIp: ${defaultEipAddress.ipAddress}
///       externalPort: '80'
///       ipProtocol: tcp
///       internalIp: 172.16.0.3
///       internalPort: '8080'
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
/// Forward Entry can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/forwardEntry:ForwardEntry foo ftb-1aece3:fwd-232ce2
/// ```
class ForwardEntry extends pulumi.CustomResource {
  /// The external ip address, the ip must along bandwidth package public ip which `alicloud.vpc.NatGateway` argument `bandwidth_packages`.
  late final pulumi.Output<String> externalIp;
  /// The external port, valid value is 1~65535|any.
  late final pulumi.Output<String> externalPort;
  /// The id of the forward entry on the server.
  late final pulumi.Output<String> forwardEntryId;
  /// The name of forward entry.
  late final pulumi.Output<String> forwardEntryName;
  /// The value can get from `alicloud.vpc.NatGateway` Attributes "forward_table_ids".
  late final pulumi.Output<String> forwardTableId;
  /// The internal ip, must a private ip.
  late final pulumi.Output<String> internalIp;
  /// The internal port, valid value is 1~65535|any.
  late final pulumi.Output<String> internalPort;
  /// The ip protocol, valid value is tcp|udp|any.
  late final pulumi.Output<String> ipProtocol;
  /// Field `name` has been deprecated from provider version 1.119.1. New field `forward_entry_name` instead.
  late final pulumi.Output<String> name;
  /// Specifies whether to remove limits on the port range. Default value is `false`.
  ///
  /// &gt; **NOTE:** A SNAT entry and a DNAT entry may use the same public IP address. If you want to specify a port number greater than 1024 in this case, set `port_break` to true.
  late final pulumi.Output<bool?> portBreak;
  /// (Available since v1.119.1) The status of forward entry.
  late final pulumi.Output<String> status;

  /// Creates a new [ForwardEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ForwardEntry]. {@macro pulumi_vpc_forward_entry_forward_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ForwardEntry(
    String name, {
    ForwardEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/forwardEntry:ForwardEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalIp = registerOutput<String>('externalIp');
    externalPort = registerOutput<String>('externalPort');
    forwardEntryId = registerOutput<String>('forwardEntryId');
    forwardEntryName = registerOutput<String>('forwardEntryName');
    forwardTableId = registerOutput<String>('forwardTableId');
    internalIp = registerOutput<String>('internalIp');
    internalPort = registerOutput<String>('internalPort');
    ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    portBreak = registerOutput<bool?>('portBreak');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [ForwardEntry] resource's state with the given [name] and [id].
  static ForwardEntry get(
    String name,
    pulumi.Input<String> id, {
    ForwardEntryState? state,
  }) {
    return ForwardEntry._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ForwardEntry._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/forwardEntry:ForwardEntry',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalIp = registerOutput<String>('externalIp');
    externalPort = registerOutput<String>('externalPort');
    forwardEntryId = registerOutput<String>('forwardEntryId');
    forwardEntryName = registerOutput<String>('forwardEntryName');
    forwardTableId = registerOutput<String>('forwardTableId');
    internalIp = registerOutput<String>('internalIp');
    internalPort = registerOutput<String>('internalPort');
    ipProtocol = registerOutput<String>('ipProtocol');
    this.name = registerOutput<String>('name');
    portBreak = registerOutput<bool?>('portBreak');
    status = registerOutput<String>('status');
  }
}
