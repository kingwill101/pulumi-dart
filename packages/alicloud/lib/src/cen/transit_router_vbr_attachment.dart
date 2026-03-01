import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vbr_attachment_args.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router VBR Attachment resource.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router VBR Attachment and how to use it, see [What is Transit Router VBR Attachment](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createtransitroutervbrattachment)
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
/// const nameRegex = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const _default = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {cenId: _default.id});
/// const defaultVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: nameRegex.then(nameRegex => nameRegex.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: 2420,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const defaultTransitRouterVbrAttachment = new alicloud.cen.TransitRouterVbrAttachment("default", {
///     cenId: _default.id,
///     vbrId: defaultVirtualBorderRouter.id,
///     transitRouterId: defaultTransitRouter.transitRouterId,
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
/// name_regex = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// default = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default", cen_id=default.id)
/// default_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("default",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=name_regex.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=2420,
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// default_transit_router_vbr_attachment = alicloud.cen.TransitRouterVbrAttachment("default",
///     cen_id=default.id,
///     vbr_id=default_virtual_border_router.id,
///     transit_router_id=default_transit_router.transit_router_id,
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
///     var nameRegex = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = @default.Id,
///     });
///
///     var defaultVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = nameRegex.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id),
///         VirtualBorderRouterName = name,
///         VlanId = 2420,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var defaultTransitRouterVbrAttachment = new AliCloud.Cen.TransitRouterVbrAttachment("default", new()
///     {
///         CenId = @default.Id,
///         VbrId = defaultVirtualBorderRouter.Id,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
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
/// 		nameRegex, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId: _default.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(nameRegex.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  pulumi.Int(2420),
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterVbrAttachment(ctx, "default", &cen.TransitRouterVbrAttachmentArgs{
/// 			CenId:                              _default.ID(),
/// 			VbrId:                              defaultVirtualBorderRouter.ID(),
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
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
/// import com.pulumi.alicloud.expressconnect.ExpressconnectFunctions;
/// import com.pulumi.alicloud.expressconnect.inputs.GetPhysicalConnectionsArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachmentArgs;
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
///         final var nameRegex = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(default_.id())
///             .build());
///
///         var defaultVirtualBorderRouter = new VirtualBorderRouter("defaultVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(nameRegex.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(2420)
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var defaultTransitRouterVbrAttachment = new TransitRouterVbrAttachment("defaultTransitRouterVbrAttachment", TransitRouterVbrAttachmentArgs.builder()
///             .cenId(default_.id())
///             .vbrId(defaultVirtualBorderRouter.id())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
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
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       cenId: ${default.id}
///   defaultVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: default
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${nameRegex.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: 2420
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   defaultTransitRouterVbrAttachment:
///     type: alicloud:cen:TransitRouterVbrAttachment
///     name: default
///     properties:
///       cenId: ${default.id}
///       vbrId: ${defaultVirtualBorderRouter.id}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
/// variables:
///   nameRegex:
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
/// Cloud Enterprise Network (CEN) Transit Router VBR Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterVbrAttachment:TransitRouterVbrAttachment example <cen_id>:<transit_router_attachment_id>
/// ```
class TransitRouterVbrAttachment extends pulumi.CustomResource {
  /// Specifies whether to enable the Enterprise Edition transit router to automatically advertise routes to the VBR. Default value: `false`. Valid values:
  late final pulumi.Output<bool?> autoPublishRouteEnabled;
  /// The ID of the CEN.
  late final pulumi.Output<String> cenId;
  /// Specifies whether to perform a dry run. Default value: `false`. Valid values: `true`, `false`.
  late final pulumi.Output<bool?> dryRun;
  /// The resource type of the transit router vbr attachment. Default value: `VBR`. Valid values: `VBR`.
  late final pulumi.Output<String?> resourceType;
  /// Whether to enabled route table association. **NOTE:** "Field `route_table_association_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTableAssociation` instead, how to use alicloud_cen_transit_router_route_table_association."
  late final pulumi.Output<bool?> routeTableAssociationEnabled;
  /// Whether to enabled route table propagation. **NOTE:** "Field `route_table_propagation_enabled` has been deprecated from provider version 1.233.1. Please use the resource `alicloud.cen.TransitRouterRouteTablePropagation` instead, how to use alicloud_cen_transit_router_route_table_propagation."
  ///
  /// ->**NOTE:** Ensure that the vbr is not used in Express Connect.
  late final pulumi.Output<bool?> routeTablePropagationEnabled;
  /// The status of the Transit Router VBR Attachment.
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The description of the transit router vbr attachment.
  late final pulumi.Output<String?> transitRouterAttachmentDescription;
  /// The ID of the VBR connection.
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// The name of the transit router vbr attachment.
  late final pulumi.Output<String?> transitRouterAttachmentName;
  /// The ID of the transit router.
  late final pulumi.Output<String> transitRouterId;
  /// The ID of the VBR.
  late final pulumi.Output<String> vbrId;
  /// The owner id of the vbr.
  late final pulumi.Output<String> vbrOwnerId;

  /// Creates a new [TransitRouterVbrAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterVbrAttachment]. {@macro pulumi_cen_transit_router_vbr_attachment_transit_router_vbr_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterVbrAttachment(
    String name, {
    TransitRouterVbrAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterVbrAttachment:TransitRouterVbrAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPublishRouteEnabled = registerOutput<bool?>('autoPublishRouteEnabled');
    this.cenId = registerOutput<String>('cenId');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.resourceType = registerOutput<String?>('resourceType');
    this.routeTableAssociationEnabled = registerOutput<bool?>('routeTableAssociationEnabled');
    this.routeTablePropagationEnabled = registerOutput<bool?>('routeTablePropagationEnabled');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentDescription = registerOutput<String?>('transitRouterAttachmentDescription');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterAttachmentName = registerOutput<String?>('transitRouterAttachmentName');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.vbrId = registerOutput<String>('vbrId');
    this.vbrOwnerId = registerOutput<String>('vbrOwnerId');
  }
}
