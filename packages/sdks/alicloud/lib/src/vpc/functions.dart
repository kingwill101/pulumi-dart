import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_bgp_groups_args.dart';
import 'get_bgp_groups_result.dart';
import 'get_bgp_networks_args.dart';
import 'get_bgp_networks_result.dart';
import 'get_bgp_peers_args.dart';
import 'get_bgp_peers_result.dart';
import 'get_common_bandwidth_packages_args.dart';
import 'get_common_bandwidth_packages_result.dart';
import 'get_dhcp_options_sets_args.dart';
import 'get_dhcp_options_sets_result.dart';
import 'get_enhanced_nat_available_zones_args.dart';
import 'get_enhanced_nat_available_zones_result.dart';
import 'get_flow_log_service_args.dart';
import 'get_flow_log_service_result.dart';
import 'get_forward_entries_args.dart';
import 'get_forward_entries_result.dart';
import 'get_havips_args.dart';
import 'get_havips_result.dart';
import 'get_ipam_ipam_pool_allocations_args.dart';
import 'get_ipam_ipam_pool_allocations_result.dart';
import 'get_ipam_ipam_pool_cidrs_args.dart';
import 'get_ipam_ipam_pool_cidrs_result.dart';
import 'get_ipam_ipam_pools_args.dart';
import 'get_ipam_ipam_pools_result.dart';
import 'get_ipam_ipam_scopes_args.dart';
import 'get_ipam_ipam_scopes_result.dart';
import 'get_ipam_ipams_args.dart';
import 'get_ipam_ipams_result.dart';
import 'get_ipsec_servers_args.dart';
import 'get_ipsec_servers_result.dart';
import 'get_ipv4_gateways_args.dart';
import 'get_ipv4_gateways_result.dart';
import 'get_ipv6_addresses_args.dart';
import 'get_ipv6_addresses_result.dart';
import 'get_ipv6_egress_rules_args.dart';
import 'get_ipv6_egress_rules_result.dart';
import 'get_ipv6_gateways_args.dart';
import 'get_ipv6_gateways_result.dart';
import 'get_ipv6_internet_bandwidths_args.dart';
import 'get_ipv6_internet_bandwidths_result.dart';
import 'get_nat_gateways_args.dart';
import 'get_nat_gateways_result.dart';
import 'get_nat_ip_cidrs_args.dart';
import 'get_nat_ip_cidrs_result.dart';
import 'get_nat_ips_args.dart';
import 'get_nat_ips_result.dart';
import 'get_network_acls_args.dart';
import 'get_network_acls_result.dart';
import 'get_networks_args.dart';
import 'get_networks_result.dart';
import 'get_pbr_route_entries_args.dart';
import 'get_pbr_route_entries_result.dart';
import 'get_peer_connections_args.dart';
import 'get_peer_connections_result.dart';
import 'get_prefix_lists_args.dart';
import 'get_prefix_lists_result.dart';
import 'get_public_ip_address_pool_cidr_blocks_args.dart';
import 'get_public_ip_address_pool_cidr_blocks_result.dart';
import 'get_public_ip_address_pools_args.dart';
import 'get_public_ip_address_pools_result.dart';
import 'get_route_entries_args.dart';
import 'get_route_entries_result.dart';
import 'get_route_tables_args.dart';
import 'get_route_tables_result.dart';
import 'get_router_interfaces_args.dart';
import 'get_router_interfaces_result.dart';
import 'get_snat_entries_args.dart';
import 'get_snat_entries_result.dart';
import 'get_ssl_vpn_client_certs_args.dart';
import 'get_ssl_vpn_client_certs_result.dart';
import 'get_ssl_vpn_servers_args.dart';
import 'get_ssl_vpn_servers_result.dart';
import 'get_switches_args.dart';
import 'get_switches_result.dart';
import 'get_traffic_mirror_filter_egress_rules_args.dart';
import 'get_traffic_mirror_filter_egress_rules_result.dart';
import 'get_traffic_mirror_filter_ingress_rules_args.dart';
import 'get_traffic_mirror_filter_ingress_rules_result.dart';
import 'get_traffic_mirror_filters_args.dart';
import 'get_traffic_mirror_filters_result.dart';
import 'get_traffic_mirror_service_args.dart';
import 'get_traffic_mirror_service_result.dart';
import 'get_traffic_mirror_sessions_args.dart';
import 'get_traffic_mirror_sessions_result.dart';
import 'get_vpc_flow_logs_args.dart';
import 'get_vpc_flow_logs_result.dart';

/// This data source provides the Vpc Bgp Groups of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.152.0+.
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
/// const ids = alicloud.vpc.getBgpGroups({
///     ids: ["example_value"],
/// });
/// export const vpcBgpGroupId1 = ids.then(ids => ids.groups?.[0]?.id);
/// const nameRegex = alicloud.vpc.getBgpGroups({
///     nameRegex: "^my-BgpGroup",
/// });
/// export const vpcBgpGroupId2 = nameRegex.then(nameRegex => nameRegex.groups?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_bgp_groups(ids=["example_value"])
/// pulumi.export("vpcBgpGroupId1", ids.groups[0].id)
/// name_regex = alicloud.vpc.get_bgp_groups(name_regex="^my-BgpGroup")
/// pulumi.export("vpcBgpGroupId2", name_regex.groups[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetBgpGroups.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetBgpGroups.Invoke(new()
///     {
///         NameRegex = "^my-BgpGroup",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcBgpGroupId1"] = ids.Apply(getBgpGroupsResult => getBgpGroupsResult.Groups[0]?.Id),
///         ["vpcBgpGroupId2"] = nameRegex.Apply(getBgpGroupsResult => getBgpGroupsResult.Groups[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetBgpGroups(ctx, &vpc.GetBgpGroupsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpGroupId1", ids.Groups[0].Id)
/// 		nameRegex, err := vpc.GetBgpGroups(ctx, &vpc.GetBgpGroupsArgs{
/// 			NameRegex: pulumi.StringRef("^my-BgpGroup"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpGroupId2", nameRegex.Groups[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetBgpGroupsArgs;
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
///         final var ids = VpcFunctions.getBgpGroups(GetBgpGroupsArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("vpcBgpGroupId1", ids.groups()[0].id());
///         final var nameRegex = VpcFunctions.getBgpGroups(GetBgpGroupsArgs.builder()
///             .nameRegex("^my-BgpGroup")
///             .build());
///
///         ctx.export("vpcBgpGroupId2", nameRegex.groups()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getBgpGroups
///       arguments:
///         ids:
///           - example_value
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getBgpGroups
///       arguments:
///         nameRegex: ^my-BgpGroup
/// outputs:
///   vpcBgpGroupId1: ${ids.groups[0].id}
///   vpcBgpGroupId2: ${nameRegex.groups[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_bgp_groups_get_bgp_groups_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBgpGroupsResult> getBgpGroups(
  GetBgpGroupsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getBgpGroups:getBgpGroups',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBgpGroupsResult.fromMap(result);
}

/// This data source provides the Vpc Bgp Networks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.153.0+.
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
/// const ids = alicloud.vpc.getBgpNetworks({
///     ids: ["example_value"],
/// });
/// export const vpcBgpNetworkId1 = ids.then(ids => ids.networks?.[0]?.id);
/// const routerId = alicloud.vpc.getBgpNetworks({
///     routerId: "example_value",
/// });
/// export const vpcBgpNetworkId2 = routerId.then(routerId => routerId.networks?.[0]?.id);
/// const status = alicloud.vpc.getBgpNetworks({
///     status: "Available",
/// });
/// export const vpcBgpNetworkId3 = status.then(status => status.networks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_bgp_networks(ids=["example_value"])
/// pulumi.export("vpcBgpNetworkId1", ids.networks[0].id)
/// router_id = alicloud.vpc.get_bgp_networks(router_id="example_value")
/// pulumi.export("vpcBgpNetworkId2", router_id.networks[0].id)
/// status = alicloud.vpc.get_bgp_networks(status="Available")
/// pulumi.export("vpcBgpNetworkId3", status.networks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetBgpNetworks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var routerId = AliCloud.Vpc.GetBgpNetworks.Invoke(new()
///     {
///         RouterId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetBgpNetworks.Invoke(new()
///     {
///         Status = "Available",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcBgpNetworkId1"] = ids.Apply(getBgpNetworksResult => getBgpNetworksResult.Networks[0]?.Id),
///         ["vpcBgpNetworkId2"] = routerId.Apply(getBgpNetworksResult => getBgpNetworksResult.Networks[0]?.Id),
///         ["vpcBgpNetworkId3"] = status.Apply(getBgpNetworksResult => getBgpNetworksResult.Networks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetBgpNetworks(ctx, &vpc.GetBgpNetworksArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpNetworkId1", ids.Networks[0].Id)
/// 		routerId, err := vpc.GetBgpNetworks(ctx, &vpc.GetBgpNetworksArgs{
/// 			RouterId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpNetworkId2", routerId.Networks[0].Id)
/// 		status, err := vpc.GetBgpNetworks(ctx, &vpc.GetBgpNetworksArgs{
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpNetworkId3", status.Networks[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetBgpNetworksArgs;
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
///         final var ids = VpcFunctions.getBgpNetworks(GetBgpNetworksArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("vpcBgpNetworkId1", ids.networks()[0].id());
///         final var routerId = VpcFunctions.getBgpNetworks(GetBgpNetworksArgs.builder()
///             .routerId("example_value")
///             .build());
///
///         ctx.export("vpcBgpNetworkId2", routerId.networks()[0].id());
///         final var status = VpcFunctions.getBgpNetworks(GetBgpNetworksArgs.builder()
///             .status("Available")
///             .build());
///
///         ctx.export("vpcBgpNetworkId3", status.networks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getBgpNetworks
///       arguments:
///         ids:
///           - example_value
///   routerId:
///     fn::invoke:
///       function: alicloud:vpc:getBgpNetworks
///       arguments:
///         routerId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getBgpNetworks
///       arguments:
///         status: Available
/// outputs:
///   vpcBgpNetworkId1: ${ids.networks[0].id}
///   vpcBgpNetworkId2: ${routerId.networks[0].id}
///   vpcBgpNetworkId3: ${status.networks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_bgp_networks_get_bgp_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBgpNetworksResult> getBgpNetworks(
  GetBgpNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getBgpNetworks:getBgpNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBgpNetworksResult.fromMap(result);
}

/// This data source provides the Vpc Bgp Peers of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.153.0+.
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
/// const ids = alicloud.vpc.getBgpPeers({
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const vpcBgpPeerId1 = ids.then(ids => ids.peers?.[0]?.id);
/// const bgpGroupId = alicloud.vpc.getBgpPeers({
///     bgpGroupId: "example_value",
/// });
/// export const vpcBgpPeerId2 = bgpGroupId.then(bgpGroupId => bgpGroupId.peers?.[0]?.id);
/// const routerId = alicloud.vpc.getBgpPeers({
///     routerId: "example_value",
/// });
/// export const vpcBgpPeerId3 = routerId.then(routerId => routerId.peers?.[0]?.id);
/// const status = alicloud.vpc.getBgpPeers({
///     status: "Available",
/// });
/// export const vpcBgpPeerId4 = status.then(status => status.peers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_bgp_peers(ids=[
///     "example_value-1",
///     "example_value-2",
/// ])
/// pulumi.export("vpcBgpPeerId1", ids.peers[0].id)
/// bgp_group_id = alicloud.vpc.get_bgp_peers(bgp_group_id="example_value")
/// pulumi.export("vpcBgpPeerId2", bgp_group_id.peers[0].id)
/// router_id = alicloud.vpc.get_bgp_peers(router_id="example_value")
/// pulumi.export("vpcBgpPeerId3", router_id.peers[0].id)
/// status = alicloud.vpc.get_bgp_peers(status="Available")
/// pulumi.export("vpcBgpPeerId4", status.peers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetBgpPeers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var bgpGroupId = AliCloud.Vpc.GetBgpPeers.Invoke(new()
///     {
///         BgpGroupId = "example_value",
///     });
///
///     var routerId = AliCloud.Vpc.GetBgpPeers.Invoke(new()
///     {
///         RouterId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetBgpPeers.Invoke(new()
///     {
///         Status = "Available",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcBgpPeerId1"] = ids.Apply(getBgpPeersResult => getBgpPeersResult.Peers[0]?.Id),
///         ["vpcBgpPeerId2"] = bgpGroupId.Apply(getBgpPeersResult => getBgpPeersResult.Peers[0]?.Id),
///         ["vpcBgpPeerId3"] = routerId.Apply(getBgpPeersResult => getBgpPeersResult.Peers[0]?.Id),
///         ["vpcBgpPeerId4"] = status.Apply(getBgpPeersResult => getBgpPeersResult.Peers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetBgpPeers(ctx, &vpc.GetBgpPeersArgs{
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpPeerId1", ids.Peers[0].Id)
/// 		bgpGroupId, err := vpc.GetBgpPeers(ctx, &vpc.GetBgpPeersArgs{
/// 			BgpGroupId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpPeerId2", bgpGroupId.Peers[0].Id)
/// 		routerId, err := vpc.GetBgpPeers(ctx, &vpc.GetBgpPeersArgs{
/// 			RouterId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpPeerId3", routerId.Peers[0].Id)
/// 		status, err := vpc.GetBgpPeers(ctx, &vpc.GetBgpPeersArgs{
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcBgpPeerId4", status.Peers[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetBgpPeersArgs;
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
///         final var ids = VpcFunctions.getBgpPeers(GetBgpPeersArgs.builder()
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("vpcBgpPeerId1", ids.peers()[0].id());
///         final var bgpGroupId = VpcFunctions.getBgpPeers(GetBgpPeersArgs.builder()
///             .bgpGroupId("example_value")
///             .build());
///
///         ctx.export("vpcBgpPeerId2", bgpGroupId.peers()[0].id());
///         final var routerId = VpcFunctions.getBgpPeers(GetBgpPeersArgs.builder()
///             .routerId("example_value")
///             .build());
///
///         ctx.export("vpcBgpPeerId3", routerId.peers()[0].id());
///         final var status = VpcFunctions.getBgpPeers(GetBgpPeersArgs.builder()
///             .status("Available")
///             .build());
///
///         ctx.export("vpcBgpPeerId4", status.peers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getBgpPeers
///       arguments:
///         ids:
///           - example_value-1
///           - example_value-2
///   bgpGroupId:
///     fn::invoke:
///       function: alicloud:vpc:getBgpPeers
///       arguments:
///         bgpGroupId: example_value
///   routerId:
///     fn::invoke:
///       function: alicloud:vpc:getBgpPeers
///       arguments:
///         routerId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getBgpPeers
///       arguments:
///         status: Available
/// outputs:
///   vpcBgpPeerId1: ${ids.peers[0].id}
///   vpcBgpPeerId2: ${bgpGroupId.peers[0].id}
///   vpcBgpPeerId3: ${routerId.peers[0].id}
///   vpcBgpPeerId4: ${status.peers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_bgp_peers_get_bgp_peers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBgpPeersResult> getBgpPeers(
  GetBgpPeersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getBgpPeers:getBgpPeers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBgpPeersResult.fromMap(result);
}

/// This data source provides a list of Common Bandwidth Packages owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available in 1.36.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const fooCommonBandwithPackage = new alicloud.vpc.CommonBandwithPackage("foo", {
///     bandwidth: "2",
///     name: "tf-testAccCommonBandwidthPackage",
///     description: "tf-testAcc-CommonBandwidthPackage",
/// });
/// const foo = alicloud.vpc.getCommonBandwidthPackagesOutput({
///     nameRegex: "^tf-testAcc.*",
///     ids: [fooCommonBandwithPackage.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo_common_bandwith_package = alicloud.vpc.CommonBandwithPackage("foo",
///     bandwidth="2",
///     name="tf-testAccCommonBandwidthPackage",
///     description="tf-testAcc-CommonBandwidthPackage")
/// foo = alicloud.vpc.get_common_bandwidth_packages_output(name_regex="^tf-testAcc.*",
///     ids=[foo_common_bandwith_package.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooCommonBandwithPackage = new AliCloud.Vpc.CommonBandwithPackage("foo", new()
///     {
///         Bandwidth = "2",
///         Name = "tf-testAccCommonBandwidthPackage",
///         Description = "tf-testAcc-CommonBandwidthPackage",
///     });
///
///     var foo = AliCloud.Vpc.GetCommonBandwidthPackages.Invoke(new()
///     {
///         NameRegex = "^tf-testAcc.*",
///         Ids = new[]
///         {
///             fooCommonBandwithPackage.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		fooCommonBandwithPackage, err := vpc.NewCommonBandwithPackage(ctx, "foo", &vpc.CommonBandwithPackageArgs{
/// 			Bandwidth:   pulumi.String("2"),
/// 			Name:        pulumi.String("tf-testAccCommonBandwidthPackage"),
/// 			Description: pulumi.String("tf-testAcc-CommonBandwidthPackage"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetCommonBandwidthPackagesOutput(ctx, vpc.GetCommonBandwidthPackagesOutputArgs{
/// 			NameRegex: pulumi.String("^tf-testAcc.*"),
/// 			Ids: pulumi.StringArray{
/// 				fooCommonBandwithPackage.ID(),
/// 			},
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpc.CommonBandwithPackage;
/// import com.pulumi.alicloud.vpc.CommonBandwithPackageArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetCommonBandwidthPackagesArgs;
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
///         var fooCommonBandwithPackage = new CommonBandwithPackage("fooCommonBandwithPackage", CommonBandwithPackageArgs.builder()
///             .bandwidth("2")
///             .name("tf-testAccCommonBandwidthPackage")
///             .description("tf-testAcc-CommonBandwidthPackage")
///             .build());
///
///         final var foo = VpcFunctions.getCommonBandwidthPackages(GetCommonBandwidthPackagesArgs.builder()
///             .nameRegex("^tf-testAcc.*")
///             .ids(fooCommonBandwithPackage.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fooCommonBandwithPackage:
///     type: alicloud:vpc:CommonBandwithPackage
///     name: foo
///     properties:
///       bandwidth: '2'
///       name: tf-testAccCommonBandwidthPackage
///       description: tf-testAcc-CommonBandwidthPackage
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getCommonBandwidthPackages
///       arguments:
///         nameRegex: ^tf-testAcc.*
///         ids:
///           - ${fooCommonBandwithPackage.id}
/// ```
///
///
/// ## Public ip addresses Block
///
/// The public ip addresses mapping supports the following:
///
/// * `ip_address`   - The address of the EIP.
/// * `allocation_id` - The ID of the EIP instance.
/// * `bandwidth_package_ip_relation_status` - The IP relation status of bandwidth package.
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_common_bandwidth_packages_get_common_bandwidth_packages_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCommonBandwidthPackagesResult> getCommonBandwidthPackages(
  GetCommonBandwidthPackagesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getCommonBandwidthPackages:getCommonBandwidthPackages',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCommonBandwidthPackagesResult.fromMap(result);
}

/// This data source provides the Vpc Dhcp Options Sets of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.134.0+.
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
/// const ids = alicloud.vpc.getDhcpOptionsSets({
///     ids: ["example_value"],
/// });
/// export const vpcDhcpOptionsSetId1 = ids.then(ids => ids.sets?.[0]?.id);
/// const nameRegex = alicloud.vpc.getDhcpOptionsSets({
///     nameRegex: "^my-DhcpOptionsSet",
/// });
/// export const vpcDhcpOptionsSetId2 = nameRegex.then(nameRegex => nameRegex.sets?.[0]?.id);
/// const dhcpOptionsSetName = alicloud.vpc.getDhcpOptionsSets({
///     dhcpOptionsSetName: "my-DhcpOptionsSet",
/// });
/// export const vpcDhcpOptionsSetId3 = dhcpOptionsSetName.then(dhcpOptionsSetName => dhcpOptionsSetName.sets?.[0]?.id);
/// const domainName = alicloud.vpc.getDhcpOptionsSets({
///     ids: ["example_value"],
///     domainName: "example.com",
/// });
/// export const vpcDhcpOptionsSetId4 = domainName.then(domainName => domainName.sets?.[0]?.id);
/// const status = alicloud.vpc.getDhcpOptionsSets({
///     ids: ["example_value"],
///     status: "Available",
/// });
/// export const vpcDhcpOptionsSetId5 = status.then(status => status.sets?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_dhcp_options_sets(ids=["example_value"])
/// pulumi.export("vpcDhcpOptionsSetId1", ids.sets[0].id)
/// name_regex = alicloud.vpc.get_dhcp_options_sets(name_regex="^my-DhcpOptionsSet")
/// pulumi.export("vpcDhcpOptionsSetId2", name_regex.sets[0].id)
/// dhcp_options_set_name = alicloud.vpc.get_dhcp_options_sets(dhcp_options_set_name="my-DhcpOptionsSet")
/// pulumi.export("vpcDhcpOptionsSetId3", dhcp_options_set_name.sets[0].id)
/// domain_name = alicloud.vpc.get_dhcp_options_sets(ids=["example_value"],
///     domain_name="example.com")
/// pulumi.export("vpcDhcpOptionsSetId4", domain_name.sets[0].id)
/// status = alicloud.vpc.get_dhcp_options_sets(ids=["example_value"],
///     status="Available")
/// pulumi.export("vpcDhcpOptionsSetId5", status.sets[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetDhcpOptionsSets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetDhcpOptionsSets.Invoke(new()
///     {
///         NameRegex = "^my-DhcpOptionsSet",
///     });
///
///     var dhcpOptionsSetName = AliCloud.Vpc.GetDhcpOptionsSets.Invoke(new()
///     {
///         DhcpOptionsSetName = "my-DhcpOptionsSet",
///     });
///
///     var domainName = AliCloud.Vpc.GetDhcpOptionsSets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         DomainName = "example.com",
///     });
///
///     var status = AliCloud.Vpc.GetDhcpOptionsSets.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         Status = "Available",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcDhcpOptionsSetId1"] = ids.Apply(getDhcpOptionsSetsResult => getDhcpOptionsSetsResult.Sets[0]?.Id),
///         ["vpcDhcpOptionsSetId2"] = nameRegex.Apply(getDhcpOptionsSetsResult => getDhcpOptionsSetsResult.Sets[0]?.Id),
///         ["vpcDhcpOptionsSetId3"] = dhcpOptionsSetName.Apply(getDhcpOptionsSetsResult => getDhcpOptionsSetsResult.Sets[0]?.Id),
///         ["vpcDhcpOptionsSetId4"] = domainName.Apply(getDhcpOptionsSetsResult => getDhcpOptionsSetsResult.Sets[0]?.Id),
///         ["vpcDhcpOptionsSetId5"] = status.Apply(getDhcpOptionsSetsResult => getDhcpOptionsSetsResult.Sets[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetDhcpOptionsSets(ctx, &vpc.GetDhcpOptionsSetsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcDhcpOptionsSetId1", ids.Sets[0].Id)
/// 		nameRegex, err := vpc.GetDhcpOptionsSets(ctx, &vpc.GetDhcpOptionsSetsArgs{
/// 			NameRegex: pulumi.StringRef("^my-DhcpOptionsSet"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcDhcpOptionsSetId2", nameRegex.Sets[0].Id)
/// 		dhcpOptionsSetName, err := vpc.GetDhcpOptionsSets(ctx, &vpc.GetDhcpOptionsSetsArgs{
/// 			DhcpOptionsSetName: pulumi.StringRef("my-DhcpOptionsSet"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcDhcpOptionsSetId3", dhcpOptionsSetName.Sets[0].Id)
/// 		domainName, err := vpc.GetDhcpOptionsSets(ctx, &vpc.GetDhcpOptionsSetsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			DomainName: pulumi.StringRef("example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcDhcpOptionsSetId4", domainName.Sets[0].Id)
/// 		status, err := vpc.GetDhcpOptionsSets(ctx, &vpc.GetDhcpOptionsSetsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcDhcpOptionsSetId5", status.Sets[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetDhcpOptionsSetsArgs;
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
///         final var ids = VpcFunctions.getDhcpOptionsSets(GetDhcpOptionsSetsArgs.builder()
///             .ids("example_value")
///             .build());
///
///         ctx.export("vpcDhcpOptionsSetId1", ids.sets()[0].id());
///         final var nameRegex = VpcFunctions.getDhcpOptionsSets(GetDhcpOptionsSetsArgs.builder()
///             .nameRegex("^my-DhcpOptionsSet")
///             .build());
///
///         ctx.export("vpcDhcpOptionsSetId2", nameRegex.sets()[0].id());
///         final var dhcpOptionsSetName = VpcFunctions.getDhcpOptionsSets(GetDhcpOptionsSetsArgs.builder()
///             .dhcpOptionsSetName("my-DhcpOptionsSet")
///             .build());
///
///         ctx.export("vpcDhcpOptionsSetId3", dhcpOptionsSetName.sets()[0].id());
///         final var domainName = VpcFunctions.getDhcpOptionsSets(GetDhcpOptionsSetsArgs.builder()
///             .ids("example_value")
///             .domainName("example.com")
///             .build());
///
///         ctx.export("vpcDhcpOptionsSetId4", domainName.sets()[0].id());
///         final var status = VpcFunctions.getDhcpOptionsSets(GetDhcpOptionsSetsArgs.builder()
///             .ids("example_value")
///             .status("Available")
///             .build());
///
///         ctx.export("vpcDhcpOptionsSetId5", status.sets()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getDhcpOptionsSets
///       arguments:
///         ids:
///           - example_value
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getDhcpOptionsSets
///       arguments:
///         nameRegex: ^my-DhcpOptionsSet
///   dhcpOptionsSetName:
///     fn::invoke:
///       function: alicloud:vpc:getDhcpOptionsSets
///       arguments:
///         dhcpOptionsSetName: my-DhcpOptionsSet
///   domainName:
///     fn::invoke:
///       function: alicloud:vpc:getDhcpOptionsSets
///       arguments:
///         ids:
///           - example_value
///         domainName: example.com
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getDhcpOptionsSets
///       arguments:
///         ids:
///           - example_value
///         status: Available
/// outputs:
///   vpcDhcpOptionsSetId1: ${ids.sets[0].id}
///   vpcDhcpOptionsSetId2: ${nameRegex.sets[0].id}
///   vpcDhcpOptionsSetId3: ${dhcpOptionsSetName.sets[0].id}
///   vpcDhcpOptionsSetId4: ${domainName.sets[0].id}
///   vpcDhcpOptionsSetId5: ${status.sets[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_dhcp_options_sets_get_dhcp_options_sets_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDhcpOptionsSetsResult> getDhcpOptionsSets(
  GetDhcpOptionsSetsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getDhcpOptionsSets:getDhcpOptionsSets',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDhcpOptionsSetsResult.fromMap(result);
}

