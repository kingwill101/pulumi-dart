import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_association_args.dart';
import 'transit_router_multicast_domain_association_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Multicast Domain Association resource.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Multicast Domain Association and how to use it, see [What is Transit Router Multicast Domain Association](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-associatetransitroutermulticastdomain).
///
/// &gt; **NOTE:** Available since v1.195.0.
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
/// const zone = _default.then(_default => _default.resources?.[0]?.masterZones?.[1]);
/// const example = new alicloud.vpc.Network("example", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const exampleSwitch = new alicloud.vpc.Switch("example", {
///     vswitchName: name,
///     cidrBlock: "192.168.1.0/24",
///     vpcId: example.id,
///     zoneId: zone,
/// });
/// const exampleInstance = new alicloud.cen.Instance("example", {cenInstanceName: name});
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: name,
///     cenId: exampleInstance.id,
///     supportMulticast: true,
/// });
/// const exampleTransitRouterMulticastDomain = new alicloud.cen.TransitRouterMulticastDomain("example", {
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     transitRouterMulticastDomainName: name,
/// });
/// const exampleTransitRouterVpcAttachment = new alicloud.cen.TransitRouterVpcAttachment("example", {
///     cenId: exampleTransitRouter.cenId,
///     transitRouterId: exampleTransitRouterMulticastDomain.transitRouterId,
///     vpcId: example.id,
///     zoneMappings: [{
///         zoneId: zone,
///         vswitchId: exampleSwitch.id,
///     }],
/// });
/// const exampleTransitRouterMulticastDomainAssociation = new alicloud.cen.TransitRouterMulticastDomainAssociation("example", {
///     transitRouterMulticastDomainId: exampleTransitRouterMulticastDomain.id,
///     transitRouterAttachmentId: exampleTransitRouterVpcAttachment.transitRouterAttachmentId,
///     vswitchId: exampleSwitch.id,
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
/// zone = default.resources[0].master_zones[1]
/// example = alicloud.vpc.Network("example",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// example_switch = alicloud.vpc.Switch("example",
///     vswitch_name=name,
///     cidr_block="192.168.1.0/24",
///     vpc_id=example.id,
///     zone_id=zone)
/// example_instance = alicloud.cen.Instance("example", cen_instance_name=name)
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name=name,
///     cen_id=example_instance.id,
///     support_multicast=True)
/// example_transit_router_multicast_domain = alicloud.cen.TransitRouterMulticastDomain("example",
///     transit_router_id=example_transit_router.transit_router_id,
///     transit_router_multicast_domain_name=name)
/// example_transit_router_vpc_attachment = alicloud.cen.TransitRouterVpcAttachment("example",
///     cen_id=example_transit_router.cen_id,
///     transit_router_id=example_transit_router_multicast_domain.transit_router_id,
///     vpc_id=example.id,
///     zone_mappings=[{
///         "zone_id": zone,
///         "vswitch_id": example_switch.id,
///     }])
/// example_transit_router_multicast_domain_association = alicloud.cen.TransitRouterMulticastDomainAssociation("example",
///     transit_router_multicast_domain_id=example_transit_router_multicast_domain.id,
///     transit_router_attachment_id=example_transit_router_vpc_attachment.transit_router_attachment_id,
///     vswitch_id=example_switch.id)
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
///     var zone = @default.Apply(@default => @default.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[1]));
///
///     var example = new AliCloud.Vpc.Network("example", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var exampleSwitch = new AliCloud.Vpc.Switch("example", new()
///     {
///         VswitchName = name,
///         CidrBlock = "192.168.1.0/24",
///         VpcId = example.Id,
///         ZoneId = zone,
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = name,
///         CenId = exampleInstance.Id,
///         SupportMulticast = true,
///     });
///
///     var exampleTransitRouterMulticastDomain = new AliCloud.Cen.TransitRouterMulticastDomain("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         TransitRouterMulticastDomainName = name,
///     });
///
///     var exampleTransitRouterVpcAttachment = new AliCloud.Cen.TransitRouterVpcAttachment("example", new()
///     {
///         CenId = exampleTransitRouter.CenId,
///         TransitRouterId = exampleTransitRouterMulticastDomain.TransitRouterId,
///         VpcId = example.Id,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 ZoneId = zone,
///                 VswitchId = exampleSwitch.Id,
///             },
///         },
///     });
///
///     var exampleTransitRouterMulticastDomainAssociation = new AliCloud.Cen.TransitRouterMulticastDomainAssociation("example", new()
///     {
///         TransitRouterMulticastDomainId = exampleTransitRouterMulticastDomain.Id,
///         TransitRouterAttachmentId = exampleTransitRouterVpcAttachment.TransitRouterAttachmentId,
///         VswitchId = exampleSwitch.Id,
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
/// 		zone := _default.Resources[0].MasterZones[1]
/// 		example, err := vpc.NewNetwork(ctx, "example", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSwitch, err := vpc.NewSwitch(ctx, "example", &vpc.SwitchArgs{
/// 			VswitchName: pulumi.String(name),
/// 			CidrBlock:   pulumi.String("192.168.1.0/24"),
/// 			VpcId:       example.ID(),
/// 			ZoneId:      pulumi.String(zone),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String(name),
/// 			CenId:             exampleInstance.ID(),
/// 			SupportMulticast:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouterMulticastDomain, err := cen.NewTransitRouterMulticastDomain(ctx, "example", &cen.TransitRouterMulticastDomainArgs{
/// 			TransitRouterId:                  exampleTransitRouter.TransitRouterId,
/// 			TransitRouterMulticastDomainName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouterVpcAttachment, err := cen.NewTransitRouterVpcAttachment(ctx, "example", &cen.TransitRouterVpcAttachmentArgs{
/// 			CenId:           exampleTransitRouter.CenId,
/// 			TransitRouterId: exampleTransitRouterMulticastDomain.TransitRouterId,
/// 			VpcId:           example.ID(),
/// 			ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					ZoneId:    pulumi.String(zone),
/// 					VswitchId: exampleSwitch.ID(),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterMulticastDomainAssociation(ctx, "example", &cen.TransitRouterMulticastDomainAssociationArgs{
/// 			TransitRouterMulticastDomainId: exampleTransitRouterMulticastDomain.ID(),
/// 			TransitRouterAttachmentId:      exampleTransitRouterVpcAttachment.TransitRouterAttachmentId,
/// 			VswitchId:                      exampleSwitch.ID(),
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
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomain;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainAssociation;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainAssociationArgs;
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
///         final var zone = default_.resources()[0].masterZones()[1];
///
///         var example = new Network("example", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var exampleSwitch = new Switch("exampleSwitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("192.168.1.0/24")
///             .vpcId(example.id())
///             .zoneId(zone)
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName(name)
///             .cenId(exampleInstance.id())
///             .supportMulticast(true)
///             .build());
///
///         var exampleTransitRouterMulticastDomain = new TransitRouterMulticastDomain("exampleTransitRouterMulticastDomain", TransitRouterMulticastDomainArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .transitRouterMulticastDomainName(name)
///             .build());
///
///         var exampleTransitRouterVpcAttachment = new TransitRouterVpcAttachment("exampleTransitRouterVpcAttachment", TransitRouterVpcAttachmentArgs.builder()
///             .cenId(exampleTransitRouter.cenId())
///             .transitRouterId(exampleTransitRouterMulticastDomain.transitRouterId())
///             .vpcId(example.id())
///             .zoneMappings(TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                 .zoneId(zone)
///                 .vswitchId(exampleSwitch.id())
///                 .build())
///             .build());
///
///         var exampleTransitRouterMulticastDomainAssociation = new TransitRouterMulticastDomainAssociation("exampleTransitRouterMulticastDomainAssociation", TransitRouterMulticastDomainAssociationArgs.builder()
///             .transitRouterMulticastDomainId(exampleTransitRouterMulticastDomain.id())
///             .transitRouterAttachmentId(exampleTransitRouterVpcAttachment.transitRouterAttachmentId())
///             .vswitchId(exampleSwitch.id())
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
///   exampleSwitch:
///     type: alicloud:vpc:Switch
///     name: example
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 192.168.1.0/24
///       vpcId: ${example.id}
///       zoneId: ${zone}
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: ${name}
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: ${name}
///       cenId: ${exampleInstance.id}
///       supportMulticast: true
///   exampleTransitRouterMulticastDomain:
///     type: alicloud:cen:TransitRouterMulticastDomain
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       transitRouterMulticastDomainName: ${name}
///   exampleTransitRouterVpcAttachment:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     name: example
///     properties:
///       cenId: ${exampleTransitRouter.cenId}
///       transitRouterId: ${exampleTransitRouterMulticastDomain.transitRouterId}
///       vpcId: ${example.id}
///       zoneMappings:
///         - zoneId: ${zone}
///           vswitchId: ${exampleSwitch.id}
///   exampleTransitRouterMulticastDomainAssociation:
///     type: alicloud:cen:TransitRouterMulticastDomainAssociation
///     name: example
///     properties:
///       transitRouterMulticastDomainId: ${exampleTransitRouterMulticastDomain.id}
///       transitRouterAttachmentId: ${exampleTransitRouterVpcAttachment.transitRouterAttachmentId}
///       vswitchId: ${exampleSwitch.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
///   zone: ${default.resources[0].masterZones[1]}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Multicast Domain Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterMulticastDomainAssociation:TransitRouterMulticastDomainAssociation example <transit_router_multicast_domain_id>:<transit_router_attachment_id>:<vswitch_id>
/// ```
class TransitRouterMulticastDomainAssociation extends pulumi.CustomResource {
  /// The status of the Transit Router Multicast Domain Association.
  late final pulumi.Output<String> status;

