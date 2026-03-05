import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_route_table_propagation_args.dart';
import 'transit_router_route_table_propagation_state.dart';

/// Provides a CEN transit router route table propagation resource.[What is Cen Transit Router Route Table Propagation](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-enabletransitrouterroutetablepropagation)
///
/// &gt; **NOTE:** Available since v1.126.0.
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
/// const name = config.get("name") || "tf_example";
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const masterZone = _default.then(_default => _default.resources?.[0]?.masterZones?.[0]);
/// const slaveZone = _default.then(_default => _default.resources?.[0]?.slaveZones?.[1]);
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const exampleMaster = new alicloud.vpc.Switch("example_master", {
///     vswitchName: name,
///     cidrBlock: "192.168.1.0/24",
///     vpcId: example.id,
///     zoneId: masterZone,
/// });
/// const exampleSlave = new alicloud.vpc.Switch("example_slave", {
///     vswitchName: name,
///     cidrBlock: "192.168.2.0/24",
///     vpcId: example.id,
///     zoneId: slaveZone,
/// });
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: name,
///     cenId: exampleInstance.id,
/// });
/// const exampleTransitRouterVpcAttachment = new alicloud.cen.TransitRouterVpcAttachment("example", {
///     cenId: exampleInstance.id,
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     vpcId: example.id,
///     zoneMappings: [
///         {
///             zoneId: masterZone,
///             vswitchId: exampleMaster.id,
///         },
///         {
///             zoneId: slaveZone,
///             vswitchId: exampleSlave.id,
///         },
///     ],
///     transitRouterAttachmentName: name,
///     transitRouterAttachmentDescription: name,
/// });
/// const exampleTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("example", {transitRouterId: exampleTransitRouter.transitRouterId});
/// const exampleTransitRouterRouteTablePropagation = new alicloud.cen.TransitRouterRouteTablePropagation("example", {
///     transitRouterRouteTableId: exampleTransitRouterRouteTable.transitRouterRouteTableId,
///     transitRouterAttachmentId: exampleTransitRouterVpcAttachment.transitRouterAttachmentId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf_example"
/// default = alicloud.cen.get_transit_router_available_resources()
/// master_zone = default.resources[0].master_zones[0]
/// slave_zone = default.resources[0].slave_zones[1]
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// example_master = alicloud.vpc.Switch("example_master",
///     vswitch_name=name,
///     cidr_block="192.168.1.0/24",
///     vpc_id=example.id,
///     zone_id=master_zone)
/// example_slave = alicloud.vpc.Switch("example_slave",
///     vswitch_name=name,
///     cidr_block="192.168.2.0/24",
///     vpc_id=example.id,
///     zone_id=slave_zone)
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name=name,
///     cen_id=example_instance.id)
/// example_transit_router_vpc_attachment = alicloud.cen.TransitRouterVpcAttachment("example",
///     cen_id=example_instance.id,
///     transit_router_id=example_transit_router.transit_router_id,
///     vpc_id=example.id,
///     zone_mappings=[
///         {
///             "zone_id": master_zone,
///             "vswitch_id": example_master.id,
///         },
///         {
///             "zone_id": slave_zone,
///             "vswitch_id": example_slave.id,
///         },
///     ],
///     transit_router_attachment_name=name,
///     transit_router_attachment_description=name)
/// example_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("example", transit_router_id=example_transit_router.transit_router_id)
/// example_transit_router_route_table_propagation = alicloud.cen.TransitRouterRouteTablePropagation("example",
///     transit_router_route_table_id=example_transit_router_route_table.transit_router_route_table_id,
///     transit_router_attachment_id=example_transit_router_vpc_attachment.transit_router_attachment_id)
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
///     var name = config.Get("name") ?? "tf_example";
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var masterZone = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[0]));
///
///     var slaveZone = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.SlaveZones[1]));
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var exampleMaster = new AliCloud.Vpc.Switch("example_master", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.1.0/24",
///         VpcId = example.Id,
///         ZoneId = masterZone,
///     });
///
///     var exampleSlave = new AliCloud.Vpc.Switch("example_slave", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.2.0/24",
///         VpcId = example.Id,
///         ZoneId = slaveZone,
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = name,
///         CenId = exampleInstance.Id,
///     });
///
///     var exampleTransitRouterVpcAttachment = new AliCloud.Cen.TransitRouterVpcAttachment("example", new()
///     {
///         CenId = exampleInstance.Id,
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         VpcId = example.Id,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = masterZone,
///                 VswitchId = exampleMaster.Id,
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = slaveZone,
///                 VswitchId = exampleSlave.Id,
///             },
///         },
///         TransitRouterAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///     });
///
///     var exampleTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///     });
///
///     var exampleTransitRouterRouteTablePropagation = new AliCloud.Cen.TransitRouterRouteTablePropagation("example", new()
///     {
///         TransitRouterRouteTableId = exampleTransitRouterRouteTable.TransitRouterRouteTableId,
///         TransitRouterAttachmentId = exampleTransitRouterVpcAttachment.TransitRouterAttachmentId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
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
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		masterZone := _default.Resources[0].MasterZones[0]
/// 		slaveZone := _default.Resources[0].SlaveZones[1]
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleMaster, err := vpc.NewSwitch(ctx, "example_master", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(masterZone),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSlave, err := vpc.NewSwitch(ctx, "example_slave", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(slaveZone),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
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
/// 		exampleTransitRouterVpcAttachment, err := cen.NewTransitRouterVpcAttachment(ctx, "example", &cen.TransitRouterVpcAttachmentArgs{
/// 			CenId:           exampleInstance.ID(),
/// 			TransitRouterId: exampleTransitRouter.TransitRouterId,
/// 			VpcId:           example.ID(),
/// 			ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(masterZone),
/// 					VswitchId: exampleMaster.ID(),
/// 				},
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(slaveZone),
/// 					VswitchId: exampleSlave.ID(),
/// 				},
/// 			},
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
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
/// 		_, err = cen.NewTransitRouterRouteTablePropagation(ctx, "example", &cen.TransitRouterRouteTablePropagationArgs{
/// 			TransitRouterRouteTableId: exampleTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			TransitRouterAttachmentId: exampleTransitRouterVpcAttachment.TransitRouterAttachmentId,
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
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterAvailableResourcesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTablePropagation;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTablePropagationArgs;
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
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         final var masterZone = default_.resources()[0].masterZones()[0];
///
///         final var slaveZone = default_.resources()[0].slaveZones()[1];
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var exampleMaster = new Switch("exampleMaster", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.1.0/24")
///             .vpcId(example.id())
///             .zoneId(masterZone)
///             .build());
///
///         var exampleSlave = new Switch("exampleSlave", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.2.0/24")
///             .vpcId(example.id())
///             .zoneId(slaveZone)
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .cenId(exampleInstance.id())
///             .build());
///
///         var exampleTransitRouterVpcAttachment = new TransitRouterVpcAttachment("exampleTransitRouterVpcAttachment", TransitRouterVpcAttachmentArgs.builder()
///             .cenId(exampleInstance.id())
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .vpcId(example.id())
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(masterZone)
///                     .vswitchId(exampleMaster.id())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(slaveZone)
///                     .vswitchId(exampleSlave.id())
///                     .build())
///             .transitRouterAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .build());
///
///         var exampleTransitRouterRouteTable = new TransitRouterRouteTable("exampleTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .build());
///
///         var exampleTransitRouterRouteTablePropagation = new TransitRouterRouteTablePropagation("exampleTransitRouterRouteTablePropagation", TransitRouterRouteTablePropagationArgs.builder()
///             .transitRouterRouteTableId(exampleTransitRouterRouteTable.transitRouterRouteTableId())
///             .transitRouterAttachmentId(exampleTransitRouterVpcAttachment.transitRouterAttachmentId())
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
///   example:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   exampleMaster:
///     type: alicloud:vpc:Switch
///     name: example_master
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.1.0/24
///       vpcId: ${example.id}
///       zoneId: ${masterZone}
///   exampleSlave:
///     type: alicloud:vpc:Switch
///     name: example_slave
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.2.0/24
///       vpcId: ${example.id}
///       zoneId: ${slaveZone}
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: ${name}
///       cenId: ${exampleInstance.id}
///   exampleTransitRouterVpcAttachment:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     name: example
///     properties:
///       cenId: ${exampleInstance.id}
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       vpcId: ${example.id}
///       zoneMappings:
///         - zoneId: ${masterZone}
///           vswitchId: ${exampleMaster.id}
///         - zoneId: ${slaveZone}
///           vswitchId: ${exampleSlave.id}
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///   exampleTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///   exampleTransitRouterRouteTablePropagation:
///     type: alicloud:cen:TransitRouterRouteTablePropagation
///     name: example
///     properties:
///       transitRouterRouteTableId: ${exampleTransitRouterRouteTable.transitRouterRouteTableId}
///       transitRouterAttachmentId: ${exampleTransitRouterVpcAttachment.transitRouterAttachmentId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
///   masterZone: ${default.resources[0].masterZones[0]}
///   slaveZone: ${default.resources[0].slaveZones[1]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN transit router route table propagation can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterRouteTablePropagation:TransitRouterRouteTablePropagation default tr-********:tr-attach-********
/// ```
class TransitRouterRouteTablePropagation extends pulumi.CustomResource {
  /// The dry run.
  ///
  /// &gt; **NOTE:** The Zone of CEN has MasterZone and SlaveZone, first zone_id of zone_mapping need be MasterZone. We have a API to describeZones[API](https://help.aliyun.com/document_detail/261356.html)
  late final pulumi.Output<bool?> dryRun;
  /// The associating status of the network.
  late final pulumi.Output<String> status;
  /// The ID the transit router attachment.
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// The ID of the transit router route table.
  late final pulumi.Output<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTablePropagation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterRouteTablePropagation]. {@macro pulumi_cen_transit_router_route_table_propagation_transit_router_route_table_propagation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterRouteTablePropagation(
    String name, {
    TransitRouterRouteTablePropagationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteTablePropagation:TransitRouterRouteTablePropagation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dryRun = registerOutput<bool?>('dryRun');
    status = registerOutput<String>('status');
    transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
  }

  /// Gets an existing [TransitRouterRouteTablePropagation] resource's state with the given [name] and [id].
  static TransitRouterRouteTablePropagation get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterRouteTablePropagationState? state,
  }) {
    return TransitRouterRouteTablePropagation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterRouteTablePropagation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteTablePropagation:TransitRouterRouteTablePropagation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dryRun = registerOutput<bool?>('dryRun');
    status = registerOutput<String>('status');
    transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
  }
}
