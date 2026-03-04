import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bandwidth_limits_args.dart';
import 'get_bandwidth_limits_result.dart';
import 'get_bandwidth_packages_args.dart';
import 'get_bandwidth_packages_result.dart';
import 'get_child_instance_route_entry_to_attachments_args.dart';
import 'get_child_instance_route_entry_to_attachments_result.dart';
import 'get_flowlogs_args.dart';
import 'get_flowlogs_result.dart';
import 'get_instance_attachments_args.dart';
import 'get_instance_attachments_result.dart';
import 'get_instances_args.dart';
import 'get_instances_result.dart';
import 'get_inter_region_traffic_qos_policies_args.dart';
import 'get_inter_region_traffic_qos_policies_result.dart';
import 'get_inter_region_traffic_qos_queues_args.dart';
import 'get_inter_region_traffic_qos_queues_result.dart';
import 'get_private_zones_args.dart';
import 'get_private_zones_result.dart';
import 'get_region_route_entries_args.dart';
import 'get_region_route_entries_result.dart';
import 'get_route_entries_args.dart';
import 'get_route_entries_result.dart';
import 'get_route_maps_args.dart';
import 'get_route_maps_result.dart';
import 'get_route_services_args.dart';
import 'get_route_services_result.dart';
import 'get_traffic_marking_policies_args.dart';
import 'get_traffic_marking_policies_result.dart';
import 'get_transit_route_table_aggregations_args.dart';
import 'get_transit_route_table_aggregations_result.dart';
import 'get_transit_router_available_resources_args.dart';
import 'get_transit_router_available_resources_result.dart';
import 'get_transit_router_cidrs_args.dart';
import 'get_transit_router_cidrs_result.dart';
import 'get_transit_router_multicast_domain_associations_args.dart';
import 'get_transit_router_multicast_domain_associations_result.dart';
import 'get_transit_router_multicast_domain_members_args.dart';
import 'get_transit_router_multicast_domain_members_result.dart';
import 'get_transit_router_multicast_domain_peer_members_args.dart';
import 'get_transit_router_multicast_domain_peer_members_result.dart';
import 'get_transit_router_multicast_domain_sources_args.dart';
import 'get_transit_router_multicast_domain_sources_result.dart';
import 'get_transit_router_multicast_domains_args.dart';
import 'get_transit_router_multicast_domains_result.dart';
import 'get_transit_router_peer_attachments_args.dart';
import 'get_transit_router_peer_attachments_result.dart';
import 'get_transit_router_prefix_list_associations_args.dart';
import 'get_transit_router_prefix_list_associations_result.dart';
import 'get_transit_router_route_entries_args.dart';
import 'get_transit_router_route_entries_result.dart';
import 'get_transit_router_route_table_associations_args.dart';
import 'get_transit_router_route_table_associations_result.dart';
import 'get_transit_router_route_table_propagations_args.dart';
import 'get_transit_router_route_table_propagations_result.dart';
import 'get_transit_router_route_tables_args.dart';
import 'get_transit_router_route_tables_result.dart';
import 'get_transit_router_service_args.dart';
import 'get_transit_router_service_result.dart';
import 'get_transit_router_vbr_attachments_args.dart';
import 'get_transit_router_vbr_attachments_result.dart';
import 'get_transit_router_vpc_attachments_args.dart';
import 'get_transit_router_vpc_attachments_result.dart';
import 'get_transit_router_vpn_attachments_args.dart';
import 'get_transit_router_vpn_attachments_result.dart';
import 'get_transit_routers_args.dart';
import 'get_transit_routers_result.dart';
import 'get_vbr_health_checks_args.dart';
import 'get_vbr_health_checks_result.dart';

/// This data source provides CEN Bandwidth Limits available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const bwl = alicloud.cen.getBandwidthLimits({
///     instanceIds: ["cen-id1"],
/// });
/// export const firstCenBandwidthLimitsLocalRegionId = bwl.then(bwl => bwl.limits?.[0]?.localRegionId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// bwl = alicloud.cen.get_bandwidth_limits(instance_ids=["cen-id1"])
/// pulumi.export("firstCenBandwidthLimitsLocalRegionId", bwl.limits[0].local_region_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bwl = AliCloud.Cen.GetBandwidthLimits.Invoke(new()
///     {
///         InstanceIds = new[]
///         {
///             "cen-id1",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenBandwidthLimitsLocalRegionId"] = bwl.Apply(getBandwidthLimitsResult => getBandwidthLimitsResult.Limits[0]?.LocalRegionId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		bwl, err := cen.GetBandwidthLimits(ctx, &cen.GetBandwidthLimitsArgs{
/// 			InstanceIds: []string{
/// 				"cen-id1",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenBandwidthLimitsLocalRegionId", bwl.Limits[0].LocalRegionId)
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
/// import com.pulumi.alicloud.cen.inputs.GetBandwidthLimitsArgs;
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
///         final var bwl = CenFunctions.getBandwidthLimits(GetBandwidthLimitsArgs.builder()
///             .instanceIds("cen-id1")
///             .build());
///
///         ctx.export("firstCenBandwidthLimitsLocalRegionId", bwl.limits()[0].localRegionId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   bwl:
///     fn::invoke:
///       function: alicloud:cen:getBandwidthLimits
///       arguments:
///         instanceIds:
///           - cen-id1
/// outputs:
///   firstCenBandwidthLimitsLocalRegionId: ${bwl.limits[0].localRegionId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_bandwidth_limits_get_bandwidth_limits_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBandwidthLimitsResult> getBandwidthLimits(
  GetBandwidthLimitsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getBandwidthLimits:getBandwidthLimits',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBandwidthLimitsResult.fromMap(result);
}

/// This data source provides CEN Bandwidth Packages available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cen.getBandwidthPackages({
///     instanceId: "cen-id1",
///     nameRegex: "^foo",
/// });
/// export const firstCenBandwidthPackageId = example.then(example => example.packages?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cen.get_bandwidth_packages(instance_id="cen-id1",
///     name_regex="^foo")
/// pulumi.export("firstCenBandwidthPackageId", example.packages[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cen.GetBandwidthPackages.Invoke(new()
///     {
///         InstanceId = "cen-id1",
///         NameRegex = "^foo",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenBandwidthPackageId"] = example.Apply(getBandwidthPackagesResult => getBandwidthPackagesResult.Packages[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cen.GetBandwidthPackages(ctx, &cen.GetBandwidthPackagesArgs{
/// 			InstanceId: pulumi.StringRef("cen-id1"),
/// 			NameRegex:  pulumi.StringRef("^foo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenBandwidthPackageId", example.Packages[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetBandwidthPackagesArgs;
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
///         final var example = CenFunctions.getBandwidthPackages(GetBandwidthPackagesArgs.builder()
///             .instanceId("cen-id1")
///             .nameRegex("^foo")
///             .build());
///
///         ctx.export("firstCenBandwidthPackageId", example.packages()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cen:getBandwidthPackages
///       arguments:
///         instanceId: cen-id1
///         nameRegex: ^foo
/// outputs:
///   firstCenBandwidthPackageId: ${example.packages[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_bandwidth_packages_get_bandwidth_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBandwidthPackagesResult> getBandwidthPackages(
  GetBandwidthPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getBandwidthPackages:getBandwidthPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBandwidthPackagesResult.fromMap(result);
}