/// This data source provides a list of available zones by the enhanced Nat Gateway.
///
/// > **NOTE:** Available since v1.102.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.vpc.getEnhancedNatAvailableZones({});
/// export const zones = _default.then(_default => _default.zones?.[0]?.zoneId);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpc.get_enhanced_nat_available_zones()
/// pulumi.export("zones", default.zones[0].zone_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Vpc.GetEnhancedNatAvailableZones.Invoke();
///
///     return new Dictionary<string, object?>
///     {
///         ["zones"] = @default.Apply(@default => @default.Apply(getEnhancedNatAvailableZonesResult => getEnhancedNatAvailableZonesResult.Zones[0]?.ZoneId)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := vpc.GetEnhancedNatAvailableZones(ctx, &vpc.GetEnhancedNatAvailableZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("zones", _default.Zones[0].ZoneId)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetEnhancedNatAvailableZonesArgs;
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
///         final var default = VpcFunctions.getEnhancedNatAvailableZones(GetEnhancedNatAvailableZonesArgs.builder()
///             .build());
///
///         ctx.export("zones", default_.zones()[0].zoneId());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getEnhancedNatAvailableZones
///       arguments: {}
/// outputs:
///   zones: ${default.zones[0].zoneId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_enhanced_nat_available_zones_get_enhanced_nat_available_zones_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnhancedNatAvailableZonesResult> getEnhancedNatAvailableZones(
  GetEnhancedNatAvailableZonesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getEnhancedNatAvailableZones:getEnhancedNatAvailableZones',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnhancedNatAvailableZonesResult.fromMap(result);
}

/// Using this data source can open Vpc Flow Log service automatically. If the service has been opened, it will return opened.
///
/// For information about Vpc Flow Log and how to use it, see [What is Vpc Flow Log](https://www.alibabacloud.com/help/en/vpc/developer-reference/api-openflowlog).
///
/// > **NOTE:** Available since v1.209.0.
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
/// const _default = alicloud.vpc.getFlowLogService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.vpc.get_flow_log_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.Vpc.GetFlowLogService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetFlowLogService(ctx, &vpc.GetFlowLogServiceArgs{
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetFlowLogServiceArgs;
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
///         final var default = VpcFunctions.getFlowLogService(GetFlowLogServiceArgs.builder()
///             .enable("On")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getFlowLogService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_flow_log_service_get_flow_log_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFlowLogServiceResult> getFlowLogService(
  GetFlowLogServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getFlowLogService:getFlowLogService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFlowLogServiceResult.fromMap(result);
}

/// This data source provides a list of Forward Entries owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available since v1.37.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "forward-entry-config-example-name";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultNetwork = new alicloud.vpc.Network("default", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const defaultSwitch = new alicloud.vpc.Switch("default", {
///     vpcId: defaultNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     zoneId: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const defaultNatGateway = new alicloud.vpc.NatGateway("default", {
///     vpcId: defaultNetwork.id,
///     internetChargeType: "PayByLcu",
///     natGatewayName: name,
///     natType: "Enhanced",
///     vswitchId: defaultSwitch.id,
/// });
/// const defaultEipAddress = new alicloud.ecs.EipAddress("default", {addressName: name});
/// const defaultEipAssociation = new alicloud.ecs.EipAssociation("default", {
///     allocationId: defaultEipAddress.id,
///     instanceId: defaultNatGateway.id,
/// });
/// const defaultForwardEntry = new alicloud.vpc.ForwardEntry("default", {
///     forwardTableId: defaultNatGateway.forwardTableIds,
///     externalIp: defaultEipAddress.ipAddress,
///     externalPort: "80",
///     ipProtocol: "tcp",
///     internalIp: "172.16.0.3",
///     internalPort: "8080",
/// });
/// const defaultGetForwardEntries = alicloud.vpc.getForwardEntriesOutput({
///     forwardTableId: defaultForwardEntry.forwardTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "forward-entry-config-example-name"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_network = alicloud.vpc.Network("default",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// default_switch = alicloud.vpc.Switch("default",
///     vpc_id=default_network.id,
///     cidr_block="172.16.0.0/21",
///     zone_id=default.zones[0].id,
///     vswitch_name=name)
/// default_nat_gateway = alicloud.vpc.NatGateway("default",
///     vpc_id=default_network.id,
///     internet_charge_type="PayByLcu",
///     nat_gateway_name=name,
///     nat_type="Enhanced",
///     vswitch_id=default_switch.id)
/// default_eip_address = alicloud.ecs.EipAddress("default", address_name=name)
/// default_eip_association = alicloud.ecs.EipAssociation("default",
///     allocation_id=default_eip_address.id,
///     instance_id=default_nat_gateway.id)
/// default_forward_entry = alicloud.vpc.ForwardEntry("default",
///     forward_table_id=default_nat_gateway.forward_table_ids,
///     external_ip=default_eip_address.ip_address,
///     external_port="80",
///     ip_protocol="tcp",
///     internal_ip="172.16.0.3",
///     internal_port="8080")
/// default_get_forward_entries = alicloud.vpc.get_forward_entries_output(forward_table_id=default_forward_entry.forward_table_id)
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
///     var name = config.Get("name") ?? "forward-entry-config-example-name";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultNetwork = new AliCloud.Vpc.Network("default", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var defaultSwitch = new AliCloud.Vpc.Switch("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         ZoneId = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var defaultNatGateway = new AliCloud.Vpc.NatGateway("default", new()
///     {
///         VpcId = defaultNetwork.Id,
///         InternetChargeType = "PayByLcu",
///         NatGatewayName = name,
///         NatType = "Enhanced",
///         VswitchId = defaultSwitch.Id,
///     });
///
///     var defaultEipAddress = new AliCloud.Ecs.EipAddress("default", new()
///     {
///         AddressName = name,
///     });
///
///     var defaultEipAssociation = new AliCloud.Ecs.EipAssociation("default", new()
///     {
///         AllocationId = defaultEipAddress.Id,
///         InstanceId = defaultNatGateway.Id,
///     });
///
///     var defaultForwardEntry = new AliCloud.Vpc.ForwardEntry("default", new()
///     {
///         ForwardTableId = defaultNatGateway.ForwardTableIds,
///         ExternalIp = defaultEipAddress.IpAddress,
///         ExternalPort = "80",
///         IpProtocol = "tcp",
///         InternalIp = "172.16.0.3",
///         InternalPort = "8080",
///     });
///
///     var defaultGetForwardEntries = AliCloud.Vpc.GetForwardEntries.Invoke(new()
///     {
///         ForwardTableId = defaultForwardEntry.ForwardTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "forward-entry-config-example-name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNetwork, err := vpc.NewNetwork(ctx, "default", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSwitch, err := vpc.NewSwitch(ctx, "default", &vpc.SwitchArgs{
/// 			VpcId:       defaultNetwork.ID(),
/// 			CidrBlock:   pulumi.String("172.16.0.0/21"),
/// 			ZoneId:      pulumi.String(_default.Zones[0].Id),
/// 			VswitchName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultNatGateway, err := vpc.NewNatGateway(ctx, "default", &vpc.NatGatewayArgs{
/// 			VpcId:              defaultNetwork.ID(),
/// 			InternetChargeType: pulumi.String("PayByLcu"),
/// 			NatGatewayName:     pulumi.String(name),
/// 			NatType:            pulumi.String("Enhanced"),
/// 			VswitchId:          defaultSwitch.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultEipAddress, err := ecs.NewEipAddress(ctx, "default", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEipAssociation(ctx, "default", &ecs.EipAssociationArgs{
/// 			AllocationId: defaultEipAddress.ID(),
/// 			InstanceId:   defaultNatGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultForwardEntry, err := vpc.NewForwardEntry(ctx, "default", &vpc.ForwardEntryArgs{
/// 			ForwardTableId: defaultNatGateway.ForwardTableIds,
/// 			ExternalIp:     defaultEipAddress.IpAddress,
/// 			ExternalPort:   pulumi.String("80"),
/// 			IpProtocol:     pulumi.String("tcp"),
/// 			InternalIp:     pulumi.String("172.16.0.3"),
/// 			InternalPort:   pulumi.String("8080"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetForwardEntriesOutput(ctx, vpc.GetForwardEntriesOutputArgs{
/// 			ForwardTableId: defaultForwardEntry.ForwardTableId,
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
/// import com.pulumi.alicloud.vpc.ForwardEntry;
/// import com.pulumi.alicloud.vpc.ForwardEntryArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetForwardEntriesArgs;
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
///         final var name = config.get("name").orElse("forward-entry-config-example-name");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var defaultNetwork = new Network("defaultNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var defaultSwitch = new Switch("defaultSwitch", SwitchArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .zoneId(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var defaultNatGateway = new NatGateway("defaultNatGateway", NatGatewayArgs.builder()
///             .vpcId(defaultNetwork.id())
///             .internetChargeType("PayByLcu")
///             .natGatewayName(name)
///             .natType("Enhanced")
///             .vswitchId(defaultSwitch.id())
///             .build());
///
///         var defaultEipAddress = new EipAddress("defaultEipAddress", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var defaultEipAssociation = new EipAssociation("defaultEipAssociation", EipAssociationArgs.builder()
///             .allocationId(defaultEipAddress.id())
///             .instanceId(defaultNatGateway.id())
///             .build());
///
///         var defaultForwardEntry = new ForwardEntry("defaultForwardEntry", ForwardEntryArgs.builder()
///             .forwardTableId(defaultNatGateway.forwardTableIds())
///             .externalIp(defaultEipAddress.ipAddress())
///             .externalPort("80")
///             .ipProtocol("tcp")
///             .internalIp("172.16.0.3")
///             .internalPort("8080")
///             .build());
///
///         final var defaultGetForwardEntries = VpcFunctions.getForwardEntries(GetForwardEntriesArgs.builder()
///             .forwardTableId(defaultForwardEntry.forwardTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: forward-entry-config-example-name
/// resources:
///   defaultNetwork:
///     type: alicloud:vpc:Network
///     name: default
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   defaultSwitch:
///     type: alicloud:vpc:Switch
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       zoneId: ${default.zones[0].id}
///       vswitchName: ${name}
///   defaultNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: default
///     properties:
///       vpcId: ${defaultNetwork.id}
///       internetChargeType: PayByLcu
///       natGatewayName: ${name}
///       natType: Enhanced
///       vswitchId: ${defaultSwitch.id}
///   defaultEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: default
///     properties:
///       addressName: ${name}
///   defaultEipAssociation:
///     type: alicloud:ecs:EipAssociation
///     name: default
///     properties:
///       allocationId: ${defaultEipAddress.id}
///       instanceId: ${defaultNatGateway.id}
///   defaultForwardEntry:
///     type: alicloud:vpc:ForwardEntry
///     name: default
///     properties:
///       forwardTableId: ${defaultNatGateway.forwardTableIds}
///       externalIp: ${defaultEipAddress.ipAddress}
///       externalPort: '80'
///       ipProtocol: tcp
///       internalIp: 172.16.0.3
///       internalPort: '8080'
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetForwardEntries:
///     fn::invoke:
///       function: alicloud:vpc:getForwardEntries
///       arguments:
///         forwardTableId: ${defaultForwardEntry.forwardTableId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_forward_entries_get_forward_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetForwardEntriesResult> getForwardEntries(
  GetForwardEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getForwardEntries:getForwardEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetForwardEntriesResult.fromMap(result);
}

/// This data source provides the Havips of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.120.0+.
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
/// const example = alicloud.vpc.getHavips({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstHavipId = example.then(example => example.havips?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.get_havips(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstHavipId", example.havips[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Vpc.GetHavips.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstHavipId"] = example.Apply(getHavipsResult => getHavipsResult.Havips[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpc.GetHavips(ctx, &vpc.GetHavipsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstHavipId", example.Havips[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetHavipsArgs;
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
///         final var example = VpcFunctions.getHavips(GetHavipsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstHavipId", example.havips()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:vpc:getHavips
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstHavipId: ${example.havips[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_havips_get_havips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHavipsResult> getHavips(
  GetHavipsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getHavips:getHavips',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHavipsResult.fromMap(result);
}

/// This data source provides Vpc Ipam Ipam Pool Allocation available to the user.[What is Ipam Pool Allocation](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamPoolAllocation)
///
/// > **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {operatingRegionLists: ["cn-hangzhou"]});
/// const defaultIpamPool = new alicloud.vpc.IpamIpamPool("defaultIpamPool", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: "cn-hangzhou",
/// });
/// const defaultIpamPoolCidr = new alicloud.vpc.IpamIpamPoolCidr("defaultIpamPoolCidr", {
///     cidr: "10.0.0.0/8",
///     ipamPoolId: defaultIpamPool.id,
/// });
/// const defaultIpamIpamPoolAllocation = new alicloud.vpc.IpamIpamPoolAllocation("default", {
///     ipamPoolAllocationDescription: "init alloc desc",
///     ipamPoolAllocationName: name,
///     cidr: "10.0.0.0/20",
///     ipamPoolId: defaultIpamPoolCidr.ipamPoolId,
/// });
/// const defaultGetIpamIpamPoolAllocations = alicloud.vpc.getIpamIpamPoolAllocationsOutput({
///     ids: [defaultIpamIpamPoolAllocation.id],
/// });
/// export const alicloudVpcIpamIpamPoolAllocationExampleId = defaultGetIpamIpamPoolAllocations.apply(defaultGetIpamIpamPoolAllocations => defaultGetIpamIpamPoolAllocations.allocations?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam", operating_region_lists=["cn-hangzhou"])
/// default_ipam_pool = alicloud.vpc.IpamIpamPool("defaultIpamPool",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id="cn-hangzhou")
/// default_ipam_pool_cidr = alicloud.vpc.IpamIpamPoolCidr("defaultIpamPoolCidr",
///     cidr="10.0.0.0/8",
///     ipam_pool_id=default_ipam_pool.id)
/// default_ipam_ipam_pool_allocation = alicloud.vpc.IpamIpamPoolAllocation("default",
///     ipam_pool_allocation_description="init alloc desc",
///     ipam_pool_allocation_name=name,
///     cidr="10.0.0.0/20",
///     ipam_pool_id=default_ipam_pool_cidr.ipam_pool_id)
/// default_get_ipam_ipam_pool_allocations = alicloud.vpc.get_ipam_ipam_pool_allocations_output(ids=[default_ipam_ipam_pool_allocation.id])
/// pulumi.export("alicloudVpcIpamIpamPoolAllocationExampleId", default_get_ipam_ipam_pool_allocations.allocations[0].id)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultIpam = new AliCloud.Vpc.IpamIpam("defaultIpam", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
///     var defaultIpamPool = new AliCloud.Vpc.IpamIpamPool("defaultIpamPool", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = "cn-hangzhou",
///     });
///
///     var defaultIpamPoolCidr = new AliCloud.Vpc.IpamIpamPoolCidr("defaultIpamPoolCidr", new()
///     {
///         Cidr = "10.0.0.0/8",
///         IpamPoolId = defaultIpamPool.Id,
///     });
///
///     var defaultIpamIpamPoolAllocation = new AliCloud.Vpc.IpamIpamPoolAllocation("default", new()
///     {
///         IpamPoolAllocationDescription = "init alloc desc",
///         IpamPoolAllocationName = name,
///         Cidr = "10.0.0.0/20",
///         IpamPoolId = defaultIpamPoolCidr.IpamPoolId,
///     });
///
///     var defaultGetIpamIpamPoolAllocations = AliCloud.Vpc.GetIpamIpamPoolAllocations.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultIpamIpamPoolAllocation.Id,
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudVpcIpamIpamPoolAllocationExampleId"] = defaultGetIpamIpamPoolAllocations.Apply(getIpamIpamPoolAllocationsResult => getIpamIpamPoolAllocationsResult.Allocations[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpam, err := vpc.NewIpamIpam(ctx, "defaultIpam", &vpc.IpamIpamArgs{
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamPool, err := vpc.NewIpamIpamPool(ctx, "defaultIpamPool", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:  defaultIpam.PrivateDefaultScopeId,
/// 			PoolRegionId: pulumi.String("cn-hangzhou"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamPoolCidr, err := vpc.NewIpamIpamPoolCidr(ctx, "defaultIpamPoolCidr", &vpc.IpamIpamPoolCidrArgs{
/// 			Cidr:       pulumi.String("10.0.0.0/8"),
/// 			IpamPoolId: defaultIpamPool.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamIpamPoolAllocation, err := vpc.NewIpamIpamPoolAllocation(ctx, "default", &vpc.IpamIpamPoolAllocationArgs{
/// 			IpamPoolAllocationDescription: pulumi.String("init alloc desc"),
/// 			IpamPoolAllocationName:        pulumi.String(name),
/// 			Cidr:                          pulumi.String("10.0.0.0/20"),
/// 			IpamPoolId:                    defaultIpamPoolCidr.IpamPoolId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetIpamIpamPoolAllocations := vpc.GetIpamIpamPoolAllocationsOutput(ctx, vpc.GetIpamIpamPoolAllocationsOutputArgs{
/// 			Ids: pulumi.StringArray{
/// 				defaultIpamIpamPoolAllocation.ID(),
/// 			},
/// 		}, nil)
/// 		ctx.Export("alicloudVpcIpamIpamPoolAllocationExampleId", defaultGetIpamIpamPoolAllocations.ApplyT(func(defaultGetIpamIpamPoolAllocations vpc.GetIpamIpamPoolAllocationsResult) (*string, error) {
/// 			return &defaultGetIpamIpamPoolAllocations.Allocations[0].Id, nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPool;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidr;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidrArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolAllocation;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolAllocationArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpamIpamPoolAllocationsArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultIpam = new IpamIpam("defaultIpam", IpamIpamArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .build());
///
///         var defaultIpamPool = new IpamIpamPool("defaultIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId("cn-hangzhou")
///             .build());
///
///         var defaultIpamPoolCidr = new IpamIpamPoolCidr("defaultIpamPoolCidr", IpamIpamPoolCidrArgs.builder()
///             .cidr("10.0.0.0/8")
///             .ipamPoolId(defaultIpamPool.id())
///             .build());
///
///         var defaultIpamIpamPoolAllocation = new IpamIpamPoolAllocation("defaultIpamIpamPoolAllocation", IpamIpamPoolAllocationArgs.builder()
///             .ipamPoolAllocationDescription("init alloc desc")
///             .ipamPoolAllocationName(name)
///             .cidr("10.0.0.0/20")
///             .ipamPoolId(defaultIpamPoolCidr.ipamPoolId())
///             .build());
///
///         final var defaultGetIpamIpamPoolAllocations = VpcFunctions.getIpamIpamPoolAllocations(GetIpamIpamPoolAllocationsArgs.builder()
///             .ids(defaultIpamIpamPoolAllocation.id())
///             .build());
///
///         ctx.export("alicloudVpcIpamIpamPoolAllocationExampleId", defaultGetIpamIpamPoolAllocations.applyValue(_defaultGetIpamIpamPoolAllocations -> _defaultGetIpamIpamPoolAllocations.allocations()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultIpam:
///     type: alicloud:vpc:IpamIpam
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///   defaultIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: cn-hangzhou
///   defaultIpamPoolCidr:
///     type: alicloud:vpc:IpamIpamPoolCidr
///     properties:
///       cidr: 10.0.0.0/8
///       ipamPoolId: ${defaultIpamPool.id}
///   defaultIpamIpamPoolAllocation:
///     type: alicloud:vpc:IpamIpamPoolAllocation
///     name: default
///     properties:
///       ipamPoolAllocationDescription: init alloc desc
///       ipamPoolAllocationName: ${name}
///       cidr: 10.0.0.0/20
///       ipamPoolId: ${defaultIpamPoolCidr.ipamPoolId}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetIpamIpamPoolAllocations:
///     fn::invoke:
///       function: alicloud:vpc:getIpamIpamPoolAllocations
///       arguments:
///         ids:
///           - ${defaultIpamIpamPoolAllocation.id}
/// outputs:
///   alicloudVpcIpamIpamPoolAllocationExampleId: ${defaultGetIpamIpamPoolAllocations.allocations[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipam_ipam_pool_allocations_get_ipam_ipam_pool_allocations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamIpamPoolAllocationsResult> getIpamIpamPoolAllocations(
  GetIpamIpamPoolAllocationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpamIpamPoolAllocations:getIpamIpamPoolAllocations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamIpamPoolAllocationsResult.fromMap(result);
}

/// This data source provides Vpc Ipam Ipam Pool Cidr available to the user.[What is Ipam Pool Cidr](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/AddIpamPoolCidr)
///
/// > **NOTE:** Available since v1.241.0.
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
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {operatingRegionLists: ["cn-hangzhou"]});
/// const defaultIpamPool = new alicloud.vpc.IpamIpamPool("defaultIpamPool", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: defaultIpam.regionId,
///     ipVersion: "IPv4",
/// });
/// const defaultIpamIpamPoolCidr = new alicloud.vpc.IpamIpamPoolCidr("default", {
///     cidr: "10.0.0.0/8",
///     ipamPoolId: defaultIpamPool.id,
/// });
/// const _default = alicloud.vpc.getIpamIpamPoolCidrsOutput({
///     cidr: "10.0.0.0/8",
///     ipamPoolId: defaultIpamIpamPoolCidr.ipamPoolId,
/// });
/// export const alicloudVpcIpamIpamPoolCidrExampleId = _default.apply(_default => _default.cidrs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam", operating_region_lists=["cn-hangzhou"])
/// default_ipam_pool = alicloud.vpc.IpamIpamPool("defaultIpamPool",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id=default_ipam.region_id,
///     ip_version="IPv4")
/// default_ipam_ipam_pool_cidr = alicloud.vpc.IpamIpamPoolCidr("default",
///     cidr="10.0.0.0/8",
///     ipam_pool_id=default_ipam_pool.id)
/// default = alicloud.vpc.get_ipam_ipam_pool_cidrs_output(cidr="10.0.0.0/8",
///     ipam_pool_id=default_ipam_ipam_pool_cidr.ipam_pool_id)
/// pulumi.export("alicloudVpcIpamIpamPoolCidrExampleId", default.cidrs[0].id)
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
///     var defaultIpam = new AliCloud.Vpc.IpamIpam("defaultIpam", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
///     var defaultIpamPool = new AliCloud.Vpc.IpamIpamPool("defaultIpamPool", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = defaultIpam.RegionId,
///         IpVersion = "IPv4",
///     });
///
///     var defaultIpamIpamPoolCidr = new AliCloud.Vpc.IpamIpamPoolCidr("default", new()
///     {
///         Cidr = "10.0.0.0/8",
///         IpamPoolId = defaultIpamPool.Id,
///     });
///
///     var @default = AliCloud.Vpc.GetIpamIpamPoolCidrs.Invoke(new()
///     {
///         Cidr = "10.0.0.0/8",
///         IpamPoolId = defaultIpamIpamPoolCidr.IpamPoolId,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudVpcIpamIpamPoolCidrExampleId"] = @default.Apply(@default => @default.Apply(getIpamIpamPoolCidrsResult => getIpamIpamPoolCidrsResult.Cidrs[0]?.Id)),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "terraform-example";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// defaultIpam, err := vpc.NewIpamIpam(ctx, "defaultIpam", &vpc.IpamIpamArgs{
/// OperatingRegionLists: pulumi.StringArray{
/// pulumi.String("cn-hangzhou"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// defaultIpamPool, err := vpc.NewIpamIpamPool(ctx, "defaultIpamPool", &vpc.IpamIpamPoolArgs{
/// IpamScopeId: defaultIpam.PrivateDefaultScopeId,
/// PoolRegionId: defaultIpam.RegionId,
/// IpVersion: pulumi.String("IPv4"),
/// })
/// if err != nil {
/// return err
/// }
/// defaultIpamIpamPoolCidr, err := vpc.NewIpamIpamPoolCidr(ctx, "default", &vpc.IpamIpamPoolCidrArgs{
/// Cidr: pulumi.String("10.0.0.0/8"),
/// IpamPoolId: defaultIpamPool.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// _default := vpc.GetIpamIpamPoolCidrsOutput(ctx, vpc.GetIpamIpamPoolCidrsOutputArgs{
/// Cidr: pulumi.String("10.0.0.0/8"),
/// IpamPoolId: defaultIpamIpamPoolCidr.IpamPoolId,
/// }, nil);
/// ctx.Export("alicloudVpcIpamIpamPoolCidrExampleId", _default.ApplyT(func(_default vpc.GetIpamIpamPoolCidrsResult) (*string, error) {
/// return &default.Cidrs[0].Id, nil
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
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPool;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidr;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolCidrArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpamIpamPoolCidrsArgs;
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
///         var defaultIpam = new IpamIpam("defaultIpam", IpamIpamArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .build());
///
///         var defaultIpamPool = new IpamIpamPool("defaultIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId(defaultIpam.regionId())
///             .ipVersion("IPv4")
///             .build());
///
///         var defaultIpamIpamPoolCidr = new IpamIpamPoolCidr("defaultIpamIpamPoolCidr", IpamIpamPoolCidrArgs.builder()
///             .cidr("10.0.0.0/8")
///             .ipamPoolId(defaultIpamPool.id())
///             .build());
///
///         final var default = VpcFunctions.getIpamIpamPoolCidrs(GetIpamIpamPoolCidrsArgs.builder()
///             .cidr("10.0.0.0/8")
///             .ipamPoolId(defaultIpamIpamPoolCidr.ipamPoolId())
///             .build());
///
///         ctx.export("alicloudVpcIpamIpamPoolCidrExampleId", default_.applyValue(_default_ -> _default_.cidrs()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultIpam:
///     type: alicloud:vpc:IpamIpam
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///   defaultIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: ${defaultIpam.regionId}
///       ipVersion: IPv4
///   defaultIpamIpamPoolCidr:
///     type: alicloud:vpc:IpamIpamPoolCidr
///     name: default
///     properties:
///       cidr: 10.0.0.0/8
///       ipamPoolId: ${defaultIpamPool.id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:vpc:getIpamIpamPoolCidrs
///       arguments:
///         cidr: 10.0.0.0/8
///         ipamPoolId: ${defaultIpamIpamPoolCidr.ipamPoolId}
/// outputs:
///   alicloudVpcIpamIpamPoolCidrExampleId: ${default.cidrs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipam_ipam_pool_cidrs_get_ipam_ipam_pool_cidrs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamIpamPoolCidrsResult> getIpamIpamPoolCidrs(
  GetIpamIpamPoolCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpamIpamPoolCidrs:getIpamIpamPoolCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamIpamPoolCidrsResult.fromMap(result);
}

