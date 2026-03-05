import 'package:pulumi/pulumi.dart' as pulumi;
import 'inter_region_traffic_qos_queue_args.dart';
import 'inter_region_traffic_qos_queue_state.dart';

/// Provides a Cloud Enterprise Network (CEN) Inter Region Traffic Qos Queue resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Inter Region Traffic Qos Queue and how to use it, see [What is Inter Region Traffic Qos Queue](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateCenInterRegionTrafficQosQueue).
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
/// const defaultRegion = config.get("defaultRegion") || "cn-hangzhou";
/// const peerRegion = config.get("peerRegion") || "cn-beijing";
/// const _default = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultBandwidthPackage = new alicloud.cen.BandwidthPackage("default", {
///     bandwidth: 5,
///     cenBandwidthPackageName: "tf_example",
///     geographicRegionAId: "China",
///     geographicRegionBId: "China",
/// });
/// const defaultBandwidthPackageAttachment = new alicloud.cen.BandwidthPackageAttachment("default", {
///     instanceId: _default.id,
///     bandwidthPackageId: defaultBandwidthPackage.id,
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: _default.id,
///     supportMulticast: true,
/// });
/// const peer = new alicloud.cen.TransitRouter("peer", {
///     cenId: defaultTransitRouter.cenId,
///     supportMulticast: true,
/// });
/// const defaultTransitRouterPeerAttachment = new alicloud.cen.TransitRouterPeerAttachment("default", {
///     cenId: _default.id,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     peerTransitRouterRegionId: peerRegion,
///     peerTransitRouterId: peer.transitRouterId,
///     cenBandwidthPackageId: defaultBandwidthPackageAttachment.bandwidthPackageId,
///     bandwidth: 5,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
/// });
/// const defaultInterRegionTrafficQosPolicy = new alicloud.cen.InterRegionTrafficQosPolicy("default", {
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     transitRouterAttachmentId: defaultTransitRouterPeerAttachment.transitRouterAttachmentId,
///     interRegionTrafficQosPolicyName: name,
///     interRegionTrafficQosPolicyDescription: name,
/// });
/// const defaultInterRegionTrafficQosQueue = new alicloud.cen.InterRegionTrafficQosQueue("default", {
///     remainBandwidthPercent: 20,
///     trafficQosPolicyId: defaultInterRegionTrafficQosPolicy.id,
///     dscps: [
///         1,
///         2,
///     ],
///     interRegionTrafficQosQueueDescription: name,
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
/// default_region = config.get("defaultRegion")
/// if default_region is None:
///     default_region = "cn-hangzhou"
/// peer_region = config.get("peerRegion")
/// if peer_region is None:
///     peer_region = "cn-beijing"
/// default = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_bandwidth_package = alicloud.cen.BandwidthPackage("default",
///     bandwidth=5,
///     cen_bandwidth_package_name="tf_example",
///     geographic_region_a_id="China",
///     geographic_region_b_id="China")
/// default_bandwidth_package_attachment = alicloud.cen.BandwidthPackageAttachment("default",
///     instance_id=default.id,
///     bandwidth_package_id=default_bandwidth_package.id)
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default.id,
///     support_multicast=True)
/// peer = alicloud.cen.TransitRouter("peer",
///     cen_id=default_transit_router.cen_id,
///     support_multicast=True)
/// default_transit_router_peer_attachment = alicloud.cen.TransitRouterPeerAttachment("default",
///     cen_id=default.id,
///     transit_router_id=default_transit_router.transit_router_id,
///     peer_transit_router_region_id=peer_region,
///     peer_transit_router_id=peer.transit_router_id,
///     cen_bandwidth_package_id=default_bandwidth_package_attachment.bandwidth_package_id,
///     bandwidth=5,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name)
/// default_inter_region_traffic_qos_policy = alicloud.cen.InterRegionTrafficQosPolicy("default",
///     transit_router_id=default_transit_router.transit_router_id,
///     transit_router_attachment_id=default_transit_router_peer_attachment.transit_router_attachment_id,
///     inter_region_traffic_qos_policy_name=name,
///     inter_region_traffic_qos_policy_description=name)
/// default_inter_region_traffic_qos_queue = alicloud.cen.InterRegionTrafficQosQueue("default",
///     remain_bandwidth_percent=20,
///     traffic_qos_policy_id=default_inter_region_traffic_qos_policy.id,
///     dscps=[
///         1,
///         2,
///     ],
///     inter_region_traffic_qos_queue_description=name)
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
///     var defaultRegion = config.Get("defaultRegion") ?? "cn-hangzhou";
///     var peerRegion = config.Get("peerRegion") ?? "cn-beijing";
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultBandwidthPackage = new AliCloud.Cen.BandwidthPackage("default", new()
///     {
///         Bandwidth = 5,
///         CenBandwidthPackageName = "tf_example",
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
///         CenId = @default.Id,
///         SupportMulticast = true,
///     });
///
///     var peer = new AliCloud.Cen.TransitRouter("peer", new()
///     {
///         CenId = defaultTransitRouter.CenId,
///         SupportMulticast = true,
///     });
///
///     var defaultTransitRouterPeerAttachment = new AliCloud.Cen.TransitRouterPeerAttachment("default", new()
///     {
///         CenId = @default.Id,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         PeerTransitRouterRegionId = peerRegion,
///         PeerTransitRouterId = peer.TransitRouterId,
///         CenBandwidthPackageId = defaultBandwidthPackageAttachment.BandwidthPackageId,
///         Bandwidth = 5,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///     });
///
///     var defaultInterRegionTrafficQosPolicy = new AliCloud.Cen.InterRegionTrafficQosPolicy("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         TransitRouterAttachmentId = defaultTransitRouterPeerAttachment.TransitRouterAttachmentId,
///         InterRegionTrafficQosPolicyName = name,
///         InterRegionTrafficQosPolicyDescription = name,
///     });
///
///     var defaultInterRegionTrafficQosQueue = new AliCloud.Cen.InterRegionTrafficQosQueue("default", new()
///     {
///         RemainBandwidthPercent = 20,
///         TrafficQosPolicyId = defaultInterRegionTrafficQosPolicy.Id,
///         Dscps = new[]
///         {
///             1,
///             2,
///         },
///         InterRegionTrafficQosQueueDescription = name,
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
/// 		defaultRegion := "cn-hangzhou"
/// 		if param := cfg.Get("defaultRegion"); param != "" {
/// 			defaultRegion = param
/// 		}
/// 		peerRegion := "cn-beijing"
/// 		if param := cfg.Get("peerRegion"); param != "" {
/// 			peerRegion = param
/// 		}
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBandwidthPackage, err := cen.NewBandwidthPackage(ctx, "default", &cen.BandwidthPackageArgs{
/// 			Bandwidth:               pulumi.Int(5),
/// 			CenBandwidthPackageName: pulumi.String("tf_example"),
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
/// 			CenId:            _default.ID(),
/// 			SupportMulticast: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := cen.NewTransitRouter(ctx, "peer", &cen.TransitRouterArgs{
/// 			CenId:            defaultTransitRouter.CenId,
/// 			SupportMulticast: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterPeerAttachment, err := cen.NewTransitRouterPeerAttachment(ctx, "default", &cen.TransitRouterPeerAttachmentArgs{
/// 			CenId:                              _default.ID(),
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			PeerTransitRouterRegionId:          pulumi.String(peerRegion),
/// 			PeerTransitRouterId:                peer.TransitRouterId,
/// 			CenBandwidthPackageId:              defaultBandwidthPackageAttachment.BandwidthPackageId,
/// 			Bandwidth:                          pulumi.Int(5),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInterRegionTrafficQosPolicy, err := cen.NewInterRegionTrafficQosPolicy(ctx, "default", &cen.InterRegionTrafficQosPolicyArgs{
/// 			TransitRouterId:                        defaultTransitRouter.TransitRouterId,
/// 			TransitRouterAttachmentId:              defaultTransitRouterPeerAttachment.TransitRouterAttachmentId,
/// 			InterRegionTrafficQosPolicyName:        pulumi.String(name),
/// 			InterRegionTrafficQosPolicyDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewInterRegionTrafficQosQueue(ctx, "default", &cen.InterRegionTrafficQosQueueArgs{
/// 			RemainBandwidthPercent: pulumi.Int(20),
/// 			TrafficQosPolicyId:     defaultInterRegionTrafficQosPolicy.ID(),
/// 			Dscps: pulumi.IntArray{
/// 				pulumi.Int(1),
/// 				pulumi.Int(2),
/// 			},
/// 			InterRegionTrafficQosQueueDescription: pulumi.String(name),
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
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosPolicy;
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosPolicyArgs;
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosQueue;
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosQueueArgs;
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
///         final var defaultRegion = config.get("defaultRegion").orElse("cn-hangzhou");
///         final var peerRegion = config.get("peerRegion").orElse("cn-beijing");
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultBandwidthPackage = new BandwidthPackage("defaultBandwidthPackage", BandwidthPackageArgs.builder()
///             .bandwidth(5)
///             .cenBandwidthPackageName("tf_example")
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
///             .cenId(default_.id())
///             .supportMulticast(true)
///             .build());
///
///         var peer = new TransitRouter("peer", TransitRouterArgs.builder()
///             .cenId(defaultTransitRouter.cenId())
///             .supportMulticast(true)
///             .build());
///
///         var defaultTransitRouterPeerAttachment = new TransitRouterPeerAttachment("defaultTransitRouterPeerAttachment", TransitRouterPeerAttachmentArgs.builder()
///             .cenId(default_.id())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .peerTransitRouterRegionId(peerRegion)
///             .peerTransitRouterId(peer.transitRouterId())
///             .cenBandwidthPackageId(defaultBandwidthPackageAttachment.bandwidthPackageId())
///             .bandwidth(5)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
///             .build());
///
///         var defaultInterRegionTrafficQosPolicy = new InterRegionTrafficQosPolicy("defaultInterRegionTrafficQosPolicy", InterRegionTrafficQosPolicyArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .transitRouterAttachmentId(defaultTransitRouterPeerAttachment.transitRouterAttachmentId())
///             .interRegionTrafficQosPolicyName(name)
///             .interRegionTrafficQosPolicyDescription(name)
///             .build());
///
///         var defaultInterRegionTrafficQosQueue = new InterRegionTrafficQosQueue("defaultInterRegionTrafficQosQueue", InterRegionTrafficQosQueueArgs.builder()
///             .remainBandwidthPercent(20)
///             .trafficQosPolicyId(defaultInterRegionTrafficQosPolicy.id())
///             .dscps(
///                 1,
///                 2)
///             .interRegionTrafficQosQueueDescription(name)
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
///   defaultRegion:
///     type: string
///     default: cn-hangzhou
///   peerRegion:
///     type: string
///     default: cn-beijing
/// resources:
///   default:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///       protectionLevel: REDUCED
///   defaultBandwidthPackage:
///     type: alicloud:cen:BandwidthPackage
///     name: default
///     properties:
///       bandwidth: 5
///       cenBandwidthPackageName: tf_example
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
///       cenId: ${default.id}
///       supportMulticast: true
///   peer:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultTransitRouter.cenId}
///       supportMulticast: true
///   defaultTransitRouterPeerAttachment:
///     type: alicloud:cen:TransitRouterPeerAttachment
///     name: default
///     properties:
///       cenId: ${default.id}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       peerTransitRouterRegionId: ${peerRegion}
///       peerTransitRouterId: ${peer.transitRouterId}
///       cenBandwidthPackageId: ${defaultBandwidthPackageAttachment.bandwidthPackageId}
///       bandwidth: 5
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
///   defaultInterRegionTrafficQosPolicy:
///     type: alicloud:cen:InterRegionTrafficQosPolicy
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterAttachmentId: ${defaultTransitRouterPeerAttachment.transitRouterAttachmentId}
///       interRegionTrafficQosPolicyName: ${name}
///       interRegionTrafficQosPolicyDescription: ${name}
///   defaultInterRegionTrafficQosQueue:
///     type: alicloud:cen:InterRegionTrafficQosQueue
///     name: default
///     properties:
///       remainBandwidthPercent: 20
///       trafficQosPolicyId: ${defaultInterRegionTrafficQosPolicy.id}
///       dscps:
///         - 1
///         - 2
///       interRegionTrafficQosQueueDescription: ${name}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Inter Region Traffic Qos Queue can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/interRegionTrafficQosQueue:InterRegionTrafficQosQueue example <id>
/// ```
class InterRegionTrafficQosQueue extends pulumi.CustomResource {
  /// The guaranteed bandwidth value. If guaranteed by bandwidth is selected for TrafficQosPolicy, this value is valid.
  late final pulumi.Output<String?> bandwidth;
  /// The DSCP value of the traffic packet to be matched in the current queue, ranging from 0 to 63.
  late final pulumi.Output<List<int>> dscps;
  /// The description information of the traffic scheduling policy.
  late final pulumi.Output<String?> interRegionTrafficQosQueueDescription;
  /// The name of the traffic scheduling policy.
  late final pulumi.Output<String?> interRegionTrafficQosQueueName;
  /// The percentage of cross-region bandwidth that the current queue can use.
  late final pulumi.Output<int?> remainBandwidthPercent;
  /// The status of the traffic scheduling policy.
  late final pulumi.Output<String> status;
  /// The ID of the traffic scheduling policy.
  late final pulumi.Output<String> trafficQosPolicyId;

  /// Creates a new [InterRegionTrafficQosQueue].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterRegionTrafficQosQueue]. {@macro pulumi_cen_inter_region_traffic_qos_queue_inter_region_traffic_qos_queue_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterRegionTrafficQosQueue(
    String name, {
    InterRegionTrafficQosQueueArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/interRegionTrafficQosQueue:InterRegionTrafficQosQueue',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String?>('bandwidth');
    dscps = registerOutput<List<int>>('dscps');
    interRegionTrafficQosQueueDescription = registerOutput<String?>('interRegionTrafficQosQueueDescription');
    interRegionTrafficQosQueueName = registerOutput<String?>('interRegionTrafficQosQueueName');
    remainBandwidthPercent = registerOutput<int?>('remainBandwidthPercent');
    status = registerOutput<String>('status');
    trafficQosPolicyId = registerOutput<String>('trafficQosPolicyId');
  }

  /// Gets an existing [InterRegionTrafficQosQueue] resource's state with the given [name] and [id].
  static InterRegionTrafficQosQueue get(
    String name,
    pulumi.Input<String> id, {
    InterRegionTrafficQosQueueState? state,
  }) {
    return InterRegionTrafficQosQueue._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InterRegionTrafficQosQueue._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/interRegionTrafficQosQueue:InterRegionTrafficQosQueue',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<String?>('bandwidth');
    dscps = registerOutput<List<int>>('dscps');
    interRegionTrafficQosQueueDescription = registerOutput<String?>('interRegionTrafficQosQueueDescription');
    interRegionTrafficQosQueueName = registerOutput<String?>('interRegionTrafficQosQueueName');
    remainBandwidthPercent = registerOutput<int?>('remainBandwidthPercent');
    status = registerOutput<String>('status');
    trafficQosPolicyId = registerOutput<String>('trafficQosPolicyId');
  }
}