/// This data source provides Cen Child Instance Route Entry To Attachment available to the user.[What is Child Instance Route Entry To Attachment](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-createcenchildinstancerouteentrytoattachment)
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getChildInstanceRouteEntryToAttachments({
///     childInstanceRouteTableId: "vtb-t4nt0z5xxbti85c78nkzy",
///     transitRouterAttachmentId: "tr-attach-f1fd1y50rql00emvej",
/// });
/// export const alicloudCenChildInstanceRouteEntryToAttachmentExampleId = _default.then(_default => _default.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_child_instance_route_entry_to_attachments(child_instance_route_table_id="vtb-t4nt0z5xxbti85c78nkzy",
///     transit_router_attachment_id="tr-attach-f1fd1y50rql00emvej")
/// pulumi.export("alicloudCenChildInstanceRouteEntryToAttachmentExampleId", default.attachments[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetChildInstanceRouteEntryToAttachments.Invoke(new()
///     {
///         ChildInstanceRouteTableId = "vtb-t4nt0z5xxbti85c78nkzy",
///         TransitRouterAttachmentId = "tr-attach-f1fd1y50rql00emvej",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCenChildInstanceRouteEntryToAttachmentExampleId"] = @default.Apply(@default => @default.Apply(getChildInstanceRouteEntryToAttachmentsResult => getChildInstanceRouteEntryToAttachmentsResult.Attachments[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetChildInstanceRouteEntryToAttachments(ctx, &cen.GetChildInstanceRouteEntryToAttachmentsArgs{
/// 			ChildInstanceRouteTableId: "vtb-t4nt0z5xxbti85c78nkzy",
/// 			TransitRouterAttachmentId: "tr-attach-f1fd1y50rql00emvej",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCenChildInstanceRouteEntryToAttachmentExampleId", _default.Attachments[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetChildInstanceRouteEntryToAttachmentsArgs;
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
///         final var default = CenFunctions.getChildInstanceRouteEntryToAttachments(GetChildInstanceRouteEntryToAttachmentsArgs.builder()
///             .childInstanceRouteTableId("vtb-t4nt0z5xxbti85c78nkzy")
///             .transitRouterAttachmentId("tr-attach-f1fd1y50rql00emvej")
///             .build());
///
///         ctx.export("alicloudCenChildInstanceRouteEntryToAttachmentExampleId", default_.attachments()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getChildInstanceRouteEntryToAttachments
///       arguments:
///         childInstanceRouteTableId: vtb-t4nt0z5xxbti85c78nkzy
///         transitRouterAttachmentId: tr-attach-f1fd1y50rql00emvej
/// outputs:
///   alicloudCenChildInstanceRouteEntryToAttachmentExampleId: ${default.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_child_instance_route_entry_to_attachments_get_child_instance_route_entry_to_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetChildInstanceRouteEntryToAttachmentsResult>
getChildInstanceRouteEntryToAttachments(
  GetChildInstanceRouteEntryToAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getChildInstanceRouteEntryToAttachments:getChildInstanceRouteEntryToAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChildInstanceRouteEntryToAttachmentsResult.fromMap(result);
}

/// This data source provides CEN flow logs available to the user.
///
/// &gt; **NOTE:** Available since v1.78.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-example";
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultc5kxyC = new alicloud.cen.Instance("defaultc5kxyC", {cenInstanceName: name});
/// const defaultVw2U9u = new alicloud.cen.TransitRouter("defaultVw2U9u", {cenId: defaultc5kxyC.id});
/// const defaultProject = new alicloud.log.Project("default", {
///     projectName: `${name}-${defaultInteger.result}`,
///     description: "terraform-example",
/// });
/// const defaultStore = new alicloud.log.Store("default", {
///     projectName: defaultProject.projectName,
///     logstoreName: `${name}-${defaultInteger.result}`,
///     shardCount: 3,
///     autoSplit: true,
///     maxSplitShardCount: 60,
///     appendMeta: true,
/// });
/// const defaultFlowLog = new alicloud.cen.FlowLog("default", {
///     projectName: defaultStore.projectName,
///     flowLogName: `${name}-${defaultInteger.result}`,
///     logFormatString: "${srcaddr}${dstaddr}${bytes}",
///     cenId: defaultc5kxyC.id,
///     logStoreName: defaultStore.logstoreName,
///     interval: 600,
///     status: "Active",
///     transitRouterId: defaultVw2U9u.transitRouterId,
///     description: "flowlog-resource-example-1",
/// });
/// const _default = alicloud.cen.getFlowlogsOutput({
///     ids: [defaultFlowLog.id],
/// });
/// export const firstCenFlowlogId = _default.apply(_default => _default.flowlogs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// defaultc5kxy_c = alicloud.cen.Instance("defaultc5kxyC", cen_instance_name=name)
/// default_vw2_u9u = alicloud.cen.TransitRouter("defaultVw2U9u", cen_id=defaultc5kxy_c.id)
/// default_project = alicloud.log.Project("default",
///     project_name=f"{name}-{default_integer['result']}",
///     description="terraform-example")
/// default_store = alicloud.log.Store("default",
///     project_name=default_project.project_name,
///     logstore_name=f"{name}-{default_integer['result']}",
///     shard_count=3,
///     auto_split=True,
///     max_split_shard_count=60,
///     append_meta=True)
/// default_flow_log = alicloud.cen.FlowLog("default",
///     project_name=default_store.project_name,
///     flow_log_name=f"{name}-{default_integer['result']}",
///     log_format_string="${srcaddr}${dstaddr}${bytes}",
///     cen_id=defaultc5kxy_c.id,
///     log_store_name=default_store.logstore_name,
///     interval=600,
///     status="Active",
///     transit_router_id=default_vw2_u9u.transit_router_id,
///     description="flowlog-resource-example-1")
/// default = alicloud.cen.get_flowlogs_output(ids=[default_flow_log.id])
/// pulumi.export("firstCenFlowlogId", default.flowlogs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-example";
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultc5kxyC = new AliCloud.Cen.Instance("defaultc5kxyC", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultVw2U9u = new AliCloud.Cen.TransitRouter("defaultVw2U9u", new()
///     {
///         CenId = defaultc5kxyC.Id,
///     });
///
///     var defaultProject = new AliCloud.Log.Project("default", new()
///     {
///         ProjectName = $"{name}-{defaultInteger.Result}",
///         Description = "terraform-example",
///     });
///
///     var defaultStore = new AliCloud.Log.Store("default", new()
///     {
///         ProjectName = defaultProject.ProjectName,
///         LogstoreName = $"{name}-{defaultInteger.Result}",
///         ShardCount = 3,
///         AutoSplit = true,
///         MaxSplitShardCount = 60,
///         AppendMeta = true,
///     });
///
///     var defaultFlowLog = new AliCloud.Cen.FlowLog("default", new()
///     {
///         ProjectName = defaultStore.ProjectName,
///         FlowLogName = $"{name}-{defaultInteger.Result}",
///         LogFormatString = "${srcaddr}${dstaddr}${bytes}",
///         CenId = defaultc5kxyC.Id,
///         LogStoreName = defaultStore.LogstoreName,
///         Interval = 600,
///         Status = "Active",
///         TransitRouterId = defaultVw2U9u.TransitRouterId,
///         Description = "flowlog-resource-example-1",
///     });
///
///     var @default = AliCloud.Cen.GetFlowlogs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultFlowLog.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenFlowlogId"] = @default.Apply(@default => @default.Apply(getFlowlogsResult => getFlowlogsResult.Flowlogs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/log"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "tf-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// Min: 10000,
/// Max: 99999,
/// })
/// if err != nil {
/// return err
/// }
/// defaultc5kxyC, err := cen.NewInstance(ctx, "defaultc5kxyC", &cen.InstanceArgs{
/// CenInstanceName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// defaultVw2U9u, err := cen.NewTransitRouter(ctx, "defaultVw2U9u", &cen.TransitRouterArgs{
/// CenId: defaultc5kxyC.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// defaultProject, err := log.NewProject(ctx, "default", &log.ProjectArgs{
/// ProjectName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// Description: pulumi.String("terraform-example"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultStore, err := log.NewStore(ctx, "default", &log.StoreArgs{
/// ProjectName: defaultProject.ProjectName,
/// LogstoreName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// ShardCount: pulumi.Int(3),
/// AutoSplit: pulumi.Bool(true),
/// MaxSplitShardCount: pulumi.Int(60),
/// AppendMeta: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// defaultFlowLog, err := cen.NewFlowLog(ctx, "default", &cen.FlowLogArgs{
/// ProjectName: defaultStore.ProjectName,
/// FlowLogName: pulumi.Sprintf("%v-%v", name, defaultInteger.Result),
/// LogFormatString: pulumi.String("${srcaddr}${dstaddr}${bytes}"),
/// CenId: defaultc5kxyC.ID(),
/// LogStoreName: defaultStore.LogstoreName,
/// Interval: pulumi.Int(600),
/// Status: pulumi.String("Active"),
/// TransitRouterId: defaultVw2U9u.TransitRouterId,
/// Description: pulumi.String("flowlog-resource-example-1"),
/// })
/// if err != nil {
/// return err
/// }
/// _default := cen.GetFlowlogsOutput(ctx, cen.GetFlowlogsOutputArgs{
/// Ids: pulumi.StringArray{
/// defaultFlowLog.ID(),
/// },
/// }, nil);
/// ctx.Export("firstCenFlowlogId", _default.ApplyT(func(_default cen.GetFlowlogsResult) (*string, error) {
/// return &default.Flowlogs[0].Id, nil
/// }).(pulumi.StringPtrOutput))
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.log.Project;
/// import com.pulumi.alicloud.log.ProjectArgs;
/// import com.pulumi.alicloud.log.Store;
/// import com.pulumi.alicloud.log.StoreArgs;
/// import com.pulumi.alicloud.cen.FlowLog;
/// import com.pulumi.alicloud.cen.FlowLogArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetFlowlogsArgs;
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
///         final var name = config.get("name").orElse("tf-example");
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultc5kxyC = new Instance("defaultc5kxyC", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultVw2U9u = new TransitRouter("defaultVw2U9u", TransitRouterArgs.builder()
///             .cenId(defaultc5kxyC.id())
///             .build());
///
///         var defaultProject = new Project("defaultProject", ProjectArgs.builder()
///             .projectName(String.format("%s-%s", name,defaultInteger.result()))
///             .description("terraform-example")
///             .build());
///
///         var defaultStore = new Store("defaultStore", StoreArgs.builder()
///             .projectName(defaultProject.projectName())
///             .logstoreName(String.format("%s-%s", name,defaultInteger.result()))
///             .shardCount(3)
///             .autoSplit(true)
///             .maxSplitShardCount(60)
///             .appendMeta(true)
///             .build());
///
///         var defaultFlowLog = new FlowLog("defaultFlowLog", FlowLogArgs.builder()
///             .projectName(defaultStore.projectName())
///             .flowLogName(String.format("%s-%s", name,defaultInteger.result()))
///             .logFormatString("${srcaddr}${dstaddr}${bytes}")
///             .cenId(defaultc5kxyC.id())
///             .logStoreName(defaultStore.logstoreName())
///             .interval(600)
///             .status("Active")
///             .transitRouterId(defaultVw2U9u.transitRouterId())
///             .description("flowlog-resource-example-1")
///             .build());
///
///         final var default = CenFunctions.getFlowlogs(GetFlowlogsArgs.builder()
///             .ids(defaultFlowLog.id())
///             .build());
///
///         ctx.export("firstCenFlowlogId", default_.applyValue(_default_ -> _default_.flowlogs()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultc5kxyC:
///     type: alicloud:cen:Instance
///     properties:
///       cenInstanceName: ${name}
///   defaultVw2U9u:
///     type: alicloud:cen:TransitRouter
///     properties:
///       cenId: ${defaultc5kxyC.id}
///   defaultProject:
///     type: alicloud:log:Project
///     name: default
///     properties:
///       projectName: ${name}-${defaultInteger.result}
///       description: terraform-example
///   defaultStore:
///     type: alicloud:log:Store
///     name: default
///     properties:
///       projectName: ${defaultProject.projectName}
///       logstoreName: ${name}-${defaultInteger.result}
///       shardCount: 3
///       autoSplit: true
///       maxSplitShardCount: 60
///       appendMeta: true
///   defaultFlowLog:
///     type: alicloud:cen:FlowLog
///     name: default
///     properties:
///       projectName: ${defaultStore.projectName}
///       flowLogName: ${name}-${defaultInteger.result}
///       logFormatString: $${srcaddr}$${dstaddr}$${bytes}
///       cenId: ${defaultc5kxyC.id}
///       logStoreName: ${defaultStore.logstoreName}
///       interval: '600'
///       status: Active
///       transitRouterId: ${defaultVw2U9u.transitRouterId}
///       description: flowlog-resource-example-1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getFlowlogs
///       arguments:
///         ids:
///           - ${defaultFlowLog.id}
/// outputs:
///   firstCenFlowlogId: ${default.flowlogs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_flowlogs_get_flowlogs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowlogsResult> getFlowlogs(
  GetFlowlogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getFlowlogs:getFlowlogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowlogsResult.fromMap(result);
}

/// This data source provides Cen Instance Attachments of the current Alibaba Cloud User.
///
/// &gt; **NOTE:** Available in v1.97.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cen.getInstanceAttachments({
///     instanceId: "cen-o40h17ll9w********",
/// });
/// export const theFirstAttachmentedInstanceId = example.then(example => example.attachments?.[0]?.childInstanceId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cen.get_instance_attachments(instance_id="cen-o40h17ll9w********")
/// pulumi.export("theFirstAttachmentedInstanceId", example.attachments[0].child_instance_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cen.GetInstanceAttachments.Invoke(new()
///     {
///         InstanceId = "cen-o40h17ll9w********",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["theFirstAttachmentedInstanceId"] = example.Apply(getInstanceAttachmentsResult => getInstanceAttachmentsResult.Attachments[0]?.ChildInstanceId),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cen.GetInstanceAttachments(ctx, &cen.GetInstanceAttachmentsArgs{
/// 			InstanceId: "cen-o40h17ll9w********",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("theFirstAttachmentedInstanceId", example.Attachments[0].ChildInstanceId)
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
/// import com.pulumi.alicloud.cen.inputs.GetInstanceAttachmentsArgs;
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
///         final var example = CenFunctions.getInstanceAttachments(GetInstanceAttachmentsArgs.builder()
///             .instanceId("cen-o40h17ll9w********")
///             .build());
///
///         ctx.export("theFirstAttachmentedInstanceId", example.attachments()[0].childInstanceId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cen:getInstanceAttachments
///       arguments:
///         instanceId: cen-o40h17ll9w********
/// outputs:
///   theFirstAttachmentedInstanceId: ${example.attachments[0].childInstanceId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_instance_attachments_get_instance_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAttachmentsResult> getInstanceAttachments(
  GetInstanceAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getInstanceAttachments:getInstanceAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentsResult.fromMap(result);
}

/// This data source provides CEN instances available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const cenInstancesDs = alicloud.cen.getInstances({
///     ids: ["cen-id1"],
///     nameRegex: "^foo",
/// });
/// export const firstCenInstanceId = cenInstancesDs.then(cenInstancesDs => cenInstancesDs.instances?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// cen_instances_ds = alicloud.cen.get_instances(ids=["cen-id1"],
///     name_regex="^foo")
/// pulumi.export("firstCenInstanceId", cen_instances_ds.instances[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cenInstancesDs = AliCloud.Cen.GetInstances.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "cen-id1",
///         },
///         NameRegex = "^foo",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenInstanceId"] = cenInstancesDs.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cenInstancesDs, err := cen.GetInstances(ctx, &cen.GetInstancesArgs{
/// 			Ids: []string{
/// 				"cen-id1",
/// 			},
/// 			NameRegex: pulumi.StringRef("^foo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenInstanceId", cenInstancesDs.Instances[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetInstancesArgs;
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
///         final var cenInstancesDs = CenFunctions.getInstances(GetInstancesArgs.builder()
///             .ids("cen-id1")
///             .nameRegex("^foo")
///             .build());
///
///         ctx.export("firstCenInstanceId", cenInstancesDs.instances()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   cenInstancesDs:
///     fn::invoke:
///       function: alicloud:cen:getInstances
///       arguments:
///         ids:
///           - cen-id1
///         nameRegex: ^foo
/// outputs:
///   firstCenInstanceId: ${cenInstancesDs.instances[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_instances_get_instances_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstancesResult> getInstances(
  GetInstancesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getInstances:getInstances',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstancesResult.fromMap(result);
}

/// This data source provides the Cen Inter Region Traffic Qos Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getInterRegionTrafficQosPolicies({
///     ids: ["example_id"],
///     transitRouterId: "your_transit_router_id",
///     transitRouterAttachmentId: "your_transit_router_attachment_id",
/// });
/// export const cenInterRegionTrafficQosPolicyId0 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.cen.getInterRegionTrafficQosPolicies({
///     nameRegex: "^my-name",
///     transitRouterId: "your_transit_router_id",
///     transitRouterAttachmentId: "your_transit_router_attachment_id",
/// });
/// export const cenInterRegionTrafficQosPolicyId1 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_inter_region_traffic_qos_policies(ids=["example_id"],
///     transit_router_id="your_transit_router_id",
///     transit_router_attachment_id="your_transit_router_attachment_id")
/// pulumi.export("cenInterRegionTrafficQosPolicyId0", ids.policies[0].id)
/// name_regex = alicloud.cen.get_inter_region_traffic_qos_policies(name_regex="^my-name",
///     transit_router_id="your_transit_router_id",
///     transit_router_attachment_id="your_transit_router_attachment_id")
/// pulumi.export("cenInterRegionTrafficQosPolicyId1", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetInterRegionTrafficQosPolicies.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TransitRouterId = "your_transit_router_id",
///         TransitRouterAttachmentId = "your_transit_router_attachment_id",
///     });
///
///     var nameRegex = AliCloud.Cen.GetInterRegionTrafficQosPolicies.Invoke(new()
///     {
///         NameRegex = "^my-name",
///         TransitRouterId = "your_transit_router_id",
///         TransitRouterAttachmentId = "your_transit_router_attachment_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenInterRegionTrafficQosPolicyId0"] = ids.Apply(getInterRegionTrafficQosPoliciesResult => getInterRegionTrafficQosPoliciesResult.Policies[0]?.Id),
///         ["cenInterRegionTrafficQosPolicyId1"] = nameRegex.Apply(getInterRegionTrafficQosPoliciesResult => getInterRegionTrafficQosPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetInterRegionTrafficQosPolicies(ctx, &cen.GetInterRegionTrafficQosPoliciesArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TransitRouterId:           "your_transit_router_id",
/// 			TransitRouterAttachmentId: "your_transit_router_attachment_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenInterRegionTrafficQosPolicyId0", ids.Policies[0].Id)
/// 		nameRegex, err := cen.GetInterRegionTrafficQosPolicies(ctx, &cen.GetInterRegionTrafficQosPoliciesArgs{
/// 			NameRegex:                 pulumi.StringRef("^my-name"),
/// 			TransitRouterId:           "your_transit_router_id",
/// 			TransitRouterAttachmentId: "your_transit_router_attachment_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenInterRegionTrafficQosPolicyId1", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetInterRegionTrafficQosPoliciesArgs;
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
///         final var ids = CenFunctions.getInterRegionTrafficQosPolicies(GetInterRegionTrafficQosPoliciesArgs.builder()
///             .ids("example_id")
///             .transitRouterId("your_transit_router_id")
///             .transitRouterAttachmentId("your_transit_router_attachment_id")
///             .build());
///
///         ctx.export("cenInterRegionTrafficQosPolicyId0", ids.policies()[0].id());
///         final var nameRegex = CenFunctions.getInterRegionTrafficQosPolicies(GetInterRegionTrafficQosPoliciesArgs.builder()
///             .nameRegex("^my-name")
///             .transitRouterId("your_transit_router_id")
///             .transitRouterAttachmentId("your_transit_router_attachment_id")
///             .build());
///
///         ctx.export("cenInterRegionTrafficQosPolicyId1", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getInterRegionTrafficQosPolicies
///       arguments:
///         ids:
///           - example_id
///         transitRouterId: your_transit_router_id
///         transitRouterAttachmentId: your_transit_router_attachment_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cen:getInterRegionTrafficQosPolicies
///       arguments:
///         nameRegex: ^my-name
///         transitRouterId: your_transit_router_id
///         transitRouterAttachmentId: your_transit_router_attachment_id
/// outputs:
///   cenInterRegionTrafficQosPolicyId0: ${ids.policies[0].id}
///   cenInterRegionTrafficQosPolicyId1: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_inter_region_traffic_qos_policies_get_inter_region_traffic_qos_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterRegionTrafficQosPoliciesResult> getInterRegionTrafficQosPolicies(
  GetInterRegionTrafficQosPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getInterRegionTrafficQosPolicies:getInterRegionTrafficQosPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterRegionTrafficQosPoliciesResult.fromMap(result);
}

/// This data source provides Cen Inter Region Traffic Qos Queue available to the user.
///
/// &gt; **NOTE:** Available in 1.195.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getInterRegionTrafficQosQueues({
///     ids: [defaultAlicloudCenInterRegionTrafficQosQueue.id],
///     nameRegex: defaultAlicloudCenInterRegionTrafficQosQueue.name,
///     trafficQosPolicyId: "qos-xxxxxxx",
/// });
/// export const alicloudCenInterRegionTrafficQosQueueExampleId = _default.then(_default => _default.queues?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_inter_region_traffic_qos_queues(ids=[default_alicloud_cen_inter_region_traffic_qos_queue["id"]],
///     name_regex=default_alicloud_cen_inter_region_traffic_qos_queue["name"],
///     traffic_qos_policy_id="qos-xxxxxxx")
/// pulumi.export("alicloudCenInterRegionTrafficQosQueueExampleId", default.queues[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetInterRegionTrafficQosQueues.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultAlicloudCenInterRegionTrafficQosQueue.Id,
///         },
///         NameRegex = defaultAlicloudCenInterRegionTrafficQosQueue.Name,
///         TrafficQosPolicyId = "qos-xxxxxxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCenInterRegionTrafficQosQueueExampleId"] = @default.Apply(@default => @default.Apply(getInterRegionTrafficQosQueuesResult => getInterRegionTrafficQosQueuesResult.Queues[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _default, err := cen.GetInterRegionTrafficQosQueues(ctx, &cen.GetInterRegionTrafficQosQueuesArgs{
/// Ids: interface{}{
/// defaultAlicloudCenInterRegionTrafficQosQueue.Id,
/// },
/// NameRegex: pulumi.StringRef(defaultAlicloudCenInterRegionTrafficQosQueue.Name),
/// TrafficQosPolicyId: "qos-xxxxxxx",
/// }, nil);
/// if err != nil {
/// return err
/// }
/// ctx.Export("alicloudCenInterRegionTrafficQosQueueExampleId", _default.Queues[0].Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetInterRegionTrafficQosQueuesArgs;
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
///         final var default = CenFunctions.getInterRegionTrafficQosQueues(GetInterRegionTrafficQosQueuesArgs.builder()
///             .ids(defaultAlicloudCenInterRegionTrafficQosQueue.id())
///             .nameRegex(defaultAlicloudCenInterRegionTrafficQosQueue.name())
///             .trafficQosPolicyId("qos-xxxxxxx")
///             .build());
///
///         ctx.export("alicloudCenInterRegionTrafficQosQueueExampleId", default_.queues()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getInterRegionTrafficQosQueues
///       arguments:
///         ids:
///           - ${defaultAlicloudCenInterRegionTrafficQosQueue.id}
///         nameRegex: ${defaultAlicloudCenInterRegionTrafficQosQueue.name}
///         trafficQosPolicyId: qos-xxxxxxx
/// outputs:
///   alicloudCenInterRegionTrafficQosQueueExampleId: ${default.queues[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_inter_region_traffic_qos_queues_get_inter_region_traffic_qos_queues_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInterRegionTrafficQosQueuesResult> getInterRegionTrafficQosQueues(
  GetInterRegionTrafficQosQueuesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getInterRegionTrafficQosQueues:getInterRegionTrafficQosQueues',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInterRegionTrafficQosQueuesResult.fromMap(result);
}

/// This data source provides CEN Private Zones available to the user.
///
/// &gt; **NOTE:** Available in v1.88.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.cen.getPrivateZones({
///     cenId: "cen-o40h17ll9w********",
///     ids: ["cn-hangzhou"],
///     status: "Active",
/// });
/// export const firstCenPrivateZonesId = _this.then(_this => _this.zones?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.cen.get_private_zones(cen_id="cen-o40h17ll9w********",
///     ids=["cn-hangzhou"],
///     status="Active")
/// pulumi.export("firstCenPrivateZonesId", this.zones[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.Cen.GetPrivateZones.Invoke(new()
///     {
///         CenId = "cen-o40h17ll9w********",
///         Ids = new[]
///         {
///             "cn-hangzhou",
///         },
///         Status = "Active",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenPrivateZonesId"] = @this.Apply(@this => @this.Apply(getPrivateZonesResult => getPrivateZonesResult.Zones[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := cen.GetPrivateZones(ctx, &cen.GetPrivateZonesArgs{
/// 			CenId: "cen-o40h17ll9w********",
/// 			Ids: []string{
/// 				"cn-hangzhou",
/// 			},
/// 			Status: pulumi.StringRef("Active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenPrivateZonesId", this.Zones[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetPrivateZonesArgs;
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
///         final var this = CenFunctions.getPrivateZones(GetPrivateZonesArgs.builder()
///             .cenId("cen-o40h17ll9w********")
///             .ids("cn-hangzhou")
///             .status("Active")
///             .build());
///
///         ctx.export("firstCenPrivateZonesId", this_.zones()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:cen:getPrivateZones
///       arguments:
///         cenId: cen-o40h17ll9w********
///         ids:
///           - cn-hangzhou
///         status: Active
/// outputs:
///   firstCenPrivateZonesId: ${this.zones[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_private_zones_get_private_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateZonesResult> getPrivateZones(
  GetPrivateZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getPrivateZones:getPrivateZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateZonesResult.fromMap(result);
}