/// This data source provides Vpc Ipam Ipam Pool available to the user.[What is Ipam Pool](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamPool)
///
/// > **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {operatingRegionLists: ["cn-hangzhou"]});
/// const parentIpamPool = new alicloud.vpc.IpamIpamPool("parentIpamPool", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: "cn-hangzhou",
/// });
/// const defaultIpamIpamPool = new alicloud.vpc.IpamIpamPool("default", {
///     ipamScopeId: defaultIpam.privateDefaultScopeId,
///     poolRegionId: parentIpamPool.poolRegionId,
///     ipamPoolName: name,
///     sourceIpamPoolId: parentIpamPool.id,
///     ipVersion: "IPv4",
///     ipamPoolDescription: name,
/// });
/// const defaultGetIpamIpamPools = alicloud.vpc.getIpamIpamPools({
///     nameRegex: defaultIpamIpamPool.name,
/// });
/// export const alicloudVpcIpamIpamPoolExampleId = defaultGetIpamIpamPools.then(defaultGetIpamIpamPools => defaultGetIpamIpamPools.pools?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam", operating_region_lists=["cn-hangzhou"])
/// parent_ipam_pool = alicloud.vpc.IpamIpamPool("parentIpamPool",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id="cn-hangzhou")
/// default_ipam_ipam_pool = alicloud.vpc.IpamIpamPool("default",
///     ipam_scope_id=default_ipam.private_default_scope_id,
///     pool_region_id=parent_ipam_pool.pool_region_id,
///     ipam_pool_name=name,
///     source_ipam_pool_id=parent_ipam_pool.id,
///     ip_version="IPv4",
///     ipam_pool_description=name)
/// default_get_ipam_ipam_pools = alicloud.vpc.get_ipam_ipam_pools(name_regex=default_ipam_ipam_pool.name)
/// pulumi.export("alicloudVpcIpamIpamPoolExampleId", default_get_ipam_ipam_pools.pools[0].id)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultIpam = new AliCloud.Vpc.IpamIpam("defaultIpam", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
///     var parentIpamPool = new AliCloud.Vpc.IpamIpamPool("parentIpamPool", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = "cn-hangzhou",
///     });
///
///     var defaultIpamIpamPool = new AliCloud.Vpc.IpamIpamPool("default", new()
///     {
///         IpamScopeId = defaultIpam.PrivateDefaultScopeId,
///         PoolRegionId = parentIpamPool.PoolRegionId,
///         IpamPoolName = name,
///         SourceIpamPoolId = parentIpamPool.Id,
///         IpVersion = "IPv4",
///         IpamPoolDescription = name,
///     });
///
///     var defaultGetIpamIpamPools = AliCloud.Vpc.GetIpamIpamPools.Invoke(new()
///     {
///         NameRegex = defaultIpamIpamPool.Name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudVpcIpamIpamPoolExampleId"] = defaultGetIpamIpamPools.Apply(getIpamIpamPoolsResult => getIpamIpamPoolsResult.Pools[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpam, err := vpc.NewIpamIpam(ctx, "defaultIpam", &vpc.IpamIpamArgs{
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		parentIpamPool, err := vpc.NewIpamIpamPool(ctx, "parentIpamPool", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:  defaultIpam.PrivateDefaultScopeId,
/// 			PoolRegionId: pulumi.String("cn-hangzhou"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamIpamPool, err := vpc.NewIpamIpamPool(ctx, "default", &vpc.IpamIpamPoolArgs{
/// 			IpamScopeId:         defaultIpam.PrivateDefaultScopeId,
/// 			PoolRegionId:        parentIpamPool.PoolRegionId,
/// 			IpamPoolName:        pulumi.String(name),
/// 			SourceIpamPoolId:    parentIpamPool.ID(),
/// 			IpVersion:           pulumi.String("IPv4"),
/// 			IpamPoolDescription: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetIpamIpamPools, err := vpc.GetIpamIpamPools(ctx, &vpc.GetIpamIpamPoolsArgs{
/// 			NameRegex: pulumi.StringRef(defaultIpamIpamPool.Name),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("alicloudVpcIpamIpamPoolExampleId", defaultGetIpamIpamPools.Pools[0].Id)
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamPool;
/// import com.pulumi.alicloud.vpc.IpamIpamPoolArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpamIpamPoolsArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultIpam = new IpamIpam("defaultIpam", IpamIpamArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .build());
///
///         var parentIpamPool = new IpamIpamPool("parentIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId("cn-hangzhou")
///             .build());
///
///         var defaultIpamIpamPool = new IpamIpamPool("defaultIpamIpamPool", IpamIpamPoolArgs.builder()
///             .ipamScopeId(defaultIpam.privateDefaultScopeId())
///             .poolRegionId(parentIpamPool.poolRegionId())
///             .ipamPoolName(name)
///             .sourceIpamPoolId(parentIpamPool.id())
///             .ipVersion("IPv4")
///             .ipamPoolDescription(name)
///             .build());
///
///         final var defaultGetIpamIpamPools = VpcFunctions.getIpamIpamPools(GetIpamIpamPoolsArgs.builder()
///             .nameRegex(defaultIpamIpamPool.name())
///             .build());
///
///         ctx.export("alicloudVpcIpamIpamPoolExampleId", defaultGetIpamIpamPools.pools()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultIpam:
///     type: alicloud:vpc:IpamIpam
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///   parentIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: cn-hangzhou
///   defaultIpamIpamPool:
///     type: alicloud:vpc:IpamIpamPool
///     name: default
///     properties:
///       ipamScopeId: ${defaultIpam.privateDefaultScopeId}
///       poolRegionId: ${parentIpamPool.poolRegionId}
///       ipamPoolName: ${name}
///       sourceIpamPoolId: ${parentIpamPool.id}
///       ipVersion: IPv4
///       ipamPoolDescription: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetIpamIpamPools:
///     fn::invoke:
///       function: alicloud:vpc:getIpamIpamPools
///       arguments:
///         nameRegex: ${defaultIpamIpamPool.name}
/// outputs:
///   alicloudVpcIpamIpamPoolExampleId: ${defaultGetIpamIpamPools.pools[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipam_ipam_pools_get_ipam_ipam_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamIpamPoolsResult> getIpamIpamPools(
  GetIpamIpamPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpamIpamPools:getIpamIpamPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamIpamPoolsResult.fromMap(result);
}

/// This data source provides Vpc Ipam Ipam Scope available to the user.[What is Ipam Scope](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpamScope)
///
/// > **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultIpam = new alicloud.vpc.IpamIpam("defaultIpam", {
///     operatingRegionLists: ["cn-hangzhou"],
///     ipamName: name,
/// });
/// const defaultIpamIpamScope = new alicloud.vpc.IpamIpamScope("default", {
///     ipamScopeName: name,
///     ipamId: defaultIpam.id,
///     ipamScopeDescription: "This is a ipam scope.",
///     ipamScopeType: "private",
///     tags: {
///         k1: "v1",
///     },
/// });
/// const defaultGetIpamIpamScopes = defaultIpamIpamScope.ipamScopeName.apply(ipamScopeName => alicloud.vpc.getIpamIpamScopesOutput({
///     ipamScopeName: ipamScopeName,
/// }));
/// export const alicloudVpcIpamIpamScopeExampleId = defaultGetIpamIpamScopes.apply(defaultGetIpamIpamScopes => defaultGetIpamIpamScopes.scopes?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_ipam = alicloud.vpc.IpamIpam("defaultIpam",
///     operating_region_lists=["cn-hangzhou"],
///     ipam_name=name)
/// default_ipam_ipam_scope = alicloud.vpc.IpamIpamScope("default",
///     ipam_scope_name=name,
///     ipam_id=default_ipam.id,
///     ipam_scope_description="This is a ipam scope.",
///     ipam_scope_type="private",
///     tags={
///         "k1": "v1",
///     })
/// default_get_ipam_ipam_scopes = default_ipam_ipam_scope.ipam_scope_name.apply(lambda ipam_scope_name: alicloud.vpc.get_ipam_ipam_scopes_output(ipam_scope_name=ipam_scope_name))
/// pulumi.export("alicloudVpcIpamIpamScopeExampleId", default_get_ipam_ipam_scopes.scopes[0].id)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultIpam = new AliCloud.Vpc.IpamIpam("defaultIpam", new()
///     {
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///         IpamName = name,
///     });
///
///     var defaultIpamIpamScope = new AliCloud.Vpc.IpamIpamScope("default", new()
///     {
///         IpamScopeName = name,
///         IpamId = defaultIpam.Id,
///         IpamScopeDescription = "This is a ipam scope.",
///         IpamScopeType = "private",
///         Tags =
///         {
///             { "k1", "v1" },
///         },
///     });
///
///     var defaultGetIpamIpamScopes = AliCloud.Vpc.GetIpamIpamScopes.Invoke(new()
///     {
///         IpamScopeName = defaultIpamIpamScope.IpamScopeName,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudVpcIpamIpamScopeExampleId"] = defaultGetIpamIpamScopes.Apply(getIpamIpamScopesResult => getIpamIpamScopesResult.Scopes[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpam, err := vpc.NewIpamIpam(ctx, "defaultIpam", &vpc.IpamIpamArgs{
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 			IpamName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamIpamScope, err := vpc.NewIpamIpamScope(ctx, "default", &vpc.IpamIpamScopeArgs{
/// 			IpamScopeName:        pulumi.String(name),
/// 			IpamId:               defaultIpam.ID(),
/// 			IpamScopeDescription: pulumi.String("This is a ipam scope."),
/// 			IpamScopeType:        pulumi.String("private"),
/// 			Tags: pulumi.StringMap{
/// 				"k1": pulumi.String("v1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetIpamIpamScopes := defaultIpamIpamScope.IpamScopeName.ApplyT(func(ipamScopeName *string) (vpc.GetIpamIpamScopesResult, error) {
/// 			return vpc.GetIpamIpamScopesResult(interface{}(vpc.GetIpamIpamScopes(ctx, &vpc.GetIpamIpamScopesArgs{
/// 				IpamScopeName: pulumi.StringRef(pulumi.StringRef(ipamScopeName)),
/// 			}, nil))), nil
/// 		}).(vpc.GetIpamIpamScopesResultOutput)
/// 		ctx.Export("alicloudVpcIpamIpamScopeExampleId", defaultGetIpamIpamScopes.ApplyT(func(defaultGetIpamIpamScopes vpc.GetIpamIpamScopesResult) (*string, error) {
/// 			return &defaultGetIpamIpamScopes.Scopes[0].Id, nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.IpamIpamScope;
/// import com.pulumi.alicloud.vpc.IpamIpamScopeArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpamIpamScopesArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultIpam = new IpamIpam("defaultIpam", IpamIpamArgs.builder()
///             .operatingRegionLists("cn-hangzhou")
///             .ipamName(name)
///             .build());
///
///         var defaultIpamIpamScope = new IpamIpamScope("defaultIpamIpamScope", IpamIpamScopeArgs.builder()
///             .ipamScopeName(name)
///             .ipamId(defaultIpam.id())
///             .ipamScopeDescription("This is a ipam scope.")
///             .ipamScopeType("private")
///             .tags(Map.of("k1", "v1"))
///             .build());
///
///         final var defaultGetIpamIpamScopes = defaultIpamIpamScope.ipamScopeName().applyValue(_ipamScopeName -> VpcFunctions.getIpamIpamScopes(GetIpamIpamScopesArgs.builder()
///             .ipamScopeName(_ipamScopeName)
///             .build()));
///
///         ctx.export("alicloudVpcIpamIpamScopeExampleId", defaultGetIpamIpamScopes.applyValue(_defaultGetIpamIpamScopes -> _defaultGetIpamIpamScopes.scopes()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultIpam:
///     type: alicloud:vpc:IpamIpam
///     properties:
///       operatingRegionLists:
///         - cn-hangzhou
///       ipamName: ${name}
///   defaultIpamIpamScope:
///     type: alicloud:vpc:IpamIpamScope
///     name: default
///     properties:
///       ipamScopeName: ${name}
///       ipamId: ${defaultIpam.id}
///       ipamScopeDescription: This is a ipam scope.
///       ipamScopeType: private
///       tags:
///         k1: v1
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetIpamIpamScopes:
///     fn::invoke:
///       function: alicloud:vpc:getIpamIpamScopes
///       arguments:
///         ipamScopeName: ${defaultIpamIpamScope.ipamScopeName}
/// outputs:
///   alicloudVpcIpamIpamScopeExampleId: ${defaultGetIpamIpamScopes.scopes[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipam_ipam_scopes_get_ipam_ipam_scopes_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamIpamScopesResult> getIpamIpamScopes(
  GetIpamIpamScopesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpamIpamScopes:getIpamIpamScopes',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamIpamScopesResult.fromMap(result);
}

/// This data source provides Vpc Ipam Ipam available to the user.[What is Ipam](https://next.api.alibabacloud.com/document/VpcIpam/2023-02-28/CreateIpam)
///
/// > **NOTE:** Available since v1.241.0.
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
/// const _default = alicloud.resourcemanager.getResourceGroups({});
/// const defaultIpamIpam = new alicloud.vpc.IpamIpam("default", {
///     ipamDescription: "This is my first Ipam.",
///     ipamName: name,
///     operatingRegionLists: ["cn-hangzhou"],
/// });
/// const defaultGetIpamIpams = pulumi.all([defaultIpamIpam.id, defaultIpamIpam.ipamName]).apply(([id, ipamName]) => alicloud.vpc.getIpamIpamsOutput({
///     ids: [id],
///     nameRegex: ipamName,
///     ipamName: name,
/// }));
/// export const alicloudVpcIpamIpamExampleId = defaultGetIpamIpams.apply(defaultGetIpamIpams => defaultGetIpamIpams.ipams?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.resourcemanager.get_resource_groups()
/// default_ipam_ipam = alicloud.vpc.IpamIpam("default",
///     ipam_description="This is my first Ipam.",
///     ipam_name=name,
///     operating_region_lists=["cn-hangzhou"])
/// default_get_ipam_ipams = pulumi.Output.all(
///     id=default_ipam_ipam.id,
///     ipam_name=default_ipam_ipam.ipam_name
/// ).apply(lambda resolved_outputs: alicloud.vpc.get_ipam_ipams_output(ids=[resolved_outputs['id']],
///     name_regex=resolved_outputs['ipam_name'],
///     ipam_name=name))
///
/// pulumi.export("alicloudVpcIpamIpamExampleId", default_get_ipam_ipams.ipams[0].id)
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
///     var @default = AliCloud.ResourceManager.GetResourceGroups.Invoke();
///
///     var defaultIpamIpam = new AliCloud.Vpc.IpamIpam("default", new()
///     {
///         IpamDescription = "This is my first Ipam.",
///         IpamName = name,
///         OperatingRegionLists = new[]
///         {
///             "cn-hangzhou",
///         },
///     });
///
///     var defaultGetIpamIpams = AliCloud.Vpc.GetIpamIpams.Invoke(new()
///     {
///         Ids = new[]
///         {
///             defaultIpamIpam.Id,
///         },
///         NameRegex = defaultIpamIpam.IpamName,
///         IpamName = name,
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["alicloudVpcIpamIpamExampleId"] = defaultGetIpamIpams.Apply(getIpamIpamsResult => getIpamIpamsResult.Ipams[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
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
/// 		_, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultIpamIpam, err := vpc.NewIpamIpam(ctx, "default", &vpc.IpamIpamArgs{
/// 			IpamDescription: pulumi.String("This is my first Ipam."),
/// 			IpamName:        pulumi.String(name),
/// 			OperatingRegionLists: pulumi.StringArray{
/// 				pulumi.String("cn-hangzhou"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetIpamIpams := pulumi.All(defaultIpamIpam.ID(), defaultIpamIpam.IpamName).ApplyT(func(_args []interface{}) (vpc.GetIpamIpamsResult, error) {
/// 			id := _args[0].(string)
/// 			ipamName := _args[1].(*string)
/// 			return vpc.GetIpamIpamsResult(interface{}(vpc.GetIpamIpams(ctx, &vpc.GetIpamIpamsArgs{
/// 				Ids: []string{
/// 					id,
/// 				},
/// 				NameRegex: pulumi.StringRef(pulumi.StringRef(ipamName)),
/// 				IpamName:  pulumi.StringRef(pulumi.StringRef(name)),
/// 			}, nil))), nil
/// 		}).(vpc.GetIpamIpamsResultOutput)
/// 		ctx.Export("alicloudVpcIpamIpamExampleId", defaultGetIpamIpams.ApplyT(func(defaultGetIpamIpams vpc.GetIpamIpamsResult) (*string, error) {
/// 			return &defaultGetIpamIpams.Ipams[0].Id, nil
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.alicloud.vpc.IpamIpam;
/// import com.pulumi.alicloud.vpc.IpamIpamArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpamIpamsArgs;
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
///         final var default = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .build());
///
///         var defaultIpamIpam = new IpamIpam("defaultIpamIpam", IpamIpamArgs.builder()
///             .ipamDescription("This is my first Ipam.")
///             .ipamName(name)
///             .operatingRegionLists("cn-hangzhou")
///             .build());
///
///         final var defaultGetIpamIpams = Output.tuple(defaultIpamIpam.id(), defaultIpamIpam.ipamName()).applyValue(values -> {
///             var id = values.t1;
///             var ipamName = values.t2;
///             return VpcFunctions.getIpamIpams(GetIpamIpamsArgs.builder()
///                 .ids(id)
///                 .nameRegex(ipamName)
///                 .ipamName(name)
///                 .build());
///         });
///
///         ctx.export("alicloudVpcIpamIpamExampleId", defaultGetIpamIpams.applyValue(_defaultGetIpamIpams -> _defaultGetIpamIpams.ipams()[0].id()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   defaultIpamIpam:
///     type: alicloud:vpc:IpamIpam
///     name: default
///     properties:
///       ipamDescription: This is my first Ipam.
///       ipamName: ${name}
///       operatingRegionLists:
///         - cn-hangzhou
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments: {}
///   defaultGetIpamIpams:
///     fn::invoke:
///       function: alicloud:vpc:getIpamIpams
///       arguments:
///         ids:
///           - ${defaultIpamIpam.id}
///         nameRegex: ${defaultIpamIpam.ipamName}
///         ipamName: ${name}
/// outputs:
///   alicloudVpcIpamIpamExampleId: ${defaultGetIpamIpams.ipams[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipam_ipams_get_ipam_ipams_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpamIpamsResult> getIpamIpams(
  GetIpamIpamsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpamIpams:getIpamIpams',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpamIpamsResult.fromMap(result);
}

/// This data source provides the Vpn Ipsec Servers of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.161.0+.
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
/// const ids = alicloud.vpc.getIpsecServers({
///     ids: ["example_id"],
/// });
/// export const vpnIpsecServerId1 = ids.then(ids => ids.servers?.[0]?.id);
/// const nameRegex = alicloud.vpc.getIpsecServers({
///     nameRegex: "^my-IpsecServer",
/// });
/// export const vpnIpsecServerId2 = nameRegex.then(nameRegex => nameRegex.servers?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_ipsec_servers(ids=["example_id"])
/// pulumi.export("vpnIpsecServerId1", ids.servers[0].id)
/// name_regex = alicloud.vpc.get_ipsec_servers(name_regex="^my-IpsecServer")
/// pulumi.export("vpnIpsecServerId2", name_regex.servers[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetIpsecServers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetIpsecServers.Invoke(new()
///     {
///         NameRegex = "^my-IpsecServer",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnIpsecServerId1"] = ids.Apply(getIpsecServersResult => getIpsecServersResult.Servers[0]?.Id),
///         ["vpnIpsecServerId2"] = nameRegex.Apply(getIpsecServersResult => getIpsecServersResult.Servers[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetIpsecServers(ctx, &vpc.GetIpsecServersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnIpsecServerId1", ids.Servers[0].Id)
/// 		nameRegex, err := vpc.GetIpsecServers(ctx, &vpc.GetIpsecServersArgs{
/// 			NameRegex: pulumi.StringRef("^my-IpsecServer"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnIpsecServerId2", nameRegex.Servers[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpsecServersArgs;
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
///         final var ids = VpcFunctions.getIpsecServers(GetIpsecServersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpnIpsecServerId1", ids.servers()[0].id());
///         final var nameRegex = VpcFunctions.getIpsecServers(GetIpsecServersArgs.builder()
///             .nameRegex("^my-IpsecServer")
///             .build());
///
///         ctx.export("vpnIpsecServerId2", nameRegex.servers()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getIpsecServers
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getIpsecServers
///       arguments:
///         nameRegex: ^my-IpsecServer
/// outputs:
///   vpnIpsecServerId1: ${ids.servers[0].id}
///   vpnIpsecServerId2: ${nameRegex.servers[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipsec_servers_get_ipsec_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpsecServersResult> getIpsecServers(
  GetIpsecServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpsecServers:getIpsecServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpsecServersResult.fromMap(result);
}

/// This data source provides the Vpc Ipv4 Gateways of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.181.0+.
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
/// const ids = alicloud.vpc.getIpv4Gateways({});
/// export const vpcIpv4GatewayId1 = ids.then(ids => ids.gateways?.[0]?.id);
/// const nameRegex = alicloud.vpc.getIpv4Gateways({
///     nameRegex: "^my-Ipv4Gateway",
/// });
/// export const vpcIpv4GatewayId2 = nameRegex.then(nameRegex => nameRegex.gateways?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_ipv4_gateways()
/// pulumi.export("vpcIpv4GatewayId1", ids.gateways[0].id)
/// name_regex = alicloud.vpc.get_ipv4_gateways(name_regex="^my-Ipv4Gateway")
/// pulumi.export("vpcIpv4GatewayId2", name_regex.gateways[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetIpv4Gateways.Invoke();
///
///     var nameRegex = AliCloud.Vpc.GetIpv4Gateways.Invoke(new()
///     {
///         NameRegex = "^my-Ipv4Gateway",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIpv4GatewayId1"] = ids.Apply(getIpv4GatewaysResult => getIpv4GatewaysResult.Gateways[0]?.Id),
///         ["vpcIpv4GatewayId2"] = nameRegex.Apply(getIpv4GatewaysResult => getIpv4GatewaysResult.Gateways[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetIpv4Gateways(ctx, &vpc.GetIpv4GatewaysArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv4GatewayId1", ids.Gateways[0].Id)
/// 		nameRegex, err := vpc.GetIpv4Gateways(ctx, &vpc.GetIpv4GatewaysArgs{
/// 			NameRegex: pulumi.StringRef("^my-Ipv4Gateway"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv4GatewayId2", nameRegex.Gateways[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv4GatewaysArgs;
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
///         final var ids = VpcFunctions.getIpv4Gateways(GetIpv4GatewaysArgs.builder()
///             .build());
///
///         ctx.export("vpcIpv4GatewayId1", ids.gateways()[0].id());
///         final var nameRegex = VpcFunctions.getIpv4Gateways(GetIpv4GatewaysArgs.builder()
///             .nameRegex("^my-Ipv4Gateway")
///             .build());
///
///         ctx.export("vpcIpv4GatewayId2", nameRegex.gateways()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getIpv4Gateways
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getIpv4Gateways
///       arguments:
///         nameRegex: ^my-Ipv4Gateway
/// outputs:
///   vpcIpv4GatewayId1: ${ids.gateways[0].id}
///   vpcIpv4GatewayId2: ${nameRegex.gateways[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipv4_gateways_get_ipv4_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv4GatewaysResult> getIpv4Gateways(
  GetIpv4GatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpv4Gateways:getIpv4Gateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv4GatewaysResult.fromMap(result);
}