  /// The ID of the VPC connection.
  late final pulumi.Output<String> transitRouterAttachmentId;

  /// The ID of the multicast domain.
  late final pulumi.Output<String> transitRouterMulticastDomainId;

  /// The ID of the vSwitch.
  late final pulumi.Output<String> vswitchId;

  /// Creates a new [TransitRouterMulticastDomainAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterMulticastDomainAssociation]. {@macro pulumi_cen_transit_router_multicast_domain_association_transit_router_multicast_domain_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterMulticastDomainAssociation(
    String name, {
    TransitRouterMulticastDomainAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterMulticastDomainAssociation:TransitRouterMulticastDomainAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    status = registerOutput<String>('status');
    transitRouterAttachmentId = registerOutput<String>(
      'transitRouterAttachmentId',
    );
    transitRouterMulticastDomainId = registerOutput<String>(
      'transitRouterMulticastDomainId',
    );
    vswitchId = registerOutput<String>('vswitchId');
  }

  /// Gets an existing [TransitRouterMulticastDomainAssociation] resource's state with the given [name] and [id].
  static TransitRouterMulticastDomainAssociation get(
    String name,
    pulumi.Input<String> id, {
    TransitRouterMulticastDomainAssociationState? state,
  }) {
    return TransitRouterMulticastDomainAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TransitRouterMulticastDomainAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/transitRouterMulticastDomainAssociation:TransitRouterMulticastDomainAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    status = registerOutput<String>('status');
    transitRouterAttachmentId = registerOutput<String>(
      'transitRouterAttachmentId',
    );
    transitRouterMulticastDomainId = registerOutput<String>(
      'transitRouterMulticastDomainId',
    );
    vswitchId = registerOutput<String>('vswitchId');
  }
}