/// This data source provides CEN Regional Route Entries available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const entry = alicloud.cen.getRegionRouteEntries({
///     instanceId: "cen-id1",
///     regionId: "cn-beijing",
/// });
/// export const firstRegionRouteEntriesRouteEntryCidrBlock = entry.then(entry => entry.entries?.[0]?.cidrBlock);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// entry = alicloud.cen.get_region_route_entries(instance_id="cen-id1",
///     region_id="cn-beijing")
/// pulumi.export("firstRegionRouteEntriesRouteEntryCidrBlock", entry.entries[0].cidr_block)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entry = AliCloud.Cen.GetRegionRouteEntries.Invoke(new()
///     {
///         InstanceId = "cen-id1",
///         RegionId = "cn-beijing",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRegionRouteEntriesRouteEntryCidrBlock"] = entry.Apply(getRegionRouteEntriesResult => getRegionRouteEntriesResult.Entries[0]?.CidrBlock),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		entry, err := cen.GetRegionRouteEntries(ctx, &cen.GetRegionRouteEntriesArgs{
/// 			InstanceId: "cen-id1",
/// 			RegionId:   "cn-beijing",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRegionRouteEntriesRouteEntryCidrBlock", entry.Entries[0].CidrBlock)
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
/// import com.pulumi.alicloud.cen.inputs.GetRegionRouteEntriesArgs;
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
///         final var entry = CenFunctions.getRegionRouteEntries(GetRegionRouteEntriesArgs.builder()
///             .instanceId("cen-id1")
///             .regionId("cn-beijing")
///             .build());
///
///         ctx.export("firstRegionRouteEntriesRouteEntryCidrBlock", entry.entries()[0].cidrBlock());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   entry:
///     fn::invoke:
///       function: alicloud:cen:getRegionRouteEntries
///       arguments:
///         instanceId: cen-id1
///         regionId: cn-beijing
/// outputs:
///   firstRegionRouteEntriesRouteEntryCidrBlock: ${entry.entries[0].cidrBlock}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_region_route_entries_get_region_route_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRegionRouteEntriesResult> getRegionRouteEntries(
  GetRegionRouteEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getRegionRouteEntries:getRegionRouteEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRegionRouteEntriesResult.fromMap(result);
}

/// This data source provides CEN Route Entries available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const entry = alicloud.cen.getRouteEntries({
///     instanceId: "cen-id1",
///     routeTableId: "vtb-id1",
/// });
/// export const firstRouteEntriesRouteEntryCidrBlock = entry.then(entry => entry.entries?.[0]?.cidrBlock);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// entry = alicloud.cen.get_route_entries(instance_id="cen-id1",
///     route_table_id="vtb-id1")
/// pulumi.export("firstRouteEntriesRouteEntryCidrBlock", entry.entries[0].cidr_block)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var entry = AliCloud.Cen.GetRouteEntries.Invoke(new()
///     {
///         InstanceId = "cen-id1",
///         RouteTableId = "vtb-id1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRouteEntriesRouteEntryCidrBlock"] = entry.Apply(getRouteEntriesResult => getRouteEntriesResult.Entries[0]?.CidrBlock),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		entry, err := cen.GetRouteEntries(ctx, &cen.GetRouteEntriesArgs{
/// 			InstanceId:   "cen-id1",
/// 			RouteTableId: "vtb-id1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRouteEntriesRouteEntryCidrBlock", entry.Entries[0].CidrBlock)
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
/// import com.pulumi.alicloud.cen.inputs.GetRouteEntriesArgs;
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
///         final var entry = CenFunctions.getRouteEntries(GetRouteEntriesArgs.builder()
///             .instanceId("cen-id1")
///             .routeTableId("vtb-id1")
///             .build());
///
///         ctx.export("firstRouteEntriesRouteEntryCidrBlock", entry.entries()[0].cidrBlock());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   entry:
///     fn::invoke:
///       function: alicloud:cen:getRouteEntries
///       arguments:
///         instanceId: cen-id1
///         routeTableId: vtb-id1
/// outputs:
///   firstRouteEntriesRouteEntryCidrBlock: ${entry.entries[0].cidrBlock}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_route_entries_get_route_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteEntriesResult> getRouteEntries(
  GetRouteEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getRouteEntries:getRouteEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteEntriesResult.fromMap(result);
}

/// This data source provides CEN Route Maps available to the user.
///
/// &gt; **NOTE:** Available in v1.87.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _this = alicloud.cen.getRouteMaps({
///     cenId: "cen-ihdlgo87ai********",
///     ids: ["cen-ihdlgo87ai:cenrmap-bnh97kb3mn********"],
///     descriptionRegex: "datasource_test",
///     cenRegionId: "cn-hangzhou",
///     transmitDirection: "RegionIn",
///     status: "Active",
/// });
/// export const firstCenRouteMapId = _this.then(_this => _this.maps?.[0]?.routeMapId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// this = alicloud.cen.get_route_maps(cen_id="cen-ihdlgo87ai********",
///     ids=["cen-ihdlgo87ai:cenrmap-bnh97kb3mn********"],
///     description_regex="datasource_test",
///     cen_region_id="cn-hangzhou",
///     transmit_direction="RegionIn",
///     status="Active")
/// pulumi.export("firstCenRouteMapId", this.maps[0].route_map_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = AliCloud.Cen.GetRouteMaps.Invoke(new()
///     {
///         CenId = "cen-ihdlgo87ai********",
///         Ids = new[]
///         {
///             "cen-ihdlgo87ai:cenrmap-bnh97kb3mn********",
///         },
///         DescriptionRegex = "datasource_test",
///         CenRegionId = "cn-hangzhou",
///         TransmitDirection = "RegionIn",
///         Status = "Active",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenRouteMapId"] = @this.Apply(@this => @this.Apply(getRouteMapsResult => getRouteMapsResult.Maps[0]?.RouteMapId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		this, err := cen.GetRouteMaps(ctx, &cen.GetRouteMapsArgs{
/// 			CenId: "cen-ihdlgo87ai********",
/// 			Ids: []string{
/// 				"cen-ihdlgo87ai:cenrmap-bnh97kb3mn********",
/// 			},
/// 			DescriptionRegex:  pulumi.StringRef("datasource_test"),
/// 			CenRegionId:       pulumi.StringRef("cn-hangzhou"),
/// 			TransmitDirection: pulumi.StringRef("RegionIn"),
/// 			Status:            pulumi.StringRef("Active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenRouteMapId", this.Maps[0].RouteMapId)
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
/// import com.pulumi.alicloud.cen.inputs.GetRouteMapsArgs;
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
///         final var this = CenFunctions.getRouteMaps(GetRouteMapsArgs.builder()
///             .cenId("cen-ihdlgo87ai********")
///             .ids("cen-ihdlgo87ai:cenrmap-bnh97kb3mn********")
///             .descriptionRegex("datasource_test")
///             .cenRegionId("cn-hangzhou")
///             .transmitDirection("RegionIn")
///             .status("Active")
///             .build());
///
///         ctx.export("firstCenRouteMapId", this_.maps()[0].routeMapId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   this:
///     fn::invoke:
///       function: alicloud:cen:getRouteMaps
///       arguments:
///         cenId: cen-ihdlgo87ai********
///         ids:
///           - cen-ihdlgo87ai:cenrmap-bnh97kb3mn********
///         descriptionRegex: datasource_test
///         cenRegionId: cn-hangzhou
///         transmitDirection: RegionIn
///         status: Active
/// outputs:
///   firstCenRouteMapId: ${this.maps[0].routeMapId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_route_maps_get_route_maps_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteMapsResult> getRouteMaps(
  GetRouteMapsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getRouteMaps:getRouteMaps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteMapsResult.fromMap(result);
}

/// This data source provides CEN Route Service available to the user.
///
/// &gt; **NOTE:** Available in v1.102.0+
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const example = alicloud.cen.getRouteServices({
///     cenId: "cen-7qthudw0ll6jmc****",
/// });
/// export const firstCenRouteServiceId = example.then(example => example.services?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.cen.get_route_services(cen_id="cen-7qthudw0ll6jmc****")
/// pulumi.export("firstCenRouteServiceId", example.services[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Cen.GetRouteServices.Invoke(new()
///     {
///         CenId = "cen-7qthudw0ll6jmc****",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstCenRouteServiceId"] = example.Apply(getRouteServicesResult => getRouteServicesResult.Services[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cen.GetRouteServices(ctx, &cen.GetRouteServicesArgs{
/// 			CenId: "cen-7qthudw0ll6jmc****",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstCenRouteServiceId", example.Services[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetRouteServicesArgs;
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
///         final var example = CenFunctions.getRouteServices(GetRouteServicesArgs.builder()
///             .cenId("cen-7qthudw0ll6jmc****")
///             .build());
///
///         ctx.export("firstCenRouteServiceId", example.services()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:cen:getRouteServices
///       arguments:
///         cenId: cen-7qthudw0ll6jmc****
/// outputs:
///   firstCenRouteServiceId: ${example.services[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_route_services_get_route_services_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteServicesResult> getRouteServices(
  GetRouteServicesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getRouteServices:getRouteServices',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteServicesResult.fromMap(result);
}

/// This data source provides the Cen Traffic Marking Policies of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.173.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTrafficMarkingPolicies({
///     transitRouterId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const cenTrafficMarkingPolicyId1 = ids.then(ids => ids.policies?.[0]?.id);
/// const nameRegex = alicloud.cen.getTrafficMarkingPolicies({
///     transitRouterId: "example_value",
///     nameRegex: "^my-TrafficMarkingPolicy",
/// });
/// export const cenTrafficMarkingPolicyId2 = nameRegex.then(nameRegex => nameRegex.policies?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_traffic_marking_policies(transit_router_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("cenTrafficMarkingPolicyId1", ids.policies[0].id)
/// name_regex = alicloud.cen.get_traffic_marking_policies(transit_router_id="example_value",
///     name_regex="^my-TrafficMarkingPolicy")
/// pulumi.export("cenTrafficMarkingPolicyId2", name_regex.policies[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTrafficMarkingPolicies.Invoke(new()
///     {
///         TransitRouterId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Cen.GetTrafficMarkingPolicies.Invoke(new()
///     {
///         TransitRouterId = "example_value",
///         NameRegex = "^my-TrafficMarkingPolicy",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTrafficMarkingPolicyId1"] = ids.Apply(getTrafficMarkingPoliciesResult => getTrafficMarkingPoliciesResult.Policies[0]?.Id),
///         ["cenTrafficMarkingPolicyId2"] = nameRegex.Apply(getTrafficMarkingPoliciesResult => getTrafficMarkingPoliciesResult.Policies[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTrafficMarkingPolicies(ctx, &cen.GetTrafficMarkingPoliciesArgs{
/// 			TransitRouterId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTrafficMarkingPolicyId1", ids.Policies[0].Id)
/// 		nameRegex, err := cen.GetTrafficMarkingPolicies(ctx, &cen.GetTrafficMarkingPoliciesArgs{
/// 			TransitRouterId: "example_value",
/// 			NameRegex:       pulumi.StringRef("^my-TrafficMarkingPolicy"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTrafficMarkingPolicyId2", nameRegex.Policies[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTrafficMarkingPoliciesArgs;
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
///         final var ids = CenFunctions.getTrafficMarkingPolicies(GetTrafficMarkingPoliciesArgs.builder()
///             .transitRouterId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("cenTrafficMarkingPolicyId1", ids.policies()[0].id());
///         final var nameRegex = CenFunctions.getTrafficMarkingPolicies(GetTrafficMarkingPoliciesArgs.builder()
///             .transitRouterId("example_value")
///             .nameRegex("^my-TrafficMarkingPolicy")
///             .build());
///
///         ctx.export("cenTrafficMarkingPolicyId2", nameRegex.policies()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTrafficMarkingPolicies
///       arguments:
///         transitRouterId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cen:getTrafficMarkingPolicies
///       arguments:
///         transitRouterId: example_value
///         nameRegex: ^my-TrafficMarkingPolicy
/// outputs:
///   cenTrafficMarkingPolicyId1: ${ids.policies[0].id}
///   cenTrafficMarkingPolicyId2: ${nameRegex.policies[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_traffic_marking_policies_get_traffic_marking_policies_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMarkingPoliciesResult> getTrafficMarkingPolicies(
  GetTrafficMarkingPoliciesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTrafficMarkingPolicies:getTrafficMarkingPolicies',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMarkingPoliciesResult.fromMap(result);
}

/// This data source provides the Cen Transit Route Table Aggregations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.202.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTransitRouteTableAggregations({
///     ids: ["example_id"],
///     transitRouteTableId: "your_transit_route_table_id",
/// });
/// export const cenTransitRouterMulticastDomainId0 = ids.then(ids => ids.transitRouteTableAggregations?.[0]?.id);
/// const nameRegex = alicloud.cen.getTransitRouteTableAggregations({
///     nameRegex: "^my-name",
///     transitRouteTableId: "your_transit_route_table_id",
/// });
/// export const cenTransitRouterMulticastDomainId1 = nameRegex.then(nameRegex => nameRegex.transitRouteTableAggregations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_transit_route_table_aggregations(ids=["example_id"],
///     transit_route_table_id="your_transit_route_table_id")
/// pulumi.export("cenTransitRouterMulticastDomainId0", ids.transit_route_table_aggregations[0].id)
/// name_regex = alicloud.cen.get_transit_route_table_aggregations(name_regex="^my-name",
///     transit_route_table_id="your_transit_route_table_id")
/// pulumi.export("cenTransitRouterMulticastDomainId1", name_regex.transit_route_table_aggregations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTransitRouteTableAggregations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TransitRouteTableId = "your_transit_route_table_id",
///     });
///
///     var nameRegex = AliCloud.Cen.GetTransitRouteTableAggregations.Invoke(new()
///     {
///         NameRegex = "^my-name",
///         TransitRouteTableId = "your_transit_route_table_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterMulticastDomainId0"] = ids.Apply(getTransitRouteTableAggregationsResult => getTransitRouteTableAggregationsResult.TransitRouteTableAggregations[0]?.Id),
///         ["cenTransitRouterMulticastDomainId1"] = nameRegex.Apply(getTransitRouteTableAggregationsResult => getTransitRouteTableAggregationsResult.TransitRouteTableAggregations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTransitRouteTableAggregations(ctx, &cen.GetTransitRouteTableAggregationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TransitRouteTableId: "your_transit_route_table_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterMulticastDomainId0", ids.TransitRouteTableAggregations[0].Id)
/// 		nameRegex, err := cen.GetTransitRouteTableAggregations(ctx, &cen.GetTransitRouteTableAggregationsArgs{
/// 			NameRegex:           pulumi.StringRef("^my-name"),
/// 			TransitRouteTableId: "your_transit_route_table_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterMulticastDomainId1", nameRegex.TransitRouteTableAggregations[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouteTableAggregationsArgs;
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
///         final var ids = CenFunctions.getTransitRouteTableAggregations(GetTransitRouteTableAggregationsArgs.builder()
///             .ids("example_id")
///             .transitRouteTableId("your_transit_route_table_id")
///             .build());
///
///         ctx.export("cenTransitRouterMulticastDomainId0", ids.transitRouteTableAggregations()[0].id());
///         final var nameRegex = CenFunctions.getTransitRouteTableAggregations(GetTransitRouteTableAggregationsArgs.builder()
///             .nameRegex("^my-name")
///             .transitRouteTableId("your_transit_route_table_id")
///             .build());
///
///         ctx.export("cenTransitRouterMulticastDomainId1", nameRegex.transitRouteTableAggregations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouteTableAggregations
///       arguments:
///         ids:
///           - example_id
///         transitRouteTableId: your_transit_route_table_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouteTableAggregations
///       arguments:
///         nameRegex: ^my-name
///         transitRouteTableId: your_transit_route_table_id
/// outputs:
///   cenTransitRouterMulticastDomainId0: ${ids.transitRouteTableAggregations[0].id}
///   cenTransitRouterMulticastDomainId1: ${nameRegex.transitRouteTableAggregations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_route_table_aggregations_get_transit_route_table_aggregations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouteTableAggregationsResult> getTransitRouteTableAggregations(
  GetTransitRouteTableAggregationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouteTableAggregations:getTransitRouteTableAggregations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouteTableAggregationsResult.fromMap(result);
}

