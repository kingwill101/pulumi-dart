import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_multicast_domain_peer_member_args.dart';

/// Provides a Cen Transit Router Multicast Domain Peer Member resource.
///
/// For information about Cen Transit Router Multicast Domain Peer Member and how to use it, see [What is Transit Router Multicast Domain Peer Member](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/api-cbn-2017-09-12-deregistertransitroutermulticastgroupmembers).
///
/// > **NOTE:** Available since v1.195.0.
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
/// const _default = new alicloud.cen.Instance("default", {cenInstanceName: name});
/// const defaultBandwidthPackage = new alicloud.cen.BandwidthPackage("default", {
///     bandwidth: 5,
///     cenBandwidthPackageName: name,
///     geographicRegionAId: "China",
///     geographicRegionBId: "China",
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.cen.BandwidthPackageAttachment("default", {
///     instanceId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: defaultBandwidthPackageAttachment.instanceId,
///     supportMulticast: true,
/// });
/// const peer = new alicloud.cen.TransitRouter("peer", {
///     cenId: defaultBandwidthPackageAttachment.instanceId,
///     supportMulticast: true,
/// });
/// const defaultTransitRouterPeerAttachment = new alicloud.cen.TransitRouterPeerAttachment("default", {
///     cenId: defaultBandwidthPackageAttachment.instanceId,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     peerTransitRouterId: peer.transitRouterId,
///     peerTransitRouterRegionId: "cn-qingdao",
///     cenBandwidthPackageId: defaultBandwidthPackageAttachment.bandwidthPackageId,
///     bandwidth: 5,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
/// });
/// const defaultTransitRouterMulticastDomain = new alicloud.cen.TransitRouterMulticastDomain("default", {
///     transitRouterId: defaultTransitRouterPeerAttachment.transitRouterId,
///     transitRouterMulticastDomainName: name,
///     transitRouterMulticastDomainDescription: name,
/// });
/// const peerTransitRouterMulticastDomain = new alicloud.cen.TransitRouterMulticastDomain("peer", {
///     transitRouterId: defaultTransitRouterPeerAttachment.peerTransitRouterId,
///     transitRouterMulticastDomainName: name,
///     transitRouterMulticastDomainDescription: name,
/// });
/// const defaultTransitRouterMulticastDomainPeerMember = new alicloud.cen.TransitRouterMulticastDomainPeerMember("default", {
///     transitRouterMulticastDomainId: defaultTransitRouterMulticastDomain.id,
///     peerTransitRouterMulticastDomainId: peerTransitRouterMulticastDomain.id,
///     groupIpAddress: "224.1.0.0",
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
/// default = alicloud.cen.Instance("default", cen_instance_name=name)
/// default_bandwidth_package = alicloud.cen.BandwidthPackage("default",
///     bandwidth=5,
///     cen_bandwidth_package_name=name,
///     geographic_region_a_id="China",
///     geographic_region_b_id="China")
/// default_bandwidth_package_attachment = alicloud.cen.BandwidthPackageAttachment("default",
///     instance_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default_bandwidth_package_attachment.instance_id,
///     support_multicast=True)
/// peer = alicloud.cen.TransitRouter("peer",
///     cen_id=default_bandwidth_package_attachment.instance_id,
///     support_multicast=True)
/// default_transit_router_peer_attachment = alicloud.cen.TransitRouterPeerAttachment("default",
///     cen_id=default_bandwidth_package_attachment.instance_id,
///     transit_router_id=default_transit_router.transit_router_id,
///     peer_transit_router_id=peer.transit_router_id,
///     peer_transit_router_region_id="cn-qingdao",
///     cen_bandwidth_package_id=default_bandwidth_package_attachment.bandwidth_package_id,
///     bandwidth=5,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name)
/// default_transit_router_multicast_domain = alicloud.cen.TransitRouterMulticastDomain("default",
///     transit_router_id=default_transit_router_peer_attachment.transit_router_id,
///     transit_router_multicast_domain_name=name,
///     transit_router_multicast_domain_description=name)
/// peer_transit_router_multicast_domain = alicloud.cen.TransitRouterMulticastDomain("peer",
///     transit_router_id=default_transit_router_peer_attachment.peer_transit_router_id,
///     transit_router_multicast_domain_name=name,
///     transit_router_multicast_domain_description=name)
/// default_transit_router_multicast_domain_peer_member = alicloud.cen.TransitRouterMulticastDomainPeerMember("default",
///     transit_router_multicast_domain_id=default_transit_router_multicast_domain.id,
///     peer_transit_router_multicast_domain_id=peer_transit_router_multicast_domain.id,
///     group_ip_address="224.1.0.0")
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
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Cen.BandwidthPackage("default", new()
///     {
///         Bandwidth = 5,
///         CenBandwidthPackageName = name,
///         GeographicRegionAId = "China",
///         GeographicRegionBId = "China",
///     });
///
///     var defaultBandwidthPackageAttachment = new AliCloud.Cen.BandwidthPackageAttachment("default", new()
///     {
///         InstanceId = @default.Id,
///         BandwidthPackageId = defaultBandwidthPackage.Id,
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = defaultBandwidthPackageAttachment.InstanceId,
///         SupportMulticast = true,
///     });
///
///     var peer = new AliCloud.Cen.TransitRouter("peer", new()
///     {
///         CenId = defaultBandwidthPackageAttachment.InstanceId,
///         SupportMulticast = true,
///     });
///
///     var defaultTransitRouterPeerAttachment = new AliCloud.Cen.TransitRouterPeerAttachment("default", new()
///     {
///         CenId = defaultBandwidthPackageAttachment.InstanceId,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         PeerTransitRouterId = peer.TransitRouterId,
///         PeerTransitRouterRegionId = "cn-qingdao",
///         CenBandwidthPackageId = defaultBandwidthPackageAttachment.BandwidthPackageId,
///         Bandwidth = 5,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///     });
///
///     var defaultTransitRouterMulticastDomain = new AliCloud.Cen.TransitRouterMulticastDomain("default", new()
///     {
///         TransitRouterId = defaultTransitRouterPeerAttachment.TransitRouterId,
///         TransitRouterMulticastDomainName = name,
///         TransitRouterMulticastDomainDescription = name,
///     });
///
///     var peerTransitRouterMulticastDomain = new AliCloud.Cen.TransitRouterMulticastDomain("peer", new()
///     {
///         TransitRouterId = defaultTransitRouterPeerAttachment.PeerTransitRouterId,
///         TransitRouterMulticastDomainName = name,
///         TransitRouterMulticastDomainDescription = name,
///     });
///
///     var defaultTransitRouterMulticastDomainPeerMember = new AliCloud.Cen.TransitRouterMulticastDomainPeerMember("default", new()
///     {
///         TransitRouterMulticastDomainId = defaultTransitRouterMulticastDomain.Id,
///         PeerTransitRouterMulticastDomainId = peerTransitRouterMulticastDomain.Id,
///         GroupIpAddress = "224.1.0.0",
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
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := cen.NewBandwidthPackage(ctx, "default", &cen.BandwidthPackageArgs{
/// 			Bandwidth:               pulumi.Int(5),
/// 			CenBandwidthPackageName: pulumi.String(name),
/// 			GeographicRegionAId:     pulumi.String("China"),
/// 			GeographicRegionBId:     pulumi.String("China"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackageAttachment, err := cen.NewBandwidthPackageAttachment(ctx, "default", &cen.BandwidthPackageAttachmentArgs{
/// 			InstanceId:         _default.ID(),
/// 			BandwidthPackageId: defaultBandwidthPackage.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId:            defaultBandwidthPackageAttachment.InstanceId,
/// 			SupportMulticast: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := cen.NewTransitRouter(ctx, "peer", &cen.TransitRouterArgs{
/// 			CenId:            defaultBandwidthPackageAttachment.InstanceId,
/// 			SupportMulticast: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterPeerAttachment, err := cen.NewTransitRouterPeerAttachment(ctx, "default", &cen.TransitRouterPeerAttachmentArgs{
/// 			CenId:                              defaultBandwidthPackageAttachment.InstanceId,
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			PeerTransitRouterId:                peer.TransitRouterId,
/// 			PeerTransitRouterRegionId:          pulumi.String("cn-qingdao"),
/// 			CenBandwidthPackageId:              defaultBandwidthPackageAttachment.BandwidthPackageId,
/// 			Bandwidth:                          pulumi.Int(5),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterMulticastDomain, err := cen.NewTransitRouterMulticastDomain(ctx, "default", &cen.TransitRouterMulticastDomainArgs{
/// 			TransitRouterId:                         defaultTransitRouterPeerAttachment.TransitRouterId,
/// 			TransitRouterMulticastDomainName:        pulumi.String(name),
/// 			TransitRouterMulticastDomainDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peerTransitRouterMulticastDomain, err := cen.NewTransitRouterMulticastDomain(ctx, "peer", &cen.TransitRouterMulticastDomainArgs{
/// 			TransitRouterId:                         defaultTransitRouterPeerAttachment.PeerTransitRouterId,
/// 			TransitRouterMulticastDomainName:        pulumi.String(name),
/// 			TransitRouterMulticastDomainDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterMulticastDomainPeerMember(ctx, "default", &cen.TransitRouterMulticastDomainPeerMemberArgs{
/// 			TransitRouterMulticastDomainId:     defaultTransitRouterMulticastDomain.ID(),
/// 			PeerTransitRouterMulticastDomainId: peerTransitRouterMulticastDomain.ID(),
/// 			GroupIpAddress:                     pulumi.String("224.1.0.0"),
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
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomain;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainArgs;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainPeerMember;
/// import com.pulumi.alicloud.cen.TransitRouterMulticastDomainPeerMemberArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(5)
///             .cenBandwidthPackageName(name)
///             .geographicRegionAId("China")
///             .geographicRegionBId("China")
///             .build());
///
///         var defaultBandwidthPackageAttachment = new BandwidthPackageAttachment("defaultBandwidthPackageAttachment", BandwidthPackageAttachmentArgs.builder()
///             .instanceId(default_.id())
///             .bandwidthPackageId(defaultBandwidthPackage.id())
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultBandwidthPackageAttachment.instanceId())
///             .supportMulticast(true)
///             .build());
///
///         var peer = new TransitRouter("peer", TransitRouterArgs.builder()
///             .cenId(defaultBandwidthPackageAttachment.instanceId())
///             .supportMulticast(true)
///             .build());
///
///         var defaultTransitRouterPeerAttachment = new TransitRouterPeerAttachment("defaultTransitRouterPeerAttachment", TransitRouterPeerAttachmentArgs.builder()
///             .cenId(defaultBandwidthPackageAttachment.instanceId())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .peerTransitRouterId(peer.transitRouterId())
///             .peerTransitRouterRegionId("cn-qingdao")
///             .cenBandwidthPackageId(defaultBandwidthPackageAttachment.bandwidthPackageId())
///             .bandwidth(5)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
///             .build());
///
///         var defaultTransitRouterMulticastDomain = new TransitRouterMulticastDomain("defaultTransitRouterMulticastDomain", TransitRouterMulticastDomainArgs.builder()
///             .transitRouterId(defaultTransitRouterPeerAttachment.transitRouterId())
///             .transitRouterMulticastDomainName(name)
///             .transitRouterMulticastDomainDescription(name)
///             .build());
///
///         var peerTransitRouterMulticastDomain = new TransitRouterMulticastDomain("peerTransitRouterMulticastDomain", TransitRouterMulticastDomainArgs.builder()
///             .transitRouterId(defaultTransitRouterPeerAttachment.peerTransitRouterId())
///             .transitRouterMulticastDomainName(name)
///             .transitRouterMulticastDomainDescription(name)
///             .build());
///
///         var defaultTransitRouterMulticastDomainPeerMember = new TransitRouterMulticastDomainPeerMember("defaultTransitRouterMulticastDomainPeerMember", TransitRouterMulticastDomainPeerMemberArgs.builder()
///             .transitRouterMulticastDomainId(defaultTransitRouterMulticastDomain.id())
///             .peerTransitRouterMulticastDomainId(peerTransitRouterMulticastDomain.id())
///             .groupIpAddress("224.1.0.0")
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
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   defaultBandwidthPackage:
///     type: alicloud:cen:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 5
///       cenBandwidthPackageName: ${name}
///       geographicRegionAId: China
///       geographicRegionBId: China
///   defaultBandwidthPackageAttachment:
///     type: alicloud:cen:BandwidthPackageAttachment
///     name: default
///     properties:
///       instanceId: ${default.id}
///       bandwidthPackageId: ${defaultBandwidthPackage.id}
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       cenId: ${defaultBandwidthPackageAttachment.instanceId}
///       supportMulticast: true
///   peer:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultBandwidthPackageAttachment.instanceId}
///       supportMulticast: true
///   defaultTransitRouterPeerAttachment:
///     type: alicloud:cen:TransitRouterPeerAttachment
///     name: default
///     properties:
///       cenId: ${defaultBandwidthPackageAttachment.instanceId}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       peerTransitRouterId: ${peer.transitRouterId}
///       peerTransitRouterRegionId: cn-qingdao
///       cenBandwidthPackageId: ${defaultBandwidthPackageAttachment.bandwidthPackageId}
///       bandwidth: 5
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
///   defaultTransitRouterMulticastDomain:
///     type: alicloud:cen:TransitRouterMulticastDomain
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouterPeerAttachment.transitRouterId}
///       transitRouterMulticastDomainName: ${name}
///       transitRouterMulticastDomainDescription: ${name}
///   peerTransitRouterMulticastDomain:
///     type: alicloud:cen:TransitRouterMulticastDomain
///     name: peer
///     properties:
///       transitRouterId: ${defaultTransitRouterPeerAttachment.peerTransitRouterId}
///       transitRouterMulticastDomainName: ${name}
///       transitRouterMulticastDomainDescription: ${name}
///   defaultTransitRouterMulticastDomainPeerMember:
///     type: alicloud:cen:TransitRouterMulticastDomainPeerMember
///     name: default
///     properties:
///       transitRouterMulticastDomainId: ${defaultTransitRouterMulticastDomain.id}
///       peerTransitRouterMulticastDomainId: ${peerTransitRouterMulticastDomain.id}
///       groupIpAddress: 224.1.0.0
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cen Transit Router Multicast Domain Peer Member can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterMulticastDomainPeerMember:TransitRouterMulticastDomainPeerMember example <transit_router_multicast_domain_id>:<group_ip_address>:<peer_transit_router_multicast_domain_id>
/// ```
class TransitRouterMulticastDomainPeerMember extends pulumi.CustomResource {
  /// Specifies whether only to precheck the request.
  late final pulumi.Output<bool?> dryRun;
  /// The IP address of the multicast group to which the multicast member belongs. Value range: **224.0.0.1** to **239.255.255.254**.If the multicast group you specified does not exist in the current multicast domain, the system will automatically create a new multicast group for you in the current multicast domain.
  late final pulumi.Output<String> groupIpAddress;
  /// The IDs of the inter-region multicast domains.
  late final pulumi.Output<String> peerTransitRouterMulticastDomainId;
  /// The status of the multicast resource. Valid values:
  /// - Registering: being created
  /// - Registered: available
  /// - Deregistering: being deleted
  late final pulumi.Output<String> status;
  /// The ID of the multicast domain to which the multicast member belongs.
  late final pulumi.Output<String> transitRouterMulticastDomainId;

  /// Creates a new [TransitRouterMulticastDomainPeerMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterMulticastDomainPeerMember]. {@macro pulumi_cen_transit_router_multicast_domain_peer_member_transit_router_multicast_domain_peer_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterMulticastDomainPeerMember(
    String name, {
    TransitRouterMulticastDomainPeerMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterMulticastDomainPeerMember:TransitRouterMulticastDomainPeerMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dryRun = registerOutput<bool?>('dryRun');
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.peerTransitRouterMulticastDomainId = registerOutput<String>('peerTransitRouterMulticastDomainId');
    this.status = registerOutput<String>('status');
    this.transitRouterMulticastDomainId = registerOutput<String>('transitRouterMulticastDomainId');
  }
}
