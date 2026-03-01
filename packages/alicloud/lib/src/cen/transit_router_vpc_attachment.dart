import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpc_attachment_args.dart';
import 'transit_router_vpc_attachment_zone_mapping.dart';

/// Provides a Cen Transit Router Vpc Attachment resource.
///
///
///
/// For information about Cen Transit Router Vpc Attachment and how to use it, see [What is Transit Router Vpc Attachment](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitroutervpcattachment)
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
/// 		_, err = cen.NewTransitRouterVpcAttachment(ctx, "example", &cen.TransitRouterVpcAttachmentArgs{
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
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
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
/// Cen Transit Router Vpc Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterVpcAttachment:TransitRouterVpcAttachment example <id>
/// ```
class TransitRouterVpcAttachment extends pulumi.CustomResource {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to VPCs. Valid values:
  /// - **false:** (default)
  late final pulumi.Output<bool?> autoPublishRouteEnabled;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  late final pulumi.Output<String?> cenId;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  late final pulumi.Output<bool?> dryRun;
  /// Whether to forcibly delete the VPC connection. The value is:
  late final pulumi.Output<bool?> forceDelete;
  /// The billing method. The default value is `PayAsYouGo`, which specifies the pay-as-you-go billing method.
  late final pulumi.Output<String> paymentType;
  /// (Available since v1.260.0).The ID of the region where the VPC is deployed.
  late final pulumi.Output<String> regionId;
  /// The resource type of the transit router vpc attachment. Default value: `VPC`. Valid values: `VPC`.
  late final pulumi.Output<String> resourceType;
  /// Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  late final pulumi.Output<bool?> routeTableAssociationEnabled;
  /// Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.192.0. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  late final pulumi.Output<bool?> routeTablePropagationEnabled;
  /// Status
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The description of the VPC connection.
  ///
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String?> transitRouterAttachmentDescription;
  /// The ID of the VPC connection.
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// Field 'transit_router_attachment_name' has been deprecated from provider version 1.230.1. New field 'transit_router_vpc_attachment_name' instead.
  late final pulumi.Output<String> transitRouterAttachmentName;
  /// The ID of the Enterprise Edition transit router.
  late final pulumi.Output<String> transitRouterId;
  /// The name of the VPC connection.
  ///
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (\_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String> transitRouterVpcAttachmentName;
  /// TransitRouterVpcAttachmentOptions
  late final pulumi.Output<Map<String, String>> transitRouterVpcAttachmentOptions;
  /// The VPC ID.
  late final pulumi.Output<String> vpcId;
  /// VpcOwnerId
  late final pulumi.Output<String> vpcOwnerId;
  /// ZoneMappingss See `zone_mappings` below.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<List<TransitRouterVpcAttachmentZoneMapping>> zoneMappings;

  /// Creates a new [TransitRouterVpcAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterVpcAttachment]. {@macro pulumi_cen_transit_router_vpc_attachment_transit_router_vpc_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterVpcAttachment(
    String name, {
    TransitRouterVpcAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterVpcAttachment:TransitRouterVpcAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPublishRouteEnabled = registerOutput<bool?>('autoPublishRouteEnabled');
    this.cenId = registerOutput<String?>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.forceDelete = registerOutput<bool?>('forceDelete');
    this.paymentType = registerOutput<String>('paymentType');
    this.regionId = registerOutput<String>('regionId');
    this.resourceType = registerOutput<String>('resourceType');
    this.routeTableAssociationEnabled = registerOutput<bool?>('routeTableAssociationEnabled');
    this.routeTablePropagationEnabled = registerOutput<bool?>('routeTablePropagationEnabled');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentDescription = registerOutput<String?>('transitRouterAttachmentDescription');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterAttachmentName = registerOutput<String>('transitRouterAttachmentName');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.transitRouterVpcAttachmentName = registerOutput<String>('transitRouterVpcAttachmentName');
    this.transitRouterVpcAttachmentOptions = registerOutput<Map<String, String>>('transitRouterVpcAttachmentOptions');
    this.vpcId = registerOutput<String>('vpcId');
    this.vpcOwnerId = registerOutput<String>('vpcOwnerId');
    this.zoneMappings = registerOutput<List<TransitRouterVpcAttachmentZoneMapping>>('zoneMappings');
  }
}