/// This data source provides the CEN Transit Router Available Resources of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.163.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTransitRouterAvailableResources({});
/// export const masterId = ids.then(ids => ids.resources?.[0]?.masterZones?.[0]);
/// export const slaveId = ids.then(ids => ids.resources?.[0]?.slaveZones?.[0]);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_transit_router_available_resources()
/// pulumi.export("masterId", ids.resources[0].master_zones[0])
/// pulumi.export("slaveId", ids.resources[0].slave_zones[0])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTransitRouterAvailableResources.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["masterId"] = ids.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.MasterZones[0]),
///         ["slaveId"] = ids.Apply(getTransitRouterAvailableResourcesResult => getTransitRouterAvailableResourcesResult.Resources[0]?.SlaveZones[0]),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTransitRouterAvailableResources(ctx, &cen.GetTransitRouterAvailableResourcesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("masterId", ids.Resources[0].MasterZones[0])
/// 		ctx.Export("slaveId", ids.Resources[0].SlaveZones[0])
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
///         final var ids = CenFunctions.getTransitRouterAvailableResources(GetTransitRouterAvailableResourcesArgs.builder()
///             .build());
///
///         ctx.export("masterId", ids.resources()[0].masterZones()[0]);
///         ctx.export("slaveId", ids.resources()[0].slaveZones()[0]);
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterAvailableResources
///       arguments: {}
/// outputs:
///   masterId: ${ids.resources[0].masterZones[0]}
///   slaveId: ${ids.resources[0].slaveZones[0]}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_available_resources_get_transit_router_available_resources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterAvailableResourcesResult>
getTransitRouterAvailableResources(
  GetTransitRouterAvailableResourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterAvailableResources:getTransitRouterAvailableResources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterAvailableResourcesResult.fromMap(result);
}

/// This data source provides the Cen Transit Router Cidrs of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.193.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTransitRouterCidrs({
///     ids: ["example_id"],
///     transitRouterId: "tr-6ehx7q2jze8ch5ji0****",
/// });
/// export const cenTransitRouterCidrId0 = ids.then(ids => ids.cidrs?.[0]?.id);
/// const nameRegex = alicloud.cen.getTransitRouterCidrs({
///     nameRegex: "^my-name",
///     transitRouterId: "tr-6ehx7q2jze8ch5ji0****",
/// });
/// export const cenTransitRouterCidrId1 = nameRegex.then(nameRegex => nameRegex.cidrs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_transit_router_cidrs(ids=["example_id"],
///     transit_router_id="tr-6ehx7q2jze8ch5ji0****")
/// pulumi.export("cenTransitRouterCidrId0", ids.cidrs[0].id)
/// name_regex = alicloud.cen.get_transit_router_cidrs(name_regex="^my-name",
///     transit_router_id="tr-6ehx7q2jze8ch5ji0****")
/// pulumi.export("cenTransitRouterCidrId1", name_regex.cidrs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTransitRouterCidrs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TransitRouterId = "tr-6ehx7q2jze8ch5ji0****",
///     });
///
///     var nameRegex = AliCloud.Cen.GetTransitRouterCidrs.Invoke(new()
///     {
///         NameRegex = "^my-name",
///         TransitRouterId = "tr-6ehx7q2jze8ch5ji0****",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterCidrId0"] = ids.Apply(getTransitRouterCidrsResult => getTransitRouterCidrsResult.Cidrs[0]?.Id),
///         ["cenTransitRouterCidrId1"] = nameRegex.Apply(getTransitRouterCidrsResult => getTransitRouterCidrsResult.Cidrs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTransitRouterCidrs(ctx, &cen.GetTransitRouterCidrsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TransitRouterId: "tr-6ehx7q2jze8ch5ji0****",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterCidrId0", ids.Cidrs[0].Id)
/// 		nameRegex, err := cen.GetTransitRouterCidrs(ctx, &cen.GetTransitRouterCidrsArgs{
/// 			NameRegex:       pulumi.StringRef("^my-name"),
/// 			TransitRouterId: "tr-6ehx7q2jze8ch5ji0****",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterCidrId1", nameRegex.Cidrs[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterCidrsArgs;
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
///         final var ids = CenFunctions.getTransitRouterCidrs(GetTransitRouterCidrsArgs.builder()
///             .ids("example_id")
///             .transitRouterId("tr-6ehx7q2jze8ch5ji0****")
///             .build());
///
///         ctx.export("cenTransitRouterCidrId0", ids.cidrs()[0].id());
///         final var nameRegex = CenFunctions.getTransitRouterCidrs(GetTransitRouterCidrsArgs.builder()
///             .nameRegex("^my-name")
///             .transitRouterId("tr-6ehx7q2jze8ch5ji0****")
///             .build());
///
///         ctx.export("cenTransitRouterCidrId1", nameRegex.cidrs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterCidrs
///       arguments:
///         ids:
///           - example_id
///         transitRouterId: tr-6ehx7q2jze8ch5ji0****
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterCidrs
///       arguments:
///         nameRegex: ^my-name
///         transitRouterId: tr-6ehx7q2jze8ch5ji0****
/// outputs:
///   cenTransitRouterCidrId0: ${ids.cidrs[0].id}
///   cenTransitRouterCidrId1: ${nameRegex.cidrs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_cidrs_get_transit_router_cidrs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterCidrsResult> getTransitRouterCidrs(
  GetTransitRouterCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterCidrs:getTransitRouterCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterCidrsResult.fromMap(result);
}

/// This data source provides the Cen Transit Router Multicast Domain Associations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTransitRouterMulticastDomainAssociations({
///     ids: ["example_id"],
///     transitRouterMulticastDomainId: "your_transit_router_multicast_domain_id",
/// });
/// export const cenTransitRouterMulticastDomainId0 = ids.then(ids => ids.associations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_transit_router_multicast_domain_associations(ids=["example_id"],
///     transit_router_multicast_domain_id="your_transit_router_multicast_domain_id")
/// pulumi.export("cenTransitRouterMulticastDomainId0", ids.associations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTransitRouterMulticastDomainAssociations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TransitRouterMulticastDomainId = "your_transit_router_multicast_domain_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterMulticastDomainId0"] = ids.Apply(getTransitRouterMulticastDomainAssociationsResult => getTransitRouterMulticastDomainAssociationsResult.Associations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTransitRouterMulticastDomainAssociations(ctx, &cen.GetTransitRouterMulticastDomainAssociationsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TransitRouterMulticastDomainId: "your_transit_router_multicast_domain_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterMulticastDomainId0", ids.Associations[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterMulticastDomainAssociationsArgs;
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
///         final var ids = CenFunctions.getTransitRouterMulticastDomainAssociations(GetTransitRouterMulticastDomainAssociationsArgs.builder()
///             .ids("example_id")
///             .transitRouterMulticastDomainId("your_transit_router_multicast_domain_id")
///             .build());
///
///         ctx.export("cenTransitRouterMulticastDomainId0", ids.associations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomainAssociations
///       arguments:
///         ids:
///           - example_id
///         transitRouterMulticastDomainId: your_transit_router_multicast_domain_id
/// outputs:
///   cenTransitRouterMulticastDomainId0: ${ids.associations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_multicast_domain_associations_get_transit_router_multicast_domain_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterMulticastDomainAssociationsResult>
getTransitRouterMulticastDomainAssociations(
  GetTransitRouterMulticastDomainAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterMulticastDomainAssociations:getTransitRouterMulticastDomainAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterMulticastDomainAssociationsResult.fromMap(result);
}

/// This data source provides Cen Transit Router Multicast Domain Member available to the user. [What is Transit Router Multicast Domain Member](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-registertransitroutermulticastgroupmembers)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterMulticastDomainMembers({
///     transitRouterMulticastDomainId: "tr-mcast-domain-2d9oq455uk533zfr29",
/// });
/// export const alicloudCenTransitRouterMulticastDomainMemberExampleId = _default.then(_default => _default.members?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_multicast_domain_members(transit_router_multicast_domain_id="tr-mcast-domain-2d9oq455uk533zfr29")
/// pulumi.export("alicloudCenTransitRouterMulticastDomainMemberExampleId", default.members[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterMulticastDomainMembers.Invoke(new()
///     {
///         TransitRouterMulticastDomainId = "tr-mcast-domain-2d9oq455uk533zfr29",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCenTransitRouterMulticastDomainMemberExampleId"] = @default.Apply(@default => @default.Apply(getTransitRouterMulticastDomainMembersResult => getTransitRouterMulticastDomainMembersResult.Members[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterMulticastDomainMembers(ctx, &cen.GetTransitRouterMulticastDomainMembersArgs{
/// 			TransitRouterMulticastDomainId: "tr-mcast-domain-2d9oq455uk533zfr29",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCenTransitRouterMulticastDomainMemberExampleId", _default.Members[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterMulticastDomainMembersArgs;
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
///         final var default = CenFunctions.getTransitRouterMulticastDomainMembers(GetTransitRouterMulticastDomainMembersArgs.builder()
///             .transitRouterMulticastDomainId("tr-mcast-domain-2d9oq455uk533zfr29")
///             .build());
///
///         ctx.export("alicloudCenTransitRouterMulticastDomainMemberExampleId", default_.members()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomainMembers
///       arguments:
///         transitRouterMulticastDomainId: tr-mcast-domain-2d9oq455uk533zfr29
/// outputs:
///   alicloudCenTransitRouterMulticastDomainMemberExampleId: ${default.members[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_multicast_domain_members_get_transit_router_multicast_domain_members_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterMulticastDomainMembersResult>
getTransitRouterMulticastDomainMembers(
  GetTransitRouterMulticastDomainMembersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterMulticastDomainMembers:getTransitRouterMulticastDomainMembers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterMulticastDomainMembersResult.fromMap(result);
}

/// This data source provides Cen Transit Router Multicast Domain Peer Member available to the user. [What is Transit Router Multicast Domain Peer Member](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-registertransitroutermulticastgroupmembers)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterMulticastDomainPeerMembers({
///     transitRouterMulticastDomainId: "tr-mcast-domain-2d9oq455uk533zfrxx",
/// });
/// export const alicloudCenTransitRouterMulticastDomainPeerMemberExampleId = _default.then(_default => _default.members?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_multicast_domain_peer_members(transit_router_multicast_domain_id="tr-mcast-domain-2d9oq455uk533zfrxx")
/// pulumi.export("alicloudCenTransitRouterMulticastDomainPeerMemberExampleId", default.members[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterMulticastDomainPeerMembers.Invoke(new()
///     {
///         TransitRouterMulticastDomainId = "tr-mcast-domain-2d9oq455uk533zfrxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCenTransitRouterMulticastDomainPeerMemberExampleId"] = @default.Apply(@default => @default.Apply(getTransitRouterMulticastDomainPeerMembersResult => getTransitRouterMulticastDomainPeerMembersResult.Members[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterMulticastDomainPeerMembers(ctx, &cen.GetTransitRouterMulticastDomainPeerMembersArgs{
/// 			TransitRouterMulticastDomainId: "tr-mcast-domain-2d9oq455uk533zfrxx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCenTransitRouterMulticastDomainPeerMemberExampleId", _default.Members[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterMulticastDomainPeerMembersArgs;
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
///         final var default = CenFunctions.getTransitRouterMulticastDomainPeerMembers(GetTransitRouterMulticastDomainPeerMembersArgs.builder()
///             .transitRouterMulticastDomainId("tr-mcast-domain-2d9oq455uk533zfrxx")
///             .build());
///
///         ctx.export("alicloudCenTransitRouterMulticastDomainPeerMemberExampleId", default_.members()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomainPeerMembers
///       arguments:
///         transitRouterMulticastDomainId: tr-mcast-domain-2d9oq455uk533zfrxx
/// outputs:
///   alicloudCenTransitRouterMulticastDomainPeerMemberExampleId: ${default.members[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_multicast_domain_peer_members_get_transit_router_multicast_domain_peer_members_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterMulticastDomainPeerMembersResult>
getTransitRouterMulticastDomainPeerMembers(
  GetTransitRouterMulticastDomainPeerMembersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterMulticastDomainPeerMembers:getTransitRouterMulticastDomainPeerMembers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterMulticastDomainPeerMembersResult.fromMap(result);
}

/// This data source provides Cen Transit Router Multicast Domain Source available to the user.[What is Transit Router Multicast Domain Source](https://www.alibabacloud.com/help/en/cen/developer-reference/api-cbn-2017-09-12-registertransitroutermulticastgroupsources)
///
/// &gt; **NOTE:** Available since v1.195.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterMulticastDomainSources({
///     transitRouterMulticastDomainId: "tr-mcast-domain-xxxxxx",
/// });
/// export const alicloudCenTransitRouterMulticastDomainSourceExampleId = _default.then(_default => _default.sources?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_multicast_domain_sources(transit_router_multicast_domain_id="tr-mcast-domain-xxxxxx")
/// pulumi.export("alicloudCenTransitRouterMulticastDomainSourceExampleId", default.sources[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterMulticastDomainSources.Invoke(new()
///     {
///         TransitRouterMulticastDomainId = "tr-mcast-domain-xxxxxx",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudCenTransitRouterMulticastDomainSourceExampleId"] = @default.Apply(@default => @default.Apply(getTransitRouterMulticastDomainSourcesResult => getTransitRouterMulticastDomainSourcesResult.Sources[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterMulticastDomainSources(ctx, &cen.GetTransitRouterMulticastDomainSourcesArgs{
/// 			TransitRouterMulticastDomainId: "tr-mcast-domain-xxxxxx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudCenTransitRouterMulticastDomainSourceExampleId", _default.Sources[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterMulticastDomainSourcesArgs;
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
///         final var default = CenFunctions.getTransitRouterMulticastDomainSources(GetTransitRouterMulticastDomainSourcesArgs.builder()
///             .transitRouterMulticastDomainId("tr-mcast-domain-xxxxxx")
///             .build());
///
///         ctx.export("alicloudCenTransitRouterMulticastDomainSourceExampleId", default_.sources()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomainSources
///       arguments:
///         transitRouterMulticastDomainId: tr-mcast-domain-xxxxxx
/// outputs:
///   alicloudCenTransitRouterMulticastDomainSourceExampleId: ${default.sources[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_multicast_domain_sources_get_transit_router_multicast_domain_sources_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterMulticastDomainSourcesResult>
getTransitRouterMulticastDomainSources(
  GetTransitRouterMulticastDomainSourcesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterMulticastDomainSources:getTransitRouterMulticastDomainSources',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterMulticastDomainSourcesResult.fromMap(result);
}

