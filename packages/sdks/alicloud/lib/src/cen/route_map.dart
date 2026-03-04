import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_map_args.dart';
import 'route_map_state.dart';

/// This topic provides an overview of the route map function of Cloud Enterprise Networks (CENs).
/// You can use the route map function to filter routes and modify route attributes.
/// By doing so, you can manage the communication between networks attached to a CEN.
///
/// For information about CEN Route Map and how to use it, see [Manage CEN Route Map](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/api-cbn-2017-09-12-createcenroutemap).
///
/// &gt; **NOTE:** Available since v1.82.0.
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
/// const sourceRegion = config.get("sourceRegion") || "cn-hangzhou";
/// const destinationRegion = config.get("destinationRegion") || "cn-shanghai";
/// const exampleHz = new alicloud.vpc.Network("example_hz", {
///     vpcName: "tf_example",
///     cidrBlock: "192.168.0.0/16",
/// });
/// const exampleSh = new alicloud.vpc.Network("example_sh", {
///     vpcName: "tf_example",
///     cidrBlock: "172.16.0.0/12",
/// });
/// const example = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleHzInstanceAttachment = new alicloud.cen.InstanceAttachment("example_hz", {
///     instanceId: example.id,
///     childInstanceId: exampleHz.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: sourceRegion,
/// });
/// const exampleShInstanceAttachment = new alicloud.cen.InstanceAttachment("example_sh", {
///     instanceId: example.id,
///     childInstanceId: exampleSh.id,
///     childInstanceType: "VPC",
///     childInstanceRegionId: destinationRegion,
/// });
/// const _default = new alicloud.cen.RouteMap("default", {
///     cenRegionId: sourceRegion,
///     cenId: example.id,
///     description: "tf_example",
///     priority: 1,
///     transmitDirection: "RegionIn",
///     mapResult: "Permit",
///     nextPriority: 1,
///     sourceRegionIds: [sourceRegion],
///     sourceInstanceIds: [exampleHzInstanceAttachment.childInstanceId],
///     sourceInstanceIdsReverseMatch: false,
///     destinationInstanceIds: [exampleShInstanceAttachment.childInstanceId],
///     destinationInstanceIdsReverseMatch: false,
///     sourceRouteTableIds: [exampleHz.routeTableId],
///     destinationRouteTableIds: [exampleSh.routeTableId],
///     sourceChildInstanceTypes: ["VPC"],
///     destinationChildInstanceTypes: ["VPC"],
///     destinationCidrBlocks: [exampleSh.cidrBlock],
///     cidrMatchMode: "Include",
///     routeTypes: ["System"],
///     matchAsns: ["65501"],
///     asPathMatchMode: "Include",
///     matchCommunitySets: ["65501:1"],
///     communityMatchMode: "Include",
///     communityOperateMode: "Additive",
///     operateCommunitySets: ["65501:1"],
///     preference: 20,
///     prependAsPaths: ["65501"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// source_region = config.get("sourceRegion")
/// if source_region is None:
///     source_region = "cn-hangzhou"
/// destination_region = config.get("destinationRegion")
/// if destination_region is None:
///     destination_region = "cn-shanghai"
/// example_hz = alicloud.vpc.Network("example_hz",
///     vpc_name="tf_example",
///     cidr_block="192.168.0.0/16")
/// example_sh = alicloud.vpc.Network("example_sh",
///     vpc_name="tf_example",
///     cidr_block="172.16.0.0/12")
/// example = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_hz_instance_attachment = alicloud.cen.InstanceAttachment("example_hz",
///     instance_id=example.id,
///     child_instance_id=example_hz.id,
///     child_instance_type="VPC",
///     child_instance_region_id=source_region)
/// example_sh_instance_attachment = alicloud.cen.InstanceAttachment("example_sh",
///     instance_id=example.id,
///     child_instance_id=example_sh.id,
///     child_instance_type="VPC",
///     child_instance_region_id=destination_region)
/// default = alicloud.cen.RouteMap("default",
///     cen_region_id=source_region,
///     cen_id=example.id,
///     description="tf_example",
///     priority=1,
///     transmit_direction="RegionIn",
///     map_result="Permit",
///     next_priority=1,
///     source_region_ids=[source_region],
///     source_instance_ids=[example_hz_instance_attachment.child_instance_id],
///     source_instance_ids_reverse_match=False,
///     destination_instance_ids=[example_sh_instance_attachment.child_instance_id],
///     destination_instance_ids_reverse_match=False,
///     source_route_table_ids=[example_hz.route_table_id],
///     destination_route_table_ids=[example_sh.route_table_id],
///     source_child_instance_types=["VPC"],
///     destination_child_instance_types=["VPC"],
///     destination_cidr_blocks=[example_sh.cidr_block],
///     cidr_match_mode="Include",
///     route_types=["System"],
///     match_asns=["65501"],
///     as_path_match_mode="Include",
///     match_community_sets=["65501:1"],
///     community_match_mode="Include",
///     community_operate_mode="Additive",
///     operate_community_sets=["65501:1"],
///     preference=20,
///     prepend_as_paths=["65501"])
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
///     var sourceRegion = config.Get("sourceRegion") ?? "cn-hangzhou";
///     var destinationRegion = config.Get("destinationRegion") ?? "cn-shanghai";
///     var exampleHz = new AliCloud.Vpc.Network("example_hz", new()
///     {
///         VpcName = "tf_example",
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var exampleSh = new AliCloud.Vpc.Network("example_sh", new()
///     {
///         VpcName = "tf_example",
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var example = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleHzInstanceAttachment = new AliCloud.Cen.InstanceAttachment("example_hz", new()
///     {
///         InstanceId = example.Id,
///         ChildInstanceId = exampleHz.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = sourceRegion,
///     });
///
///     var exampleShInstanceAttachment = new AliCloud.Cen.InstanceAttachment("example_sh", new()
///     {
///         InstanceId = example.Id,
///         ChildInstanceId = exampleSh.Id,
///         ChildInstanceType = "VPC",
///         ChildInstanceRegionId = destinationRegion,
///     });
///
///     var @default = new AliCloud.Cen.RouteMap("default", new()
///     {
///         CenRegionId = sourceRegion,
///         CenId = example.Id,
///         Description = "tf_example",
///         Priority = 1,
///         TransmitDirection = "RegionIn",
///         MapResult = "Permit",
///         NextPriority = 1,
///         SourceRegionIds = new[]
///         {
///             sourceRegion,
///         },
///         SourceInstanceIds = new[]
///         {
///             exampleHzInstanceAttachment.ChildInstanceId,
///         },
///         SourceInstanceIdsReverseMatch = false,
///         DestinationInstanceIds = new[]
///         {
///             exampleShInstanceAttachment.ChildInstanceId,
///         },
///         DestinationInstanceIdsReverseMatch = false,
///         SourceRouteTableIds = new[]
///         {
///             exampleHz.RouteTableId,
///         },
///         DestinationRouteTableIds = new[]
///         {
///             exampleSh.RouteTableId,
///         },
///         SourceChildInstanceTypes = new[]
///         {
///             "VPC",
///         },
///         DestinationChildInstanceTypes = new[]
///         {
///             "VPC",
///         },
///         DestinationCidrBlocks = new[]
///         {
///             exampleSh.CidrBlock,
///         },
///         CidrMatchMode = "Include",
///         RouteTypes = new[]
///         {
///             "System",
///         },
///         MatchAsns = new[]
///         {
///             "65501",
///         },
///         AsPathMatchMode = "Include",
///         MatchCommunitySets = new[]
///         {
///             "65501:1",
///         },
///         CommunityMatchMode = "Include",
///         CommunityOperateMode = "Additive",
///         OperateCommunitySets = new[]
///         {
///             "65501:1",
///         },
///         Preference = 20,
///         PrependAsPaths = new[]
///         {
///             "65501",
///         },
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
/// 		sourceRegion := "cn-hangzhou"
/// 		if param := cfg.Get("sourceRegion"); param != "" {
/// 			sourceRegion = param
/// 		}
/// 		destinationRegion := "cn-shanghai"
/// 		if param := cfg.Get("destinationRegion"); param != "" {
/// 			destinationRegion = param
/// 		}
/// 		exampleHz, err := vpc.NewNetwork(ctx, "example_hz", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_example"),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSh, err := vpc.NewNetwork(ctx, "example_sh", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("tf_example"),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHzInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "example_hz", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            example.ID(),
/// 			ChildInstanceId:       exampleHz.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(sourceRegion),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleShInstanceAttachment, err := cen.NewInstanceAttachment(ctx, "example_sh", &cen.InstanceAttachmentArgs{
/// 			InstanceId:            example.ID(),
/// 			ChildInstanceId:       exampleSh.ID(),
/// 			ChildInstanceType:     pulumi.String("VPC"),
/// 			ChildInstanceRegionId: pulumi.String(destinationRegion),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewRouteMap(ctx, "default", &cen.RouteMapArgs{
/// 			CenRegionId:       pulumi.String(sourceRegion),
/// 			CenId:             example.ID(),
/// 			Description:       pulumi.String("tf_example"),
/// 			Priority:          pulumi.Int(1),
/// 			TransmitDirection: pulumi.String("RegionIn"),
/// 			MapResult:         pulumi.String("Permit"),
/// 			NextPriority:      pulumi.Int(1),
/// 			SourceRegionIds: pulumi.StringArray{
/// 				pulumi.String(sourceRegion),
/// 			},
/// 			SourceInstanceIds: pulumi.StringArray{
/// 				exampleHzInstanceAttachment.ChildInstanceId,
/// 			},
/// 			SourceInstanceIdsReverseMatch: pulumi.Bool(false),
/// 			DestinationInstanceIds: pulumi.StringArray{
/// 				exampleShInstanceAttachment.ChildInstanceId,
/// 			},
/// 			DestinationInstanceIdsReverseMatch: pulumi.Bool(false),
/// 			SourceRouteTableIds: pulumi.StringArray{
/// 				exampleHz.RouteTableId,
/// 			},
/// 			DestinationRouteTableIds: pulumi.StringArray{
/// 				exampleSh.RouteTableId,
/// 			},
/// 			SourceChildInstanceTypes: pulumi.StringArray{
/// 				pulumi.String("VPC"),
/// 			},
/// 			DestinationChildInstanceTypes: pulumi.StringArray{
/// 				pulumi.String("VPC"),
/// 			},
/// 			DestinationCidrBlocks: pulumi.StringArray{
/// 				exampleSh.CidrBlock,
/// 			},
/// 			CidrMatchMode: pulumi.String("Include"),
/// 			RouteTypes: pulumi.StringArray{
/// 				pulumi.String("System"),
/// 			},
/// 			MatchAsns: pulumi.StringArray{
/// 				pulumi.String("65501"),
/// 			},
/// 			AsPathMatchMode: pulumi.String("Include"),
/// 			MatchCommunitySets: pulumi.StringArray{
/// 				pulumi.String("65501:1"),
/// 			},
/// 			CommunityMatchMode:   pulumi.String("Include"),
/// 			CommunityOperateMode: pulumi.String("Additive"),
/// 			OperateCommunitySets: pulumi.StringArray{
/// 				pulumi.String("65501:1"),
/// 			},
/// 			Preference: pulumi.Int(20),
/// 			PrependAsPaths: pulumi.StringArray{
/// 				pulumi.String("65501"),
/// 			},
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.InstanceAttachment;
/// import com.pulumi.alicloud.cen.InstanceAttachmentArgs;
/// import com.pulumi.alicloud.cen.RouteMap;
/// import com.pulumi.alicloud.cen.RouteMapArgs;
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
///         final var sourceRegion = config.get("sourceRegion").orElse("cn-hangzhou");
///         final var destinationRegion = config.get("destinationRegion").orElse("cn-shanghai");
///         var exampleHz = new Network("exampleHz", NetworkArgs.builder()
///             .vpcName("tf_example")
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         var exampleSh = new Network("exampleSh", NetworkArgs.builder()
///             .vpcName("tf_example")
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var example = new Instance("example", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleHzInstanceAttachment = new InstanceAttachment("exampleHzInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(example.id())
///             .childInstanceId(exampleHz.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(sourceRegion)
///             .build());
///
///         var exampleShInstanceAttachment = new InstanceAttachment("exampleShInstanceAttachment", InstanceAttachmentArgs.builder()
///             .instanceId(example.id())
///             .childInstanceId(exampleSh.id())
///             .childInstanceType("VPC")
///             .childInstanceRegionId(destinationRegion)
///             .build());
///
///         var default_ = new RouteMap("default", RouteMapArgs.builder()
///             .cenRegionId(sourceRegion)
///             .cenId(example.id())
///             .description("tf_example")
///             .priority(1)
///             .transmitDirection("RegionIn")
///             .mapResult("Permit")
///             .nextPriority(1)
///             .sourceRegionIds(sourceRegion)
///             .sourceInstanceIds(exampleHzInstanceAttachment.childInstanceId())
///             .sourceInstanceIdsReverseMatch(false)
///             .destinationInstanceIds(exampleShInstanceAttachment.childInstanceId())
///             .destinationInstanceIdsReverseMatch(false)
///             .sourceRouteTableIds(exampleHz.routeTableId())
///             .destinationRouteTableIds(exampleSh.routeTableId())
///             .sourceChildInstanceTypes("VPC")
///             .destinationChildInstanceTypes("VPC")
///             .destinationCidrBlocks(exampleSh.cidrBlock())
///             .cidrMatchMode("Include")
///             .routeTypes("System")
///             .matchAsns("65501")
///             .asPathMatchMode("Include")
///             .matchCommunitySets("65501:1")
///             .communityMatchMode("Include")
///             .communityOperateMode("Additive")
///             .operateCommunitySets("65501:1")
///             .preference(20)
///             .prependAsPaths("65501")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   sourceRegion:
///     type: string
///     default: cn-hangzhou
///   destinationRegion:
///     type: string
///     default: cn-shanghai
/// resources:
///   exampleHz:
///     type: alicloud:vpc:Network
///     name: example_hz
///     properties:
///       vpcName: tf_example
///       cidrBlock: 192.168.0.0/16
///   exampleSh:
///     type: alicloud:vpc:Network
///     name: example_sh
///     properties:
///       vpcName: tf_example
///       cidrBlock: 172.16.0.0/12
///   example:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleHzInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: example_hz
///     properties:
///       instanceId: ${example.id}
///       childInstanceId: ${exampleHz.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${sourceRegion}
///   exampleShInstanceAttachment:
///     type: alicloud:cen:InstanceAttachment
///     name: example_sh
///     properties:
///       instanceId: ${example.id}
///       childInstanceId: ${exampleSh.id}
///       childInstanceType: VPC
///       childInstanceRegionId: ${destinationRegion}
///   default:
///     type: alicloud:cen:RouteMap
///     properties:
///       cenRegionId: ${sourceRegion}
///       cenId: ${example.id}
///       description: tf_example
///       priority: '1'
///       transmitDirection: RegionIn
///       mapResult: Permit
///       nextPriority: '1'
///       sourceRegionIds:
///         - ${sourceRegion}
///       sourceInstanceIds:
///         - ${exampleHzInstanceAttachment.childInstanceId}
///       sourceInstanceIdsReverseMatch: 'false'
///       destinationInstanceIds:
///         - ${exampleShInstanceAttachment.childInstanceId}
///       destinationInstanceIdsReverseMatch: 'false'
///       sourceRouteTableIds:
///         - ${exampleHz.routeTableId}
///       destinationRouteTableIds:
///         - ${exampleSh.routeTableId}
///       sourceChildInstanceTypes:
///         - VPC
///       destinationChildInstanceTypes:
///         - VPC
///       destinationCidrBlocks:
///         - ${exampleSh.cidrBlock}
///       cidrMatchMode: Include
///       routeTypes:
///         - System
///       matchAsns:
///         - '65501'
///       asPathMatchMode: Include
///       matchCommunitySets:
///         - 65501:1
///       communityMatchMode: Include
///       communityOperateMode: Additive
///       operateCommunitySets:
///         - 65501:1
///       preference: '20'
///       prependAsPaths:
///         - '65501'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// CEN RouteMap can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/routeMap:RouteMap default <cen_id>:<route_map_id>.
/// ```
class RouteMap extends pulumi.CustomResource {
  /// A match statement. It indicates the mode in which the AS path attribute is matched. Valid values: ["Include", "Complete"].
  late final pulumi.Output<String?> asPathMatchMode;

  /// The ID of the CEN instance.
  late final pulumi.Output<String> cenId;

  /// The ID of the region to which the CEN instance belongs.
  late final pulumi.Output<String> cenRegionId;

  /// A match statement. It indicates the mode in which the prefix attribute is matched. Valid values: ["Include", "Complete"].
  late final pulumi.Output<String?> cidrMatchMode;

  /// A match statement. It indicates the mode in which the community attribute is matched. Valid values: ["Include", "Complete"].
  late final pulumi.Output<String?> communityMatchMode;

  /// An action statement. It indicates the mode in which the community attribute is operated. Valid values: ["Additive", "Replace"].
  late final pulumi.Output<String?> communityOperateMode;

  /// The description of the route map.
  late final pulumi.Output<String?> description;

  /// A match statement that indicates the list of destination instance types. Valid values: ["VPC", "VBR", "CCN", "VPN"].
  late final pulumi.Output<List<String>?> destinationChildInstanceTypes;

  /// A match statement that indicates the prefix list. The prefix is in the CIDR format. You can enter a maximum of 32 CIDR blocks.
  late final pulumi.Output<List<String>?> destinationCidrBlocks;

  /// A match statement that indicates the list of IDs of the destination instances.
  late final pulumi.Output<List<String>?> destinationInstanceIds;

  /// Indicates whether to enable the reverse match method for the DestinationInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  late final pulumi.Output<bool?> destinationInstanceIdsReverseMatch;

  /// A match statement that indicates the list of IDs of the destination route tables. You can enter a maximum of 32 route table IDs.
  late final pulumi.Output<List<String>?> destinationRouteTableIds;

  /// The action that is performed to a route if the route matches all the match conditions. Valid values: ["Permit", "Deny"].
  late final pulumi.Output<String> mapResult;

  /// A match statement that indicates the AS path list. The AS path is a well-known mandatory attribute, which describes the numbers of the ASs that a BGP route passes through during transmission.
  late final pulumi.Output<List<String>?> matchAsns;

  /// A match statement that indicates the community set. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  late final pulumi.Output<List<String>?> matchCommunitySets;

  /// The priority of the next route map that is associated with the current route map. Value range: 1 to 100.
  late final pulumi.Output<int?> nextPriority;

  /// An action statement that operates the community attribute. The format of each community is nn:nn, which ranges from 1 to 65535. You can enter a maximum of 32 communities. Communities must comply with RFC 1997. Large communities (RFC 8092) are not supported.
  late final pulumi.Output<List<String>?> operateCommunitySets;

  /// An action statement that modifies the priority of the route. Value range: 1 to 100. The default priority of a route is 50. A lower value indicates a higher preference.
  late final pulumi.Output<int?> preference;

  /// An action statement that indicates an AS path is prepended when the regional gateway receives or advertises a route.
  late final pulumi.Output<List<String>?> prependAsPaths;

  /// The priority of the route map. Value range: 1 to 100. A lower value indicates a higher priority.
  late final pulumi.Output<int> priority;

  /// ID of the RouteMap. It is available in 1.161.0+.
  late final pulumi.Output<String> routeMapId;

  /// A match statement that indicates the list of route types. Valid values: ["System", "Custom", "BGP"].
  late final pulumi.Output<List<String>?> routeTypes;

  /// A match statement that indicates the list of source instance types. Valid values: ["VPC", "VBR", "CCN"].
  late final pulumi.Output<List<String>?> sourceChildInstanceTypes;

  /// A match statement that indicates the list of IDs of the source instances.
  late final pulumi.Output<List<String>?> sourceInstanceIds;

  /// Indicates whether to enable the reverse match method for the SourceInstanceIds match condition. Valid values: ["false", "true"]. Default to "false".
  late final pulumi.Output<bool?> sourceInstanceIdsReverseMatch;

  /// A match statement that indicates the list of IDs of the source regions. You can enter a maximum of 32 region IDs.
  late final pulumi.Output<List<String>?> sourceRegionIds;

  /// A match statement that indicates the list of IDs of the source route tables. You can enter a maximum of 32 route table IDs.
  late final pulumi.Output<List<String>?> sourceRouteTableIds;

  /// (Computed) The status of route map. Valid values: ["Creating", "Active", "Deleting"].
  late final pulumi.Output<String> status;

  /// The routing table ID of the forwarding router. If you do not enter the routing table ID, the routing policy is automatically associated with the default routing table of the forwarding router.
  late final pulumi.Output<String> transitRouterRouteTableId;

  /// The direction in which the route map is applied. Valid values: ["RegionIn", "RegionOut"].
  late final pulumi.Output<String> transmitDirection;

  /// Creates a new [RouteMap].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RouteMap]. {@macro pulumi_cen_route_map_route_map_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RouteMap(
    String name, {
    RouteMapArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeMap:RouteMap',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    asPathMatchMode = registerOutput<String?>('asPathMatchMode');
    cenId = registerOutput<String>('cenId');
    cenRegionId = registerOutput<String>('cenRegionId');
    cidrMatchMode = registerOutput<String?>('cidrMatchMode');
    communityMatchMode = registerOutput<String?>('communityMatchMode');
    communityOperateMode = registerOutput<String?>('communityOperateMode');
    description = registerOutput<String?>('description');
    destinationChildInstanceTypes = registerOutput<List<String>?>(
      'destinationChildInstanceTypes',
    );
    destinationCidrBlocks = registerOutput<List<String>?>(
      'destinationCidrBlocks',
    );
    destinationInstanceIds = registerOutput<List<String>?>(
      'destinationInstanceIds',
    );
    destinationInstanceIdsReverseMatch = registerOutput<bool?>(
      'destinationInstanceIdsReverseMatch',
    );
    destinationRouteTableIds = registerOutput<List<String>?>(
      'destinationRouteTableIds',
    );
    mapResult = registerOutput<String>('mapResult');
    matchAsns = registerOutput<List<String>?>('matchAsns');
    matchCommunitySets = registerOutput<List<String>?>('matchCommunitySets');
    nextPriority = registerOutput<int?>('nextPriority');
    operateCommunitySets = registerOutput<List<String>?>(
      'operateCommunitySets',
    );
    preference = registerOutput<int?>('preference');
    prependAsPaths = registerOutput<List<String>?>('prependAsPaths');
    priority = registerOutput<int>('priority');
    routeMapId = registerOutput<String>('routeMapId');
    routeTypes = registerOutput<List<String>?>('routeTypes');
    sourceChildInstanceTypes = registerOutput<List<String>?>(
      'sourceChildInstanceTypes',
    );
    sourceInstanceIds = registerOutput<List<String>?>('sourceInstanceIds');
    sourceInstanceIdsReverseMatch = registerOutput<bool?>(
      'sourceInstanceIdsReverseMatch',
    );
    sourceRegionIds = registerOutput<List<String>?>('sourceRegionIds');
    sourceRouteTableIds = registerOutput<List<String>?>('sourceRouteTableIds');
    status = registerOutput<String>('status');
    transitRouterRouteTableId = registerOutput<String>(
      'transitRouterRouteTableId',
    );
    transmitDirection = registerOutput<String>('transmitDirection');
  }

  /// Gets an existing [RouteMap] resource's state with the given [name] and [id].
  static RouteMap get(
    String name,
    pulumi.Input<String> id, {
    RouteMapState? state,
  }) {
    return RouteMap._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RouteMap._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:cen/routeMap:RouteMap',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    asPathMatchMode = registerOutput<String?>('asPathMatchMode');
    cenId = registerOutput<String>('cenId');
    cenRegionId = registerOutput<String>('cenRegionId');
    cidrMatchMode = registerOutput<String?>('cidrMatchMode');
    communityMatchMode = registerOutput<String?>('communityMatchMode');
    communityOperateMode = registerOutput<String?>('communityOperateMode');
    description = registerOutput<String?>('description');
    destinationChildInstanceTypes = registerOutput<List<String>?>(
      'destinationChildInstanceTypes',
    );
    destinationCidrBlocks = registerOutput<List<String>?>(
      'destinationCidrBlocks',
    );
    destinationInstanceIds = registerOutput<List<String>?>(
      'destinationInstanceIds',
    );
    destinationInstanceIdsReverseMatch = registerOutput<bool?>(
      'destinationInstanceIdsReverseMatch',
    );
    destinationRouteTableIds = registerOutput<List<String>?>(
      'destinationRouteTableIds',
    );
    mapResult = registerOutput<String>('mapResult');
    matchAsns = registerOutput<List<String>?>('matchAsns');
    matchCommunitySets = registerOutput<List<String>?>('matchCommunitySets');
    nextPriority = registerOutput<int?>('nextPriority');
    operateCommunitySets = registerOutput<List<String>?>(
      'operateCommunitySets',
    );
    preference = registerOutput<int?>('preference');
    prependAsPaths = registerOutput<List<String>?>('prependAsPaths');
    priority = registerOutput<int>('priority');
    routeMapId = registerOutput<String>('routeMapId');
    routeTypes = registerOutput<List<String>?>('routeTypes');
    sourceChildInstanceTypes = registerOutput<List<String>?>(
      'sourceChildInstanceTypes',
    );
    sourceInstanceIds = registerOutput<List<String>?>('sourceInstanceIds');
    sourceInstanceIdsReverseMatch = registerOutput<bool?>(
      'sourceInstanceIdsReverseMatch',
    );
    sourceRegionIds = registerOutput<List<String>?>('sourceRegionIds');
    sourceRouteTableIds = registerOutput<List<String>?>('sourceRouteTableIds');
    status = registerOutput<String>('status');
    transitRouterRouteTableId = registerOutput<String>(
      'transitRouterRouteTableId',
    );
    transmitDirection = registerOutput<String>('transmitDirection');
  }
}
