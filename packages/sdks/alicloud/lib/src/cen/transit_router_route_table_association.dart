import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_route_table_association_args.dart';
import 'transit_router_route_table_association_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Route Table Association resource.
///
/// The routing association of the routing table of the forwarding router.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Route Table Association and how to use it, see [What is Transit Router Route Table Association](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-associatetransitrouterattachmentwithroutetable).
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
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.cen.getTransitRouterAvailableResources({});
/// const masterZone = _default.then(_default => _default.resources?.[0]?.masterZones?.[0]);
/// const slaveZone = _default.then(_default => _default.resources?.[0]?.slaveZones?.[1]);
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const defaultMaster = new alicloud.vpc.Switch("default_master", {
///     vswitchName: name,
///     cidrBlock: "192.168.1.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: masterZone,
/// });
/// const defaultSlave = new alicloud.vpc.Switch("default_slave", {
///     vswitchName: name,
///     cidrBlock: "192.168.2.0/24",
///     vpcId: defaultNetwork.id,
///     zoneId: slaveZone,
/// });
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     transitRouterName: name,
///     cenId: defaultInstance.id,
/// });
/// const defaultTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("default", {transitRouterId: defaultTransitRouter.transitRouterId});
/// const defaultTransitRouterVpcAttachment = new alicloud.cen.TransitRouterVpcAttachment("default", {
///     cenId: defaultInstance.id,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     vpcId: defaultNetwork.id,
///     transitRouterVpcAttachmentName: name,
///     transitRouterAttachmentDescription: name,
///     zoneMappings: [
///         {
///             zoneId: masterZone,
///             vswitchId: defaultMaster.id,
///         },
///         {
///             zoneId: slaveZone,
///             vswitchId: defaultSlave.id,
///         },
///     ],
/// });
/// const defaultTransitRouterRouteTableAssociation = new alicloud.cen.TransitRouterRouteTableAssociation("default", {
///     transitRouterRouteTableId: defaultTransitRouterRouteTable.transitRouterRouteTableId,
///     transitRouterAttachmentId: defaultTransitRouterVpcAttachment.transitRouterAttachmentId,
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
/// default = alicloud.cen.get_transit_router_available_resources()
/// master_zone = default.resources[0].master_zones[0]
/// slave_zone = default.resources[0].slave_zones[1]
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// default_master = alicloud.vpc.Switch("default_master",
///     vswitch_name=name,
///     cidr_block="192.168.1.0/24",
///     vpc_id=default_network.id,
///     zone_id=master_zone)
/// default_slave = alicloud.vpc.Switch("default_slave",
///     vswitch_name=name,
///     cidr_block="192.168.2.0/24",
///     vpc_id=default_network.id,
///     zone_id=slave_zone)
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     transit_router_name=name,
///     cen_id=default_instance.id)
/// default_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("default", transit_router_id=default_transit_router.transit_router_id)
/// default_transit_router_vpc_attachment = alicloud.cen.TransitRouterVpcAttachment("default",
///     cen_id=default_instance.id,
///     transit_router_id=default_transit_router.transit_router_id,
///     vpc_id=default_network.id,
///     transit_router_vpc_attachment_name=name,
///     transit_router_attachment_description=name,
///     zone_mappings=[
///         {
///             "zone_id": master_zone,
///             "vswitch_id": default_master.id,
///         },
///         {
///             "zone_id": slave_zone,
///             "vswitch_id": default_slave.id,
///         },
///     ])
/// default_transit_router_route_table_association = alicloud.cen.TransitRouterRouteTableAssociation("default",
///     transit_router_route_table_id=default_transit_router_route_table.transit_router_route_table_id,
///     transit_router_attachment_id=default_transit_router_vpc_attachment.transit_router_attachment_id)
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
///     var @default = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     var masterZone = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[0]));
///
///     var slaveZone = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.SlaveZones[1]));
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var defaultMaster = new AliCloud.Vpc.Switch("default_master", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.1.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = masterZone,
///     });
///
///     var defaultSlave = new AliCloud.Vpc.Switch("default_slave", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.2.0/24",
///         VpcId = defaultNetwork.Id,
///         ZoneId = slaveZone,
///     });
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         TransitRouterName = name,
///         CenId = defaultInstance.Id,
///     });
///
///     var defaultTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///     });
///
///     var defaultTransitRouterVpcAttachment = new AliCloud.Cen.TransitRouterVpcAttachment("default", new()
///     {
///         CenId = defaultInstance.Id,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         VpcId = defaultNetwork.Id,
///         TransitRouterVpcAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = masterZone,
///                 VswitchId = defaultMaster.Id,
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = slaveZone,
///                 VswitchId = defaultSlave.Id,
///             },
///         },
///     });
///
///     var defaultTransitRouterRouteTableAssociation = new AliCloud.Cen.TransitRouterRouteTableAssociation("default", new()
///     {
///         TransitRouterRouteTableId = defaultTransitRouterRouteTable.TransitRouterRouteTableId,
///         TransitRouterAttachmentId = defaultTransitRouterVpcAttachment.TransitRouterAttachmentId,
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		masterZone := _default.Resources[0].MasterZones[0]
/// 		slaveZone := _default.Resources[0].SlaveZones[1]
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMaster, err := vpc.NewSwitch(ctx, "default_master", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(masterZone),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSlave, err := vpc.NewSwitch(ctx, "default_slave", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.2.0/24"),
/// 			VpcId:       defaultNetwork.ID(),
/// 			ZoneId:      pulumi.String(slaveZone),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String(name),
/// 			CenId:             defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "default", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId: defaultTransitRouter.TransitRouterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVpcAttachment, err := cen.NewTransitRouterVpcAttachment(ctx, "default", &cen.TransitRouterVpcAttachmentArgs{
/// 			CenId:                              defaultInstance.ID(),
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			VpcId:                              defaultNetwork.ID(),
/// 			TransitRouterVpcAttachmentName:     pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(masterZone),
/// 					VswitchId: defaultMaster.ID(),
/// 				},
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(slaveZone),
/// 					VswitchId: defaultSlave.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterRouteTableAssociation(ctx, "default", &cen.TransitRouterRouteTableAssociationArgs{
/// 			TransitRouterRouteTableId: defaultTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			TransitRouterAttachmentId: defaultTransitRouterVpcAttachment.TransitRouterAttachmentId,
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
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableAssociation;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableAssociationArgs;
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
///         final var default = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         final var masterZone = default_.resources()[0].masterZones()[0];
///
///         final var slaveZone = default_.resources()[0].slaveZones()[1];
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var defaultMaster = new Switch("defaultMaster", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.1.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(masterZone)
///             .build());
///
///         var defaultSlave = new Switch("defaultSlave", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.2.0/24")
///             .vpcId(defaultNetwork.id())
///             .zoneId(slaveZone)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .cenId(defaultInstance.id())
///             .build());
///
///         var defaultTransitRouterRouteTable = new TransitRouterRouteTable("defaultTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .build());
///
///         var defaultTransitRouterVpcAttachment = new TransitRouterVpcAttachment("defaultTransitRouterVpcAttachment", TransitRouterVpcAttachmentArgs.builder()
///             .cenId(defaultInstance.id())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .vpcId(defaultNetwork.id())
///             .transitRouterVpcAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(masterZone)
///                     .vswitchId(defaultMaster.id())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .zoneId(slaveZone)
///                     .vswitchId(defaultSlave.id())
///                     .build())
///             .build());
///
///         var defaultTransitRouterRouteTableAssociation = new TransitRouterRouteTableAssociation("defaultTransitRouterRouteTableAssociation", TransitRouterRouteTableAssociationArgs.builder()
///             .transitRouterRouteTableId(defaultTransitRouterRouteTable.transitRouterRouteTableId())
///             .transitRouterAttachmentId(defaultTransitRouterVpcAttachment.transitRouterAttachmentId())
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
///       cidrBlock: 192.168.0.0/16
///   defaultMaster:
///     type: alicloud:vpc:Switch
///     name: default_master
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.1.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${masterZone}
///   defaultSlave:
///     type: alicloud:vpc:Switch
///     name: default_slave
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.2.0/24
///       vpcId: ${defaultNetwork.id}
///       zoneId: ${slaveZone}
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       transitRouterName: ${name}
///       cenId: ${defaultInstance.id}
///   defaultTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///   defaultTransitRouterVpcAttachment:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       vpcId: ${defaultNetwork.id}
///       transitRouterVpcAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///       zoneMappings:
///         - zoneId: ${masterZone}
///           vswitchId: ${defaultMaster.id}
///         - zoneId: ${slaveZone}
///           vswitchId: ${defaultSlave.id}
///   defaultTransitRouterRouteTableAssociation:
///     type: alicloud:cen:TransitRouterRouteTableAssociation
///     name: default
///     properties:
///       transitRouterRouteTableId: ${defaultTransitRouterRouteTable.transitRouterRouteTableId}
///       transitRouterAttachmentId: ${defaultTransitRouterVpcAttachment.transitRouterAttachmentId}
/// variables:
///   masterZone: ${default.resources[0].masterZones[0]}
///   slaveZone: ${default.resources[0].slaveZones[1]}
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Route Table Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterRouteTableAssociation:TransitRouterRouteTableAssociation example <transit_router_attachment_id>:<transit_router_route_table_id>
/// ```
class TransitRouterRouteTableAssociation extends pulumi.CustomResource {
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  late final pulumi.Output<bool?> dryRun;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// TransitRouterAttachmentId
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// TransitRouterRouteTableId
  late final pulumi.Output<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteTableAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterRouteTableAssociation]. {@macro pulumi_cen_transit_router_route_table_association_transit_router_route_table_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterRouteTableAssociation(
    String name, {
    TransitRouterRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteTableAssociation:TransitRouterRouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.status = registerOutput<String>('status');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
  }

  /// Gets an existing [TransitRouterRouteTableAssociation] resource's state with the given [name] and [id].
  static TransitRouterRouteTableAssociation get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterRouteTableAssociationState? state,
  }) {
    return TransitRouterRouteTableAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterRouteTableAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterRouteTableAssociation:TransitRouterRouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.status = registerOutput<String>('status');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterRouteTableId = registerOutput<String>('transitRouterRouteTableId');
  }
}