/// This data source provides the Cen Transit Router Multicast Domains of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.195.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.cen.getTransitRouterMulticastDomains({
///     ids: ["example_id"],
///     transitRouterId: "your_transit_router_id",
/// });
/// export const cenTransitRouterMulticastDomainId0 = ids.then(ids => ids.domains?.[0]?.id);
/// const nameRegex = alicloud.cen.getTransitRouterMulticastDomains({
///     nameRegex: "^my-name",
///     transitRouterId: "your_transit_router_id",
/// });
/// export const cenTransitRouterMulticastDomainId1 = nameRegex.then(nameRegex => nameRegex.domains?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.cen.get_transit_router_multicast_domains(ids=["example_id"],
///     transit_router_id="your_transit_router_id")
/// pulumi.export("cenTransitRouterMulticastDomainId0", ids.domains[0].id)
/// name_regex = alicloud.cen.get_transit_router_multicast_domains(name_regex="^my-name",
///     transit_router_id="your_transit_router_id")
/// pulumi.export("cenTransitRouterMulticastDomainId1", name_regex.domains[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Cen.GetTransitRouterMulticastDomains.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TransitRouterId = "your_transit_router_id",
///     });
///
///     var nameRegex = AliCloud.Cen.GetTransitRouterMulticastDomains.Invoke(new()
///     {
///         NameRegex = "^my-name",
///         TransitRouterId = "your_transit_router_id",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterMulticastDomainId0"] = ids.Apply(getTransitRouterMulticastDomainsResult => getTransitRouterMulticastDomainsResult.Domains[0]?.Id),
///         ["cenTransitRouterMulticastDomainId1"] = nameRegex.Apply(getTransitRouterMulticastDomainsResult => getTransitRouterMulticastDomainsResult.Domains[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := cen.GetTransitRouterMulticastDomains(ctx, &cen.GetTransitRouterMulticastDomainsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TransitRouterId: "your_transit_router_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterMulticastDomainId0", ids.Domains[0].Id)
/// 		nameRegex, err := cen.GetTransitRouterMulticastDomains(ctx, &cen.GetTransitRouterMulticastDomainsArgs{
/// 			NameRegex:       pulumi.StringRef("^my-name"),
/// 			TransitRouterId: "your_transit_router_id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterMulticastDomainId1", nameRegex.Domains[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterMulticastDomainsArgs;
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
///         final var ids = CenFunctions.getTransitRouterMulticastDomains(GetTransitRouterMulticastDomainsArgs.builder()
///             .ids("example_id")
///             .transitRouterId("your_transit_router_id")
///             .build());
///
///         ctx.export("cenTransitRouterMulticastDomainId0", ids.domains()[0].id());
///         final var nameRegex = CenFunctions.getTransitRouterMulticastDomains(GetTransitRouterMulticastDomainsArgs.builder()
///             .nameRegex("^my-name")
///             .transitRouterId("your_transit_router_id")
///             .build());
///
///         ctx.export("cenTransitRouterMulticastDomainId1", nameRegex.domains()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomains
///       arguments:
///         ids:
///           - example_id
///         transitRouterId: your_transit_router_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterMulticastDomains
///       arguments:
///         nameRegex: ^my-name
///         transitRouterId: your_transit_router_id
/// outputs:
///   cenTransitRouterMulticastDomainId0: ${ids.domains[0].id}
///   cenTransitRouterMulticastDomainId1: ${nameRegex.domains[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_multicast_domains_get_transit_router_multicast_domains_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterMulticastDomainsResult> getTransitRouterMulticastDomains(
  GetTransitRouterMulticastDomainsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterMulticastDomains:getTransitRouterMulticastDomains',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterMulticastDomainsResult.fromMap(result);
}

/// This data source provides CEN Transit Router peer attachments available to the user.
///
/// &gt; **NOTE:** Available in 1.128.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterPeerAttachments({
///     cenId: "cen-id1",
/// });
/// export const firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType = _default.then(_default => _default.transitRouterAttachments[0].resourceType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_peer_attachments(cen_id="cen-id1")
/// pulumi.export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", default.transit_router_attachments[0]["resourceType"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterPeerAttachments.Invoke(new()
///     {
///         CenId = "cen-id1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType"] = @default.Apply(@default => @default.Apply(getTransitRouterPeerAttachmentsResult => getTransitRouterPeerAttachmentsResult.TransitRouterAttachments[0].ResourceType)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterPeerAttachments(ctx, &cen.GetTransitRouterPeerAttachmentsArgs{
/// 			CenId: "cen-id1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", _default.TransitRouterAttachments[0].ResourceType)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterPeerAttachmentsArgs;
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
///         final var default = CenFunctions.getTransitRouterPeerAttachments(GetTransitRouterPeerAttachmentsArgs.builder()
///             .cenId("cen-id1")
///             .build());
///
///         ctx.export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", default_.transitRouterAttachments()[0].resourceType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterPeerAttachments
///       arguments:
///         cenId: cen-id1
/// outputs:
///   firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType: ${default.transitRouterAttachments[0].resourceType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_peer_attachments_get_transit_router_peer_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterPeerAttachmentsResult> getTransitRouterPeerAttachments(
  GetTransitRouterPeerAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterPeerAttachments:getTransitRouterPeerAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterPeerAttachmentsResult.fromMap(result);
}

/// This data source provides the Cen Transit Router Prefix List Associations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available in v1.188.0+.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterPrefixListAssociations({
///     transitRouterId: "tr-6ehx7q2jze8ch5ji0****",
///     transitRouterTableId: "vtb-6ehgc262hr170qgyc****",
/// });
/// export const cenTransitRouterPrefixListAssociationId = _default.then(_default => _default.associations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_prefix_list_associations(transit_router_id="tr-6ehx7q2jze8ch5ji0****",
///     transit_router_table_id="vtb-6ehgc262hr170qgyc****")
/// pulumi.export("cenTransitRouterPrefixListAssociationId", default.associations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterPrefixListAssociations.Invoke(new()
///     {
///         TransitRouterId = "tr-6ehx7q2jze8ch5ji0****",
///         TransitRouterTableId = "vtb-6ehgc262hr170qgyc****",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterPrefixListAssociationId"] = @default.Apply(@default => @default.Apply(getTransitRouterPrefixListAssociationsResult => getTransitRouterPrefixListAssociationsResult.Associations[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterPrefixListAssociations(ctx, &cen.GetTransitRouterPrefixListAssociationsArgs{
/// 			TransitRouterId:      "tr-6ehx7q2jze8ch5ji0****",
/// 			TransitRouterTableId: "vtb-6ehgc262hr170qgyc****",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("cenTransitRouterPrefixListAssociationId", _default.Associations[0].Id)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterPrefixListAssociationsArgs;
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
///         final var default = CenFunctions.getTransitRouterPrefixListAssociations(GetTransitRouterPrefixListAssociationsArgs.builder()
///             .transitRouterId("tr-6ehx7q2jze8ch5ji0****")
///             .transitRouterTableId("vtb-6ehgc262hr170qgyc****")
///             .build());
///
///         ctx.export("cenTransitRouterPrefixListAssociationId", default_.associations()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterPrefixListAssociations
///       arguments:
///         transitRouterId: tr-6ehx7q2jze8ch5ji0****
///         transitRouterTableId: vtb-6ehgc262hr170qgyc****
/// outputs:
///   cenTransitRouterPrefixListAssociationId: ${default.associations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_prefix_list_associations_get_transit_router_prefix_list_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterPrefixListAssociationsResult>
getTransitRouterPrefixListAssociations(
  GetTransitRouterPrefixListAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterPrefixListAssociations:getTransitRouterPrefixListAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterPrefixListAssociationsResult.fromMap(result);
}

/// This data source provides CEN Transit Router Route Entries available to the user.[What is Cen Transit Router Route Entries](https://help.aliyun.com/document_detail/260941.html)
///
/// &gt; **NOTE:** Available in 1.126.0+
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_route_entries_get_transit_router_route_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterRouteEntriesResult> getTransitRouterRouteEntries(
  GetTransitRouterRouteEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterRouteEntries:getTransitRouterRouteEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterRouteEntriesResult.fromMap(result);
}

/// This data source provides CEN Transit Router Route Table Associations available to the user.[What is Cen Transit Router Route Table Associations](https://help.aliyun.com/document_detail/261243.html)
///
/// &gt; **NOTE:** Available in 1.126.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterRouteTableAssociations({
///     transitRouterRouteTableId: "rtb-id1",
/// });
/// export const firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType = _default.then(_default => _default.associations?.[0]?.resourceType);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_route_table_associations(transit_router_route_table_id="rtb-id1")
/// pulumi.export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", default.associations[0].resource_type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterRouteTableAssociations.Invoke(new()
///     {
///         TransitRouterRouteTableId = "rtb-id1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType"] = @default.Apply(@default => @default.Apply(getTransitRouterRouteTableAssociationsResult => getTransitRouterRouteTableAssociationsResult.Associations[0]?.ResourceType)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterRouteTableAssociations(ctx, &cen.GetTransitRouterRouteTableAssociationsArgs{
/// 			TransitRouterRouteTableId: pulumi.StringRef("rtb-id1"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", _default.Associations[0].ResourceType)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterRouteTableAssociationsArgs;
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
///         final var default = CenFunctions.getTransitRouterRouteTableAssociations(GetTransitRouterRouteTableAssociationsArgs.builder()
///             .transitRouterRouteTableId("rtb-id1")
///             .build());
///
///         ctx.export("firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType", default_.associations()[0].resourceType());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterRouteTableAssociations
///       arguments:
///         transitRouterRouteTableId: rtb-id1
/// outputs:
///   firstTransitRouterPeerAttachmentsTransitRouterAttachmentResourceType: ${default.associations[0].resourceType}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_route_table_associations_get_transit_router_route_table_associations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterRouteTableAssociationsResult>
getTransitRouterRouteTableAssociations(
  GetTransitRouterRouteTableAssociationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterRouteTableAssociations:getTransitRouterRouteTableAssociations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterRouteTableAssociationsResult.fromMap(result);
}

/// This data source provides the CEN Transit Router Route Table Propagations of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.126.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.expressconnect.getPhysicalConnections({
///     nameRegex: "^preserved-NODELETING",
/// });
/// const defaultInteger = new random.index.Integer("default", {
///     min: 1,
///     max: 2999,
/// });
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {cenId: defaultInstance.id});
/// const defaultVirtualBorderRouter = new alicloud.expressconnect.VirtualBorderRouter("default", {
///     localGatewayIp: "10.0.0.1",
///     peerGatewayIp: "10.0.0.2",
///     peeringSubnetMask: "255.255.255.252",
///     physicalConnectionId: _default.then(_default => _default.connections?.[0]?.id),
///     virtualBorderRouterName: name,
///     vlanId: defaultInteger.id,
///     minRxInterval: 1000,
///     minTxInterval: 1000,
///     detectMultiplier: 10,
/// });
/// const defaultTransitRouterVbrAttachment = new alicloud.cen.TransitRouterVbrAttachment("default", {
///     cenId: defaultInstance.id,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     vbrId: defaultVirtualBorderRouter.id,
///     autoPublishRouteEnabled: true,
///     transitRouterAttachmentName: name,
///     transitRouterAttachmentDescription: name,
/// });
/// const defaultTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("default", {
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     transitRouterRouteTableName: name,
/// });
/// const defaultTransitRouterRouteTablePropagation = new alicloud.cen.TransitRouterRouteTablePropagation("default", {
///     transitRouterAttachmentId: defaultTransitRouterVbrAttachment.transitRouterAttachmentId,
///     transitRouterRouteTableId: defaultTransitRouterRouteTable.transitRouterRouteTableId,
/// });
/// const ids = alicloud.cen.getTransitRouterRouteTablePropagationsOutput({
///     transitRouterRouteTableId: defaultTransitRouterRouteTablePropagation.transitRouterRouteTableId,
///     ids: [defaultTransitRouterRouteTablePropagation.transitRouterAttachmentId],
/// });
/// export const cenTransitRouterRouteTablePropagationId0 = ids.apply(ids => ids.propagations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.expressconnect.get_physical_connections(name_regex="^preserved-NODELETING")
/// default_integer = random.index.Integer("default",
///     min=1,
///     max=2999)
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default", cen_id=default_instance.id)
/// default_virtual_border_router = alicloud.expressconnect.VirtualBorderRouter("default",
///     local_gateway_ip="10.0.0.1",
///     peer_gateway_ip="10.0.0.2",
///     peering_subnet_mask="255.255.255.252",
///     physical_connection_id=default.connections[0].id,
///     virtual_border_router_name=name,
///     vlan_id=default_integer["id"],
///     min_rx_interval=1000,
///     min_tx_interval=1000,
///     detect_multiplier=10)
/// default_transit_router_vbr_attachment = alicloud.cen.TransitRouterVbrAttachment("default",
///     cen_id=default_instance.id,
///     transit_router_id=default_transit_router.transit_router_id,
///     vbr_id=default_virtual_border_router.id,
///     auto_publish_route_enabled=True,
///     transit_router_attachment_name=name,
///     transit_router_attachment_description=name)
/// default_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("default",
///     transit_router_id=default_transit_router.transit_router_id,
///     transit_router_route_table_name=name)
/// default_transit_router_route_table_propagation = alicloud.cen.TransitRouterRouteTablePropagation("default",
///     transit_router_attachment_id=default_transit_router_vbr_attachment.transit_router_attachment_id,
///     transit_router_route_table_id=default_transit_router_route_table.transit_router_route_table_id)
/// ids = alicloud.cen.get_transit_router_route_table_propagations_output(transit_router_route_table_id=default_transit_router_route_table_propagation.transit_router_route_table_id,
///     ids=[default_transit_router_route_table_propagation.transit_router_attachment_id])
/// pulumi.export("cenTransitRouterRouteTablePropagationId0", ids.propagations[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.ExpressConnect.GetPhysicalConnections.Invoke(new()
///     {
///         NameRegex = "^preserved-NODELETING",
///     });
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 1,
///         Max = 2999,
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
///         CenId = defaultInstance.Id,
///     });
///
///     var defaultVirtualBorderRouter = new AliCloud.ExpressConnect.VirtualBorderRouter("default", new()
///     {
///         LocalGatewayIp = "10.0.0.1",
///         PeerGatewayIp = "10.0.0.2",
///         PeeringSubnetMask = "255.255.255.252",
///         PhysicalConnectionId = @default.Apply(@default => @default.Apply(getPhysicalConnectionsResult => getPhysicalConnectionsResult.Connections[0]?.Id)),
///         VirtualBorderRouterName = name,
///         VlanId = defaultInteger.Id,
///         MinRxInterval = 1000,
///         MinTxInterval = 1000,
///         DetectMultiplier = 10,
///     });
///
///     var defaultTransitRouterVbrAttachment = new AliCloud.Cen.TransitRouterVbrAttachment("default", new()
///     {
///         CenId = defaultInstance.Id,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         VbrId = defaultVirtualBorderRouter.Id,
///         AutoPublishRouteEnabled = true,
///         TransitRouterAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///     });
///
///     var defaultTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         TransitRouterRouteTableName = name,
///     });
///
///     var defaultTransitRouterRouteTablePropagation = new AliCloud.Cen.TransitRouterRouteTablePropagation("default", new()
///     {
///         TransitRouterAttachmentId = defaultTransitRouterVbrAttachment.TransitRouterAttachmentId,
///         TransitRouterRouteTableId = defaultTransitRouterRouteTable.TransitRouterRouteTableId,
///     });
///
///     var ids = AliCloud.Cen.GetTransitRouterRouteTablePropagations.Invoke(new()
///     {
///         TransitRouterRouteTableId = defaultTransitRouterRouteTablePropagation.TransitRouterRouteTableId,
///         Ids = new[]
///         {
///             defaultTransitRouterRouteTablePropagation.TransitRouterAttachmentId,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterRouteTablePropagationId0"] = ids.Apply(getTransitRouterRouteTablePropagationsResult => getTransitRouterRouteTablePropagationsResult.Propagations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/expressconnect"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
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
/// 		_default, err := expressconnect.GetPhysicalConnections(ctx, &expressconnect.GetPhysicalConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^preserved-NODELETING"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 1,
/// 			Max: 2999,
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
/// 			CenId: defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVirtualBorderRouter, err := expressconnect.NewVirtualBorderRouter(ctx, "default", &expressconnect.VirtualBorderRouterArgs{
/// 			LocalGatewayIp:          pulumi.String("10.0.0.1"),
/// 			PeerGatewayIp:           pulumi.String("10.0.0.2"),
/// 			PeeringSubnetMask:       pulumi.String("255.255.255.252"),
/// 			PhysicalConnectionId:    pulumi.String(_default.Connections[0].Id),
/// 			VirtualBorderRouterName: pulumi.String(name),
/// 			VlanId:                  defaultInteger.Id,
/// 			MinRxInterval:           pulumi.Int(1000),
/// 			MinTxInterval:           pulumi.Int(1000),
/// 			DetectMultiplier:        pulumi.Int(10),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVbrAttachment, err := cen.NewTransitRouterVbrAttachment(ctx, "default", &cen.TransitRouterVbrAttachmentArgs{
/// 			CenId:                              defaultInstance.ID(),
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			VbrId:                              defaultVirtualBorderRouter.ID(),
/// 			AutoPublishRouteEnabled:            pulumi.Bool(true),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "default", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId:             defaultTransitRouter.TransitRouterId,
/// 			TransitRouterRouteTableName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterRouteTablePropagation, err := cen.NewTransitRouterRouteTablePropagation(ctx, "default", &cen.TransitRouterRouteTablePropagationArgs{
/// 			TransitRouterAttachmentId: defaultTransitRouterVbrAttachment.TransitRouterAttachmentId,
/// 			TransitRouterRouteTableId: defaultTransitRouterRouteTable.TransitRouterRouteTableId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cen.GetTransitRouterRouteTablePropagationsOutput(ctx, cen.GetTransitRouterRouteTablePropagationsOutputArgs{
/// 			TransitRouterRouteTableId: defaultTransitRouterRouteTablePropagation.TransitRouterRouteTableId,
/// 			Ids: pulumi.StringArray{
/// 				defaultTransitRouterRouteTablePropagation.TransitRouterAttachmentId,
/// 			},
/// 		}, nil)
/// 		ctx.Export("cenTransitRouterRouteTablePropagationId0", ids.ApplyT(func(ids cen.GetTransitRouterRouteTablePropagationsResult) (*string, error) {
/// 			return &ids.Propagations[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouter;
/// import com.pulumi.alicloud.expressconnect.VirtualBorderRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVbrAttachmentArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTablePropagation;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTablePropagationArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterRouteTablePropagationsArgs;
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
///         final var default = ExpressconnectFunctions.getPhysicalConnections(GetPhysicalConnectionsArgs.builder()
///             .nameRegex("^preserved-NODELETING")
///             .build());
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(1)
///             .max(2999)
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .build());
///
///         var defaultVirtualBorderRouter = new VirtualBorderRouter("defaultVirtualBorderRouter", VirtualBorderRouterArgs.builder()
///             .localGatewayIp("10.0.0.1")
///             .peerGatewayIp("10.0.0.2")
///             .peeringSubnetMask("255.255.255.252")
///             .physicalConnectionId(default_.connections()[0].id())
///             .virtualBorderRouterName(name)
///             .vlanId(defaultInteger.id())
///             .minRxInterval(1000)
///             .minTxInterval(1000)
///             .detectMultiplier(10)
///             .build());
///
///         var defaultTransitRouterVbrAttachment = new TransitRouterVbrAttachment("defaultTransitRouterVbrAttachment", TransitRouterVbrAttachmentArgs.builder()
///             .cenId(defaultInstance.id())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .vbrId(defaultVirtualBorderRouter.id())
///             .autoPublishRouteEnabled(true)
///             .transitRouterAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .build());
///
///         var defaultTransitRouterRouteTable = new TransitRouterRouteTable("defaultTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .transitRouterRouteTableName(name)
///             .build());
///
///         var defaultTransitRouterRouteTablePropagation = new TransitRouterRouteTablePropagation("defaultTransitRouterRouteTablePropagation", TransitRouterRouteTablePropagationArgs.builder()
///             .transitRouterAttachmentId(defaultTransitRouterVbrAttachment.transitRouterAttachmentId())
///             .transitRouterRouteTableId(defaultTransitRouterRouteTable.transitRouterRouteTableId())
///             .build());
///
///         final var ids = CenFunctions.getTransitRouterRouteTablePropagations(GetTransitRouterRouteTablePropagationsArgs.builder()
///             .transitRouterRouteTableId(defaultTransitRouterRouteTablePropagation.transitRouterRouteTableId())
///             .ids(defaultTransitRouterRouteTablePropagation.transitRouterAttachmentId())
///             .build());
///
///         ctx.export("cenTransitRouterRouteTablePropagationId0", ids.applyValue(_ids -> _ids.propagations()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 1
///       max: 2999
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
///       cenId: ${defaultInstance.id}
///   defaultVirtualBorderRouter:
///     type: alicloud:expressconnect:VirtualBorderRouter
///     name: default
///     properties:
///       localGatewayIp: 10.0.0.1
///       peerGatewayIp: 10.0.0.2
///       peeringSubnetMask: 255.255.255.252
///       physicalConnectionId: ${default.connections[0].id}
///       virtualBorderRouterName: ${name}
///       vlanId: ${defaultInteger.id}
///       minRxInterval: 1000
///       minTxInterval: 1000
///       detectMultiplier: 10
///   defaultTransitRouterVbrAttachment:
///     type: alicloud:cen:TransitRouterVbrAttachment
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       vbrId: ${defaultVirtualBorderRouter.id}
///       autoPublishRouteEnabled: true
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///   defaultTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterRouteTableName: ${name}
///   defaultTransitRouterRouteTablePropagation:
///     type: alicloud:cen:TransitRouterRouteTablePropagation
///     name: default
///     properties:
///       transitRouterAttachmentId: ${defaultTransitRouterVbrAttachment.transitRouterAttachmentId}
///       transitRouterRouteTableId: ${defaultTransitRouterRouteTable.transitRouterRouteTableId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:expressconnect:getPhysicalConnections
///       arguments:
///         nameRegex: ^preserved-NODELETING
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterRouteTablePropagations
///       arguments:
///         transitRouterRouteTableId: ${defaultTransitRouterRouteTablePropagation.transitRouterRouteTableId}
///         ids:
///           - ${defaultTransitRouterRouteTablePropagation.transitRouterAttachmentId}
/// outputs:
///   cenTransitRouterRouteTablePropagationId0: ${ids.propagations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_route_table_propagations_get_transit_router_route_table_propagations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterRouteTablePropagationsResult>
getTransitRouterRouteTablePropagations(
  GetTransitRouterRouteTablePropagationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterRouteTablePropagations:getTransitRouterRouteTablePropagations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterRouteTablePropagationsResult.fromMap(result);
}

