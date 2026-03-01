import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_peer_attachment_args.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Peer Attachment resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Peer Attachment and how to use it, see [What is Transit Router Peer Attachment](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateTransitRouterPeerAttachment).
///
/// > **NOTE:** Available since v1.128.0.
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
/// const region = config.get("region") || "cn-hangzhou";
/// const peerRegion = config.get("peerRegion") || "cn-beijing";
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const exampleBandwidthPackage = new alicloud.cen.BandwidthPackage("example", {
///     bandwidth: 5,
///     cenBandwidthPackageName: "tf_example",
///     geographicRegionAId: "China",
///     geographicRegionBId: "China",
/// });
/// const exampleBandwidthPackageAttachment = new alicloud.cen.BandwidthPackageAttachment("example", {
///     instanceId: example.id,
///     bandwidthPackageId: exampleBandwidthPackage.id,
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {cenId: exampleBandwidthPackageAttachment.instanceId});
/// const peer = new alicloud.cen.TransitRouter("peer", {cenId: exampleTransitRouter.cenId});
/// const exampleTransitRouterPeerAttachment = new alicloud.cen.TransitRouterPeerAttachment("example", {
///     cenId: example.id,
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     peerTransitRouterRegionId: peerRegion,
///     peerTransitRouterId: peer.transitRouterId,
///     cenBandwidthPackageId: exampleBandwidthPackageAttachment.bandwidthPackageId,
///     bandwidth: 5,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
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
/// region = config.get("region")
/// if region is None:
///     region = "cn-hangzhou"
/// peer_region = config.get("peerRegion")
/// if peer_region is None:
///     peer_region = "cn-beijing"
/// example = alicloud.cen.Instance("example",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// example_bandwidth_package = alicloud.cen.BandwidthPackage("example",
///     bandwidth=5,
///     cen_bandwidth_package_name="tf_example",
///     geographic_region_a_id="China",
///     geographic_region_b_id="China")
/// example_bandwidth_package_attachment = alicloud.cen.BandwidthPackageAttachment("example",
///     instance_id=example.id,
///     bandwidth_package_id=example_bandwidth_package.id)
/// example_transit_router = alicloud.cen.TransitRouter("example", cen_id=example_bandwidth_package_attachment.instance_id)
/// peer = alicloud.cen.TransitRouter("peer", cen_id=example_transit_router.cen_id)
/// example_transit_router_peer_attachment = alicloud.cen.TransitRouterPeerAttachment("example",
///     cen_id=example.id,
///     transit_router_id=example_transit_router.transit_router_id,
///     peer_transit_router_region_id=peer_region,
///     peer_transit_router_id=peer.transit_router_id,
///     cen_bandwidth_package_id=example_bandwidth_package_attachment.bandwidth_package_id,
///     bandwidth=5,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name)
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
///     var region = config.Get("region") ?? "cn-hangzhou";
///     var peerRegion = config.Get("peerRegion") ?? "cn-beijing";
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var exampleBandwidthPackage = new AliCloud.Cen.BandwidthPackage("example", new()
///     {
///         Bandwidth = 5,
///         CenBandwidthPackageName = "tf_example",
///         GeographicRegionAId = "China",
///         GeographicRegionBId = "China",
///     });
///
///     var exampleBandwidthPackageAttachment = new AliCloud.Cen.BandwidthPackageAttachment("example", new()
///     {
///         InstanceId = example.Id,
///         BandwidthPackageId = exampleBandwidthPackage.Id,
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         CenId = exampleBandwidthPackageAttachment.InstanceId,
///     });
///
///     var peer = new AliCloud.Cen.TransitRouter("peer", new()
///     {
///         CenId = exampleTransitRouter.CenId,
///     });
///
///     var exampleTransitRouterPeerAttachment = new AliCloud.Cen.TransitRouterPeerAttachment("example", new()
///     {
///         CenId = example.Id,
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         PeerTransitRouterRegionId = peerRegion,
///         PeerTransitRouterId = peer.TransitRouterId,
///         CenBandwidthPackageId = exampleBandwidthPackageAttachment.BandwidthPackageId,
///         Bandwidth = 5,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
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
/// 		region := "cn-hangzhou"
/// 		if param := cfg.Get("region"); param != "" {
/// 			region = param
/// 		}
/// 		peerRegion := "cn-beijing"
/// 		if param := cfg.Get("peerRegion"); param != "" {
/// 			peerRegion = param
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackage, err := cen.NewBandwidthPackage(ctx, "example", &cen.BandwidthPackageArgs{
/// 			Bandwidth:               pulumi.Int(5),
/// 			CenBandwidthPackageName: pulumi.String("tf_example"),
/// 			GeographicRegionAId:     pulumi.String("China"),
/// 			GeographicRegionBId:     pulumi.String("China"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBandwidthPackageAttachment, err := cen.NewBandwidthPackageAttachment(ctx, "example", &cen.BandwidthPackageAttachmentArgs{
/// 			InstanceId:         example.ID(),
/// 			BandwidthPackageId: exampleBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			CenId: exampleBandwidthPackageAttachment.InstanceId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := cen.NewTransitRouter(ctx, "peer", &cen.TransitRouterArgs{
/// 			CenId: exampleTransitRouter.CenId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterPeerAttachment(ctx, "example", &cen.TransitRouterPeerAttachmentArgs{
/// 			CenId:                              example.ID(),
/// 			TransitRouterId:                    exampleTransitRouter.TransitRouterId,
/// 			PeerTransitRouterRegionId:          pulumi.String(peerRegion),
/// 			PeerTransitRouterId:                peer.TransitRouterId,
/// 			CenBandwidthPackageId:              exampleBandwidthPackageAttachment.BandwidthPackageId,
/// 			Bandwidth:                          pulumi.Int(5),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
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
/// import com.pulumi.alicloud.cen.BandwidthPackage;
/// import com.pulumi.alicloud.cen.BandwidthPackageArgs;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachment;
/// import com.pulumi.alicloud.cen.BandwidthPackageAttachmentArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterPeerAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterPeerAttachmentArgs;
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
///         final var region = config.get("region").orElse("cn-hangzhou");
///         final var peerRegion = config.get("peerRegion").orElse("cn-beijing");
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var exampleBandwidthPackage = new BandwidthPackage("exampleBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(5)
///             .cenBandwidthPackageName("tf_example")
///             .geographicRegionAId("China")
///             .geographicRegionBId("China")
///             .build());
///
///         var exampleBandwidthPackageAttachment = new BandwidthPackageAttachment("exampleBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .instanceId(example.id())
///             .bandwidthPackageId(exampleBandwidthPackage.id())
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .cenId(exampleBandwidthPackageAttachment.instanceId())
///             .build());
///
///         var peer = new TransitRouter("peer", TransitRouterArgs.builder()
///             .cenId(exampleTransitRouter.cenId())
///             .build());
///
///         var exampleTransitRouterPeerAttachment = new TransitRouterPeerAttachment("exampleTransitRouterPeerAttachment", TransitRouterPeerAttachmentArgs.builder()
///             .cenId(example.id())
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .peerTransitRouterRegionId(peerRegion)
///             .peerTransitRouterId(peer.transitRouterId())
///             .cenBandwidthPackageId(exampleBandwidthPackageAttachment.bandwidthPackageId())
///             .bandwidth(5)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
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
///   region:
///     type: string
///     default: cn-hangzhou
///   peerRegion:
///     type: string
///     default: cn-beijing
/// resources:
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   exampleBandwidthPackage:
///     type: alicloud:cen:BandwidthPackage
///     name: example
///     properties:
///       bandwidth: 5
///       cenBandwidthPackageName: tf_example
///       geographicRegionAId: China
///       geographicRegionBId: China
///   exampleBandwidthPackageAttachment:
///     type: alicloud:cen:BandwidthPackageAttachment
///     name: example
///     properties:
///       instanceId: ${example.id}
///       bandwidthPackageId: ${exampleBandwidthPackage.id}
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       cenId: ${exampleBandwidthPackageAttachment.instanceId}
///   peer:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${exampleTransitRouter.cenId}
///   exampleTransitRouterPeerAttachment:
///     type: alicloud:cen:TransitRouterPeerAttachment
///     name: example
///     properties:
///       cenId: ${example.id}
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       peerTransitRouterRegionId: ${peerRegion}
///       peerTransitRouterId: ${peer.transitRouterId}
///       cenBandwidthPackageId: ${exampleBandwidthPackageAttachment.bandwidthPackageId}
///       bandwidth: 5
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Transit Router Peer Attachment can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterPeerAttachment:TransitRouterPeerAttachment example <cen_id>:<transit_router_attachment_id>
/// ```
class TransitRouterPeerAttachment extends pulumi.CustomResource {
  /// Specifies whether to enable the local Enterprise Edition transit router to automatically advertise the routes of the inter-region connection to the peer transit router. Valid values:
  late final pulumi.Output<bool?> autoPublishRouteEnabled;
  /// The bandwidth value of the inter-region connection. Unit: Mbit/s.
  ///
  /// - This parameter specifies the maximum bandwidth value for the inter-region connection if you set `BandwidthType` to `BandwidthPackage`.
  /// - This parameter specifies the bandwidth throttling threshold for the inter-region connection if you set `BandwidthType` to `DataTransfer`.
  late final pulumi.Output<int?> bandwidth;
  /// The method that is used to allocate bandwidth to the inter-region connection. Valid values:
  ///
  /// - `BandwidthPackage`: allocates bandwidth from a bandwidth plan.
  /// - `DataTransfer`: bandwidth is billed based on the pay-by-data-transfer metering method.
  late final pulumi.Output<String> bandwidthType;
  /// The ID of the bandwidth plan that is used to allocate bandwidth to the inter-region connection.
  ///
  /// > **NOTE:**   If you set `BandwidthType` to `DataTransfer`, you do not need to set this parameter.
  late final pulumi.Output<String?> cenBandwidthPackageId;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  late final pulumi.Output<String?> cenId;
  /// The creation time of the resource
  late final pulumi.Output<String> createTime;
  /// The default line type.
  /// Valid values: Platinum and Gold.
  /// Platinum is supported only when BandwidthType is set to DataTransfer.
  late final pulumi.Output<String> defaultLinkType;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  late final pulumi.Output<bool?> dryRun;
  /// The ID of the peer transit router.
  late final pulumi.Output<String> peerTransitRouterId;
  /// The ID of the region where the peer transit router is deployed.
  late final pulumi.Output<String?> peerTransitRouterRegionId;
  /// The ID of the region where the local Enterprise Edition transit router is deployed.
  late final pulumi.Output<String> regionId;
  /// The resource type to attachment. Only support `VR` and default value is `VR`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  late final pulumi.Output<String?> resourceType;
  /// Field `route_table_association_enabled` has been deprecated from provider version 1.230.0.
  late final pulumi.Output<bool?> routeTableAssociationEnabled;
  /// Field `route_table_propagation_enabled` has been deprecated from provider version 1.230.0.
  late final pulumi.Output<bool?> routeTablePropagationEnabled;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tag of the resource
  late final pulumi.Output<Map<String, String>?> tags;
  /// The new description of the inter-region connection.
  /// This parameter is optional. If you enter a description, it must be 1 to 256 characters in length, and cannot start with http:// or https://.
  late final pulumi.Output<String?> transitRouterAttachmentDescription;
  /// The ID of the inter-region connection.
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// . Field 'transit_router_attachment_name' has been deprecated from provider version 1.247.0. New field 'transit_router_peer_attachment_name' instead.
  late final pulumi.Output<String> transitRouterAttachmentName;
  /// The ID of the local Enterprise Edition transit router.
  late final pulumi.Output<String?> transitRouterId;
  /// The new name of the inter-region connection.
  /// The name can be empty or 1 to 128 characters in length, and cannot start with http:// or https://.
  late final pulumi.Output<String> transitRouterPeerAttachmentName;

  /// Creates a new [TransitRouterPeerAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterPeerAttachment]. {@macro pulumi_cen_transit_router_peer_attachment_transit_router_peer_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterPeerAttachment(
    String name, {
    TransitRouterPeerAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterPeerAttachment:TransitRouterPeerAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoPublishRouteEnabled = registerOutput<bool?>('autoPublishRouteEnabled');
    this.bandwidth = registerOutput<int?>('bandwidth');
    this.bandwidthType = registerOutput<String>('bandwidthType');
    this.cenBandwidthPackageId = registerOutput<String?>('cenBandwidthPackageId');
    this.cenId = registerOutput<String?>('cenId');
    this.createTime = registerOutput<String>('createTime');
    this.defaultLinkType = registerOutput<String>('defaultLinkType');
    this.dryRun = registerOutput<bool?>('dryRun');
    this.peerTransitRouterId = registerOutput<String>('peerTransitRouterId');
    this.peerTransitRouterRegionId = registerOutput<String?>('peerTransitRouterRegionId');
    this.regionId = registerOutput<String>('regionId');
    this.resourceType = registerOutput<String?>('resourceType');
    this.routeTableAssociationEnabled = registerOutput<bool?>('routeTableAssociationEnabled');
    this.routeTablePropagationEnabled = registerOutput<bool?>('routeTablePropagationEnabled');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.transitRouterAttachmentDescription = registerOutput<String?>('transitRouterAttachmentDescription');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterAttachmentName = registerOutput<String>('transitRouterAttachmentName');
    this.transitRouterId = registerOutput<String?>('transitRouterId');
    this.transitRouterPeerAttachmentName = registerOutput<String>('transitRouterPeerAttachmentName');
  }
}