/// This data source provides the Vpc Ipv6 Addresses of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const associatedInstanceId = alicloud.vpc.getIpv6Addresses({
///     associatedInstanceId: "example_value",
/// });
/// export const vpcIpv6AddressId1 = associatedInstanceId.then(associatedInstanceId => associatedInstanceId.addresses?.[0]?.id);
/// const vswitchId = alicloud.vpc.getIpv6Addresses({
///     vswitchId: "example_value",
/// });
/// export const vpcIpv6AddressId2 = vswitchId.then(vswitchId => vswitchId.addresses?.[0]?.id);
/// const vpcId = alicloud.vpc.getIpv6Addresses({
///     vpcId: "example_value",
/// });
/// export const vpcIpv6AddressId3 = vpcId.then(vpcId => vpcId.addresses?.[0]?.id);
/// const status = alicloud.vpc.getIpv6Addresses({
///     status: "Available",
/// });
/// export const vpcIpv6AddressId4 = status.then(status => status.addresses?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// associated_instance_id = alicloud.vpc.get_ipv6_addresses(associated_instance_id="example_value")
/// pulumi.export("vpcIpv6AddressId1", associated_instance_id.addresses[0].id)
/// vswitch_id = alicloud.vpc.get_ipv6_addresses(vswitch_id="example_value")
/// pulumi.export("vpcIpv6AddressId2", vswitch_id.addresses[0].id)
/// vpc_id = alicloud.vpc.get_ipv6_addresses(vpc_id="example_value")
/// pulumi.export("vpcIpv6AddressId3", vpc_id.addresses[0].id)
/// status = alicloud.vpc.get_ipv6_addresses(status="Available")
/// pulumi.export("vpcIpv6AddressId4", status.addresses[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var associatedInstanceId = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         AssociatedInstanceId = "example_value",
///     });
///
///     var vswitchId = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         VswitchId = "example_value",
///     });
///
///     var vpcId = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         VpcId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetIpv6Addresses.Invoke(new()
///     {
///         Status = "Available",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIpv6AddressId1"] = associatedInstanceId.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///         ["vpcIpv6AddressId2"] = vswitchId.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///         ["vpcIpv6AddressId3"] = vpcId.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///         ["vpcIpv6AddressId4"] = status.Apply(getIpv6AddressesResult => getIpv6AddressesResult.Addresses[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		associatedInstanceId, err := vpc.GetIpv6Addresses(ctx, &vpc.GetIpv6AddressesArgs{
/// 			AssociatedInstanceId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6AddressId1", associatedInstanceId.Addresses[0].Id)
/// 		vswitchId, err := vpc.GetIpv6Addresses(ctx, &vpc.GetIpv6AddressesArgs{
/// 			VswitchId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6AddressId2", vswitchId.Addresses[0].Id)
/// 		vpcId, err := vpc.GetIpv6Addresses(ctx, &vpc.GetIpv6AddressesArgs{
/// 			VpcId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6AddressId3", vpcId.Addresses[0].Id)
/// 		status, err := vpc.GetIpv6Addresses(ctx, &vpc.GetIpv6AddressesArgs{
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6AddressId4", status.Addresses[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6AddressesArgs;
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
///         final var associatedInstanceId = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .associatedInstanceId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6AddressId1", associatedInstanceId.addresses()[0].id());
///         final var vswitchId = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .vswitchId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6AddressId2", vswitchId.addresses()[0].id());
///         final var vpcId = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .vpcId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6AddressId3", vpcId.addresses()[0].id());
///         final var status = VpcFunctions.getIpv6Addresses(GetIpv6AddressesArgs.builder()
///             .status("Available")
///             .build());
///
///         ctx.export("vpcIpv6AddressId4", status.addresses()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   associatedInstanceId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Addresses
///       arguments:
///         associatedInstanceId: example_value
///   vswitchId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Addresses
///       arguments:
///         vswitchId: example_value
///   vpcId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Addresses
///       arguments:
///         vpcId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Addresses
///       arguments:
///         status: Available
/// outputs:
///   vpcIpv6AddressId1: ${associatedInstanceId.addresses[0].id}
///   vpcIpv6AddressId2: ${vswitchId.addresses[0].id}
///   vpcIpv6AddressId3: ${vpcId.addresses[0].id}
///   vpcIpv6AddressId4: ${status.addresses[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipv6_addresses_get_ipv6_addresses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6AddressesResult> getIpv6Addresses(
  GetIpv6AddressesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpv6Addresses:getIpv6Addresses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6AddressesResult.fromMap(result);
}

/// This data source provides the Vpc Ipv6 Egress Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const ids = alicloud.vpc.getIpv6EgressRules({
///     ipv6GatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const vpcIpv6EgressRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const nameRegex = alicloud.vpc.getIpv6EgressRules({
///     ipv6GatewayId: "example_value",
///     nameRegex: "^my-Ipv6EgressRule",
/// });
/// export const vpcIpv6EgressRuleId2 = nameRegex.then(nameRegex => nameRegex.rules?.[0]?.id);
/// const status = alicloud.vpc.getIpv6EgressRules({
///     ipv6GatewayId: "example_value",
///     status: "Available",
/// });
/// export const vpcIpv6EgressRuleId3 = status.then(status => status.rules?.[0]?.id);
/// const ipv6EgressRuleName = alicloud.vpc.getIpv6EgressRules({
///     ipv6GatewayId: "example_value",
///     ipv6EgressRuleName: "example_value",
/// });
/// export const vpcIpv6EgressRuleId4 = ipv6EgressRuleName.then(ipv6EgressRuleName => ipv6EgressRuleName.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_ipv6_egress_rules(ipv6_gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("vpcIpv6EgressRuleId1", ids.rules[0].id)
/// name_regex = alicloud.vpc.get_ipv6_egress_rules(ipv6_gateway_id="example_value",
///     name_regex="^my-Ipv6EgressRule")
/// pulumi.export("vpcIpv6EgressRuleId2", name_regex.rules[0].id)
/// status = alicloud.vpc.get_ipv6_egress_rules(ipv6_gateway_id="example_value",
///     status="Available")
/// pulumi.export("vpcIpv6EgressRuleId3", status.rules[0].id)
/// ipv6_egress_rule_name = alicloud.vpc.get_ipv6_egress_rules(ipv6_gateway_id="example_value",
///     ipv6_egress_rule_name="example_value")
/// pulumi.export("vpcIpv6EgressRuleId4", ipv6_egress_rule_name.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetIpv6EgressRules.Invoke(new()
///     {
///         Ipv6GatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetIpv6EgressRules.Invoke(new()
///     {
///         Ipv6GatewayId = "example_value",
///         NameRegex = "^my-Ipv6EgressRule",
///     });
///
///     var status = AliCloud.Vpc.GetIpv6EgressRules.Invoke(new()
///     {
///         Ipv6GatewayId = "example_value",
///         Status = "Available",
///     });
///
///     var ipv6EgressRuleName = AliCloud.Vpc.GetIpv6EgressRules.Invoke(new()
///     {
///         Ipv6GatewayId = "example_value",
///         Ipv6EgressRuleName = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIpv6EgressRuleId1"] = ids.Apply(getIpv6EgressRulesResult => getIpv6EgressRulesResult.Rules[0]?.Id),
///         ["vpcIpv6EgressRuleId2"] = nameRegex.Apply(getIpv6EgressRulesResult => getIpv6EgressRulesResult.Rules[0]?.Id),
///         ["vpcIpv6EgressRuleId3"] = status.Apply(getIpv6EgressRulesResult => getIpv6EgressRulesResult.Rules[0]?.Id),
///         ["vpcIpv6EgressRuleId4"] = ipv6EgressRuleName.Apply(getIpv6EgressRulesResult => getIpv6EgressRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetIpv6EgressRules(ctx, &vpc.GetIpv6EgressRulesArgs{
/// 			Ipv6GatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6EgressRuleId1", ids.Rules[0].Id)
/// 		nameRegex, err := vpc.GetIpv6EgressRules(ctx, &vpc.GetIpv6EgressRulesArgs{
/// 			Ipv6GatewayId: "example_value",
/// 			NameRegex:     pulumi.StringRef("^my-Ipv6EgressRule"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6EgressRuleId2", nameRegex.Rules[0].Id)
/// 		status, err := vpc.GetIpv6EgressRules(ctx, &vpc.GetIpv6EgressRulesArgs{
/// 			Ipv6GatewayId: "example_value",
/// 			Status:        pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6EgressRuleId3", status.Rules[0].Id)
/// 		ipv6EgressRuleName, err := vpc.GetIpv6EgressRules(ctx, &vpc.GetIpv6EgressRulesArgs{
/// 			Ipv6GatewayId:      "example_value",
/// 			Ipv6EgressRuleName: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6EgressRuleId4", ipv6EgressRuleName.Rules[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6EgressRulesArgs;
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
///         final var ids = VpcFunctions.getIpv6EgressRules(GetIpv6EgressRulesArgs.builder()
///             .ipv6GatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("vpcIpv6EgressRuleId1", ids.rules()[0].id());
///         final var nameRegex = VpcFunctions.getIpv6EgressRules(GetIpv6EgressRulesArgs.builder()
///             .ipv6GatewayId("example_value")
///             .nameRegex("^my-Ipv6EgressRule")
///             .build());
///
///         ctx.export("vpcIpv6EgressRuleId2", nameRegex.rules()[0].id());
///         final var status = VpcFunctions.getIpv6EgressRules(GetIpv6EgressRulesArgs.builder()
///             .ipv6GatewayId("example_value")
///             .status("Available")
///             .build());
///
///         ctx.export("vpcIpv6EgressRuleId3", status.rules()[0].id());
///         final var ipv6EgressRuleName = VpcFunctions.getIpv6EgressRules(GetIpv6EgressRulesArgs.builder()
///             .ipv6GatewayId("example_value")
///             .ipv6EgressRuleName("example_value")
///             .build());
///
///         ctx.export("vpcIpv6EgressRuleId4", ipv6EgressRuleName.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6EgressRules
///       arguments:
///         ipv6GatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6EgressRules
///       arguments:
///         ipv6GatewayId: example_value
///         nameRegex: ^my-Ipv6EgressRule
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6EgressRules
///       arguments:
///         ipv6GatewayId: example_value
///         status: Available
///   ipv6EgressRuleName:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6EgressRules
///       arguments:
///         ipv6GatewayId: example_value
///         ipv6EgressRuleName: example_value
/// outputs:
///   vpcIpv6EgressRuleId1: ${ids.rules[0].id}
///   vpcIpv6EgressRuleId2: ${nameRegex.rules[0].id}
///   vpcIpv6EgressRuleId3: ${status.rules[0].id}
///   vpcIpv6EgressRuleId4: ${ipv6EgressRuleName.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipv6_egress_rules_get_ipv6_egress_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6EgressRulesResult> getIpv6EgressRules(
  GetIpv6EgressRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpv6EgressRules:getIpv6EgressRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6EgressRulesResult.fromMap(result);
}

/// This data source provides the Vpc Ipv6 Gateways of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const ids = alicloud.vpc.getIpv6Gateways({
///     ids: ["example_id"],
/// });
/// export const vpcIpv6GatewayId1 = ids.then(ids => ids.gateways?.[0]?.id);
/// const nameRegex = alicloud.vpc.getIpv6Gateways({
///     nameRegex: "^my-Ipv6Gateway",
/// });
/// export const vpcIpv6GatewayId2 = nameRegex.then(nameRegex => nameRegex.gateways?.[0]?.id);
/// const vpcId = alicloud.vpc.getIpv6Gateways({
///     ids: ["example_id"],
///     vpcId: "example_value",
/// });
/// export const vpcIpv6GatewayId3 = vpcId.then(vpcId => vpcId.gateways?.[0]?.id);
/// const status = alicloud.vpc.getIpv6Gateways({
///     ids: ["example_id"],
///     status: "Available",
/// });
/// export const vpcIpv6GatewayId4 = status.then(status => status.gateways?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_ipv6_gateways(ids=["example_id"])
/// pulumi.export("vpcIpv6GatewayId1", ids.gateways[0].id)
/// name_regex = alicloud.vpc.get_ipv6_gateways(name_regex="^my-Ipv6Gateway")
/// pulumi.export("vpcIpv6GatewayId2", name_regex.gateways[0].id)
/// vpc_id = alicloud.vpc.get_ipv6_gateways(ids=["example_id"],
///     vpc_id="example_value")
/// pulumi.export("vpcIpv6GatewayId3", vpc_id.gateways[0].id)
/// status = alicloud.vpc.get_ipv6_gateways(ids=["example_id"],
///     status="Available")
/// pulumi.export("vpcIpv6GatewayId4", status.gateways[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetIpv6Gateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetIpv6Gateways.Invoke(new()
///     {
///         NameRegex = "^my-Ipv6Gateway",
///     });
///
///     var vpcId = AliCloud.Vpc.GetIpv6Gateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         VpcId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetIpv6Gateways.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "Available",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIpv6GatewayId1"] = ids.Apply(getIpv6GatewaysResult => getIpv6GatewaysResult.Gateways[0]?.Id),
///         ["vpcIpv6GatewayId2"] = nameRegex.Apply(getIpv6GatewaysResult => getIpv6GatewaysResult.Gateways[0]?.Id),
///         ["vpcIpv6GatewayId3"] = vpcId.Apply(getIpv6GatewaysResult => getIpv6GatewaysResult.Gateways[0]?.Id),
///         ["vpcIpv6GatewayId4"] = status.Apply(getIpv6GatewaysResult => getIpv6GatewaysResult.Gateways[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetIpv6Gateways(ctx, &vpc.GetIpv6GatewaysArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6GatewayId1", ids.Gateways[0].Id)
/// 		nameRegex, err := vpc.GetIpv6Gateways(ctx, &vpc.GetIpv6GatewaysArgs{
/// 			NameRegex: pulumi.StringRef("^my-Ipv6Gateway"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6GatewayId2", nameRegex.Gateways[0].Id)
/// 		vpcId, err := vpc.GetIpv6Gateways(ctx, &vpc.GetIpv6GatewaysArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			VpcId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6GatewayId3", vpcId.Gateways[0].Id)
/// 		status, err := vpc.GetIpv6Gateways(ctx, &vpc.GetIpv6GatewaysArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6GatewayId4", status.Gateways[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6GatewaysArgs;
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
///         final var ids = VpcFunctions.getIpv6Gateways(GetIpv6GatewaysArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcIpv6GatewayId1", ids.gateways()[0].id());
///         final var nameRegex = VpcFunctions.getIpv6Gateways(GetIpv6GatewaysArgs.builder()
///             .nameRegex("^my-Ipv6Gateway")
///             .build());
///
///         ctx.export("vpcIpv6GatewayId2", nameRegex.gateways()[0].id());
///         final var vpcId = VpcFunctions.getIpv6Gateways(GetIpv6GatewaysArgs.builder()
///             .ids("example_id")
///             .vpcId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6GatewayId3", vpcId.gateways()[0].id());
///         final var status = VpcFunctions.getIpv6Gateways(GetIpv6GatewaysArgs.builder()
///             .ids("example_id")
///             .status("Available")
///             .build());
///
///         ctx.export("vpcIpv6GatewayId4", status.gateways()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Gateways
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Gateways
///       arguments:
///         nameRegex: ^my-Ipv6Gateway
///   vpcId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Gateways
///       arguments:
///         ids:
///           - example_id
///         vpcId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6Gateways
///       arguments:
///         ids:
///           - example_id
///         status: Available
/// outputs:
///   vpcIpv6GatewayId1: ${ids.gateways[0].id}
///   vpcIpv6GatewayId2: ${nameRegex.gateways[0].id}
///   vpcIpv6GatewayId3: ${vpcId.gateways[0].id}
///   vpcIpv6GatewayId4: ${status.gateways[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipv6_gateways_get_ipv6_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6GatewaysResult> getIpv6Gateways(
  GetIpv6GatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpv6Gateways:getIpv6Gateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6GatewaysResult.fromMap(result);
}

/// This data source provides the Vpc Ipv6 Internet Bandwidths of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.143.0+.
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
/// const ids = alicloud.vpc.getIpv6InternetBandwidths({
///     ids: ["example_id"],
/// });
/// export const vpcIpv6InternetBandwidthId1 = ids.then(ids => ids.bandwidths?.[0]?.id);
/// const ipv6InternetBandwidthId = alicloud.vpc.getIpv6InternetBandwidths({
///     ipv6InternetBandwidthId: "example_value",
/// });
/// export const vpcIpv6InternetBandwidthId2 = ipv6InternetBandwidthId.then(ipv6InternetBandwidthId => ipv6InternetBandwidthId.bandwidths?.[0]?.id);
/// const ipv6AddressId = alicloud.vpc.getIpv6InternetBandwidths({
///     ipv6AddressId: "example_value",
/// });
/// export const vpcIpv6InternetBandwidthId3 = ipv6AddressId.then(ipv6AddressId => ipv6AddressId.bandwidths?.[0]?.id);
/// const status = alicloud.vpc.getIpv6InternetBandwidths({
///     status: "Normal",
/// });
/// export const vpcIpv6InternetBandwidthId4 = status.then(status => status.bandwidths?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_ipv6_internet_bandwidths(ids=["example_id"])
/// pulumi.export("vpcIpv6InternetBandwidthId1", ids.bandwidths[0].id)
/// ipv6_internet_bandwidth_id = alicloud.vpc.get_ipv6_internet_bandwidths(ipv6_internet_bandwidth_id="example_value")
/// pulumi.export("vpcIpv6InternetBandwidthId2", ipv6_internet_bandwidth_id.bandwidths[0].id)
/// ipv6_address_id = alicloud.vpc.get_ipv6_internet_bandwidths(ipv6_address_id="example_value")
/// pulumi.export("vpcIpv6InternetBandwidthId3", ipv6_address_id.bandwidths[0].id)
/// status = alicloud.vpc.get_ipv6_internet_bandwidths(status="Normal")
/// pulumi.export("vpcIpv6InternetBandwidthId4", status.bandwidths[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetIpv6InternetBandwidths.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var ipv6InternetBandwidthId = AliCloud.Vpc.GetIpv6InternetBandwidths.Invoke(new()
///     {
///         Ipv6InternetBandwidthId = "example_value",
///     });
///
///     var ipv6AddressId = AliCloud.Vpc.GetIpv6InternetBandwidths.Invoke(new()
///     {
///         Ipv6AddressId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetIpv6InternetBandwidths.Invoke(new()
///     {
///         Status = "Normal",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcIpv6InternetBandwidthId1"] = ids.Apply(getIpv6InternetBandwidthsResult => getIpv6InternetBandwidthsResult.Bandwidths[0]?.Id),
///         ["vpcIpv6InternetBandwidthId2"] = ipv6InternetBandwidthId.Apply(getIpv6InternetBandwidthsResult => getIpv6InternetBandwidthsResult.Bandwidths[0]?.Id),
///         ["vpcIpv6InternetBandwidthId3"] = ipv6AddressId.Apply(getIpv6InternetBandwidthsResult => getIpv6InternetBandwidthsResult.Bandwidths[0]?.Id),
///         ["vpcIpv6InternetBandwidthId4"] = status.Apply(getIpv6InternetBandwidthsResult => getIpv6InternetBandwidthsResult.Bandwidths[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetIpv6InternetBandwidths(ctx, &vpc.GetIpv6InternetBandwidthsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6InternetBandwidthId1", ids.Bandwidths[0].Id)
/// 		ipv6InternetBandwidthId, err := vpc.GetIpv6InternetBandwidths(ctx, &vpc.GetIpv6InternetBandwidthsArgs{
/// 			Ipv6InternetBandwidthId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6InternetBandwidthId2", ipv6InternetBandwidthId.Bandwidths[0].Id)
/// 		ipv6AddressId, err := vpc.GetIpv6InternetBandwidths(ctx, &vpc.GetIpv6InternetBandwidthsArgs{
/// 			Ipv6AddressId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6InternetBandwidthId3", ipv6AddressId.Bandwidths[0].Id)
/// 		status, err := vpc.GetIpv6InternetBandwidths(ctx, &vpc.GetIpv6InternetBandwidthsArgs{
/// 			Status: pulumi.StringRef("Normal"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcIpv6InternetBandwidthId4", status.Bandwidths[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetIpv6InternetBandwidthsArgs;
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
///         final var ids = VpcFunctions.getIpv6InternetBandwidths(GetIpv6InternetBandwidthsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcIpv6InternetBandwidthId1", ids.bandwidths()[0].id());
///         final var ipv6InternetBandwidthId = VpcFunctions.getIpv6InternetBandwidths(GetIpv6InternetBandwidthsArgs.builder()
///             .ipv6InternetBandwidthId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6InternetBandwidthId2", ipv6InternetBandwidthId.bandwidths()[0].id());
///         final var ipv6AddressId = VpcFunctions.getIpv6InternetBandwidths(GetIpv6InternetBandwidthsArgs.builder()
///             .ipv6AddressId("example_value")
///             .build());
///
///         ctx.export("vpcIpv6InternetBandwidthId3", ipv6AddressId.bandwidths()[0].id());
///         final var status = VpcFunctions.getIpv6InternetBandwidths(GetIpv6InternetBandwidthsArgs.builder()
///             .status("Normal")
///             .build());
///
///         ctx.export("vpcIpv6InternetBandwidthId4", status.bandwidths()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6InternetBandwidths
///       arguments:
///         ids:
///           - example_id
///   ipv6InternetBandwidthId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6InternetBandwidths
///       arguments:
///         ipv6InternetBandwidthId: example_value
///   ipv6AddressId:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6InternetBandwidths
///       arguments:
///         ipv6AddressId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getIpv6InternetBandwidths
///       arguments:
///         status: Normal
/// outputs:
///   vpcIpv6InternetBandwidthId1: ${ids.bandwidths[0].id}
///   vpcIpv6InternetBandwidthId2: ${ipv6InternetBandwidthId.bandwidths[0].id}
///   vpcIpv6InternetBandwidthId3: ${ipv6AddressId.bandwidths[0].id}
///   vpcIpv6InternetBandwidthId4: ${status.bandwidths[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ipv6_internet_bandwidths_get_ipv6_internet_bandwidths_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIpv6InternetBandwidthsResult> getIpv6InternetBandwidths(
  GetIpv6InternetBandwidthsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getIpv6InternetBandwidths:getIpv6InternetBandwidths',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIpv6InternetBandwidthsResult.fromMap(result);
}