/// This data source provides the CEN Transit Router Route Tables of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.126.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {
///     cenId: _default.id,
///     transitRouterName: name,
/// });
/// const defaultTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("default", {
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     transitRouterRouteTableDescription: name,
///     transitRouterRouteTableName: name,
/// });
/// const ids = alicloud.cen.getTransitRouterRouteTablesOutput({
///     transitRouterId: defaultTransitRouterRouteTable.transitRouterId,
///     ids: [defaultTransitRouterRouteTable.transitRouterRouteTableId],
/// });
/// export const cenTransitRouterRouteTableId0 = ids.apply(ids => ids.tables?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default",
///     cen_id=default.id,
///     transit_router_name=name)
/// default_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("default",
///     transit_router_id=default_transit_router.transit_router_id,
///     transit_router_route_table_description=name,
///     transit_router_route_table_name=name)
/// ids = alicloud.cen.get_transit_router_route_tables_output(transit_router_id=default_transit_router_route_table.transit_router_id,
///     ids=[default_transit_router_route_table.transit_router_route_table_id])
/// pulumi.export("cenTransitRouterRouteTableId0", ids.tables[0].id)
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
///     var @default = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///         ProtectionLevel = "REDUCED",
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = @default.Id,
///         TransitRouterName = name,
///     });
///
///     var defaultTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("default", new()
///     {
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         TransitRouterRouteTableDescription = name,
///         TransitRouterRouteTableName = name,
///     });
///
///     var ids = AliCloud.Cen.GetTransitRouterRouteTables.Invoke(new()
///     {
///         TransitRouterId = defaultTransitRouterRouteTable.TransitRouterId,
///         Ids = new[]
///         {
///             defaultTransitRouterRouteTable.TransitRouterRouteTableId,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterRouteTableId0"] = ids.Apply(getTransitRouterRouteTablesResult => getTransitRouterRouteTablesResult.Tables[0]?.Id),
///     };
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
/// 		_default, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 			ProtectionLevel: pulumi.String("REDUCED"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId:             _default.ID(),
/// 			TransitRouterName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "default", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			TransitRouterRouteTableDescription: pulumi.String(name),
/// 			TransitRouterRouteTableName:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cen.GetTransitRouterRouteTablesOutput(ctx, cen.GetTransitRouterRouteTablesOutputArgs{
/// 			TransitRouterId: defaultTransitRouterRouteTable.TransitRouterId,
/// 			Ids: pulumi.StringArray{
/// 				defaultTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			},
/// 		}, nil)
/// 		ctx.Export("cenTransitRouterRouteTableId0", ids.ApplyT(func(ids cen.GetTransitRouterRouteTablesResult) (*string, error) {
/// 			return &ids.Tables[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterRouteTablesArgs;
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
///         var default_ = new Instance("default", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(default_.id())
///             .transitRouterName(name)
///             .build());
///
///         var defaultTransitRouterRouteTable = new TransitRouterRouteTable("defaultTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .transitRouterRouteTableDescription(name)
///             .transitRouterRouteTableName(name)
///             .build());
///
///         final var ids = CenFunctions.getTransitRouterRouteTables(GetTransitRouterRouteTablesArgs.builder()
///             .transitRouterId(defaultTransitRouterRouteTable.transitRouterId())
///             .ids(defaultTransitRouterRouteTable.transitRouterRouteTableId())
///             .build());
///
///         ctx.export("cenTransitRouterRouteTableId0", ids.applyValue(_ids -> _ids.tables()[0].id()));
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
///       transitRouterName: ${name}
///   defaultTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: default
///     properties:
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterRouteTableDescription: ${name}
///       transitRouterRouteTableName: ${name}
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterRouteTables
///       arguments:
///         transitRouterId: ${defaultTransitRouterRouteTable.transitRouterId}
///         ids:
///           - ${defaultTransitRouterRouteTable.transitRouterRouteTableId}
/// outputs:
///   cenTransitRouterRouteTableId0: ${ids.tables[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_route_tables_get_transit_router_route_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterRouteTablesResult> getTransitRouterRouteTables(
  GetTransitRouterRouteTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterRouteTables:getTransitRouterRouteTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterRouteTablesResult.fromMap(result);
}

/// Using this data source can open CEN Transit Router Service automatically. If the service has been opened, it will return opened.
///
/// For information about CEN and how to use it, see [What is CEN](https://www.alibabacloud.com/help/en/doc-detail/59870.htm).
///
/// &gt; **NOTE:** Available since v1.139.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const open = alicloud.cen.getTransitRouterService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.cen.get_transit_router_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Cen.GetTransitRouterService.Invoke(new()
///     {
///         Enable = "On",
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cen.GetTransitRouterService(ctx, &cen.GetTransitRouterServiceArgs{
/// 			Enable: pulumi.StringRef("On"),
/// 		}, nil)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterServiceArgs;
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
///         final var open = CenFunctions.getTransitRouterService(GetTransitRouterServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   open:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_service_get_transit_router_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterServiceResult> getTransitRouterService(
  GetTransitRouterServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterService:getTransitRouterService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterServiceResult.fromMap(result);
}

/// This data source provides CEN Transit Router VBR Attachments available to the user.[What is Cen Transit Router VBR Attachments](https://help.aliyun.com/document_detail/261226.html)
///
/// &gt; **NOTE:** Available in 1.126.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouterVbrAttachments({
///     cenId: "cen-id1",
/// });
/// export const firstTransitRouterVbrAttachmentsVbrId = _default.then(_default => _default.transitRouterAttachments[0].vbrId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_router_vbr_attachments(cen_id="cen-id1")
/// pulumi.export("firstTransitRouterVbrAttachmentsVbrId", default.transit_router_attachments[0]["vbrId"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouterVbrAttachments.Invoke(new()
///     {
///         CenId = "cen-id1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTransitRouterVbrAttachmentsVbrId"] = @default.Apply(@default => @default.Apply(getTransitRouterVbrAttachmentsResult => getTransitRouterVbrAttachmentsResult.TransitRouterAttachments[0].VbrId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouterVbrAttachments(ctx, &cen.GetTransitRouterVbrAttachmentsArgs{
/// 			CenId: "cen-id1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTransitRouterVbrAttachmentsVbrId", _default.TransitRouterAttachments[0].VbrId)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterVbrAttachmentsArgs;
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
///         final var default = CenFunctions.getTransitRouterVbrAttachments(GetTransitRouterVbrAttachmentsArgs.builder()
///             .cenId("cen-id1")
///             .build());
///
///         ctx.export("firstTransitRouterVbrAttachmentsVbrId", default_.transitRouterAttachments()[0].vbrId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterVbrAttachments
///       arguments:
///         cenId: cen-id1
/// outputs:
///   firstTransitRouterVbrAttachmentsVbrId: ${default.transitRouterAttachments[0].vbrId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_vbr_attachments_get_transit_router_vbr_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterVbrAttachmentsResult> getTransitRouterVbrAttachments(
  GetTransitRouterVbrAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterVbrAttachments:getTransitRouterVbrAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterVbrAttachmentsResult.fromMap(result);
}

