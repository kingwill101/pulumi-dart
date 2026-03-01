import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_route_entry_args.dart';

/// Provides a CEN transit router route entry resource.[What is Cen Transit Router Route Entry](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/api-cbn-2017-09-12-createtransitrouterrouteentry)
///
/// > **NOTE:** Available since v1.126.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf_example";
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     description: "an example for cen",
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: name,
///     cenId: exampleInstance.id,
/// });
/// const exampleTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("example", {transitRouterId: exampleTransitRouter.transitRouterId});
/// const example = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const vlanId = new random.index.Integer("vlan_id", {
///     max: 2999,
///     min: 1,
/// });
/// const exampleVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("example", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: example.then(example => example.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: vlanId.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const exampleTransitRouterVbrAttachment = new alicloud.cen.TransitRouterVbrAttachment("example", {
///     vbrId: exampleVirtualBorderRouter.id,
///     cenId: exampleInstance.id,
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     autoPublishRouteEnabled: true,
///     transitRouterAttachmentName: name,
///     transitRouterAttachmentDescription: name,
/// });
/// const exampleTransitRouterRouteEntry = new alicloud.cen.TransitRouterRouteEntry("example", {
///     transitRouterRouteTableId: exampleTransitRouterRouteTable.transitRouterRouteTableId,
///     transitRouterRouteEntryDestinationCidrBlock: "192.168.0.0/24",
///     transitRouterRouteEntryNextHopType: "Attachment",
///     transitRouterRouteEntryName: name,
///     transitRouterRouteEntryDescription: name,
///     transitRouterRouteEntryNextHopId: exampleTransitRouterVbrAttachment.transitRouterAttachmentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     description="an example for cen")
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name=name,
///     cen_id=example_instance.id)
/// example_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("example", transit_router_id=example_transit_router.transit_router_id)
/// example = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// vlan_id = random.index.Integer("vlan_id",
///     max=2999,
///     min=1)
/// example_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("example",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=example.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=vlan_id["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// example_transit_router_vbr_attachment = alicloud.cen.TransitRouterVbrAttachment("example",
///     vbr_id=example_virtual_border_router.id,
///     cen_id=example_instance.id,
///     transit_router_id=example_transit_router.transit_router_id,
///     auto_publish_route_enabled=True,
///     transit_router_attachment_name=name,
///     transit_router_attachment_description=name)
/// example_transit_router_route_entry = alicloud.cen.TransitRouterRouteEntry("example",
///     transit_router_route_table_id=example_transit_router_route_table.transit_router_route_table_id,
///     transit_router_route_entry_destination_cidr_block="192.168.0.0/24",
///     transit_router_route_entry_next_hop_type="Attachment",
///     transit_router_route_entry_name=name,
///     transit_router_route_entry_description=name,
///     transit_router_route_entry_next_hop_id=example_transit_router_vbr_attachment.transit_router_attachment_id)
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
///     var config = new Config();
///     var name = config.Get("name") ?? "tf_example";
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         Description = "an example for cen",
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = name,
///         CenId = exampleInstance.Id,
///     });
///
///     var exampleTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///     });
///
///     var example = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var vlanId = new Random.Index.Integer("vlan_id", new()
///     {
///         Max = 2999,
///         Min = 1,
///     });
///
///     var exampleVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("example", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = example.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = vlanId.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var exampleTransitRouterVbrAttachment = new AliCloud.Cen.TransitRouterVbrAttachment("example", new()
///     {
///         VbrId = exampleVirtualBorderRouter.Id,
///         CenId = exampleInstance.Id,
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         AutoPublishRouteEnabled = true,
///         TransitRouterAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///     });
///
///     var exampleTransitRouterRouteEntry = new AliCloud.Cen.TransitRouterRouteEntry("example", new()
///     {
///         TransitRouterRouteTableId = exampleTransitRouterRouteTable.TransitRouterRouteTableId,
///         TransitRouterRouteEntryDestinationCidrBlock = "192.168.0.0/24",
///         TransitRouterRouteEntryNextHopType = "Attachment",
///         TransitRouterRouteEntryName = name,
///         TransitRouterRouteEntryDescription = name,
///         TransitRouterRouteEntryNextHopId = exampleTransitRouterVbrAttachment.TransitRouterAttachmentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "tf_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String(name),
/// 			CenId:             exampleInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "example", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId: exampleTransitRouter.TransitRouterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vlanId, err := random.NewInteger(ctx, "vlan_id", &random.IntegerArgs{
/// 			Max: 2999,
/// 			Min: 1,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "example", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(example.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  vlanId.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouterVbrAttachment, err := cen.NewTransitRouterVbrAttachment(ctx, "example", &cen.TransitRouterVbrAttachmentArgs{
/// 			VbrId:                              exampleVirtualBorderRouter.ID(),
/// 			CenId:                              exampleInstance.ID(),
/// 			TransitRouterId:                    exampleTransitRouter.TransitRouterId,
/// 			AutoPublishRouteEnabled:            pulumi.Bool(true),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterRouteEntry(ctx, "example", &cen.TransitRouterRouteEntryArgs{
/// 			TransitRouterRouteTableId:                   exampleTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			TransitRouterRouteEntryDestinationCidrBlock: pulumi.String("192.168.0.0/24"),
/// 			TransitRouterRouteEntryNextHopType:          pulumi.String("Attachment"),
/// 			TransitRouterRouteEntryName:                 pulumi.String(name),
/// 			TransitRouterRouteEntryDescription:          pulumi.String(name),
/// 			TransitRouterRouteEntryNextHopId:            exampleTransitRouterVbrAttachment.TransitRouterAttachmentId,
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
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachmentArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteEntry;
/// import com.pulumi.alicloud.cen.TransitRouterRouteEntryArgs;
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
///         final var name = config.get("name").orElse("tf_example");
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .description("an example for cen")
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .cenId(exampleInstance.id())
///             .build());
///
///         var exampleTransitRouterRouteTable = new TransitRouterRouteTable("exampleTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .build());
///
///         final var example = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var vlanId = new Integer("vlanId", IntegerArgs.builder()
///             .max(2999)
///             .min(1)
///             .build());
///
///         var exampleVirtualBorderRouter = new VirtualBorderRouter("exampleVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(example.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(vlanId.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var exampleTransitRouterVbrAttachment = new TransitRouterVbrAttachment("exampleTransitRouterVbrAttachment", TransitRouterVbrAttachmentArgs.builder()
///             .vbrId(exampleVirtualBorderRouter.id())
///             .cenId(exampleInstance.id())
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .autoPublishRouteEnabled(true)
///             .transitRouterAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .build());
///
///         var exampleTransitRouterRouteEntry = new TransitRouterRouteEntry("exampleTransitRouterRouteEntry", TransitRouterRouteEntryArgs.builder()
///             .transitRouterRouteTableId(exampleTransitRouterRouteTable.transitRouterRouteTableId())
///             .transitRouterRouteEntryDestinationCidrBlock("192.168.0.0/24")
///             .transitRouterRouteEntryNextHopType("Attachment")
///             .transitRouterRouteEntryName(name)
///             .transitRouterRouteEntryDescription(name)
///             .transitRouterRouteEntryNextHopId(exampleTransitRouterVbrAttachment.transitRouterAttachmentId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf_example
/// resources:
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: ${name}
///       description: an example for cen
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: ${name}
///       cenId: ${exampleInstance.id}
///   exampleTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///   vlanId:
///     type: random:Integer
///     name: vlan_id
///     properties:
///       max: 2999
///       min: 1
///   exampleVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: example
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${example.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${vlanId.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   exampleTransitRouterVbrAttachment:
///     type: alicloud:cen:TransitRouterVbrAttachment
///     name: example
///     properties:
///       vbrId: ${exampleVirtualBorderRouter.id}
///       cenId: ${exampleInstance.id}
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       autoPublishRouteEnabled: true
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///   exampleTransitRouterRouteEntry:
///     type: alicloud:cen:TransitRouterRouteEntry
///     name: example
///     properties:
///       transitRouterRouteTableId: ${exampleTransitRouterRouteTable.transitRouterRouteTableId}
///       transitRouterRouteEntryDestinationCidrBlock: 192.168.0.0/24
///       transitRouterRouteEntryNextHopType: Attachment
///       transitRouterRouteEntryName: ${name}
///       transitRouterRouteEntryDescription: ${name}
///       transitRouterRouteEntryNextHopId: ${exampleTransitRouterVbrAttachment.transitRouterAttachmentId}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN instance can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterRouteEntry:TransitRouterRouteEntry default vtb-*********:rte-*******
/// ```
class TransitRouterRouteEntry extends pulumi.CustomResource {
  /// The dry run.
  ///
  /// > **NOTE:** If transit_router_route_entry_next_hop_type is `Attachment`, transit_router_route_entry_next_hop_id is required.
  /// If transit_router_route_entry_next_hop_type is `BlackHole`, transit_router_route_entry_next_hop_id cannot be filled.
  late final pulumi.Output<bool?> dryRun;
  /// The associating status of the Transit Router.
  late final pulumi.Output<String> status;
  /// The description of the transit router route entry.
  late final pulumi.Output<String?> transitRouterRouteEntryDescription;
  /// The CIDR of the transit router route entry.
  late final pulumi.Output<String> transitRouterRouteEntryDestinationCidrBlock;
  /// The ID of the route entry.
  late final pulumi.Output<String> transitRouterRouteEntryId;
  /// The name of the transit router route entry.
  late final pulumi.Output<String?> transitRouterRouteEntryName;
  /// The ID of the transit router route entry next hop.
  late final pulumi.Output<String?> transitRouterRouteEntryNextHopId;
  /// The Type of the transit router route entry next hop,Valid values `Attachment` and `BlackHole`.
  late final pulumi.Output<String> transitRouterRouteEntryNextHopType;
  /// The ID of the transit router route table.
  late final pulumi.Output<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteEntry].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterRouteEntry]. {@macro pulumi_cen_transit_router_route_entry_transit_router_route_entry_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterRouteEntry(
    String name, {
    TransitRouterRouteEntryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteEntry:TransitRouterRouteEntry',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.status = registerOutput<String>('status');
    this.transitRouterRouteEntryDescription = registerOutput<String?>('transitRouterRouteEntryDescription');
    this.transitRouterRouteEntryDestinationCidrBlock = registerOutput<String>('transitRouterRouteEntryDestinationCidrBlock');
    this.transitRouterRouteEntryId = registerOutput<String>('transitRouterRouteEntryId');
    this.transitRouterRouteEntryName = registerOutput<String?>('transitRouterRouteEntryName');
    this.transitRouterRouteEntryNextHopId = registerOutput<String?>('transitRouterRouteEntryNextHopId');
    this.transitRouterRouteEntryNextHopType = registerOutput<String>('transitRouterRouteEntryNextHopType');
    this.transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
  }
}