/// This data source provides a list of Nat Gateways owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available since v1.37.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "natGatewaysDatasource";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     vpcName: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const fooNatGateway = new alicloud.vpc.NatGateway("foo", {
///     vpcId: fooNetwork.id,
///     specification: "Small",
///     natGatewayName: name,
/// });
/// const foo = alicloud.vpc.getNatGatewaysOutput({
///     vpcId: fooNetwork.id,
///     nameRegex: fooNatGateway.name,
///     ids: [fooNatGateway.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "natGatewaysDatasource"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// foo_network = alicloud.vpc.Network("foo",
///     vpc_name=name,
///     cidr_block="172.16.0.0/12")
/// foo_nat_gateway = alicloud.vpc.NatGateway("foo",
///     vpc_id=foo_network.id,
///     specification="Small",
///     nat_gateway_name=name)
/// foo = alicloud.vpc.get_nat_gateways_output(vpc_id=foo_network.id,
///     name_regex=foo_nat_gateway.name,
///     ids=[foo_nat_gateway.id])
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
///     var name = config.Get("name") ?? "natGatewaysDatasource";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         VpcName = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var fooNatGateway = new AliCloud.Vpc.NatGateway("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         Specification = "Small",
///         NatGatewayName = name,
///     });
///
///     var foo = AliCloud.Vpc.GetNatGateways.Invoke(new()
///     {
///         VpcId = fooNetwork.Id,
///         NameRegex = fooNatGateway.Name,
///         Ids = new[]
///         {
///             fooNatGateway.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "natGatewaysDatasource"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNatGateway, err := vpc.NewNatGateway(ctx, "foo", &vpc.NatGatewayArgs{
/// 			VpcId:          fooNetwork.ID(),
/// 			Specification:  pulumi.String("Small"),
/// 			NatGatewayName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetNatGatewaysOutput(ctx, vpc.GetNatGatewaysOutputArgs{
/// 			VpcId:     fooNetwork.ID(),
/// 			NameRegex: fooNatGateway.Name,
/// 			Ids: pulumi.StringArray{
/// 				fooNatGateway.ID(),
/// 			},
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNatGatewaysArgs;
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
///         final var name = config.get("name").orElse("natGatewaysDatasource");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var fooNatGateway = new NatGateway("fooNatGateway", NatGatewayArgs.builder()
///             .vpcId(fooNetwork.id())
///             .specification("Small")
///             .natGatewayName(name)
///             .build());
///
///         final var foo = VpcFunctions.getNatGateways(GetNatGatewaysArgs.builder()
///             .vpcId(fooNetwork.id())
///             .nameRegex(fooNatGateway.name())
///             .ids(fooNatGateway.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: natGatewaysDatasource
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       vpcName: ${name}
///       cidrBlock: 172.16.0.0/12
///   fooNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       specification: Small
///       natGatewayName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getNatGateways
///       arguments:
///         vpcId: ${fooNetwork.id}
///         nameRegex: ${fooNatGateway.name}
///         ids:
///           - ${fooNatGateway.id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_nat_gateways_get_nat_gateways_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatGatewaysResult> getNatGateways(
  GetNatGatewaysArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getNatGateways:getNatGateways',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatGatewaysResult.fromMap(result);
}

/// This data source provides the Vpc Nat Ip Cidrs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.136.0+.
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
/// const ids = alicloud.vpc.getNatIpCidrs({
///     natGatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const vpcNatIpCidrId1 = ids.then(ids => ids.cidrs?.[0]?.id);
/// const nameRegex = alicloud.vpc.getNatIpCidrs({
///     natGatewayId: "example_value",
///     nameRegex: "^my-NatIpCidr",
/// });
/// export const vpcNatIpCidrId2 = nameRegex.then(nameRegex => nameRegex.cidrs?.[0]?.id);
/// const status = alicloud.vpc.getNatIpCidrs({
///     natGatewayId: "example_value",
///     ids: ["example_value-1"],
///     status: "Available",
/// });
/// export const vpcNatIpCidrId3 = status.then(status => status.cidrs?.[0]?.id);
/// const natIpCidr = alicloud.vpc.getNatIpCidrs({
///     natGatewayId: "example_value",
///     natIpCidrs: ["example_value-1"],
/// });
/// export const vpcNatIpCidrId4 = natIpCidr.then(natIpCidr => natIpCidr.cidrs?.[0]?.id);
/// const atIpCidrName = alicloud.vpc.getNatIpCidrs({
///     natGatewayId: "example_value",
///     natIpCidrNames: ["example_value-1"],
/// });
/// export const vpcNatIpCidrId5 = atIpCidrName.then(atIpCidrName => atIpCidrName.cidrs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_nat_ip_cidrs(nat_gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("vpcNatIpCidrId1", ids.cidrs[0].id)
/// name_regex = alicloud.vpc.get_nat_ip_cidrs(nat_gateway_id="example_value",
///     name_regex="^my-NatIpCidr")
/// pulumi.export("vpcNatIpCidrId2", name_regex.cidrs[0].id)
/// status = alicloud.vpc.get_nat_ip_cidrs(nat_gateway_id="example_value",
///     ids=["example_value-1"],
///     status="Available")
/// pulumi.export("vpcNatIpCidrId3", status.cidrs[0].id)
/// nat_ip_cidr = alicloud.vpc.get_nat_ip_cidrs(nat_gateway_id="example_value",
///     nat_ip_cidrs=["example_value-1"])
/// pulumi.export("vpcNatIpCidrId4", nat_ip_cidr.cidrs[0].id)
/// at_ip_cidr_name = alicloud.vpc.get_nat_ip_cidrs(nat_gateway_id="example_value",
///     nat_ip_cidr_names=["example_value-1"])
/// pulumi.export("vpcNatIpCidrId5", at_ip_cidr_name.cidrs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetNatIpCidrs.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetNatIpCidrs.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         NameRegex = "^my-NatIpCidr",
///     });
///
///     var status = AliCloud.Vpc.GetNatIpCidrs.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///         },
///         Status = "Available",
///     });
///
///     var natIpCidr = AliCloud.Vpc.GetNatIpCidrs.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         NatIpCidrs = new[]
///         {
///             "example_value-1",
///         },
///     });
///
///     var atIpCidrName = AliCloud.Vpc.GetNatIpCidrs.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         NatIpCidrNames = new[]
///         {
///             "example_value-1",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcNatIpCidrId1"] = ids.Apply(getNatIpCidrsResult => getNatIpCidrsResult.Cidrs[0]?.Id),
///         ["vpcNatIpCidrId2"] = nameRegex.Apply(getNatIpCidrsResult => getNatIpCidrsResult.Cidrs[0]?.Id),
///         ["vpcNatIpCidrId3"] = status.Apply(getNatIpCidrsResult => getNatIpCidrsResult.Cidrs[0]?.Id),
///         ["vpcNatIpCidrId4"] = natIpCidr.Apply(getNatIpCidrsResult => getNatIpCidrsResult.Cidrs[0]?.Id),
///         ["vpcNatIpCidrId5"] = atIpCidrName.Apply(getNatIpCidrsResult => getNatIpCidrsResult.Cidrs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetNatIpCidrs(ctx, &vpc.GetNatIpCidrsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpCidrId1", ids.Cidrs[0].Id)
/// 		nameRegex, err := vpc.GetNatIpCidrs(ctx, &vpc.GetNatIpCidrsArgs{
/// 			NatGatewayId: "example_value",
/// 			NameRegex:    pulumi.StringRef("^my-NatIpCidr"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpCidrId2", nameRegex.Cidrs[0].Id)
/// 		status, err := vpc.GetNatIpCidrs(ctx, &vpc.GetNatIpCidrsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 			},
/// 			Status: pulumi.StringRef("Available"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpCidrId3", status.Cidrs[0].Id)
/// 		natIpCidr, err := vpc.GetNatIpCidrs(ctx, &vpc.GetNatIpCidrsArgs{
/// 			NatGatewayId: "example_value",
/// 			NatIpCidrs: []string{
/// 				"example_value-1",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpCidrId4", natIpCidr.Cidrs[0].Id)
/// 		atIpCidrName, err := vpc.GetNatIpCidrs(ctx, &vpc.GetNatIpCidrsArgs{
/// 			NatGatewayId: "example_value",
/// 			NatIpCidrNames: []string{
/// 				"example_value-1",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpCidrId5", atIpCidrName.Cidrs[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNatIpCidrsArgs;
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
///         final var ids = VpcFunctions.getNatIpCidrs(GetNatIpCidrsArgs.builder()
///             .natGatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("vpcNatIpCidrId1", ids.cidrs()[0].id());
///         final var nameRegex = VpcFunctions.getNatIpCidrs(GetNatIpCidrsArgs.builder()
///             .natGatewayId("example_value")
///             .nameRegex("^my-NatIpCidr")
///             .build());
///
///         ctx.export("vpcNatIpCidrId2", nameRegex.cidrs()[0].id());
///         final var status = VpcFunctions.getNatIpCidrs(GetNatIpCidrsArgs.builder()
///             .natGatewayId("example_value")
///             .ids("example_value-1")
///             .status("Available")
///             .build());
///
///         ctx.export("vpcNatIpCidrId3", status.cidrs()[0].id());
///         final var natIpCidr = VpcFunctions.getNatIpCidrs(GetNatIpCidrsArgs.builder()
///             .natGatewayId("example_value")
///             .natIpCidrs("example_value-1")
///             .build());
///
///         ctx.export("vpcNatIpCidrId4", natIpCidr.cidrs()[0].id());
///         final var atIpCidrName = VpcFunctions.getNatIpCidrs(GetNatIpCidrsArgs.builder()
///             .natGatewayId("example_value")
///             .natIpCidrNames("example_value-1")
///             .build());
///
///         ctx.export("vpcNatIpCidrId5", atIpCidrName.cidrs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getNatIpCidrs
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getNatIpCidrs
///       arguments:
///         natGatewayId: example_value
///         nameRegex: ^my-NatIpCidr
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getNatIpCidrs
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value-1
///         status: Available
///   natIpCidr:
///     fn::invoke:
///       function: alicloud:vpc:getNatIpCidrs
///       arguments:
///         natGatewayId: example_value
///         natIpCidrs:
///           - example_value-1
///   atIpCidrName:
///     fn::invoke:
///       function: alicloud:vpc:getNatIpCidrs
///       arguments:
///         natGatewayId: example_value
///         natIpCidrNames:
///           - example_value-1
/// outputs:
///   vpcNatIpCidrId1: ${ids.cidrs[0].id}
///   vpcNatIpCidrId2: ${nameRegex.cidrs[0].id}
///   vpcNatIpCidrId3: ${status.cidrs[0].id}
///   vpcNatIpCidrId4: ${natIpCidr.cidrs[0].id}
///   vpcNatIpCidrId5: ${atIpCidrName.cidrs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_nat_ip_cidrs_get_nat_ip_cidrs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatIpCidrsResult> getNatIpCidrs(
  GetNatIpCidrsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getNatIpCidrs:getNatIpCidrs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatIpCidrsResult.fromMap(result);
}

/// This data source provides the Vpc Nat Ips of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.136.0+.
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
/// const ids = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     ids: [
///         "example_value-1",
///         "example_value-2",
///     ],
/// });
/// export const vpcNatIpId1 = ids.then(ids => ids.ips?.[0]?.id);
/// const nameRegex = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     nameRegex: "^my-NatIp",
/// });
/// export const vpcNatIpId2 = nameRegex.then(nameRegex => nameRegex.ips?.[0]?.id);
/// const natIpCidr = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     natIpCidr: "example_value",
///     nameRegex: "^my-NatIp",
/// });
/// export const vpcNatIpId3 = natIpCidr.then(natIpCidr => natIpCidr.ips?.[0]?.id);
/// const natIpName = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     ids: ["example_value"],
///     natIpNames: ["example_value"],
/// });
/// export const vpcNatIpId4 = natIpName.then(natIpName => natIpName.ips?.[0]?.id);
/// const natIpIds = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     ids: ["example_value"],
///     natIpIds: ["example_value"],
/// });
/// export const vpcNatIpId5 = natIpIds.then(natIpIds => natIpIds.ips?.[0]?.id);
/// const status = alicloud.vpc.getNatIps({
///     natGatewayId: "example_value",
///     ids: ["example_value"],
///     status: "example_value",
/// });
/// export const vpcNatIpId6 = status.then(status => status.ips?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     ids=[
///         "example_value-1",
///         "example_value-2",
///     ])
/// pulumi.export("vpcNatIpId1", ids.ips[0].id)
/// name_regex = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     name_regex="^my-NatIp")
/// pulumi.export("vpcNatIpId2", name_regex.ips[0].id)
/// nat_ip_cidr = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     nat_ip_cidr="example_value",
///     name_regex="^my-NatIp")
/// pulumi.export("vpcNatIpId3", nat_ip_cidr.ips[0].id)
/// nat_ip_name = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     ids=["example_value"],
///     nat_ip_names=["example_value"])
/// pulumi.export("vpcNatIpId4", nat_ip_name.ips[0].id)
/// nat_ip_ids = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     ids=["example_value"],
///     nat_ip_ids=["example_value"])
/// pulumi.export("vpcNatIpId5", nat_ip_ids.ips[0].id)
/// status = alicloud.vpc.get_nat_ips(nat_gateway_id="example_value",
///     ids=["example_value"],
///     status="example_value")
/// pulumi.export("vpcNatIpId6", status.ips[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value-1",
///             "example_value-2",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         NameRegex = "^my-NatIp",
///     });
///
///     var natIpCidr = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         NatIpCidr = "example_value",
///         NameRegex = "^my-NatIp",
///     });
///
///     var natIpName = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NatIpNames = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var natIpIds = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NatIpIds = new[]
///         {
///             "example_value",
///         },
///     });
///
///     var status = AliCloud.Vpc.GetNatIps.Invoke(new()
///     {
///         NatGatewayId = "example_value",
///         Ids = new[]
///         {
///             "example_value",
///         },
///         Status = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcNatIpId1"] = ids.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///         ["vpcNatIpId2"] = nameRegex.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///         ["vpcNatIpId3"] = natIpCidr.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///         ["vpcNatIpId4"] = natIpName.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///         ["vpcNatIpId5"] = natIpIds.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///         ["vpcNatIpId6"] = status.Apply(getNatIpsResult => getNatIpsResult.Ips[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value-1",
/// 				"example_value-2",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId1", ids.Ips[0].Id)
/// 		nameRegex, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			NameRegex:    pulumi.StringRef("^my-NatIp"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId2", nameRegex.Ips[0].Id)
/// 		natIpCidr, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			NatIpCidr:    pulumi.StringRef("example_value"),
/// 			NameRegex:    pulumi.StringRef("^my-NatIp"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId3", natIpCidr.Ips[0].Id)
/// 		natIpName, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NatIpNames: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId4", natIpName.Ips[0].Id)
/// 		natIpIds, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NatIpIds: []string{
/// 				"example_value",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId5", natIpIds.Ips[0].Id)
/// 		status, err := vpc.GetNatIps(ctx, &vpc.GetNatIpsArgs{
/// 			NatGatewayId: "example_value",
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			Status: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcNatIpId6", status.Ips[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNatIpsArgs;
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
///         final var ids = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .ids(
///                 "example_value-1",
///                 "example_value-2")
///             .build());
///
///         ctx.export("vpcNatIpId1", ids.ips()[0].id());
///         final var nameRegex = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .nameRegex("^my-NatIp")
///             .build());
///
///         ctx.export("vpcNatIpId2", nameRegex.ips()[0].id());
///         final var natIpCidr = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .natIpCidr("example_value")
///             .nameRegex("^my-NatIp")
///             .build());
///
///         ctx.export("vpcNatIpId3", natIpCidr.ips()[0].id());
///         final var natIpName = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .ids("example_value")
///             .natIpNames("example_value")
///             .build());
///
///         ctx.export("vpcNatIpId4", natIpName.ips()[0].id());
///         final var natIpIds = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .ids("example_value")
///             .natIpIds("example_value")
///             .build());
///
///         ctx.export("vpcNatIpId5", natIpIds.ips()[0].id());
///         final var status = VpcFunctions.getNatIps(GetNatIpsArgs.builder()
///             .natGatewayId("example_value")
///             .ids("example_value")
///             .status("example_value")
///             .build());
///
///         ctx.export("vpcNatIpId6", status.ips()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value-1
///           - example_value-2
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         nameRegex: ^my-NatIp
///   natIpCidr:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         natIpCidr: example_value
///         nameRegex: ^my-NatIp
///   natIpName:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value
///         natIpNames:
///           - example_value
///   natIpIds:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value
///         natIpIds:
///           - example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getNatIps
///       arguments:
///         natGatewayId: example_value
///         ids:
///           - example_value
///         status: example_value
/// outputs:
///   vpcNatIpId1: ${ids.ips[0].id}
///   vpcNatIpId2: ${nameRegex.ips[0].id}
///   vpcNatIpId3: ${natIpCidr.ips[0].id}
///   vpcNatIpId4: ${natIpName.ips[0].id}
///   vpcNatIpId5: ${natIpIds.ips[0].id}
///   vpcNatIpId6: ${status.ips[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_nat_ips_get_nat_ips_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatIpsResult> getNatIps(
  GetNatIpsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getNatIps:getNatIps',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatIpsResult.fromMap(result);
}

/// This data source provides the Network Acls of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.122.0+.
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
/// const example = alicloud.vpc.getNetworkAcls({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstNetworkAclId = example.then(example => example.acls?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.get_network_acls(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstNetworkAclId", example.acls[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Vpc.GetNetworkAcls.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstNetworkAclId"] = example.Apply(getNetworkAclsResult => getNetworkAclsResult.Acls[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpc.GetNetworkAcls(ctx, &vpc.GetNetworkAclsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstNetworkAclId", example.Acls[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworkAclsArgs;
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
///         final var example = VpcFunctions.getNetworkAcls(GetNetworkAclsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstNetworkAclId", example.acls()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:vpc:getNetworkAcls
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstNetworkAclId: ${example.acls[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_network_acls_get_network_acls_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworkAclsResult> getNetworkAcls(
  GetNetworkAclsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getNetworkAcls:getNetworkAcls',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworkAclsResult.fromMap(result);
}

/// This data source provides VPCs available to the user.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const vpcsDs = alicloud.vpc.getNetworks({
///     cidrBlock: "172.16.0.0/12",
///     status: "Available",
///     nameRegex: "^foo",
/// });
/// export const firstVpcId = vpcsDs.then(vpcsDs => vpcsDs.vpcs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// vpcs_ds = alicloud.vpc.get_networks(cidr_block="172.16.0.0/12",
///     status="Available",
///     name_regex="^foo")
/// pulumi.export("firstVpcId", vpcs_ds.vpcs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpcsDs = AliCloud.Vpc.GetNetworks.Invoke(new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         Status = "Available",
///         NameRegex = "^foo",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstVpcId"] = vpcsDs.Apply(getNetworksResult => getNetworksResult.Vpcs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		vpcsDs, err := vpc.GetNetworks(ctx, &vpc.GetNetworksArgs{
/// 			CidrBlock: pulumi.StringRef("172.16.0.0/12"),
/// 			Status:    pulumi.StringRef("Available"),
/// 			NameRegex: pulumi.StringRef("^foo"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstVpcId", vpcsDs.Vpcs[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetNetworksArgs;
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
///         final var vpcsDs = VpcFunctions.getNetworks(GetNetworksArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .status("Available")
///             .nameRegex("^foo")
///             .build());
///
///         ctx.export("firstVpcId", vpcsDs.vpcs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   vpcsDs:
///     fn::invoke:
///       function: alicloud:vpc:getNetworks
///       arguments:
///         cidrBlock: 172.16.0.0/12
///         status: Available
///         nameRegex: ^foo
/// outputs:
///   firstVpcId: ${vpcsDs.vpcs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_networks_get_networks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNetworksResult> getNetworks(
  GetNetworksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getNetworks:getNetworks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNetworksResult.fromMap(result);
}

/// > **NOTE:** Available in v1.162.0+.
///
/// The data source lists a number of VPN Pbr Route Entries resource information owned by an Alicloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const ids = alicloud.vpc.getPbrRouteEntries({
///     vpnGatewayId: "example_vpn_gateway_id",
///     ids: ["example_id"],
/// });
/// export const vpnIpsecServerId1 = ids.then(ids => ids.entries?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_pbr_route_entries(vpn_gateway_id="example_vpn_gateway_id",
///     ids=["example_id"])
/// pulumi.export("vpnIpsecServerId1", ids.entries[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetPbrRouteEntries.Invoke(new()
///     {
///         VpnGatewayId = "example_vpn_gateway_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpnIpsecServerId1"] = ids.Apply(getPbrRouteEntriesResult => getPbrRouteEntriesResult.Entries[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetPbrRouteEntries(ctx, &vpc.GetPbrRouteEntriesArgs{
/// 			VpnGatewayId: "example_vpn_gateway_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpnIpsecServerId1", ids.Entries[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetPbrRouteEntriesArgs;
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
///         final var ids = VpcFunctions.getPbrRouteEntries(GetPbrRouteEntriesArgs.builder()
///             .vpnGatewayId("example_vpn_gateway_id")
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpnIpsecServerId1", ids.entries()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getPbrRouteEntries
///       arguments:
///         vpnGatewayId: example_vpn_gateway_id
///         ids:
///           - example_id
/// outputs:
///   vpnIpsecServerId1: ${ids.entries[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_pbr_route_entries_get_pbr_route_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPbrRouteEntriesResult> getPbrRouteEntries(
  GetPbrRouteEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getPbrRouteEntries:getPbrRouteEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPbrRouteEntriesResult.fromMap(result);
}

/// This data source provides the Vpc Peer Connections of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.186.0.
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
/// const ids = alicloud.vpc.getPeerConnections({});
/// export const vpcPeerConnectionId1 = ids.then(ids => ids.connections?.[0]?.id);
/// const nameRegex = alicloud.vpc.getPeerConnections({
///     nameRegex: "^my-PeerConnection",
/// });
/// export const vpcPeerConnectionId2 = nameRegex.then(nameRegex => nameRegex.connections?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_peer_connections()
/// pulumi.export("vpcPeerConnectionId1", ids.connections[0].id)
/// name_regex = alicloud.vpc.get_peer_connections(name_regex="^my-PeerConnection")
/// pulumi.export("vpcPeerConnectionId2", name_regex.connections[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetPeerConnections.Invoke();
///
///     var nameRegex = AliCloud.Vpc.GetPeerConnections.Invoke(new()
///     {
///         NameRegex = "^my-PeerConnection",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcPeerConnectionId1"] = ids.Apply(getPeerConnectionsResult => getPeerConnectionsResult.Connections[0]?.Id),
///         ["vpcPeerConnectionId2"] = nameRegex.Apply(getPeerConnectionsResult => getPeerConnectionsResult.Connections[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetPeerConnections(ctx, &vpc.GetPeerConnectionsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPeerConnectionId1", ids.Connections[0].Id)
/// 		nameRegex, err := vpc.GetPeerConnections(ctx, &vpc.GetPeerConnectionsArgs{
/// 			NameRegex: pulumi.StringRef("^my-PeerConnection"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPeerConnectionId2", nameRegex.Connections[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetPeerConnectionsArgs;
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
///         final var ids = VpcFunctions.getPeerConnections(GetPeerConnectionsArgs.builder()
///             .build());
///
///         ctx.export("vpcPeerConnectionId1", ids.connections()[0].id());
///         final var nameRegex = VpcFunctions.getPeerConnections(GetPeerConnectionsArgs.builder()
///             .nameRegex("^my-PeerConnection")
///             .build());
///
///         ctx.export("vpcPeerConnectionId2", nameRegex.connections()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getPeerConnections
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getPeerConnections
///       arguments:
///         nameRegex: ^my-PeerConnection
/// outputs:
///   vpcPeerConnectionId1: ${ids.connections[0].id}
///   vpcPeerConnectionId2: ${nameRegex.connections[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_peer_connections_get_peer_connections_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPeerConnectionsResult> getPeerConnections(
  GetPeerConnectionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getPeerConnections:getPeerConnections',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPeerConnectionsResult.fromMap(result);
}