/// This data source provides the CEN Transit Router VPC Attachments of the current Alibaba Cloud user.
///
/// &gt; **NOTE:** Available since v1.126.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getZones({});
/// const defaultGetNetworks = alicloud.vpc.getNetworks({
///     nameRegex: "^default-NODELETING$",
/// });
/// const defaultGetSwitches = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[0],
/// }));
/// const defaultMaster = Promise.all([defaultGetNetworks, _default]).then(([defaultGetNetworks, _default]) => alicloud.vpc.getSwitches({
///     vpcId: defaultGetNetworks.ids?.[0],
///     zoneId: _default.ids?.[1],
/// }));
/// const defaultInstance = new alicloud.cen.Instance("default", {
///     cenInstanceName: name,
///     protectionLevel: "REDUCED",
/// });
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {cenId: defaultInstance.id});
/// const defaultTransitRouterVpcAttachment = new alicloud.cen.TransitRouterVpcAttachment("default", {
///     cenId: defaultInstance.id,
///     vpcId: defaultGetNetworks.then(defaultGetNetworks => defaultGetNetworks.ids?.[0]),
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     transitRouterAttachmentName: name,
///     transitRouterAttachmentDescription: name,
///     zoneMappings: [
///         {
///             vswitchId: defaultMaster.then(defaultMaster => defaultMaster.vswitches?.[0]?.id),
///             zoneId: defaultMaster.then(defaultMaster => defaultMaster.vswitches?.[0]?.zoneId),
///         },
///         {
///             vswitchId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.id),
///             zoneId: defaultGetSwitches.then(defaultGetSwitches => defaultGetSwitches.vswitches?.[0]?.zoneId),
///         },
///     ],
/// });
/// const ids = alicloud.cen.getTransitRouterVpcAttachmentsOutput({
///     ids: [defaultTransitRouterVpcAttachment.id],
///     cenId: defaultInstance.id,
/// });
/// export const cenTransitRouterVpcAttachmentsId0 = ids.apply(ids => ids.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_zones()
/// default_get_networks = alicloud.vpc.get_networks(name_regex="^default-NODELETING$")
/// default_get_switches = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[0])
/// default_master = alicloud.vpc.get_switches(vpc_id=default_get_networks.ids[0],
///     zone_id=default.ids[1])
/// default_instance = alicloud.cen.Instance("default",
///     cen_instance_name=name,
///     protection_level="REDUCED")
/// default_transit_router = alicloud.cen.TransitRouter("default", cen_id=default_instance.id)
/// default_transit_router_vpc_attachment = alicloud.cen.TransitRouterVpcAttachment("default",
///     cen_id=default_instance.id,
///     vpc_id=default_get_networks.ids[0],
///     transit_router_id=default_transit_router.transit_router_id,
///     transit_router_attachment_name=name,
///     transit_router_attachment_description=name,
///     zone_mappings=[
///         {
///             "vswitch_id": default_master.vswitches[0].id,
///             "zone_id": default_master.vswitches[0].zone_id,
///         },
///         {
///             "vswitch_id": default_get_switches.vswitches[0].id,
///             "zone_id": default_get_switches.vswitches[0].zone_id,
///         },
///     ])
/// ids = alicloud.cen.get_transit_router_vpc_attachments_output(ids=[default_transit_router_vpc_attachment.id],
///     cen_id=default_instance.id)
/// pulumi.export("cenTransitRouterVpcAttachmentsId0", ids.attachments[0].id)
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
///     var @default = AliCloud.GetZones.Invoke();
///
///     var defaultGetNetworks = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         NameRegex = "^default-NODELETING$",
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[0]),
///     });
///
///     var defaultMaster = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         ZoneId = @default.Apply(getZonesResult => getZonesResult.Ids[1]),
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
///         CenId = defaultInstance.Id,
///     });
///
///     var defaultTransitRouterVpcAttachment = new AliCloud.Cen.TransitRouterVpcAttachment("default", new()
///     {
///         CenId = defaultInstance.Id,
///         VpcId = defaultGetNetworks.Apply(getNetworksResult => getNetworksResult.Ids[0]),
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         TransitRouterAttachmentName = name,
///         TransitRouterAttachmentDescription = name,
///         ZoneMappings = new[]
///         {
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = defaultMaster.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///                 ZoneId = defaultMaster.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///             },
///             new AliCloud.Cen.Inputs.TransitRouterVpcAttachmentZoneMappingArgs
///             {
///                 VswitchId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.Id),
///                 ZoneId = defaultGetSwitches.Apply(getSwitchesResult => getSwitchesResult.Vswitches[0]?.ZoneId),
///             },
///         },
///     });
///
///     var ids = AliCloud.Cen.GetTransitRouterVpcAttachments.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultTransitRouterVpcAttachment.Id,
///         },
///         CenId = defaultInstance.Id,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterVpcAttachmentsId0"] = ids.Apply(getTransitRouterVpcAttachmentsResult => getTransitRouterVpcAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
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
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetNetworks, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			NameRegex: pulumi.StringRef("^default-NODELETING$"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetSwitches, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[0]),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultMaster, err := vpc.GetSwitches(ctx, &vpc.GetSwitchesArgs{
/// 			VpcId:  pulumi.StringRef(defaultGetNetworks.Ids[0]),
/// 			ZoneId: pulumi.StringRef(_default.Ids[1]),
/// 		}, nil)
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
/// 			CenId: defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVpcAttachment, err := cen.NewTransitRouterVpcAttachment(ctx, "default", &cen.TransitRouterVpcAttachmentArgs{
/// 			CenId:                              defaultInstance.ID(),
/// 			VpcId:                              pulumi.String(defaultGetNetworks.Ids[0]),
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			ZoneMappings: cen.TransitRouterVpcAttachmentZoneMappingArray{
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					VswitchId: pulumi.String(defaultMaster.Vswitches[0].Id),
/// 					ZoneId:    pulumi.String(defaultMaster.Vswitches[0].ZoneId),
/// 				},
/// 				&cen.TransitRouterVpcAttachmentZoneMappingArgs{
/// 					VswitchId: pulumi.String(defaultGetSwitches.Vswitches[0].Id),
/// 					ZoneId:    pulumi.String(defaultGetSwitches.Vswitches[0].ZoneId),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := cen.GetTransitRouterVpcAttachmentsOutput(ctx, cen.GetTransitRouterVpcAttachmentsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultTransitRouterVpcAttachment.ID(),
/// 			},
/// 			CenId: defaultInstance.ID(),
/// 		}, nil)
/// 		ctx.Export("cenTransitRouterVpcAttachmentsId0", ids.ApplyT(func(ids cen.GetTransitRouterVpcAttachmentsResult) (*string, error) {
/// 			return &ids.Attachments[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.inputs.GetZonesArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpcAttachmentArgs;
/// import com.pulumi.alicloud.cen.inputs.TransitRouterVpcAttachmentZoneMappingArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterVpcAttachmentsArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         final var defaultGetNetworks = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .nameRegex("^default-NODELETING$")
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[0])
///             .build());
///
///         final var defaultMaster = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .vpcId(defaultGetNetworks.ids()[0])
///             .zoneId(default_.ids()[1])
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .protectionLevel("REDUCED")
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .build());
///
///         var defaultTransitRouterVpcAttachment = new TransitRouterVpcAttachment("defaultTransitRouterVpcAttachment", TransitRouterVpcAttachmentArgs.builder()
///             .cenId(defaultInstance.id())
///             .vpcId(defaultGetNetworks.ids()[0])
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .transitRouterAttachmentName(name)
///             .transitRouterAttachmentDescription(name)
///             .zoneMappings(
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(defaultMaster.vswitches()[0].id())
///                     .zoneId(defaultMaster.vswitches()[0].zoneId())
///                     .build(),
///                 TransitRouterVpcAttachmentZoneMappingArgs.builder()
///                     .vswitchId(defaultGetSwitches.vswitches()[0].id())
///                     .zoneId(defaultGetSwitches.vswitches()[0].zoneId())
///                     .build())
///             .build());
///
///         final var ids = CenFunctions.getTransitRouterVpcAttachments(GetTransitRouterVpcAttachmentsArgs.builder()
///             .ids(defaultTransitRouterVpcAttachment.id())
///             .cenId(defaultInstance.id())
///             .build());
///
///         ctx.export("cenTransitRouterVpcAttachmentsId0", ids.applyValue(_ids -> _ids.attachments()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
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
///       cenId: ${defaultInstance.id}
///   defaultTransitRouterVpcAttachment:
///     type: alicloud:cen:TransitRouterVpcAttachment
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///       vpcId: ${defaultGetNetworks.ids[0]}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       transitRouterAttachmentName: ${name}
///       transitRouterAttachmentDescription: ${name}
///       zoneMappings:
///         - vswitchId: ${defaultMaster.vswitches[0].id}
///           zoneId: ${defaultMaster.vswitches[0].zoneId}
///         - vswitchId: ${defaultGetSwitches.vswitches[0].id}
///           zoneId: ${defaultGetSwitches.vswitches[0].zoneId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
///   defaultGetNetworks:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         nameRegex: ^default-NODELETING$
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[0]}
///   defaultMaster:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         vpcId: ${defaultGetNetworks.ids[0]}
///         zoneId: ${default.ids[1]}
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterVpcAttachments
///       arguments:
///         ids:
///           - ${defaultTransitRouterVpcAttachment.id}
///         cenId: ${defaultInstance.id}
/// outputs:
///   cenTransitRouterVpcAttachmentsId0: ${ids.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_vpc_attachments_get_transit_router_vpc_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterVpcAttachmentsResult> getTransitRouterVpcAttachments(
  GetTransitRouterVpcAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterVpcAttachments:getTransitRouterVpcAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterVpcAttachmentsResult.fromMap(result);
}

