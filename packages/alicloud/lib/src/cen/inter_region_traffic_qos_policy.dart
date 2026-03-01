import 'package:pulumi/pulumi.dart' as pulumi;
import 'inter_region_traffic_qos_policy_args.dart';

/// Provides a Cloud Enterprise Network (CEN) Inter Region Traffic Qos Policy resource.
///
///
///
/// For information about Cloud Enterprise Network (CEN) Inter Region Traffic Qos Policy and how to use it, see [What is Inter Region Traffic Qos Policy](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateCenInterRegionTrafficQosPolicy).
///
/// > **NOTE:** Available since v1.246.0.
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
/// const defaultpSZB78 = new alicloud.cen.Instance("defaultpSZB78", {});
/// const defaultUmmxnE = new alicloud.cen.TransitRouter("defaultUmmxnE", {cenId: defaultpSZB78.id});
/// const defaultksqgSa = new alicloud.cen.TransitRouter("defaultksqgSa", {cenId: defaultpSZB78.id});
/// const defaultnXZ83y = new alicloud.cen.TransitRouterPeerAttachment("defaultnXZ83y", {
///     defaultLinkType: "Platinum",
///     bandwidthType: "DataTransfer",
///     cenId: defaultpSZB78.id,
///     peerTransitRouterRegionId: "cn-hangzhou",
///     transitRouterId: defaultUmmxnE.transitRouterId,
///     peerTransitRouterId: defaultksqgSa.transitRouterId,
///     bandwidth: 10,
/// });
/// const _default = new alicloud.cen.InterRegionTrafficQosPolicy("default", {
///     transitRouterAttachmentId: defaultnXZ83y.transitRouterAttachmentId,
///     interRegionTrafficQosPolicyName: "example1",
///     interRegionTrafficQosPolicyDescription: "example1",
///     bandwidthGuaranteeMode: "byBandwidthPercent",
///     transitRouterId: defaultksqgSa.transitRouterId,
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
/// defaultp_szb78 = alicloud.cen.Instance("defaultpSZB78")
/// default_ummxn_e = alicloud.cen.TransitRouter("defaultUmmxnE", cen_id=defaultp_szb78.id)
/// defaultksqg_sa = alicloud.cen.TransitRouter("defaultksqgSa", cen_id=defaultp_szb78.id)
/// defaultn_xz83y = alicloud.cen.TransitRouterPeerAttachment("defaultnXZ83y",
///     default_link_type="Platinum",
///     bandwidth_type="DataTransfer",
///     cen_id=defaultp_szb78.id,
///     peer_transit_router_region_id="cn-hangzhou",
///     transit_router_id=default_ummxn_e.transit_router_id,
///     peer_transit_router_id=defaultksqg_sa.transit_router_id,
///     bandwidth=10)
/// default = alicloud.cen.InterRegionTrafficQosPolicy("default",
///     transit_router_attachment_id=defaultn_xz83y.transit_router_attachment_id,
///     inter_region_traffic_qos_policy_name="example1",
///     inter_region_traffic_qos_policy_description="example1",
///     bandwidth_guarantee_mode="byBandwidthPercent",
///     transit_router_id=defaultksqg_sa.transit_router_id)
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
///     var defaultpSZB78 = new AliCloud.Cen.Instance("defaultpSZB78");
///
///     var defaultUmmxnE = new AliCloud.Cen.TransitRouter("defaultUmmxnE", new()
///     {
///         CenId = defaultpSZB78.Id,
///     });
///
///     var defaultksqgSa = new AliCloud.Cen.TransitRouter("defaultksqgSa", new()
///     {
///         CenId = defaultpSZB78.Id,
///     });
///
///     var defaultnXZ83y = new AliCloud.Cen.TransitRouterPeerAttachment("defaultnXZ83y", new()
///     {
///         DefaultLinkType = "Platinum",
///         BandwidthType = "DataTransfer",
///         CenId = defaultpSZB78.Id,
///         PeerTransitRouterRegionId = "cn-hangzhou",
///         TransitRouterId = defaultUmmxnE.TransitRouterId,
///         PeerTransitRouterId = defaultksqgSa.TransitRouterId,
///         Bandwidth = 10,
///     });
///
///     var @default = new AliCloud.Cen.InterRegionTrafficQosPolicy("default", new()
///     {
///         TransitRouterAttachmentId = defaultnXZ83y.TransitRouterAttachmentId,
///         InterRegionTrafficQosPolicyName = "example1",
///         InterRegionTrafficQosPolicyDescription = "example1",
///         BandwidthGuaranteeMode = "byBandwidthPercent",
///         TransitRouterId = defaultksqgSa.TransitRouterId,
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
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		defaultpSZB78, err := cen.NewInstance(ctx, "defaultpSZB78", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultUmmxnE, err := cen.NewTransitRouter(ctx, "defaultUmmxnE", &cen.TransitRouterArgs{
/// 			CenId: defaultpSZB78.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultksqgSa, err := cen.NewTransitRouter(ctx, "defaultksqgSa", &cen.TransitRouterArgs{
/// 			CenId: defaultpSZB78.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultnXZ83y, err := cen.NewTransitRouterPeerAttachment(ctx, "defaultnXZ83y", &cen.TransitRouterPeerAttachmentArgs{
/// 			DefaultLinkType:           pulumi.String("Platinum"),
/// 			BandwidthType:             pulumi.String("DataTransfer"),
/// 			CenId:                     defaultpSZB78.ID(),
/// 			PeerTransitRouterRegionId: pulumi.String("cn-hangzhou"),
/// 			TransitRouterId:           defaultUmmxnE.TransitRouterId,
/// 			PeerTransitRouterId:       defaultksqgSa.TransitRouterId,
/// 			Bandwidth:                 pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewInterRegionTrafficQosPolicy(ctx, "default", &cen.InterRegionTrafficQosPolicyArgs{
/// 			TransitRouterAttachmentId:              defaultnXZ83y.TransitRouterAttachmentId,
/// 			InterRegionTrafficQosPolicyName:        pulumi.String("example1"),
/// 			InterRegionTrafficQosPolicyDescription: pulumi.String("example1"),
/// 			BandwidthGuaranteeMode:                 pulumi.String("byBandwidthPercent"),
/// 			TransitRouterId:                        defaultksqgSa.TransitRouterId,
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
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterPeerAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterPeerAttachmentArgs;
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosPolicy;
/// import com.pulumi.alicloud.cen.InterRegionTrafficQosPolicyArgs;
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
///         var defaultpSZB78 = new Instance("defaultpSZB78");
///
///         var defaultUmmxnE = new TransitRouter("defaultUmmxnE", TransitRouterArgs.builder()
///             .cenId(defaultpSZB78.id())
///             .build());
///
///         var defaultksqgSa = new TransitRouter("defaultksqgSa", TransitRouterArgs.builder()
///             .cenId(defaultpSZB78.id())
///             .build());
///
///         var defaultnXZ83y = new TransitRouterPeerAttachment("defaultnXZ83y", TransitRouterPeerAttachmentArgs.builder()
///             .defaultLinkType("Platinum")
///             .bandwidthType("DataTransfer")
///             .cenId(defaultpSZB78.id())
///             .peerTransitRouterRegionId("cn-hangzhou")
///             .transitRouterId(defaultUmmxnE.transitRouterId())
///             .peerTransitRouterId(defaultksqgSa.transitRouterId())
///             .bandwidth(10)
///             .build());
///
///         var default_ = new InterRegionTrafficQosPolicy("default", InterRegionTrafficQosPolicyArgs.builder()
///             .transitRouterAttachmentId(defaultnXZ83y.transitRouterAttachmentId())
///             .interRegionTrafficQosPolicyName("example1")
///             .interRegionTrafficQosPolicyDescription("example1")
///             .bandwidthGuaranteeMode("byBandwidthPercent")
///             .transitRouterId(defaultksqgSa.transitRouterId())
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
///   defaultpSZB78:
///     type: alicloud:cen:Instance
///   defaultUmmxnE:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultpSZB78.id}
///   defaultksqgSa:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultpSZB78.id}
///   defaultnXZ83y:
///     type: alicloud:cen:TransitRouterPeerAttachment
///     properties:
///       defaultLinkType: Platinum
///       bandwidthType: DataTransfer
///       cenId: ${defaultpSZB78.id}
///       peerTransitRouterRegionId: cn-hangzhou
///       transitRouterId: ${defaultUmmxnE.transitRouterId}
///       peerTransitRouterId: ${defaultksqgSa.transitRouterId}
///       bandwidth: '10'
///   default:
///     type: alicloud:cen:InterRegionTrafficQosPolicy
///     properties:
///       transitRouterAttachmentId: ${defaultnXZ83y.transitRouterAttachmentId}
///       interRegionTrafficQosPolicyName: example1
///       interRegionTrafficQosPolicyDescription: example1
///       bandwidthGuaranteeMode: byBandwidthPercent
///       transitRouterId: ${defaultksqgSa.transitRouterId}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Enterprise Network (CEN) Inter Region Traffic Qos Policy can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/interRegionTrafficQosPolicy:InterRegionTrafficQosPolicy example <id>
/// ```
class InterRegionTrafficQosPolicy extends pulumi.CustomResource {
  /// Bandwidth guarantee mode. You can select by bandwidth or by bandwidth percentage. The default is by percentage.
  late final pulumi.Output<String> bandwidthGuaranteeMode;
  /// The description information of the traffic scheduling policy.
  late final pulumi.Output<String?> interRegionTrafficQosPolicyDescription;
  /// The name of the traffic scheduling policy.
  late final pulumi.Output<String?> interRegionTrafficQosPolicyName;
  /// The status of the traffic scheduling policy.
  late final pulumi.Output<String> status;
  /// Peer Attachment ID.
  late final pulumi.Output<String> transitRouterAttachmentId;
  /// The ID of the forwarding router instance.
  late final pulumi.Output<String> transitRouterId;

  /// Creates a new [InterRegionTrafficQosPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InterRegionTrafficQosPolicy]. {@macro pulumi_cen_inter_region_traffic_qos_policy_inter_region_traffic_qos_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InterRegionTrafficQosPolicy(
    String name, {
    InterRegionTrafficQosPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/interRegionTrafficQosPolicy:InterRegionTrafficQosPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bandwidthGuaranteeMode = registerOutput<String>('bandwidthGuaranteeMode');
    this.interRegionTrafficQosPolicyDescription = registerOutput<String?>('interRegionTrafficQosPolicyDescription');
    this.interRegionTrafficQosPolicyName = registerOutput<String?>('interRegionTrafficQosPolicyName');
    this.status = registerOutput<String>('status');
    this.transitRouterAttachmentId = registerOutput<String>('transitRouterAttachmentId');
    this.transitRouterId = registerOutput<String>('transitRouterId');
  }
}