/// This data source provides the Vpc Prefix Lists of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.182.0.
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
/// const ids = alicloud.vpc.getPrefixLists({});
/// export const vpcPrefixListId1 = ids.then(ids => ids.lists?.[0]?.id);
/// const nameRegex = alicloud.vpc.getPrefixLists({
///     nameRegex: "^my-PrefixList",
/// });
/// export const vpcPrefixListId2 = nameRegex.then(nameRegex => nameRegex.lists?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_prefix_lists()
/// pulumi.export("vpcPrefixListId1", ids.lists[0].id)
/// name_regex = alicloud.vpc.get_prefix_lists(name_regex="^my-PrefixList")
/// pulumi.export("vpcPrefixListId2", name_regex.lists[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetPrefixLists.Invoke();
///
///     var nameRegex = AliCloud.Vpc.GetPrefixLists.Invoke(new()
///     {
///         NameRegex = "^my-PrefixList",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcPrefixListId1"] = ids.Apply(getPrefixListsResult => getPrefixListsResult.Lists[0]?.Id),
///         ["vpcPrefixListId2"] = nameRegex.Apply(getPrefixListsResult => getPrefixListsResult.Lists[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetPrefixLists(ctx, &vpc.GetPrefixListsArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPrefixListId1", ids.Lists[0].Id)
/// 		nameRegex, err := vpc.GetPrefixLists(ctx, &vpc.GetPrefixListsArgs{
/// 			NameRegex: pulumi.StringRef("^my-PrefixList"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPrefixListId2", nameRegex.Lists[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetPrefixListsArgs;
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
///         final var ids = VpcFunctions.getPrefixLists(GetPrefixListsArgs.builder()
///             .build());
///
///         ctx.export("vpcPrefixListId1", ids.lists()[0].id());
///         final var nameRegex = VpcFunctions.getPrefixLists(GetPrefixListsArgs.builder()
///             .nameRegex("^my-PrefixList")
///             .build());
///
///         ctx.export("vpcPrefixListId2", nameRegex.lists()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getPrefixLists
///       arguments: {}
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getPrefixLists
///       arguments:
///         nameRegex: ^my-PrefixList
/// outputs:
///   vpcPrefixListId1: ${ids.lists[0].id}
///   vpcPrefixListId2: ${nameRegex.lists[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_prefix_lists_get_prefix_lists_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrefixListsResult> getPrefixLists(
  GetPrefixListsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getPrefixLists:getPrefixLists',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrefixListsResult.fromMap(result);
}

/// This data source provides the Vpc Public Ip Address Pool Cidr Blocks of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.189.0+.
///
/// > **NOTE:** Only users who have the required permissions can use the IP address pool feature of Elastic IP Address (EIP). To apply for the required permissions, [submit a ticket](https://smartservice.console.aliyun.com/service/create-ticket).
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
/// const ids = alicloud.vpc.getPublicIpAddressPoolCidrBlocks({
///     ids: ["example_id"],
///     publicIpAddressPoolId: "example_value",
/// });
/// export const vpcPublicIpAddressPoolCidrBlockId1 = ids.then(ids => ids.blocks?.[0]?.id);
/// const cidrBlock = alicloud.vpc.getPublicIpAddressPoolCidrBlocks({
///     publicIpAddressPoolId: "example_value",
///     cidrBlock: "example_value",
/// });
/// export const vpcPublicIpAddressPoolCidrBlockId2 = cidrBlock.then(cidrBlock => cidrBlock.blocks?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_public_ip_address_pool_cidr_blocks(ids=["example_id"],
///     public_ip_address_pool_id="example_value")
/// pulumi.export("vpcPublicIpAddressPoolCidrBlockId1", ids.blocks[0].id)
/// cidr_block = alicloud.vpc.get_public_ip_address_pool_cidr_blocks(public_ip_address_pool_id="example_value",
///     cidr_block="example_value")
/// pulumi.export("vpcPublicIpAddressPoolCidrBlockId2", cidr_block.blocks[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetPublicIpAddressPoolCidrBlocks.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         PublicIpAddressPoolId = "example_value",
///     });
///
///     var cidrBlock = AliCloud.Vpc.GetPublicIpAddressPoolCidrBlocks.Invoke(new()
///     {
///         PublicIpAddressPoolId = "example_value",
///         CidrBlock = "example_value",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcPublicIpAddressPoolCidrBlockId1"] = ids.Apply(getPublicIpAddressPoolCidrBlocksResult => getPublicIpAddressPoolCidrBlocksResult.Blocks[0]?.Id),
///         ["vpcPublicIpAddressPoolCidrBlockId2"] = cidrBlock.Apply(getPublicIpAddressPoolCidrBlocksResult => getPublicIpAddressPoolCidrBlocksResult.Blocks[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetPublicIpAddressPoolCidrBlocks(ctx, &vpc.GetPublicIpAddressPoolCidrBlocksArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			PublicIpAddressPoolId: "example_value",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPublicIpAddressPoolCidrBlockId1", ids.Blocks[0].Id)
/// 		cidrBlock, err := vpc.GetPublicIpAddressPoolCidrBlocks(ctx, &vpc.GetPublicIpAddressPoolCidrBlocksArgs{
/// 			PublicIpAddressPoolId: "example_value",
/// 			CidrBlock:             pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPublicIpAddressPoolCidrBlockId2", cidrBlock.Blocks[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetPublicIpAddressPoolCidrBlocksArgs;
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
///         final var ids = VpcFunctions.getPublicIpAddressPoolCidrBlocks(GetPublicIpAddressPoolCidrBlocksArgs.builder()
///             .ids("example_id")
///             .publicIpAddressPoolId("example_value")
///             .build());
///
///         ctx.export("vpcPublicIpAddressPoolCidrBlockId1", ids.blocks()[0].id());
///         final var cidrBlock = VpcFunctions.getPublicIpAddressPoolCidrBlocks(GetPublicIpAddressPoolCidrBlocksArgs.builder()
///             .publicIpAddressPoolId("example_value")
///             .cidrBlock("example_value")
///             .build());
///
///         ctx.export("vpcPublicIpAddressPoolCidrBlockId2", cidrBlock.blocks()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getPublicIpAddressPoolCidrBlocks
///       arguments:
///         ids:
///           - example_id
///         publicIpAddressPoolId: example_value
///   cidrBlock:
///     fn::invoke:
///       function: alicloud:vpc:getPublicIpAddressPoolCidrBlocks
///       arguments:
///         publicIpAddressPoolId: example_value
///         cidrBlock: example_value
/// outputs:
///   vpcPublicIpAddressPoolCidrBlockId1: ${ids.blocks[0].id}
///   vpcPublicIpAddressPoolCidrBlockId2: ${cidrBlock.blocks[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_public_ip_address_pool_cidr_blocks_get_public_ip_address_pool_cidr_blocks_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIpAddressPoolCidrBlocksResult> getPublicIpAddressPoolCidrBlocks(
  GetPublicIpAddressPoolCidrBlocksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getPublicIpAddressPoolCidrBlocks:getPublicIpAddressPoolCidrBlocks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpAddressPoolCidrBlocksResult.fromMap(result);
}

/// This data source provides the Vpc Public Ip Address Pools of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.186.0+.
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
/// const ids = alicloud.vpc.getPublicIpAddressPools({
///     ids: ["example_id"],
/// });
/// export const vpcPublicIpAddressPoolId1 = ids.then(ids => ids.pools?.[0]?.id);
/// const nameRegex = alicloud.vpc.getPublicIpAddressPools({
///     nameRegex: "example_name",
/// });
/// export const vpcPublicIpAddressPoolId2 = nameRegex.then(nameRegex => nameRegex.pools?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_public_ip_address_pools(ids=["example_id"])
/// pulumi.export("vpcPublicIpAddressPoolId1", ids.pools[0].id)
/// name_regex = alicloud.vpc.get_public_ip_address_pools(name_regex="example_name")
/// pulumi.export("vpcPublicIpAddressPoolId2", name_regex.pools[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetPublicIpAddressPools.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetPublicIpAddressPools.Invoke(new()
///     {
///         NameRegex = "example_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcPublicIpAddressPoolId1"] = ids.Apply(getPublicIpAddressPoolsResult => getPublicIpAddressPoolsResult.Pools[0]?.Id),
///         ["vpcPublicIpAddressPoolId2"] = nameRegex.Apply(getPublicIpAddressPoolsResult => getPublicIpAddressPoolsResult.Pools[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetPublicIpAddressPools(ctx, &vpc.GetPublicIpAddressPoolsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPublicIpAddressPoolId1", ids.Pools[0].Id)
/// 		nameRegex, err := vpc.GetPublicIpAddressPools(ctx, &vpc.GetPublicIpAddressPoolsArgs{
/// 			NameRegex: pulumi.StringRef("example_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcPublicIpAddressPoolId2", nameRegex.Pools[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetPublicIpAddressPoolsArgs;
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
///         final var ids = VpcFunctions.getPublicIpAddressPools(GetPublicIpAddressPoolsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcPublicIpAddressPoolId1", ids.pools()[0].id());
///         final var nameRegex = VpcFunctions.getPublicIpAddressPools(GetPublicIpAddressPoolsArgs.builder()
///             .nameRegex("example_name")
///             .build());
///
///         ctx.export("vpcPublicIpAddressPoolId2", nameRegex.pools()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getPublicIpAddressPools
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getPublicIpAddressPools
///       arguments:
///         nameRegex: example_name
/// outputs:
///   vpcPublicIpAddressPoolId1: ${ids.pools[0].id}
///   vpcPublicIpAddressPoolId2: ${nameRegex.pools[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_public_ip_address_pools_get_public_ip_address_pools_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPublicIpAddressPoolsResult> getPublicIpAddressPools(
  GetPublicIpAddressPoolsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getPublicIpAddressPools:getPublicIpAddressPools',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPublicIpAddressPoolsResult.fromMap(result);
}