/// This data source provides Cen Transit Router Vpn Attachment available to the user.[What is Transit Router Vpn Attachment](https://next.api.alibabacloud.com/document/Cbn/2017-09-12/CreateTransitRouterVpnAttachment)
///
/// &gt; **NOTE:** Available since v1.183.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.getAccount({});
/// const defaultInstance = new alicloud.cen.Instance("default", {cenInstanceName: name});
/// const defaultTransitRouter = new alicloud.cen.TransitRouter("default", {cenId: defaultInstance.id});
/// const defaultTransitRouterCidr = new alicloud.cen.TransitRouterCidr("default", {
///     cidr: "192.168.10.0/24",
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     publishCidrRoute: true,
/// });
/// const defaultCustomerGateway = new alicloud.vpn.CustomerGateway("default", {
///     ipAddress: "1.1.1.8",
///     customerGatewayName: name,
/// }, {
///     dependsOn: [defaultTransitRouterCidr],
/// });
/// const defaultGatewayVpnAttachment = new alicloud.vpn.GatewayVpnAttachment("default", {
///     networkType: "public",
///     localSubnet: "0.0.0.0/0",
///     enableTunnelsBgp: false,
///     vpnAttachmentName: name,
///     tunnelOptionsSpecifications: [
///         {
///             customerGatewayId: defaultCustomerGateway.id,
///             enableDpd: true,
///             enableNatTraversal: true,
///             tunnelIndex: 1,
///             tunnelIkeConfig: {
///                 remoteId: "2.2.2.2",
///                 ikeEncAlg: "aes",
///                 ikeMode: "main",
///                 ikeVersion: "ikev1",
///                 localId: "1.1.1.1",
///                 ikeAuthAlg: "md5",
///                 ikeLifetime: 86100,
///                 ikePfs: "group2",
///                 psk: "12345678",
///             },
///             tunnelIpsecConfig: {
///                 ipsecAuthAlg: "md5",
///                 ipsecEncAlg: "aes",
///                 ipsecLifetime: 86200,
///                 ipsecPfs: "group5",
///             },
///         },
///         {
///             enableNatTraversal: true,
///             tunnelIndex: 2,
///             tunnelIkeConfig: {
///                 localId: "4.4.4.4",
///                 remoteId: "5.5.5.5",
///                 ikeLifetime: 86400,
///                 ikePfs: "group5",
///                 ikeMode: "main",
///                 ikeVersion: "ikev2",
///                 psk: "32333442",
///                 ikeAuthAlg: "md5",
///                 ikeEncAlg: "aes",
///             },
///             tunnelIpsecConfig: {
///                 ipsecEncAlg: "aes",
///                 ipsecLifetime: 86400,
///                 ipsecPfs: "group5",
///                 ipsecAuthAlg: "sha256",
///             },
///             customerGatewayId: defaultCustomerGateway.id,
///             enableDpd: true,
///         },
///     ],
///     remoteSubnet: "0.0.0.0/0",
/// });
/// const defaultTransitRouterVpnAttachment = new alicloud.cen.TransitRouterVpnAttachment("default", {
///     autoPublishRouteEnabled: false,
///     transitRouterAttachmentDescription: name,
///     transitRouterAttachmentName: name,
///     cenId: defaultTransitRouter.cenId,
///     transitRouterId: defaultTransitRouter.transitRouterId,
///     vpnId: defaultGatewayVpnAttachment.id,
///     vpnOwnerId: _default.then(_default => _default.id),
///     chargeType: "POSTPAY",
///     tags: {
///         Created: "TF",
///         For: "VpnAttachment",
///     },
/// });
/// const ids = pulumi.all([defaultTransitRouterVpnAttachment.id, defaultTransitRouterVpnAttachment.cenId, defaultTransitRouterVpnAttachment.transitRouterId]).apply(([id, cenId, transitRouterId]) => alicloud.cen.getTransitRouterVpnAttachmentsOutput({
///     ids: [id],
///     cenId: cenId,
///     transitRouterId: transitRouterId,
/// }));
/// export const cenTransitRouterVpnAttachmentId0 = ids.apply(ids => ids.attachments?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.get_account()
/// default_instance = alicloud.cen.Instance("default", cen_instance_name=name)
/// default_transit_router = alicloud.cen.TransitRouter("default", cen_id=default_instance.id)
/// default_transit_router_cidr = alicloud.cen.TransitRouterCidr("default",
///     cidr="192.168.10.0/24",
///     transit_router_id=default_transit_router.transit_router_id,
///     publish_cidr_route=True)
/// default_customer_gateway = alicloud.vpn.CustomerGateway("default",
///     ip_address="1.1.1.8",
///     customer_gateway_name=name,
///     opts = pulumi.ResourceOptions(depends_on=[default_transit_router_cidr]))
/// default_gateway_vpn_attachment = alicloud.vpn.GatewayVpnAttachment("default",
///     network_type="public",
///     local_subnet="0.0.0.0/0",
///     enable_tunnels_bgp=False,
///     vpn_attachment_name=name,
///     tunnel_options_specifications=[
///         {
///             "customer_gateway_id": default_customer_gateway.id,
///             "enable_dpd": True,
///             "enable_nat_traversal": True,
///             "tunnel_index": 1,
///             "tunnel_ike_config": {
///                 "remote_id": "2.2.2.2",
///                 "ike_enc_alg": "aes",
///                 "ike_mode": "main",
///                 "ike_version": "ikev1",
///                 "local_id": "1.1.1.1",
///                 "ike_auth_alg": "md5",
///                 "ike_lifetime": 86100,
///                 "ike_pfs": "group2",
///                 "psk": "12345678",
///             },
///             "tunnel_ipsec_config": {
///                 "ipsec_auth_alg": "md5",
///                 "ipsec_enc_alg": "aes",
///                 "ipsec_lifetime": 86200,
///                 "ipsec_pfs": "group5",
///             },
///         },
///         {
///             "enable_nat_traversal": True,
///             "tunnel_index": 2,
///             "tunnel_ike_config": {
///                 "local_id": "4.4.4.4",
///                 "remote_id": "5.5.5.5",
///                 "ike_lifetime": 86400,
///                 "ike_pfs": "group5",
///                 "ike_mode": "main",
///                 "ike_version": "ikev2",
///                 "psk": "32333442",
///                 "ike_auth_alg": "md5",
///                 "ike_enc_alg": "aes",
///             },
///             "tunnel_ipsec_config": {
///                 "ipsec_enc_alg": "aes",
///                 "ipsec_lifetime": 86400,
///                 "ipsec_pfs": "group5",
///                 "ipsec_auth_alg": "sha256",
///             },
///             "customer_gateway_id": default_customer_gateway.id,
///             "enable_dpd": True,
///         },
///     ],
///     remote_subnet="0.0.0.0/0")
/// default_transit_router_vpn_attachment = alicloud.cen.TransitRouterVpnAttachment("default",
///     auto_publish_route_enabled=False,
///     transit_router_attachment_description=name,
///     transit_router_attachment_name=name,
///     cen_id=default_transit_router.cen_id,
///     transit_router_id=default_transit_router.transit_router_id,
///     vpn_id=default_gateway_vpn_attachment.id,
///     vpn_owner_id=default.id,
///     charge_type="POSTPAY",
///     tags={
///         "Created": "TF",
///         "For": "VpnAttachment",
///     })
/// ids = pulumi.Output.all(
///     id=default_transit_router_vpn_attachment.id,
///     cen_id=default_transit_router_vpn_attachment.cen_id,
///     transit_router_id=default_transit_router_vpn_attachment.transit_router_id
/// ).apply(lambda resolved_outputs: alicloud.cen.get_transit_router_vpn_attachments_output(ids=[resolved_outputs['id']],
///     cen_id=resolved_outputs['cen_id'],
///     transit_router_id=resolved_outputs['transit_router_id']))
///
/// pulumi.export("cenTransitRouterVpnAttachmentId0", ids.attachments[0].id)
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
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultInstance = new AliCloud.Cen.Instance("default", new()
///     {
///         CenInstanceName = name,
///     });
///
///     var defaultTransitRouter = new AliCloud.Cen.TransitRouter("default", new()
///     {
///         CenId = defaultInstance.Id,
///     });
///
///     var defaultTransitRouterCidr = new AliCloud.Cen.TransitRouterCidr("default", new()
///     {
///         Cidr = "192.168.10.0/24",
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         PublishCidrRoute = true,
///     });
///
///     var defaultCustomerGateway = new AliCloud.Vpn.CustomerGateway("default", new()
///     {
///         IpAddress = "1.1.1.8",
///         CustomerGatewayName = name,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultTransitRouterCidr,
///         },
///     });
///
///     var defaultGatewayVpnAttachment = new AliCloud.Vpn.GatewayVpnAttachment("default", new()
///     {
///         NetworkType = "public",
///         LocalSubnet = "0.0.0.0/0",
///         EnableTunnelsBgp = false,
///         VpnAttachmentName = name,
///         TunnelOptionsSpecifications = new[]
///         {
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 CustomerGatewayId = defaultCustomerGateway.Id,
///                 EnableDpd = true,
///                 EnableNatTraversal = true,
///                 TunnelIndex = 1,
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     RemoteId = "2.2.2.2",
///                     IkeEncAlg = "aes",
///                     IkeMode = "main",
///                     IkeVersion = "ikev1",
///                     LocalId = "1.1.1.1",
///                     IkeAuthAlg = "md5",
///                     IkeLifetime = 86100,
///                     IkePfs = "group2",
///                     Psk = "12345678",
///                 },
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecAuthAlg = "md5",
///                     IpsecEncAlg = "aes",
///                     IpsecLifetime = 86200,
///                     IpsecPfs = "group5",
///                 },
///             },
///             new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs
///             {
///                 EnableNatTraversal = true,
///                 TunnelIndex = 2,
///                 TunnelIkeConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs
///                 {
///                     LocalId = "4.4.4.4",
///                     RemoteId = "5.5.5.5",
///                     IkeLifetime = 86400,
///                     IkePfs = "group5",
///                     IkeMode = "main",
///                     IkeVersion = "ikev2",
///                     Psk = "32333442",
///                     IkeAuthAlg = "md5",
///                     IkeEncAlg = "aes",
///                 },
///                 TunnelIpsecConfig = new AliCloud.Vpn.Inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs
///                 {
///                     IpsecEncAlg = "aes",
///                     IpsecLifetime = 86400,
///                     IpsecPfs = "group5",
///                     IpsecAuthAlg = "sha256",
///                 },
///                 CustomerGatewayId = defaultCustomerGateway.Id,
///                 EnableDpd = true,
///             },
///         },
///         RemoteSubnet = "0.0.0.0/0",
///     });
///
///     var defaultTransitRouterVpnAttachment = new AliCloud.Cen.TransitRouterVpnAttachment("default", new()
///     {
///         AutoPublishRouteEnabled = false,
///         TransitRouterAttachmentDescription = name,
///         TransitRouterAttachmentName = name,
///         CenId = defaultTransitRouter.CenId,
///         TransitRouterId = defaultTransitRouter.TransitRouterId,
///         VpnId = defaultGatewayVpnAttachment.Id,
///         VpnOwnerId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         ChargeType = "POSTPAY",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "VpnAttachment" },
///         },
///     });
///
///     var ids = AliCloud.Cen.GetTransitRouterVpnAttachments.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultTransitRouterVpnAttachment.Id,
///         },
///         CenId = defaultTransitRouterVpnAttachment.CenId,
///         TransitRouterId = defaultTransitRouterVpnAttachment.TransitRouterId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["cenTransitRouterVpnAttachmentId0"] = ids.Apply(getTransitRouterVpnAttachmentsResult => getTransitRouterVpnAttachmentsResult.Attachments[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpn"
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := cen.NewInstance(ctx, "default", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouter, err := cen.NewTransitRouter(ctx, "default", &cen.TransitRouterArgs{
/// 			CenId: defaultInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterCidr, err := cen.NewTransitRouterCidr(ctx, "default", &cen.TransitRouterCidrArgs{
/// 			Cidr:             pulumi.String("192.168.10.0/24"),
/// 			TransitRouterId:  defaultTransitRouter.TransitRouterId,
/// 			PublishCidrRoute: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultCustomerGateway, err := vpn.NewCustomerGateway(ctx, "default", &vpn.CustomerGatewayArgs{
/// 			IpAddress:           pulumi.String("1.1.1.8"),
/// 			CustomerGatewayName: pulumi.String(name),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultTransitRouterCidr,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGatewayVpnAttachment, err := vpn.NewGatewayVpnAttachment(ctx, "default", &vpn.GatewayVpnAttachmentArgs{
/// 			NetworkType:       pulumi.String("public"),
/// 			LocalSubnet:       pulumi.String("0.0.0.0/0"),
/// 			EnableTunnelsBgp:  pulumi.Bool(false),
/// 			VpnAttachmentName: pulumi.String(name),
/// 			TunnelOptionsSpecifications: vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArray{
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					CustomerGatewayId:  defaultCustomerGateway.ID(),
/// 					EnableDpd:          pulumi.Bool(true),
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(1),
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						RemoteId:    pulumi.String("2.2.2.2"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 						IkeMode:     pulumi.String("main"),
/// 						IkeVersion:  pulumi.String("ikev1"),
/// 						LocalId:     pulumi.String("1.1.1.1"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeLifetime: pulumi.Int(86100),
/// 						IkePfs:      pulumi.String("group2"),
/// 						Psk:         pulumi.String("12345678"),
/// 					},
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecAuthAlg:  pulumi.String("md5"),
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 						IpsecLifetime: pulumi.Int(86200),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 					},
/// 				},
/// 				&vpn.GatewayVpnAttachmentTunnelOptionsSpecificationArgs{
/// 					EnableNatTraversal: pulumi.Bool(true),
/// 					TunnelIndex:        pulumi.Int(2),
/// 					TunnelIkeConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs{
/// 						LocalId:     pulumi.String("4.4.4.4"),
/// 						RemoteId:    pulumi.String("5.5.5.5"),
/// 						IkeLifetime: pulumi.Int(86400),
/// 						IkePfs:      pulumi.String("group5"),
/// 						IkeMode:     pulumi.String("main"),
/// 						IkeVersion:  pulumi.String("ikev2"),
/// 						Psk:         pulumi.String("32333442"),
/// 						IkeAuthAlg:  pulumi.String("md5"),
/// 						IkeEncAlg:   pulumi.String("aes"),
/// 					},
/// 					TunnelIpsecConfig: &vpn.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs{
/// 						IpsecEncAlg:   pulumi.String("aes"),
/// 						IpsecLifetime: pulumi.Int(86400),
/// 						IpsecPfs:      pulumi.String("group5"),
/// 						IpsecAuthAlg:  pulumi.String("sha256"),
/// 					},
/// 					CustomerGatewayId: defaultCustomerGateway.ID(),
/// 					EnableDpd:         pulumi.Bool(true),
/// 				},
/// 			},
/// 			RemoteSubnet: pulumi.String("0.0.0.0/0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTransitRouterVpnAttachment, err := cen.NewTransitRouterVpnAttachment(ctx, "default", &cen.TransitRouterVpnAttachmentArgs{
/// 			AutoPublishRouteEnabled:            pulumi.Bool(false),
/// 			TransitRouterAttachmentDescription: pulumi.String(name),
/// 			TransitRouterAttachmentName:        pulumi.String(name),
/// 			CenId:                              defaultTransitRouter.CenId,
/// 			TransitRouterId:                    defaultTransitRouter.TransitRouterId,
/// 			VpnId:                              defaultGatewayVpnAttachment.ID(),
/// 			VpnOwnerId:                         pulumi.String(_default.Id),
/// 			ChargeType:                         pulumi.String("POSTPAY"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("VpnAttachment"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ids := pulumi.All(defaultTransitRouterVpnAttachment.ID(), defaultTransitRouterVpnAttachment.CenId, defaultTransitRouterVpnAttachment.TransitRouterId).ApplyT(func(_args []interface{}) (cen.GetTransitRouterVpnAttachmentsResult, error) {
/// 			id := _args[0].(string)
/// 			cenId := _args[1].(string)
/// 			transitRouterId := _args[2].(*string)
/// 			return cen.GetTransitRouterVpnAttachmentsResult(interface{}(cen.GetTransitRouterVpnAttachments(ctx, &cen.GetTransitRouterVpnAttachmentsArgs{
/// 				Ids: []string{
/// 					id,
/// 				},
/// 				CenId:           pulumi.StringRef(pulumi.StringRef(cenId)),
/// 				TransitRouterId: pulumi.StringRef(pulumi.StringRef(transitRouterId)),
/// 			}, nil))), nil
/// 		}).(cen.GetTransitRouterVpnAttachmentsResultOutput)
/// 		ctx.Export("cenTransitRouterVpnAttachmentId0", ids.ApplyT(func(ids cen.GetTransitRouterVpnAttachmentsResult) (*string, error) {
/// 			return &ids.Attachments[0].Id, nil
/// 		}).(pulumi.StringPtrOutput))
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterCidr;
/// import com.pulumi.alicloud.cen.TransitRouterCidrArgs;
/// import com.pulumi.alicloud.vpn.CustomerGateway;
/// import com.pulumi.alicloud.vpn.CustomerGatewayArgs;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachment;
/// import com.pulumi.alicloud.vpn.GatewayVpnAttachmentArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs;
/// import com.pulumi.alicloud.vpn.inputs.GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachment;
/// import com.pulumi.alicloud.cen.TransitRouterVpnAttachmentArgs;
/// import com.pulumi.alicloud.cen.CenFunctions;
/// import com.pulumi.alicloud.cen.inputs.GetTransitRouterVpnAttachmentsArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .cenInstanceName(name)
///             .build());
///
///         var defaultTransitRouter = new TransitRouter("defaultTransitRouter", TransitRouterArgs.builder()
///             .cenId(defaultInstance.id())
///             .build());
///
///         var defaultTransitRouterCidr = new TransitRouterCidr("defaultTransitRouterCidr", TransitRouterCidrArgs.builder()
///             .cidr("192.168.10.0/24")
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .publishCidrRoute(true)
///             .build());
///
///         var defaultCustomerGateway = new CustomerGateway("defaultCustomerGateway", CustomerGatewayArgs.builder()
///             .ipAddress("1.1.1.8")
///             .customerGatewayName(name)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultTransitRouterCidr)
///                 .build());
///
///         var defaultGatewayVpnAttachment = new GatewayVpnAttachment("defaultGatewayVpnAttachment", GatewayVpnAttachmentArgs.builder()
///             .networkType("public")
///             .localSubnet("0.0.0.0/0")
///             .enableTunnelsBgp(false)
///             .vpnAttachmentName(name)
///             .tunnelOptionsSpecifications(
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .customerGatewayId(defaultCustomerGateway.id())
///                     .enableDpd(true)
///                     .enableNatTraversal(true)
///                     .tunnelIndex(1)
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .remoteId("2.2.2.2")
///                         .ikeEncAlg("aes")
///                         .ikeMode("main")
///                         .ikeVersion("ikev1")
///                         .localId("1.1.1.1")
///                         .ikeAuthAlg("md5")
///                         .ikeLifetime(86100)
///                         .ikePfs("group2")
///                         .psk("12345678")
///                         .build())
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecAuthAlg("md5")
///                         .ipsecEncAlg("aes")
///                         .ipsecLifetime(86200)
///                         .ipsecPfs("group5")
///                         .build())
///                     .build(),
///                 GatewayVpnAttachmentTunnelOptionsSpecificationArgs.builder()
///                     .enableNatTraversal(true)
///                     .tunnelIndex(2)
///                     .tunnelIkeConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfigArgs.builder()
///                         .localId("4.4.4.4")
///                         .remoteId("5.5.5.5")
///                         .ikeLifetime(86400)
///                         .ikePfs("group5")
///                         .ikeMode("main")
///                         .ikeVersion("ikev2")
///                         .psk("32333442")
///                         .ikeAuthAlg("md5")
///                         .ikeEncAlg("aes")
///                         .build())
///                     .tunnelIpsecConfig(GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfigArgs.builder()
///                         .ipsecEncAlg("aes")
///                         .ipsecLifetime(86400)
///                         .ipsecPfs("group5")
///                         .ipsecAuthAlg("sha256")
///                         .build())
///                     .customerGatewayId(defaultCustomerGateway.id())
///                     .enableDpd(true)
///                     .build())
///             .remoteSubnet("0.0.0.0/0")
///             .build());
///
///         var defaultTransitRouterVpnAttachment = new TransitRouterVpnAttachment("defaultTransitRouterVpnAttachment", TransitRouterVpnAttachmentArgs.builder()
///             .autoPublishRouteEnabled(false)
///             .transitRouterAttachmentDescription(name)
///             .transitRouterAttachmentName(name)
///             .cenId(defaultTransitRouter.cenId())
///             .transitRouterId(defaultTransitRouter.transitRouterId())
///             .vpnId(defaultGatewayVpnAttachment.id())
///             .vpnOwnerId(default_.id())
///             .chargeType("POSTPAY")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "VpnAttachment")
///             ))
///             .build());
///
///         final var ids = Output.tuple(defaultTransitRouterVpnAttachment.id(), defaultTransitRouterVpnAttachment.cenId(), defaultTransitRouterVpnAttachment.transitRouterId()).applyValue(values -> {
///             var id = values.t1;
///             var cenId = values.t2;
///             var transitRouterId = values.t3;
///             return CenFunctions.getTransitRouterVpnAttachments(GetTransitRouterVpnAttachmentsArgs.builder()
///                 .ids(id)
///                 .cenId(cenId)
///                 .transitRouterId(transitRouterId)
///                 .build());
///         });
///
///         ctx.export("cenTransitRouterVpnAttachmentId0", ids.applyValue(_ids -> _ids.attachments()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultInstance:
///     type: alicloud:cen:Instance
///     name: default
///     properties:
///       cenInstanceName: ${name}
///   defaultTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: default
///     properties:
///       cenId: ${defaultInstance.id}
///   defaultTransitRouterCidr:
///     type: alicloud:cen:TransitRouterCidr
///     name: default
///     properties:
///       cidr: 192.168.10.0/24
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       publishCidrRoute: true
///   defaultCustomerGateway:
///     type: alicloud:vpn:CustomerGateway
///     name: default
///     properties:
///       ipAddress: 1.1.1.8
///       customerGatewayName: ${name}
///     options:
///       dependsOn:
///         - ${defaultTransitRouterCidr}
///   defaultGatewayVpnAttachment:
///     type: alicloud:vpn:GatewayVpnAttachment
///     name: default
///     properties:
///       networkType: public
///       localSubnet: 0.0.0.0/0
///       enableTunnelsBgp: 'false'
///       vpnAttachmentName: ${name}
///       tunnelOptionsSpecifications:
///         - customerGatewayId: ${defaultCustomerGateway.id}
///           enableDpd: 'true'
///           enableNatTraversal: 'true'
///           tunnelIndex: '1'
///           tunnelIkeConfig:
///             remoteId: 2.2.2.2
///             ikeEncAlg: aes
///             ikeMode: main
///             ikeVersion: ikev1
///             localId: 1.1.1.1
///             ikeAuthAlg: md5
///             ikeLifetime: '86100'
///             ikePfs: group2
///             psk: '12345678'
///           tunnelIpsecConfig:
///             ipsecAuthAlg: md5
///             ipsecEncAlg: aes
///             ipsecLifetime: '86200'
///             ipsecPfs: group5
///         - enableNatTraversal: 'true'
///           tunnelIndex: '2'
///           tunnelIkeConfig:
///             localId: 4.4.4.4
///             remoteId: 5.5.5.5
///             ikeLifetime: '86400'
///             ikePfs: group5
///             ikeMode: main
///             ikeVersion: ikev2
///             psk: '32333442'
///             ikeAuthAlg: md5
///             ikeEncAlg: aes
///           tunnelIpsecConfig:
///             ipsecEncAlg: aes
///             ipsecLifetime: '86400'
///             ipsecPfs: group5
///             ipsecAuthAlg: sha256
///           customerGatewayId: ${defaultCustomerGateway.id}
///           enableDpd: 'true'
///       remoteSubnet: 0.0.0.0/0
///   defaultTransitRouterVpnAttachment:
///     type: alicloud:cen:TransitRouterVpnAttachment
///     name: default
///     properties:
///       autoPublishRouteEnabled: false
///       transitRouterAttachmentDescription: ${name}
///       transitRouterAttachmentName: ${name}
///       cenId: ${defaultTransitRouter.cenId}
///       transitRouterId: ${defaultTransitRouter.transitRouterId}
///       vpnId: ${defaultGatewayVpnAttachment.id}
///       vpnOwnerId: ${default.id}
///       chargeType: POSTPAY
///       tags:
///         Created: TF
///         For: VpnAttachment
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
///   ids:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouterVpnAttachments
///       arguments:
///         ids:
///           - ${defaultTransitRouterVpnAttachment.id}
///         cenId: ${defaultTransitRouterVpnAttachment.cenId}
///         transitRouterId: ${defaultTransitRouterVpnAttachment.transitRouterId}
/// outputs:
///   cenTransitRouterVpnAttachmentId0: ${ids.attachments[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_router_vpn_attachments_get_transit_router_vpn_attachments_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRouterVpnAttachmentsResult> getTransitRouterVpnAttachments(
  GetTransitRouterVpnAttachmentsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouterVpnAttachments:getTransitRouterVpnAttachments',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRouterVpnAttachmentsResult.fromMap(result);
}

/// This data source provides CEN Transit Routers available to the user.[What is Cen Transit Routers](https://help.aliyun.com/document_detail/261219.html)
///
/// &gt; **NOTE:** Available in 1.126.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.cen.getTransitRouters({
///     cenId: "cen-id1",
/// });
/// export const firstTransitRoutersType = _default.then(_default => _default.transitRouters?.[0]?.type);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.cen.get_transit_routers(cen_id="cen-id1")
/// pulumi.export("firstTransitRoutersType", default.transit_routers[0].type)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Cen.GetTransitRouters.Invoke(new()
///     {
///         CenId = "cen-id1",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstTransitRoutersType"] = @default.Apply(@default => @default.Apply(getTransitRoutersResult => getTransitRoutersResult.TransitRouters[0]?.Type)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cen"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := cen.GetTransitRouters(ctx, &cen.GetTransitRoutersArgs{
/// 			CenId: "cen-id1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstTransitRoutersType", _default.TransitRouters[0].Type)
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
/// import com.pulumi.alicloud.cen.inputs.GetTransitRoutersArgs;
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
///         final var default = CenFunctions.getTransitRouters(GetTransitRoutersArgs.builder()
///             .cenId("cen-id1")
///             .build());
///
///         ctx.export("firstTransitRoutersType", default_.transitRouters()[0].type());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:cen:getTransitRouters
///       arguments:
///         cenId: cen-id1
/// outputs:
///   firstTransitRoutersType: ${default.transitRouters[0].type}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_transit_routers_get_transit_routers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTransitRoutersResult> getTransitRouters(
  GetTransitRoutersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getTransitRouters:getTransitRouters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTransitRoutersResult.fromMap(result);
}

/// This data source provides CEN VBR Health Checks available to the user.
///
/// &gt; **NOTE:** Available in 1.98.0+
/// [args] Arguments passed to this invoke. {@macro pulumi_cen_get_vbr_health_checks_get_vbr_health_checks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVbrHealthChecksResult> getVbrHealthChecks(
  GetVbrHealthChecksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:cen/getVbrHealthChecks:getVbrHealthChecks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVbrHealthChecksResult.fromMap(result);
}