/// This data source provides a list of Route Entries owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available in 1.37.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const defaultGetInstanceTypes = _default.then(_default => alicloud.ecs.getInstanceTypes({
///     availabilityZone: _default.zones?.[0]?.id,
///     cpuCoreCount: 1,
///     memorySize: 2,
/// }));
/// const defaultGetImages = alicloud.ecs.getImages({
///     nameRegex: "^ubuntu_18.*64",
///     mostRecent: true,
///     owners: "system",
/// });
/// const config = new pulumi.Config();
/// const name = config.get("name") || "tf-testAccRouteEntryConfig";
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     name: name,
///     cidrBlock: "10.1.0.0/21",
/// });
/// const fooSwitch = new alicloud.vpc.Switch("foo", {
///     vpcId: fooNetwork.id,
///     cidrBlock: "10.1.1.0/24",
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const tfTestFoo = new alicloud.ecs.SecurityGroup("tf_test_foo", {
///     name: name,
///     description: "foo",
///     vpcId: fooNetwork.id,
/// });
/// const fooInstance = new alicloud.ecs.Instance("foo", {
///     securityGroups: [tfTestFoo.id],
///     vswitchId: fooSwitch.id,
///     allocatePublicIp: true,
///     instanceChargeType: "PostPaid",
///     instanceType: defaultGetInstanceTypes.then(defaultGetInstanceTypes => defaultGetInstanceTypes.instanceTypes?.[0]?.id),
///     internetChargeType: "PayByTraffic",
///     internetMaxBandwidthOut: 5,
///     systemDiskCategory: "cloud_efficiency",
///     imageId: defaultGetImages.then(defaultGetImages => defaultGetImages.images?.[0]?.id),
///     instanceName: name,
/// });
/// const fooRouteEntry = new alicloud.vpc.RouteEntry("foo", {
///     routeTableId: fooNetwork.routeTableId,
///     destinationCidrblock: "172.11.1.1/32",
///     nexthopType: "Instance",
///     nexthopId: fooInstance.id,
/// });
/// const ingress = new alicloud.ecs.SecurityGroupRule("ingress", {
///     type: "ingress",
///     ipProtocol: "tcp",
///     nicType: "intranet",
///     policy: "accept",
///     portRange: "22/22",
///     priority: 1,
///     securityGroupId: tfTestFoo.id,
///     cidrIp: "0.0.0.0/0",
/// });
/// const foo = alicloud.vpc.getRouteEntriesOutput({
///     routeTableId: fooRouteEntry.routeTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// default_get_instance_types = alicloud.ecs.get_instance_types(availability_zone=default.zones[0].id,
///     cpu_core_count=1,
///     memory_size=2)
/// default_get_images = alicloud.ecs.get_images(name_regex="^ubuntu_18.*64",
///     most_recent=True,
///     owners="system")
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-testAccRouteEntryConfig"
/// foo_network = alicloud.vpc.Network("foo",
///     name=name,
///     cidr_block="10.1.0.0/21")
/// foo_switch = alicloud.vpc.Switch("foo",
///     vpc_id=foo_network.id,
///     cidr_block="10.1.1.0/24",
///     availability_zone=default.zones[0].id,
///     vswitch_name=name)
/// tf_test_foo = alicloud.ecs.SecurityGroup("tf_test_foo",
///     name=name,
///     description="foo",
///     vpc_id=foo_network.id)
/// foo_instance = alicloud.ecs.Instance("foo",
///     security_groups=[tf_test_foo.id],
///     vswitch_id=foo_switch.id,
///     allocate_public_ip=True,
///     instance_charge_type="PostPaid",
///     instance_type=default_get_instance_types.instance_types[0].id,
///     internet_charge_type="PayByTraffic",
///     internet_max_bandwidth_out=5,
///     system_disk_category="cloud_efficiency",
///     image_id=default_get_images.images[0].id,
///     instance_name=name)
/// foo_route_entry = alicloud.vpc.RouteEntry("foo",
///     route_table_id=foo_network.route_table_id,
///     destination_cidrblock="172.11.1.1/32",
///     nexthop_type="Instance",
///     nexthop_id=foo_instance.id)
/// ingress = alicloud.ecs.SecurityGroupRule("ingress",
///     type="ingress",
///     ip_protocol="tcp",
///     nic_type="intranet",
///     policy="accept",
///     port_range="22/22",
///     priority=1,
///     security_group_id=tf_test_foo.id,
///     cidr_ip="0.0.0.0/0")
/// foo = alicloud.vpc.get_route_entries_output(route_table_id=foo_route_entry.route_table_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var defaultGetInstanceTypes = AliCloud.Ecs.GetInstanceTypes.Invoke(new()
///     {
///         AvailabilityZone = @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id),
///         CpuCoreCount = 1,
///         MemorySize = 2,
///     });
///
///     var defaultGetImages = AliCloud.Ecs.GetImages.Invoke(new()
///     {
///         NameRegex = "^ubuntu_18.*64",
///         MostRecent = true,
///         Owners = "system",
///     });
///
///     var config = new Config();
///     var name = config.Get("name") ?? "tf-testAccRouteEntryConfig";
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         Name = name,
///         CidrBlock = "10.1.0.0/21",
///     });
///
///     var fooSwitch = new AliCloud.Vpc.Switch("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         CidrBlock = "10.1.1.0/24",
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var tfTestFoo = new AliCloud.Ecs.SecurityGroup("tf_test_foo", new()
///     {
///         Name = name,
///         Description = "foo",
///         VpcId = fooNetwork.Id,
///     });
///
///     var fooInstance = new AliCloud.Ecs.Instance("foo", new()
///     {
///         SecurityGroups = new[]
///         {
///             tfTestFoo.Id,
///         },
///         VswitchId = fooSwitch.Id,
///         AllocatePublicIp = true,
///         InstanceChargeType = "PostPaid",
///         InstanceType = defaultGetInstanceTypes.Apply(getInstanceTypesResult => getInstanceTypesResult.InstanceTypes[0]?.Id),
///         InternetChargeType = "PayByTraffic",
///         InternetMaxBandwidthOut = 5,
///         SystemDiskCategory = "cloud_efficiency",
///         ImageId = defaultGetImages.Apply(getImagesResult => getImagesResult.Images[0]?.Id),
///         InstanceName = name,
///     });
///
///     var fooRouteEntry = new AliCloud.Vpc.RouteEntry("foo", new()
///     {
///         RouteTableId = fooNetwork.RouteTableId,
///         DestinationCidrblock = "172.11.1.1/32",
///         NexthopType = "Instance",
///         NexthopId = fooInstance.Id,
///     });
///
///     var ingress = new AliCloud.Ecs.SecurityGroupRule("ingress", new()
///     {
///         Type = "ingress",
///         IpProtocol = "tcp",
///         NicType = "intranet",
///         Policy = "accept",
///         PortRange = "22/22",
///         Priority = 1,
///         SecurityGroupId = tfTestFoo.Id,
///         CidrIp = "0.0.0.0/0",
///     });
///
///     var foo = AliCloud.Vpc.GetRouteEntries.Invoke(new()
///     {
///         RouteTableId = fooRouteEntry.RouteTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetInstanceTypes, err := ecs.GetInstanceTypes(ctx, &ecs.GetInstanceTypesArgs{
/// 			AvailabilityZone: pulumi.StringRef(_default.Zones[0].Id),
/// 			CpuCoreCount:     pulumi.IntRef(1),
/// 			MemorySize:       pulumi.Float64Ref(2),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultGetImages, err := ecs.GetImages(ctx, &ecs.GetImagesArgs{
/// 			NameRegex:  pulumi.StringRef("^ubuntu_18.*64"),
/// 			MostRecent: pulumi.BoolRef(true),
/// 			Owners:     pulumi.StringRef("system"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		name := "tf-testAccRouteEntryConfig"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.1.0.0/21"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSwitch, err := vpc.NewSwitch(ctx, "foo", &vpc.SwitchArgs{
/// 			VpcId:            fooNetwork.ID(),
/// 			CidrBlock:        pulumi.String("10.1.1.0/24"),
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			VswitchName:      pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tfTestFoo, err := ecs.NewSecurityGroup(ctx, "tf_test_foo", &ecs.SecurityGroupArgs{
/// 			Name:        pulumi.String(name),
/// 			Description: pulumi.String("foo"),
/// 			VpcId:       fooNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooInstance, err := ecs.NewInstance(ctx, "foo", &ecs.InstanceArgs{
/// 			SecurityGroups: pulumi.StringArray{
/// 				tfTestFoo.ID(),
/// 			},
/// 			VswitchId:               fooSwitch.ID(),
/// 			AllocatePublicIp:        pulumi.Bool(true),
/// 			InstanceChargeType:      pulumi.String("PostPaid"),
/// 			InstanceType:            pulumi.String(defaultGetInstanceTypes.InstanceTypes[0].Id),
/// 			InternetChargeType:      pulumi.String("PayByTraffic"),
/// 			InternetMaxBandwidthOut: pulumi.Int(5),
/// 			SystemDiskCategory:      pulumi.String("cloud_efficiency"),
/// 			ImageId:                 pulumi.String(defaultGetImages.Images[0].Id),
/// 			InstanceName:            pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooRouteEntry, err := vpc.NewRouteEntry(ctx, "foo", &vpc.RouteEntryArgs{
/// 			RouteTableId:         fooNetwork.RouteTableId,
/// 			DestinationCidrblock: pulumi.String("172.11.1.1/32"),
/// 			NexthopType:          pulumi.String("Instance"),
/// 			NexthopId:            fooInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewSecurityGroupRule(ctx, "ingress", &ecs.SecurityGroupRuleArgs{
/// 			Type:            pulumi.String("ingress"),
/// 			IpProtocol:      pulumi.String("tcp"),
/// 			NicType:         pulumi.String("intranet"),
/// 			Policy:          pulumi.String("accept"),
/// 			PortRange:       pulumi.String("22/22"),
/// 			Priority:        pulumi.Int(1),
/// 			SecurityGroupId: tfTestFoo.ID(),
/// 			CidrIp:          pulumi.String("0.0.0.0/0"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetRouteEntriesOutput(ctx, vpc.GetRouteEntriesOutputArgs{
/// 			RouteTableId: fooRouteEntry.RouteTableId,
/// 		}, nil)
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
/// import com.pulumi.alicloud.ecs.EcsFunctions;
/// import com.pulumi.alicloud.ecs.inputs.GetInstanceTypesArgs;
/// import com.pulumi.alicloud.ecs.inputs.GetImagesArgs;
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroup;
/// import com.pulumi.alicloud.ecs.SecurityGroupArgs;
/// import com.pulumi.alicloud.ecs.Instance;
/// import com.pulumi.alicloud.ecs.InstanceArgs;
/// import com.pulumi.alicloud.vpc.RouteEntry;
/// import com.pulumi.alicloud.vpc.RouteEntryArgs;
/// import com.pulumi.alicloud.ecs.SecurityGroupRule;
/// import com.pulumi.alicloud.ecs.SecurityGroupRuleArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetRouteEntriesArgs;
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
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         final var defaultGetInstanceTypes = EcsFunctions.getInstanceTypes(GetInstanceTypesArgs.builder()
///             .availabilityZone(default_.zones()[0].id())
///             .cpuCoreCount(1)
///             .memorySize(2)
///             .build());
///
///         final var defaultGetImages = EcsFunctions.getImages(GetImagesArgs.builder()
///             .nameRegex("^ubuntu_18.*64")
///             .mostRecent(true)
///             .owners("system")
///             .build());
///
///         final var name = config.get("name").orElse("tf-testAccRouteEntryConfig");
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("10.1.0.0/21")
///             .build());
///
///         var fooSwitch = new Switch("fooSwitch", SwitchArgs.builder()
///             .vpcId(fooNetwork.id())
///             .cidrBlock("10.1.1.0/24")
///             .availabilityZone(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var tfTestFoo = new SecurityGroup("tfTestFoo", SecurityGroupArgs.builder()
///             .name(name)
///             .description("foo")
///             .vpcId(fooNetwork.id())
///             .build());
///
///         var fooInstance = new Instance("fooInstance", InstanceArgs.builder()
///             .securityGroups(tfTestFoo.id())
///             .vswitchId(fooSwitch.id())
///             .allocatePublicIp(true)
///             .instanceChargeType("PostPaid")
///             .instanceType(defaultGetInstanceTypes.instanceTypes()[0].id())
///             .internetChargeType("PayByTraffic")
///             .internetMaxBandwidthOut(5)
///             .systemDiskCategory("cloud_efficiency")
///             .imageId(defaultGetImages.images()[0].id())
///             .instanceName(name)
///             .build());
///
///         var fooRouteEntry = new RouteEntry("fooRouteEntry", RouteEntryArgs.builder()
///             .routeTableId(fooNetwork.routeTableId())
///             .destinationCidrblock("172.11.1.1/32")
///             .nexthopType("Instance")
///             .nexthopId(fooInstance.id())
///             .build());
///
///         var ingress = new SecurityGroupRule("ingress", SecurityGroupRuleArgs.builder()
///             .type("ingress")
///             .ipProtocol("tcp")
///             .nicType("intranet")
///             .policy("accept")
///             .portRange("22/22")
///             .priority(1)
///             .securityGroupId(tfTestFoo.id())
///             .cidrIp("0.0.0.0/0")
///             .build());
///
///         final var foo = VpcFunctions.getRouteEntries(GetRouteEntriesArgs.builder()
///             .routeTableId(fooRouteEntry.routeTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-testAccRouteEntryConfig
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       name: ${name}
///       cidrBlock: 10.1.0.0/21
///   fooSwitch:
///     type: alicloud:vpc:Switch
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       cidrBlock: 10.1.1.0/24
///       availabilityZone: ${default.zones[0].id}
///       vswitchName: ${name}
///   fooRouteEntry:
///     type: alicloud:vpc:RouteEntry
///     name: foo
///     properties:
///       routeTableId: ${fooNetwork.routeTableId}
///       destinationCidrblock: 172.11.1.1/32
///       nexthopType: Instance
///       nexthopId: ${fooInstance.id}
///   tfTestFoo:
///     type: alicloud:ecs:SecurityGroup
///     name: tf_test_foo
///     properties:
///       name: ${name}
///       description: foo
///       vpcId: ${fooNetwork.id}
///   ingress:
///     type: alicloud:ecs:SecurityGroupRule
///     properties:
///       type: ingress
///       ipProtocol: tcp
///       nicType: intranet
///       policy: accept
///       portRange: 22/22
///       priority: 1
///       securityGroupId: ${tfTestFoo.id}
///       cidrIp: 0.0.0.0/0
///   fooInstance:
///     type: alicloud:ecs:Instance
///     name: foo
///     properties:
///       securityGroups:
///         - ${tfTestFoo.id}
///       vswitchId: ${fooSwitch.id}
///       allocatePublicIp: true # series III
///       instanceChargeType: PostPaid
///       instanceType: ${defaultGetInstanceTypes.instanceTypes[0].id}
///       internetChargeType: PayByTraffic
///       internetMaxBandwidthOut: 5
///       systemDiskCategory: cloud_efficiency
///       imageId: ${defaultGetImages.images[0].id}
///       instanceName: ${name}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   defaultGetInstanceTypes:
///     fn::invoke:
///       function: alicloud:ecs:getInstanceTypes
///       arguments:
///         availabilityZone: ${default.zones[0].id}
///         cpuCoreCount: 1
///         memorySize: 2
///   defaultGetImages:
///     fn::invoke:
///       function: alicloud:ecs:getImages
///       arguments:
///         nameRegex: ^ubuntu_18.*64
///         mostRecent: true
///         owners: system
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getRouteEntries
///       arguments:
///         routeTableId: ${fooRouteEntry.routeTableId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_route_entries_get_route_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteEntriesResult> getRouteEntries(
  GetRouteEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getRouteEntries:getRouteEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteEntriesResult.fromMap(result);
}

/// This data source provides a list of Route Tables owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available since v1.36.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "route-tables-datasource-example-name";
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     cidrBlock: "172.16.0.0/12",
///     vpcName: name,
/// });
/// const fooRouteTable = new alicloud.vpc.RouteTable("foo", {
///     vpcId: fooNetwork.id,
///     routeTableName: name,
///     description: name,
/// });
/// const foo = alicloud.vpc.getRouteTablesOutput({
///     ids: [fooRouteTable.id],
///     routeTableType: "Custom",
/// });
/// export const routeTableIds = foo.apply(foo => foo.ids);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "route-tables-datasource-example-name"
/// foo_network = alicloud.vpc.Network("foo",
///     cidr_block="172.16.0.0/12",
///     vpc_name=name)
/// foo_route_table = alicloud.vpc.RouteTable("foo",
///     vpc_id=foo_network.id,
///     route_table_name=name,
///     description=name)
/// foo = alicloud.vpc.get_route_tables_output(ids=[foo_route_table.id],
///     route_table_type="Custom")
/// pulumi.export("routeTableIds", foo.ids)
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
///     var name = config.Get("name") ?? "route-tables-datasource-example-name";
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         CidrBlock = "172.16.0.0/12",
///         VpcName = name,
///     });
///
///     var fooRouteTable = new AliCloud.Vpc.RouteTable("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         RouteTableName = name,
///         Description = name,
///     });
///
///     var foo = AliCloud.Vpc.GetRouteTables.Invoke(new()
///     {
///         Ids = new[]
///         {
///             fooRouteTable.Id,
///         },
///         RouteTableType = "Custom",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["routeTableIds"] = foo.Apply(getRouteTablesResult => getRouteTablesResult.Ids),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// cfg := config.New(ctx, "")
/// name := "route-tables-datasource-example-name";
/// if param := cfg.Get("name"); param != ""{
/// name = param
/// }
/// fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// CidrBlock: pulumi.String("172.16.0.0/12"),
/// VpcName: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// fooRouteTable, err := vpc.NewRouteTable(ctx, "foo", &vpc.RouteTableArgs{
/// VpcId: fooNetwork.ID(),
/// RouteTableName: pulumi.String(name),
/// Description: pulumi.String(name),
/// })
/// if err != nil {
/// return err
/// }
/// foo := vpc.GetRouteTablesOutput(ctx, vpc.GetRouteTablesOutputArgs{
/// Ids: pulumi.StringArray{
/// fooRouteTable.ID(),
/// },
/// RouteTableType: pulumi.String("Custom"),
/// }, nil);
/// ctx.Export("routeTableIds", foo.ApplyT(func(foo vpc.GetRouteTablesResult) (interface{}, error) {
/// return foo.Ids, nil
/// }).(pulumi.Interface{}Output))
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.RouteTable;
/// import com.pulumi.alicloud.vpc.RouteTableArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetRouteTablesArgs;
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
///         final var name = config.get("name").orElse("route-tables-datasource-example-name");
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/12")
///             .vpcName(name)
///             .build());
///
///         var fooRouteTable = new RouteTable("fooRouteTable", RouteTableArgs.builder()
///             .vpcId(fooNetwork.id())
///             .routeTableName(name)
///             .description(name)
///             .build());
///
///         final var foo = VpcFunctions.getRouteTables(GetRouteTablesArgs.builder()
///             .ids(fooRouteTable.id())
///             .routeTableType("Custom")
///             .build());
///
///         ctx.export("routeTableIds", foo.applyValue(_foo -> _foo.ids()));
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: route-tables-datasource-example-name
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       cidrBlock: 172.16.0.0/12
///       vpcName: ${name}
///   fooRouteTable:
///     type: alicloud:vpc:RouteTable
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       routeTableName: ${name}
///       description: ${name}
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getRouteTables
///       arguments:
///         ids:
///           - ${fooRouteTable.id}
///         routeTableType: Custom
/// outputs:
///   routeTableIds: ${foo.ids}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_route_tables_get_route_tables_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouteTablesResult> getRouteTables(
  GetRouteTablesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getRouteTables:getRouteTables',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouteTablesResult.fromMap(result);
}

/// This data source provides information about [router interfaces](https://www.alibabacloud.com/help/en/express-connect/developer-reference/api-vpc-2016-04-28-describerouterinterfaces-efficiency-channels)
/// that connect VPCs together.
///
/// > **DEPRECATED:**  This datasource has been deprecated from version `1.199.0`. Please use new data source alicloud_express_connect_router_interfaces.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const routerInterfacesDs = alicloud.vpc.getRouterInterfaces({
///     nameRegex: "^testenv",
///     status: "Active",
/// });
/// export const firstRouterInterfaceId = routerInterfacesDs.then(routerInterfacesDs => routerInterfacesDs.interfaces?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// router_interfaces_ds = alicloud.vpc.get_router_interfaces(name_regex="^testenv",
///     status="Active")
/// pulumi.export("firstRouterInterfaceId", router_interfaces_ds.interfaces[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var routerInterfacesDs = AliCloud.Vpc.GetRouterInterfaces.Invoke(new()
///     {
///         NameRegex = "^testenv",
///         Status = "Active",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstRouterInterfaceId"] = routerInterfacesDs.Apply(getRouterInterfacesResult => getRouterInterfacesResult.Interfaces[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		routerInterfacesDs, err := vpc.GetRouterInterfaces(ctx, &vpc.GetRouterInterfacesArgs{
/// 			NameRegex: pulumi.StringRef("^testenv"),
/// 			Status:    pulumi.StringRef("Active"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstRouterInterfaceId", routerInterfacesDs.Interfaces[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetRouterInterfacesArgs;
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
///         final var routerInterfacesDs = VpcFunctions.getRouterInterfaces(GetRouterInterfacesArgs.builder()
///             .nameRegex("^testenv")
///             .status("Active")
///             .build());
///
///         ctx.export("firstRouterInterfaceId", routerInterfacesDs.interfaces()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   routerInterfacesDs:
///     fn::invoke:
///       function: alicloud:vpc:getRouterInterfaces
///       arguments:
///         nameRegex: ^testenv
///         status: Active
/// outputs:
///   firstRouterInterfaceId: ${routerInterfacesDs.interfaces[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_router_interfaces_get_router_interfaces_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRouterInterfacesResult> getRouterInterfaces(
  GetRouterInterfacesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getRouterInterfaces:getRouterInterfaces',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRouterInterfacesResult.fromMap(result);
}

/// This data source provides a list of Snat Entries owned by an Alibaba Cloud account.
///
/// > **NOTE:** Available since 1.37.0+.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "snat-entry-example-name";
/// const _default = alicloud.getZones({
///     availableResourceCreation: "VSwitch",
/// });
/// const fooNetwork = new alicloud.vpc.Network("foo", {
///     name: name,
///     cidrBlock: "172.16.0.0/12",
/// });
/// const fooSwitch = new alicloud.vpc.Switch("foo", {
///     vpcId: fooNetwork.id,
///     cidrBlock: "172.16.0.0/21",
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
///     vswitchName: name,
/// });
/// const fooNatGateway = new alicloud.vpc.NatGateway("foo", {
///     vpcId: fooNetwork.id,
///     specification: "Small",
///     name: name,
/// });
/// const fooEipAddress = new alicloud.ecs.EipAddress("foo", {addressName: name});
/// const fooEipAssociation = new alicloud.ecs.EipAssociation("foo", {
///     allocationId: fooEipAddress.id,
///     instanceId: fooNatGateway.id,
/// });
/// const fooSnatEntry = new alicloud.vpc.SnatEntry("foo", {
///     snatTableId: fooNatGateway.snatTableIds,
///     sourceVswitchId: fooSwitch.id,
///     snatIp: fooEipAddress.ipAddress,
/// });
/// const foo = alicloud.vpc.getSnatEntriesOutput({
///     snatTableId: fooSnatEntry.snatTableId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "snat-entry-example-name"
/// default = alicloud.get_zones(available_resource_creation="VSwitch")
/// foo_network = alicloud.vpc.Network("foo",
///     name=name,
///     cidr_block="172.16.0.0/12")
/// foo_switch = alicloud.vpc.Switch("foo",
///     vpc_id=foo_network.id,
///     cidr_block="172.16.0.0/21",
///     availability_zone=default.zones[0].id,
///     vswitch_name=name)
/// foo_nat_gateway = alicloud.vpc.NatGateway("foo",
///     vpc_id=foo_network.id,
///     specification="Small",
///     name=name)
/// foo_eip_address = alicloud.ecs.EipAddress("foo", address_name=name)
/// foo_eip_association = alicloud.ecs.EipAssociation("foo",
///     allocation_id=foo_eip_address.id,
///     instance_id=foo_nat_gateway.id)
/// foo_snat_entry = alicloud.vpc.SnatEntry("foo",
///     snat_table_id=foo_nat_gateway.snat_table_ids,
///     source_vswitch_id=foo_switch.id,
///     snat_ip=foo_eip_address.ip_address)
/// foo = alicloud.vpc.get_snat_entries_output(snat_table_id=foo_snat_entry.snat_table_id)
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
///     var name = config.Get("name") ?? "snat-entry-example-name";
///     var @default = AliCloud.GetZones.Invoke(new()
///     {
///         AvailableResourceCreation = "VSwitch",
///     });
///
///     var fooNetwork = new AliCloud.Vpc.Network("foo", new()
///     {
///         Name = name,
///         CidrBlock = "172.16.0.0/12",
///     });
///
///     var fooSwitch = new AliCloud.Vpc.Switch("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         CidrBlock = "172.16.0.0/21",
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///         VswitchName = name,
///     });
///
///     var fooNatGateway = new AliCloud.Vpc.NatGateway("foo", new()
///     {
///         VpcId = fooNetwork.Id,
///         Specification = "Small",
///         Name = name,
///     });
///
///     var fooEipAddress = new AliCloud.Ecs.EipAddress("foo", new()
///     {
///         AddressName = name,
///     });
///
///     var fooEipAssociation = new AliCloud.Ecs.EipAssociation("foo", new()
///     {
///         AllocationId = fooEipAddress.Id,
///         InstanceId = fooNatGateway.Id,
///     });
///
///     var fooSnatEntry = new AliCloud.Vpc.SnatEntry("foo", new()
///     {
///         SnatTableId = fooNatGateway.SnatTableIds,
///         SourceVswitchId = fooSwitch.Id,
///         SnatIp = fooEipAddress.IpAddress,
///     });
///
///     var foo = AliCloud.Vpc.GetSnatEntries.Invoke(new()
///     {
///         SnatTableId = fooSnatEntry.SnatTableId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "snat-entry-example-name"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{
/// 			AvailableResourceCreation: pulumi.StringRef("VSwitch"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNetwork, err := vpc.NewNetwork(ctx, "foo", &vpc.NetworkArgs{
/// 			Name:      pulumi.String(name),
/// 			CidrBlock: pulumi.String("172.16.0.0/12"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSwitch, err := vpc.NewSwitch(ctx, "foo", &vpc.SwitchArgs{
/// 			VpcId:            fooNetwork.ID(),
/// 			CidrBlock:        pulumi.String("172.16.0.0/21"),
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 			VswitchName:      pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooNatGateway, err := vpc.NewNatGateway(ctx, "foo", &vpc.NatGatewayArgs{
/// 			VpcId:         fooNetwork.ID(),
/// 			Specification: pulumi.String("Small"),
/// 			Name:          pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooEipAddress, err := ecs.NewEipAddress(ctx, "foo", &ecs.EipAddressArgs{
/// 			AddressName: pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ecs.NewEipAssociation(ctx, "foo", &ecs.EipAssociationArgs{
/// 			AllocationId: fooEipAddress.ID(),
/// 			InstanceId:   fooNatGateway.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSnatEntry, err := vpc.NewSnatEntry(ctx, "foo", &vpc.SnatEntryArgs{
/// 			SnatTableId:     fooNatGateway.SnatTableIds,
/// 			SourceVswitchId: fooSwitch.ID(),
/// 			SnatIp:          fooEipAddress.IpAddress,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetSnatEntriesOutput(ctx, vpc.GetSnatEntriesOutputArgs{
/// 			SnatTableId: fooSnatEntry.SnatTableId,
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.NatGateway;
/// import com.pulumi.alicloud.vpc.NatGatewayArgs;
/// import com.pulumi.alicloud.ecs.EipAddress;
/// import com.pulumi.alicloud.ecs.EipAddressArgs;
/// import com.pulumi.alicloud.ecs.EipAssociation;
/// import com.pulumi.alicloud.ecs.EipAssociationArgs;
/// import com.pulumi.alicloud.vpc.SnatEntry;
/// import com.pulumi.alicloud.vpc.SnatEntryArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetSnatEntriesArgs;
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
///         final var name = config.get("name").orElse("snat-entry-example-name");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .availableResourceCreation("VSwitch")
///             .build());
///
///         var fooNetwork = new Network("fooNetwork", NetworkArgs.builder()
///             .name(name)
///             .cidrBlock("172.16.0.0/12")
///             .build());
///
///         var fooSwitch = new Switch("fooSwitch", SwitchArgs.builder()
///             .vpcId(fooNetwork.id())
///             .cidrBlock("172.16.0.0/21")
///             .availabilityZone(default_.zones()[0].id())
///             .vswitchName(name)
///             .build());
///
///         var fooNatGateway = new NatGateway("fooNatGateway", NatGatewayArgs.builder()
///             .vpcId(fooNetwork.id())
///             .specification("Small")
///             .name(name)
///             .build());
///
///         var fooEipAddress = new EipAddress("fooEipAddress", EipAddressArgs.builder()
///             .addressName(name)
///             .build());
///
///         var fooEipAssociation = new EipAssociation("fooEipAssociation", EipAssociationArgs.builder()
///             .allocationId(fooEipAddress.id())
///             .instanceId(fooNatGateway.id())
///             .build());
///
///         var fooSnatEntry = new SnatEntry("fooSnatEntry", SnatEntryArgs.builder()
///             .snatTableId(fooNatGateway.snatTableIds())
///             .sourceVswitchId(fooSwitch.id())
///             .snatIp(fooEipAddress.ipAddress())
///             .build());
///
///         final var foo = VpcFunctions.getSnatEntries(GetSnatEntriesArgs.builder()
///             .snatTableId(fooSnatEntry.snatTableId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: snat-entry-example-name
/// resources:
///   fooNetwork:
///     type: alicloud:vpc:Network
///     name: foo
///     properties:
///       name: ${name}
///       cidrBlock: 172.16.0.0/12
///   fooSwitch:
///     type: alicloud:vpc:Switch
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       cidrBlock: 172.16.0.0/21
///       availabilityZone: ${default.zones[0].id}
///       vswitchName: ${name}
///   fooNatGateway:
///     type: alicloud:vpc:NatGateway
///     name: foo
///     properties:
///       vpcId: ${fooNetwork.id}
///       specification: Small
///       name: ${name}
///   fooEipAddress:
///     type: alicloud:ecs:EipAddress
///     name: foo
///     properties:
///       addressName: ${name}
///   fooEipAssociation:
///     type: alicloud:ecs:EipAssociation
///     name: foo
///     properties:
///       allocationId: ${fooEipAddress.id}
///       instanceId: ${fooNatGateway.id}
///   fooSnatEntry:
///     type: alicloud:vpc:SnatEntry
///     name: foo
///     properties:
///       snatTableId: ${fooNatGateway.snatTableIds}
///       sourceVswitchId: ${fooSwitch.id}
///       snatIp: ${fooEipAddress.ipAddress}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments:
///         availableResourceCreation: VSwitch
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getSnatEntries
///       arguments:
///         snatTableId: ${fooSnatEntry.snatTableId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_snat_entries_get_snat_entries_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnatEntriesResult> getSnatEntries(
  GetSnatEntriesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getSnatEntries:getSnatEntries',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnatEntriesResult.fromMap(result);
}

/// The SSL-VPN client certificates data source lists lots of SSL-VPN client certificates resource information owned by an Alicloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.vpc.getSslVpnClientCerts({
///     ids: ["fake-cert-id"],
///     sslVpnServerId: "fake-server-id",
///     outputFile: "/tmp/clientcert",
///     nameRegex: "^foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.vpc.get_ssl_vpn_client_certs(ids=["fake-cert-id"],
///     ssl_vpn_server_id="fake-server-id",
///     output_file="/tmp/clientcert",
///     name_regex="^foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Vpc.GetSslVpnClientCerts.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "fake-cert-id",
///         },
///         SslVpnServerId = "fake-server-id",
///         OutputFile = "/tmp/clientcert",
///         NameRegex = "^foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetSslVpnClientCerts(ctx, &vpc.GetSslVpnClientCertsArgs{
/// 			Ids: []string{
/// 				"fake-cert-id",
/// 			},
/// 			SslVpnServerId: pulumi.StringRef("fake-server-id"),
/// 			OutputFile:     pulumi.StringRef("/tmp/clientcert"),
/// 			NameRegex:      pulumi.StringRef("^foo"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetSslVpnClientCertsArgs;
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
///         final var foo = VpcFunctions.getSslVpnClientCerts(GetSslVpnClientCertsArgs.builder()
///             .ids("fake-cert-id")
///             .sslVpnServerId("fake-server-id")
///             .outputFile("/tmp/clientcert")
///             .nameRegex("^foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getSslVpnClientCerts
///       arguments:
///         ids:
///           - fake-cert-id
///         sslVpnServerId: fake-server-id
///         outputFile: /tmp/clientcert
///         nameRegex: ^foo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ssl_vpn_client_certs_get_ssl_vpn_client_certs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslVpnClientCertsResult> getSslVpnClientCerts(
  GetSslVpnClientCertsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getSslVpnClientCerts:getSslVpnClientCerts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslVpnClientCertsResult.fromMap(result);
}

/// The SSL-VPN servers data source lists lots of SSL-VPN servers resource information owned by an Alicloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const foo = alicloud.vpc.getSslVpnServers({
///     ids: ["fake-server-id"],
///     vpnGatewayId: "fake-vpn-id",
///     outputFile: "/tmp/sslserver",
///     nameRegex: "^foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// foo = alicloud.vpc.get_ssl_vpn_servers(ids=["fake-server-id"],
///     vpn_gateway_id="fake-vpn-id",
///     output_file="/tmp/sslserver",
///     name_regex="^foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = AliCloud.Vpc.GetSslVpnServers.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "fake-server-id",
///         },
///         VpnGatewayId = "fake-vpn-id",
///         OutputFile = "/tmp/sslserver",
///         NameRegex = "^foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetSslVpnServers(ctx, &vpc.GetSslVpnServersArgs{
/// 			Ids: []string{
/// 				"fake-server-id",
/// 			},
/// 			VpnGatewayId: pulumi.StringRef("fake-vpn-id"),
/// 			OutputFile:   pulumi.StringRef("/tmp/sslserver"),
/// 			NameRegex:    pulumi.StringRef("^foo"),
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetSslVpnServersArgs;
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
///         final var foo = VpcFunctions.getSslVpnServers(GetSslVpnServersArgs.builder()
///             .ids("fake-server-id")
///             .vpnGatewayId("fake-vpn-id")
///             .outputFile("/tmp/sslserver")
///             .nameRegex("^foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   foo:
///     fn::invoke:
///       function: alicloud:vpc:getSslVpnServers
///       arguments:
///         ids:
///           - fake-server-id
///         vpnGatewayId: fake-vpn-id
///         outputFile: /tmp/sslserver
///         nameRegex: ^foo
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_ssl_vpn_servers_get_ssl_vpn_servers_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSslVpnServersResult> getSslVpnServers(
  GetSslVpnServersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getSslVpnServers:getSslVpnServers',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSslVpnServersResult.fromMap(result);
}

/// This data source provides a list of VSwitches owned by an Alibaba Cloud account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "vswitchDatasourceName";
/// const _default = alicloud.getZones({});
/// const vpc = new alicloud.vpc.Network("vpc", {
///     cidrBlock: "172.16.0.0/16",
///     vpcName: name,
/// });
/// const vswitch = new alicloud.vpc.Switch("vswitch", {
///     vswitchName: name,
///     cidrBlock: "172.16.0.0/24",
///     vpcId: vpc.id,
///     availabilityZone: _default.then(_default => _default.zones?.[0]?.id),
/// });
/// const defaultGetSwitches = alicloud.vpc.getSwitchesOutput({
///     nameRegex: vswitch.vswitchName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "vswitchDatasourceName"
/// default = alicloud.get_zones()
/// vpc = alicloud.vpc.Network("vpc",
///     cidr_block="172.16.0.0/16",
///     vpc_name=name)
/// vswitch = alicloud.vpc.Switch("vswitch",
///     vswitch_name=name,
///     cidr_block="172.16.0.0/24",
///     vpc_id=vpc.id,
///     availability_zone=default.zones[0].id)
/// default_get_switches = alicloud.vpc.get_switches_output(name_regex=vswitch.vswitch_name)
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
///     var name = config.Get("name") ?? "vswitchDatasourceName";
///     var @default = AliCloud.GetZones.Invoke();
///
///     var vpc = new AliCloud.Vpc.Network("vpc", new()
///     {
///         CidrBlock = "172.16.0.0/16",
///         VpcName = name,
///     });
///
///     var vswitch = new AliCloud.Vpc.Switch("vswitch", new()
///     {
///         VswitchName = name,
///         CidrBlock = "172.16.0.0/24",
///         VpcId = vpc.Id,
///         AvailabilityZone = @default.Apply(@default => @default.Apply(getZonesResult => getZonesResult.Zones[0]?.Id)),
///     });
///
///     var defaultGetSwitches = AliCloud.Vpc.GetSwitches.Invoke(new()
///     {
///         NameRegex = vswitch.VswitchName,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "vswitchDatasourceName"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetZones(ctx, &alicloud.GetZonesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := vpc.NewNetwork(ctx, "vpc", &vpc.NetworkArgs{
/// 			CidrBlock: pulumi.String("172.16.0.0/16"),
/// 			VpcName:   pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vswitch, err := vpc.NewSwitch(ctx, "vswitch", &vpc.SwitchArgs{
/// 			VswitchName:      pulumi.String(name),
/// 			CidrBlock:        pulumi.String("172.16.0.0/24"),
/// 			VpcId:            vpc.ID(),
/// 			AvailabilityZone: pulumi.String(_default.Zones[0].Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_ = vpc.GetSwitchesOutput(ctx, vpc.GetSwitchesOutputArgs{
/// 			NameRegex: vswitch.VswitchName,
/// 		}, nil)
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.Switch;
/// import com.pulumi.alicloud.vpc.SwitchArgs;
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetSwitchesArgs;
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
///         final var name = config.get("name").orElse("vswitchDatasourceName");
///         final var default = AlicloudFunctions.getZones(GetZonesArgs.builder()
///             .build());
///
///         var vpc = new Network("vpc", NetworkArgs.builder()
///             .cidrBlock("172.16.0.0/16")
///             .vpcName(name)
///             .build());
///
///         var vswitch = new Switch("vswitch", SwitchArgs.builder()
///             .vswitchName(name)
///             .cidrBlock("172.16.0.0/24")
///             .vpcId(vpc.id())
///             .availabilityZone(default_.zones()[0].id())
///             .build());
///
///         final var defaultGetSwitches = VpcFunctions.getSwitches(GetSwitchesArgs.builder()
///             .nameRegex(vswitch.vswitchName())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: vswitchDatasourceName
/// resources:
///   vpc:
///     type: alicloud:vpc:Network
///     properties:
///       cidrBlock: 172.16.0.0/16
///       vpcName: ${name}
///   vswitch:
///     type: alicloud:vpc:Switch
///     properties:
///       vswitchName: ${name}
///       cidrBlock: 172.16.0.0/24
///       vpcId: ${vpc.id}
///       availabilityZone: ${default.zones[0].id}
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getZones
///       arguments: {}
///   defaultGetSwitches:
///     fn::invoke:
///       function: alicloud:vpc:getSwitches
///       arguments:
///         nameRegex: ${vswitch.vswitchName}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_switches_get_switches_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSwitchesResult> getSwitches(
  GetSwitchesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getSwitches:getSwitches',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSwitchesResult.fromMap(result);
}

/// This data source provides the Vpc Traffic Mirror Filter Egress Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.140.0+.
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
/// const ids = alicloud.vpc.getTrafficMirrorFilterEgressRules({
///     trafficMirrorFilterId: "example_traffic_mirror_filter_id",
///     ids: ["example_id"],
/// });
/// export const vpcTrafficMirrorFilterEgressRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const status = alicloud.vpc.getTrafficMirrorFilterEgressRules({
///     trafficMirrorFilterId: "example_traffic_mirror_filter_id",
///     ids: ["example_id"],
///     status: "Created",
/// });
/// export const vpcTrafficMirrorFilterEgressRuleId2 = status.then(status => status.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_traffic_mirror_filter_egress_rules(traffic_mirror_filter_id="example_traffic_mirror_filter_id",
///     ids=["example_id"])
/// pulumi.export("vpcTrafficMirrorFilterEgressRuleId1", ids.rules[0].id)
/// status = alicloud.vpc.get_traffic_mirror_filter_egress_rules(traffic_mirror_filter_id="example_traffic_mirror_filter_id",
///     ids=["example_id"],
///     status="Created")
/// pulumi.export("vpcTrafficMirrorFilterEgressRuleId2", status.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetTrafficMirrorFilterEgressRules.Invoke(new()
///     {
///         TrafficMirrorFilterId = "example_traffic_mirror_filter_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var status = AliCloud.Vpc.GetTrafficMirrorFilterEgressRules.Invoke(new()
///     {
///         TrafficMirrorFilterId = "example_traffic_mirror_filter_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "Created",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcTrafficMirrorFilterEgressRuleId1"] = ids.Apply(getTrafficMirrorFilterEgressRulesResult => getTrafficMirrorFilterEgressRulesResult.Rules[0]?.Id),
///         ["vpcTrafficMirrorFilterEgressRuleId2"] = status.Apply(getTrafficMirrorFilterEgressRulesResult => getTrafficMirrorFilterEgressRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetTrafficMirrorFilterEgressRules(ctx, &vpc.GetTrafficMirrorFilterEgressRulesArgs{
/// 			TrafficMirrorFilterId: "example_traffic_mirror_filter_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterEgressRuleId1", ids.Rules[0].Id)
/// 		status, err := vpc.GetTrafficMirrorFilterEgressRules(ctx, &vpc.GetTrafficMirrorFilterEgressRulesArgs{
/// 			TrafficMirrorFilterId: "example_traffic_mirror_filter_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("Created"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterEgressRuleId2", status.Rules[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetTrafficMirrorFilterEgressRulesArgs;
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
///         final var ids = VpcFunctions.getTrafficMirrorFilterEgressRules(GetTrafficMirrorFilterEgressRulesArgs.builder()
///             .trafficMirrorFilterId("example_traffic_mirror_filter_id")
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterEgressRuleId1", ids.rules()[0].id());
///         final var status = VpcFunctions.getTrafficMirrorFilterEgressRules(GetTrafficMirrorFilterEgressRulesArgs.builder()
///             .trafficMirrorFilterId("example_traffic_mirror_filter_id")
///             .ids("example_id")
///             .status("Created")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterEgressRuleId2", status.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilterEgressRules
///       arguments:
///         trafficMirrorFilterId: example_traffic_mirror_filter_id
///         ids:
///           - example_id
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilterEgressRules
///       arguments:
///         trafficMirrorFilterId: example_traffic_mirror_filter_id
///         ids:
///           - example_id
///         status: Created
/// outputs:
///   vpcTrafficMirrorFilterEgressRuleId1: ${ids.rules[0].id}
///   vpcTrafficMirrorFilterEgressRuleId2: ${status.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_traffic_mirror_filter_egress_rules_get_traffic_mirror_filter_egress_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMirrorFilterEgressRulesResult> getTrafficMirrorFilterEgressRules(
  GetTrafficMirrorFilterEgressRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getTrafficMirrorFilterEgressRules:getTrafficMirrorFilterEgressRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMirrorFilterEgressRulesResult.fromMap(result);
}

/// This data source provides the Vpc Traffic Mirror Filter Ingress Rules of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.141.0+.
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
/// const ids = alicloud.vpc.getTrafficMirrorFilterIngressRules({
///     trafficMirrorFilterId: "example_traffic_mirror_filter_id",
///     ids: ["example_id"],
/// });
/// export const vpcTrafficMirrorFilterIngressRuleId1 = ids.then(ids => ids.rules?.[0]?.id);
/// const status = alicloud.vpc.getTrafficMirrorFilterIngressRules({
///     trafficMirrorFilterId: "example_traffic_mirror_filter_id",
///     ids: ["example_id"],
///     status: "Created",
/// });
/// export const vpcTrafficMirrorFilterIngressRuleId2 = status.then(status => status.rules?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_traffic_mirror_filter_ingress_rules(traffic_mirror_filter_id="example_traffic_mirror_filter_id",
///     ids=["example_id"])
/// pulumi.export("vpcTrafficMirrorFilterIngressRuleId1", ids.rules[0].id)
/// status = alicloud.vpc.get_traffic_mirror_filter_ingress_rules(traffic_mirror_filter_id="example_traffic_mirror_filter_id",
///     ids=["example_id"],
///     status="Created")
/// pulumi.export("vpcTrafficMirrorFilterIngressRuleId2", status.rules[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetTrafficMirrorFilterIngressRules.Invoke(new()
///     {
///         TrafficMirrorFilterId = "example_traffic_mirror_filter_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var status = AliCloud.Vpc.GetTrafficMirrorFilterIngressRules.Invoke(new()
///     {
///         TrafficMirrorFilterId = "example_traffic_mirror_filter_id",
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "Created",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcTrafficMirrorFilterIngressRuleId1"] = ids.Apply(getTrafficMirrorFilterIngressRulesResult => getTrafficMirrorFilterIngressRulesResult.Rules[0]?.Id),
///         ["vpcTrafficMirrorFilterIngressRuleId2"] = status.Apply(getTrafficMirrorFilterIngressRulesResult => getTrafficMirrorFilterIngressRulesResult.Rules[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetTrafficMirrorFilterIngressRules(ctx, &vpc.GetTrafficMirrorFilterIngressRulesArgs{
/// 			TrafficMirrorFilterId: "example_traffic_mirror_filter_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterIngressRuleId1", ids.Rules[0].Id)
/// 		status, err := vpc.GetTrafficMirrorFilterIngressRules(ctx, &vpc.GetTrafficMirrorFilterIngressRulesArgs{
/// 			TrafficMirrorFilterId: "example_traffic_mirror_filter_id",
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("Created"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterIngressRuleId2", status.Rules[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetTrafficMirrorFilterIngressRulesArgs;
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
///         final var ids = VpcFunctions.getTrafficMirrorFilterIngressRules(GetTrafficMirrorFilterIngressRulesArgs.builder()
///             .trafficMirrorFilterId("example_traffic_mirror_filter_id")
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterIngressRuleId1", ids.rules()[0].id());
///         final var status = VpcFunctions.getTrafficMirrorFilterIngressRules(GetTrafficMirrorFilterIngressRulesArgs.builder()
///             .trafficMirrorFilterId("example_traffic_mirror_filter_id")
///             .ids("example_id")
///             .status("Created")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterIngressRuleId2", status.rules()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilterIngressRules
///       arguments:
///         trafficMirrorFilterId: example_traffic_mirror_filter_id
///         ids:
///           - example_id
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilterIngressRules
///       arguments:
///         trafficMirrorFilterId: example_traffic_mirror_filter_id
///         ids:
///           - example_id
///         status: Created
/// outputs:
///   vpcTrafficMirrorFilterIngressRuleId1: ${ids.rules[0].id}
///   vpcTrafficMirrorFilterIngressRuleId2: ${status.rules[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_traffic_mirror_filter_ingress_rules_get_traffic_mirror_filter_ingress_rules_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMirrorFilterIngressRulesResult> getTrafficMirrorFilterIngressRules(
  GetTrafficMirrorFilterIngressRulesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getTrafficMirrorFilterIngressRules:getTrafficMirrorFilterIngressRules',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMirrorFilterIngressRulesResult.fromMap(result);
}

/// This data source provides the Vpc Traffic Mirror Filters of the current Alibaba Cloud user.
///
/// > **NOTE:** Available since v1.140.0.
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
/// const ids = alicloud.vpc.getTrafficMirrorFilters({
///     ids: ["example_id"],
/// });
/// export const vpcTrafficMirrorFilterId1 = ids.then(ids => ids.filters?.[0]?.id);
/// const nameRegex = alicloud.vpc.getTrafficMirrorFilters({
///     nameRegex: "^my-TrafficMirrorFilter",
/// });
/// export const vpcTrafficMirrorFilterId2 = nameRegex.then(nameRegex => nameRegex.filters?.[0]?.id);
/// const filterName = alicloud.vpc.getTrafficMirrorFilters({
///     trafficMirrorFilterName: "example_traffic_mirror_filter_name",
/// });
/// export const vpcTrafficMirrorFilterId3 = filterName.then(filterName => filterName.filters?.[0]?.id);
/// const status = alicloud.vpc.getTrafficMirrorFilters({
///     status: "^my-TrafficMirrorFilter",
/// });
/// export const vpcTrafficMirrorFilterId4 = status.then(status => status.filters?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_traffic_mirror_filters(ids=["example_id"])
/// pulumi.export("vpcTrafficMirrorFilterId1", ids.filters[0].id)
/// name_regex = alicloud.vpc.get_traffic_mirror_filters(name_regex="^my-TrafficMirrorFilter")
/// pulumi.export("vpcTrafficMirrorFilterId2", name_regex.filters[0].id)
/// filter_name = alicloud.vpc.get_traffic_mirror_filters(traffic_mirror_filter_name="example_traffic_mirror_filter_name")
/// pulumi.export("vpcTrafficMirrorFilterId3", filter_name.filters[0].id)
/// status = alicloud.vpc.get_traffic_mirror_filters(status="^my-TrafficMirrorFilter")
/// pulumi.export("vpcTrafficMirrorFilterId4", status.filters[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetTrafficMirrorFilters.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetTrafficMirrorFilters.Invoke(new()
///     {
///         NameRegex = "^my-TrafficMirrorFilter",
///     });
///
///     var filterName = AliCloud.Vpc.GetTrafficMirrorFilters.Invoke(new()
///     {
///         TrafficMirrorFilterName = "example_traffic_mirror_filter_name",
///     });
///
///     var status = AliCloud.Vpc.GetTrafficMirrorFilters.Invoke(new()
///     {
///         Status = "^my-TrafficMirrorFilter",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcTrafficMirrorFilterId1"] = ids.Apply(getTrafficMirrorFiltersResult => getTrafficMirrorFiltersResult.Filters[0]?.Id),
///         ["vpcTrafficMirrorFilterId2"] = nameRegex.Apply(getTrafficMirrorFiltersResult => getTrafficMirrorFiltersResult.Filters[0]?.Id),
///         ["vpcTrafficMirrorFilterId3"] = filterName.Apply(getTrafficMirrorFiltersResult => getTrafficMirrorFiltersResult.Filters[0]?.Id),
///         ["vpcTrafficMirrorFilterId4"] = status.Apply(getTrafficMirrorFiltersResult => getTrafficMirrorFiltersResult.Filters[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetTrafficMirrorFilters(ctx, &vpc.GetTrafficMirrorFiltersArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterId1", ids.Filters[0].Id)
/// 		nameRegex, err := vpc.GetTrafficMirrorFilters(ctx, &vpc.GetTrafficMirrorFiltersArgs{
/// 			NameRegex: pulumi.StringRef("^my-TrafficMirrorFilter"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterId2", nameRegex.Filters[0].Id)
/// 		filterName, err := vpc.GetTrafficMirrorFilters(ctx, &vpc.GetTrafficMirrorFiltersArgs{
/// 			TrafficMirrorFilterName: pulumi.StringRef("example_traffic_mirror_filter_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterId3", filterName.Filters[0].Id)
/// 		status, err := vpc.GetTrafficMirrorFilters(ctx, &vpc.GetTrafficMirrorFiltersArgs{
/// 			Status: pulumi.StringRef("^my-TrafficMirrorFilter"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorFilterId4", status.Filters[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetTrafficMirrorFiltersArgs;
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
///         final var ids = VpcFunctions.getTrafficMirrorFilters(GetTrafficMirrorFiltersArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterId1", ids.filters()[0].id());
///         final var nameRegex = VpcFunctions.getTrafficMirrorFilters(GetTrafficMirrorFiltersArgs.builder()
///             .nameRegex("^my-TrafficMirrorFilter")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterId2", nameRegex.filters()[0].id());
///         final var filterName = VpcFunctions.getTrafficMirrorFilters(GetTrafficMirrorFiltersArgs.builder()
///             .trafficMirrorFilterName("example_traffic_mirror_filter_name")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterId3", filterName.filters()[0].id());
///         final var status = VpcFunctions.getTrafficMirrorFilters(GetTrafficMirrorFiltersArgs.builder()
///             .status("^my-TrafficMirrorFilter")
///             .build());
///
///         ctx.export("vpcTrafficMirrorFilterId4", status.filters()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilters
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilters
///       arguments:
///         nameRegex: ^my-TrafficMirrorFilter
///   filterName:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilters
///       arguments:
///         trafficMirrorFilterName: example_traffic_mirror_filter_name
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorFilters
///       arguments:
///         status: ^my-TrafficMirrorFilter
/// outputs:
///   vpcTrafficMirrorFilterId1: ${ids.filters[0].id}
///   vpcTrafficMirrorFilterId2: ${nameRegex.filters[0].id}
///   vpcTrafficMirrorFilterId3: ${filterName.filters[0].id}
///   vpcTrafficMirrorFilterId4: ${status.filters[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_traffic_mirror_filters_get_traffic_mirror_filters_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMirrorFiltersResult> getTrafficMirrorFilters(
  GetTrafficMirrorFiltersArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getTrafficMirrorFilters:getTrafficMirrorFilters',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMirrorFiltersResult.fromMap(result);
}

/// Using this data source can open VPC Traffic Mirror service automatically. If the service has been opened, it will return opened.
///
/// For information about VPC Traffic Mirror and how to use it, see [What is VPC Traffic Mirror](https://www.alibabacloud.com/help/en/vpc/user-guide/traffic-mirroring-overview).
///
/// > **NOTE:** Available since v1.141.0.
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
/// const open = alicloud.vpc.getTrafficMirrorService({
///     enable: "On",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// open = alicloud.vpc.get_traffic_mirror_service(enable="On")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var open = AliCloud.Vpc.GetTrafficMirrorService.Invoke(new()
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := vpc.GetTrafficMirrorService(ctx, &vpc.GetTrafficMirrorServiceArgs{
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetTrafficMirrorServiceArgs;
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
///         final var open = VpcFunctions.getTrafficMirrorService(GetTrafficMirrorServiceArgs.builder()
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
///       function: alicloud:vpc:getTrafficMirrorService
///       arguments:
///         enable: On
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_traffic_mirror_service_get_traffic_mirror_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMirrorServiceResult> getTrafficMirrorService(
  GetTrafficMirrorServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getTrafficMirrorService:getTrafficMirrorService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMirrorServiceResult.fromMap(result);
}

/// This data source provides the Vpc Traffic Mirror Sessions of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.142.0+.
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
/// const ids = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
/// });
/// export const vpcTrafficMirrorSessionId1 = ids.then(ids => ids.sessions?.[0]?.id);
/// const nameRegex = alicloud.vpc.getTrafficMirrorSessions({
///     nameRegex: "^my-TrafficMirrorSession",
/// });
/// export const vpcTrafficMirrorSessionId2 = nameRegex.then(nameRegex => nameRegex.sessions?.[0]?.id);
/// const enabled = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     enabled: false,
/// });
/// export const vpcTrafficMirrorSessionId3 = enabled.then(enabled => enabled.sessions?.[0]?.id);
/// const priority = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     priority: 1,
/// });
/// export const vpcTrafficMirrorSessionId4 = priority.then(priority => priority.sessions?.[0]?.id);
/// const filterId = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     trafficMirrorFilterId: "example_value",
/// });
/// export const vpcTrafficMirrorSessionId5 = filterId.then(filterId => filterId.sessions?.[0]?.id);
/// const sessionName = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     trafficMirrorSessionName: "example_value",
/// });
/// export const vpcTrafficMirrorSessionId6 = sessionName.then(sessionName => sessionName.sessions?.[0]?.id);
/// const sourceId = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     trafficMirrorSourceId: "example_value",
/// });
/// export const vpcTrafficMirrorSessionId7 = sourceId.then(sourceId => sourceId.sessions?.[0]?.id);
/// const targetId = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     trafficMirrorTargetId: "example_value",
/// });
/// export const vpcTrafficMirrorSessionId8 = targetId.then(targetId => targetId.sessions?.[0]?.id);
/// const status = alicloud.vpc.getTrafficMirrorSessions({
///     ids: ["example_id"],
///     status: "Created",
/// });
/// export const vpcTrafficMirrorSessionId9 = status.then(status => status.sessions?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// ids = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"])
/// pulumi.export("vpcTrafficMirrorSessionId1", ids.sessions[0].id)
/// name_regex = alicloud.vpc.get_traffic_mirror_sessions(name_regex="^my-TrafficMirrorSession")
/// pulumi.export("vpcTrafficMirrorSessionId2", name_regex.sessions[0].id)
/// enabled = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     enabled=False)
/// pulumi.export("vpcTrafficMirrorSessionId3", enabled.sessions[0].id)
/// priority = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     priority=1)
/// pulumi.export("vpcTrafficMirrorSessionId4", priority.sessions[0].id)
/// filter_id = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     traffic_mirror_filter_id="example_value")
/// pulumi.export("vpcTrafficMirrorSessionId5", filter_id.sessions[0].id)
/// session_name = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     traffic_mirror_session_name="example_value")
/// pulumi.export("vpcTrafficMirrorSessionId6", session_name.sessions[0].id)
/// source_id = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     traffic_mirror_source_id="example_value")
/// pulumi.export("vpcTrafficMirrorSessionId7", source_id.sessions[0].id)
/// target_id = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     traffic_mirror_target_id="example_value")
/// pulumi.export("vpcTrafficMirrorSessionId8", target_id.sessions[0].id)
/// status = alicloud.vpc.get_traffic_mirror_sessions(ids=["example_id"],
///     status="Created")
/// pulumi.export("vpcTrafficMirrorSessionId9", status.sessions[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var ids = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///     });
///
///     var nameRegex = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         NameRegex = "^my-TrafficMirrorSession",
///     });
///
///     var enabled = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Enabled = false,
///     });
///
///     var priority = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Priority = 1,
///     });
///
///     var filterId = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TrafficMirrorFilterId = "example_value",
///     });
///
///     var sessionName = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TrafficMirrorSessionName = "example_value",
///     });
///
///     var sourceId = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TrafficMirrorSourceId = "example_value",
///     });
///
///     var targetId = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         TrafficMirrorTargetId = "example_value",
///     });
///
///     var status = AliCloud.Vpc.GetTrafficMirrorSessions.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_id",
///         },
///         Status = "Created",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["vpcTrafficMirrorSessionId1"] = ids.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId2"] = nameRegex.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId3"] = enabled.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId4"] = priority.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId5"] = filterId.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId6"] = sessionName.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId7"] = sourceId.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId8"] = targetId.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///         ["vpcTrafficMirrorSessionId9"] = status.Apply(getTrafficMirrorSessionsResult => getTrafficMirrorSessionsResult.Sessions[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		ids, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId1", ids.Sessions[0].Id)
/// 		nameRegex, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			NameRegex: pulumi.StringRef("^my-TrafficMirrorSession"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId2", nameRegex.Sessions[0].Id)
/// 		enabled, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Enabled: pulumi.BoolRef(false),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId3", enabled.Sessions[0].Id)
/// 		priority, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Priority: pulumi.IntRef(1),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId4", priority.Sessions[0].Id)
/// 		filterId, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TrafficMirrorFilterId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId5", filterId.Sessions[0].Id)
/// 		sessionName, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TrafficMirrorSessionName: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId6", sessionName.Sessions[0].Id)
/// 		sourceId, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TrafficMirrorSourceId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId7", sourceId.Sessions[0].Id)
/// 		targetId, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			TrafficMirrorTargetId: pulumi.StringRef("example_value"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId8", targetId.Sessions[0].Id)
/// 		status, err := vpc.GetTrafficMirrorSessions(ctx, &vpc.GetTrafficMirrorSessionsArgs{
/// 			Ids: []string{
/// 				"example_id",
/// 			},
/// 			Status: pulumi.StringRef("Created"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("vpcTrafficMirrorSessionId9", status.Sessions[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetTrafficMirrorSessionsArgs;
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
///         final var ids = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId1", ids.sessions()[0].id());
///         final var nameRegex = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .nameRegex("^my-TrafficMirrorSession")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId2", nameRegex.sessions()[0].id());
///         final var enabled = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .enabled(false)
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId3", enabled.sessions()[0].id());
///         final var priority = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .priority(1)
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId4", priority.sessions()[0].id());
///         final var filterId = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .trafficMirrorFilterId("example_value")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId5", filterId.sessions()[0].id());
///         final var sessionName = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .trafficMirrorSessionName("example_value")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId6", sessionName.sessions()[0].id());
///         final var sourceId = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .trafficMirrorSourceId("example_value")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId7", sourceId.sessions()[0].id());
///         final var targetId = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .trafficMirrorTargetId("example_value")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId8", targetId.sessions()[0].id());
///         final var status = VpcFunctions.getTrafficMirrorSessions(GetTrafficMirrorSessionsArgs.builder()
///             .ids("example_id")
///             .status("Created")
///             .build());
///
///         ctx.export("vpcTrafficMirrorSessionId9", status.sessions()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   ids:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///   nameRegex:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         nameRegex: ^my-TrafficMirrorSession
///   enabled:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         enabled: 'false'
///   priority:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         priority: '1'
///   filterId:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         trafficMirrorFilterId: example_value
///   sessionName:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         trafficMirrorSessionName: example_value
///   sourceId:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         trafficMirrorSourceId: example_value
///   targetId:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         trafficMirrorTargetId: example_value
///   status:
///     fn::invoke:
///       function: alicloud:vpc:getTrafficMirrorSessions
///       arguments:
///         ids:
///           - example_id
///         status: Created
/// outputs:
///   vpcTrafficMirrorSessionId1: ${ids.sessions[0].id}
///   vpcTrafficMirrorSessionId2: ${nameRegex.sessions[0].id}
///   vpcTrafficMirrorSessionId3: ${enabled.sessions[0].id}
///   vpcTrafficMirrorSessionId4: ${priority.sessions[0].id}
///   vpcTrafficMirrorSessionId5: ${filterId.sessions[0].id}
///   vpcTrafficMirrorSessionId6: ${sessionName.sessions[0].id}
///   vpcTrafficMirrorSessionId7: ${sourceId.sessions[0].id}
///   vpcTrafficMirrorSessionId8: ${targetId.sessions[0].id}
///   vpcTrafficMirrorSessionId9: ${status.sessions[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_traffic_mirror_sessions_get_traffic_mirror_sessions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrafficMirrorSessionsResult> getTrafficMirrorSessions(
  GetTrafficMirrorSessionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getTrafficMirrorSessions:getTrafficMirrorSessions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrafficMirrorSessionsResult.fromMap(result);
}

/// This data source provides the Vpc Flow Logs of the current Alibaba Cloud user.
///
/// > **NOTE:** Available in v1.122.0+.
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
/// const example = alicloud.vpc.getVpcFlowLogs({
///     ids: ["example_value"],
///     nameRegex: "the_resource_name",
/// });
/// export const firstVpcFlowLogId = example.then(example => example.logs?.[0]?.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.vpc.get_vpc_flow_logs(ids=["example_value"],
///     name_regex="the_resource_name")
/// pulumi.export("firstVpcFlowLogId", example.logs[0].id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.Vpc.GetVpcFlowLogs.Invoke(new()
///     {
///         Ids = new[]
///         {
///             "example_value",
///         },
///         NameRegex = "the_resource_name",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["firstVpcFlowLogId"] = example.Apply(getVpcFlowLogsResult => getVpcFlowLogsResult.Logs[0]?.Id),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/vpc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := vpc.GetVpcFlowLogs(ctx, &vpc.GetVpcFlowLogsArgs{
/// 			Ids: []string{
/// 				"example_value",
/// 			},
/// 			NameRegex: pulumi.StringRef("the_resource_name"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("firstVpcFlowLogId", example.Logs[0].Id)
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
/// import com.pulumi.alicloud.vpc.VpcFunctions;
/// import com.pulumi.alicloud.vpc.inputs.GetVpcFlowLogsArgs;
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
///         final var example = VpcFunctions.getVpcFlowLogs(GetVpcFlowLogsArgs.builder()
///             .ids("example_value")
///             .nameRegex("the_resource_name")
///             .build());
///
///         ctx.export("firstVpcFlowLogId", example.logs()[0].id());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:vpc:getVpcFlowLogs
///       arguments:
///         ids:
///           - example_value
///         nameRegex: the_resource_name
/// outputs:
///   firstVpcFlowLogId: ${example.logs[0].id}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_vpc_get_vpc_flow_logs_get_vpc_flow_logs_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVpcFlowLogsResult> getVpcFlowLogs(
  GetVpcFlowLogsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'alicloud:vpc/getVpcFlowLogs:getVpcFlowLogs',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVpcFlowLogsResult.fromMap(result);
}
