import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_vpc_firewall_args.dart';
import 'firewall_vpc_firewall_local_vpc.dart';
import 'firewall_vpc_firewall_peer_vpc.dart';
import 'firewall_vpc_firewall_state.dart';

/// Provides a Cloud Firewall Vpc Firewall resource.
///
/// For information about Cloud Firewall Vpc Firewall and how to use it, see [What is Vpc Firewall](https://www.alibabacloud.com/help/en/cloud-firewall/developer-reference/api-cloudfw-2017-12-07-createvpcfirewallconfigure).
///
/// &gt; **NOTE:** Available since v1.194.0.
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
/// const current = alicloud.getAccount({});
/// const _default = new alicloud.cloudfirewall.FirewallVpcFirewall("default", {
///     vpcFirewallName: "tf-example",
///     memberUid: current.then(current => current.id),
///     localVpc: {
///         vpcId: "vpc-bp1d065m6hzn1xbw8ibfd",
///         regionNo: "cn-hangzhou",
///         localVpcCidrTableLists: [{
///             localRouteTableId: "vtb-bp1lj0ddg846856chpzrv",
///             localRouteEntryLists: [{
///                 localNextHopInstanceId: "ri-bp1uobww3aputjlwwkyrh",
///                 localDestinationCidr: "10.1.0.0/16",
///             }],
///         }],
///     },
///     peerVpc: {
///         vpcId: "vpc-bp1gcmm64o3caox84v0nz",
///         regionNo: "cn-hangzhou",
///         peerVpcCidrTableLists: [{
///             peerRouteTableId: "vtb-bp1f516f2hh4sok1ig9b5",
///             peerRouteEntryLists: [{
///                 peerDestinationCidr: "10.0.0.0/16",
///                 peerNextHopInstanceId: "ri-bp1thhtgf6ydr2or52l3n",
///             }],
///         }],
///     },
///     status: "open",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// current = alicloud.get_account()
/// default = alicloud.cloudfirewall.FirewallVpcFirewall("default",
///     vpc_firewall_name="tf-example",
///     member_uid=current.id,
///     local_vpc={
///         "vpc_id": "vpc-bp1d065m6hzn1xbw8ibfd",
///         "region_no": "cn-hangzhou",
///         "local_vpc_cidr_table_lists": [{
///             "local_route_table_id": "vtb-bp1lj0ddg846856chpzrv",
///             "local_route_entry_lists": [{
///                 "local_next_hop_instance_id": "ri-bp1uobww3aputjlwwkyrh",
///                 "local_destination_cidr": "10.1.0.0/16",
///             }],
///         }],
///     },
///     peer_vpc={
///         "vpc_id": "vpc-bp1gcmm64o3caox84v0nz",
///         "region_no": "cn-hangzhou",
///         "peer_vpc_cidr_table_lists": [{
///             "peer_route_table_id": "vtb-bp1f516f2hh4sok1ig9b5",
///             "peer_route_entry_lists": [{
///                 "peer_destination_cidr": "10.0.0.0/16",
///                 "peer_next_hop_instance_id": "ri-bp1thhtgf6ydr2or52l3n",
///             }],
///         }],
///     },
///     status="open")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.CloudFirewall.FirewallVpcFirewall("default", new()
///     {
///         VpcFirewallName = "tf-example",
///         MemberUid = current.Apply(getAccountResult => getAccountResult.Id),
///         LocalVpc = new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallLocalVpcArgs
///         {
///             VpcId = "vpc-bp1d065m6hzn1xbw8ibfd",
///             RegionNo = "cn-hangzhou",
///             LocalVpcCidrTableLists = new[]
///             {
///                 new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListArgs
///                 {
///                     LocalRouteTableId = "vtb-bp1lj0ddg846856chpzrv",
///                     LocalRouteEntryLists = new[]
///                     {
///                         new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryListArgs
///                         {
///                             LocalNextHopInstanceId = "ri-bp1uobww3aputjlwwkyrh",
///                             LocalDestinationCidr = "10.1.0.0/16",
///                         },
///                     },
///                 },
///             },
///         },
///         PeerVpc = new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallPeerVpcArgs
///         {
///             VpcId = "vpc-bp1gcmm64o3caox84v0nz",
///             RegionNo = "cn-hangzhou",
///             PeerVpcCidrTableLists = new[]
///             {
///                 new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListArgs
///                 {
///                     PeerRouteTableId = "vtb-bp1f516f2hh4sok1ig9b5",
///                     PeerRouteEntryLists = new[]
///                     {
///                         new AliCloud.CloudFirewall.Inputs.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryListArgs
///                         {
///                             PeerDestinationCidr = "10.0.0.0/16",
///                             PeerNextHopInstanceId = "ri-bp1thhtgf6ydr2or52l3n",
///                         },
///                     },
///                 },
///             },
///         },
///         Status = "open",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/cloudfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfirewall.NewFirewallVpcFirewall(ctx, "default", &cloudfirewall.FirewallVpcFirewallArgs{
/// 			VpcFirewallName: pulumi.String("tf-example"),
/// 			MemberUid:       pulumi.String(current.Id),
/// 			LocalVpc: &cloudfirewall.FirewallVpcFirewallLocalVpcArgs{
/// 				VpcId:    pulumi.String("vpc-bp1d065m6hzn1xbw8ibfd"),
/// 				RegionNo: pulumi.String("cn-hangzhou"),
/// 				LocalVpcCidrTableLists: cloudfirewall.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListArray{
/// 					&cloudfirewall.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListArgs{
/// 						LocalRouteTableId: pulumi.String("vtb-bp1lj0ddg846856chpzrv"),
/// 						LocalRouteEntryLists: cloudfirewall.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryListArray{
/// 							&cloudfirewall.FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryListArgs{
/// 								LocalNextHopInstanceId: pulumi.String("ri-bp1uobww3aputjlwwkyrh"),
/// 								LocalDestinationCidr:   pulumi.String("10.1.0.0/16"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			PeerVpc: &cloudfirewall.FirewallVpcFirewallPeerVpcArgs{
/// 				VpcId:    pulumi.String("vpc-bp1gcmm64o3caox84v0nz"),
/// 				RegionNo: pulumi.String("cn-hangzhou"),
/// 				PeerVpcCidrTableLists: cloudfirewall.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListArray{
/// 					&cloudfirewall.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListArgs{
/// 						PeerRouteTableId: pulumi.String("vtb-bp1f516f2hh4sok1ig9b5"),
/// 						PeerRouteEntryLists: cloudfirewall.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryListArray{
/// 							&cloudfirewall.FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryListArgs{
/// 								PeerDestinationCidr:   pulumi.String("10.0.0.0/16"),
/// 								PeerNextHopInstanceId: pulumi.String("ri-bp1thhtgf6ydr2or52l3n"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Status: pulumi.String("open"),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewall;
/// import com.pulumi.alicloud.cloudfirewall.FirewallVpcFirewallArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.FirewallVpcFirewallLocalVpcArgs;
/// import com.pulumi.alicloud.cloudfirewall.inputs.FirewallVpcFirewallPeerVpcArgs;
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
///         final var current = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new FirewallVpcFirewall("default", FirewallVpcFirewallArgs.builder()
///             .vpcFirewallName("tf-example")
///             .memberUid(current.id())
///             .localVpc(FirewallVpcFirewallLocalVpcArgs.builder()
///                 .vpcId("vpc-bp1d065m6hzn1xbw8ibfd")
///                 .regionNo("cn-hangzhou")
///                 .localVpcCidrTableLists(FirewallVpcFirewallLocalVpcLocalVpcCidrTableListArgs.builder()
///                     .localRouteTableId("vtb-bp1lj0ddg846856chpzrv")
///                     .localRouteEntryLists(FirewallVpcFirewallLocalVpcLocalVpcCidrTableListLocalRouteEntryListArgs.builder()
///                         .localNextHopInstanceId("ri-bp1uobww3aputjlwwkyrh")
///                         .localDestinationCidr("10.1.0.0/16")
///                         .build())
///                     .build())
///                 .build())
///             .peerVpc(FirewallVpcFirewallPeerVpcArgs.builder()
///                 .vpcId("vpc-bp1gcmm64o3caox84v0nz")
///                 .regionNo("cn-hangzhou")
///                 .peerVpcCidrTableLists(FirewallVpcFirewallPeerVpcPeerVpcCidrTableListArgs.builder()
///                     .peerRouteTableId("vtb-bp1f516f2hh4sok1ig9b5")
///                     .peerRouteEntryLists(FirewallVpcFirewallPeerVpcPeerVpcCidrTableListPeerRouteEntryListArgs.builder()
///                         .peerDestinationCidr("10.0.0.0/16")
///                         .peerNextHopInstanceId("ri-bp1thhtgf6ydr2or52l3n")
///                         .build())
///                     .build())
///                 .build())
///             .status("open")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: alicloud:cloudfirewall:FirewallVpcFirewall
///     properties:
///       vpcFirewallName: tf-example
///       memberUid: ${current.id}
///       localVpc:
///         vpcId: vpc-bp1d065m6hzn1xbw8ibfd
///         regionNo: cn-hangzhou
///         localVpcCidrTableLists:
///           - localRouteTableId: vtb-bp1lj0ddg846856chpzrv
///             localRouteEntryLists:
///               - localNextHopInstanceId: ri-bp1uobww3aputjlwwkyrh
///                 localDestinationCidr: 10.1.0.0/16
///       peerVpc:
///         vpcId: vpc-bp1gcmm64o3caox84v0nz
///         regionNo: cn-hangzhou
///         peerVpcCidrTableLists:
///           - peerRouteTableId: vtb-bp1f516f2hh4sok1ig9b5
///             peerRouteEntryLists:
///               - peerDestinationCidr: 10.0.0.0/16
///                 peerNextHopInstanceId: ri-bp1thhtgf6ydr2or52l3n
///       status: open
/// variables:
///   current:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Cloud Firewall Vpc Firewall can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/firewallVpcFirewall:FirewallVpcFirewall example <id>
/// ```
class FirewallVpcFirewall extends pulumi.CustomResource {
  /// Bandwidth specifications for high-speed channels. Unit: Mbps.
  late final pulumi.Output<int> bandwidth;
  /// The communication type of the VPC firewall.
  late final pulumi.Output<String> connectType;
  /// The language type of the requested and received messages. Valid values:
  late final pulumi.Output<String?> lang;
  /// The details of the local VPC. See `local_vpc` below.
  late final pulumi.Output<FirewallVpcFirewallLocalVpc> localVpc;
  /// The UID of the Alibaba Cloud member account.
  late final pulumi.Output<String?> memberUid;
  /// The details of the peer VPC. See `peer_vpc` below.
  late final pulumi.Output<FirewallVpcFirewallPeerVpc> peerVpc;
  /// The region is open.
  late final pulumi.Output<String> regionStatus;
  /// The status of the resource. Valid values:
  late final pulumi.Output<String> status;
  /// The ID of the VPC firewall instance.
  late final pulumi.Output<String> vpcFirewallId;
  /// The name of the VPC firewall instance.
  late final pulumi.Output<String> vpcFirewallName;

  /// Creates a new [FirewallVpcFirewall].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallVpcFirewall]. {@macro pulumi_cloudfirewall_firewall_vpc_firewall_firewall_vpc_firewall_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallVpcFirewall(
    String name, {
    FirewallVpcFirewallArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/firewallVpcFirewall:FirewallVpcFirewall',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    connectType = registerOutput<String>('connectType');
    lang = registerOutput<String?>('lang');
    localVpc = registerOutput<FirewallVpcFirewallLocalVpc>('localVpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallVpcFirewallLocalVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memberUid = registerOutput<String?>('memberUid');
    peerVpc = registerOutput<FirewallVpcFirewallPeerVpc>('peerVpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallVpcFirewallPeerVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionStatus = registerOutput<String>('regionStatus');
    status = registerOutput<String>('status');
    vpcFirewallId = registerOutput<String>('vpcFirewallId');
    vpcFirewallName = registerOutput<String>('vpcFirewallName');
  }

  /// Gets an existing [FirewallVpcFirewall] resource's state with the given [name] and [id].
  static FirewallVpcFirewall get(
    String name,
    pulumi.Input<String> id, {
    FirewallVpcFirewallState? state,
  }) {
    return FirewallVpcFirewall._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallVpcFirewall._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/firewallVpcFirewall:FirewallVpcFirewall',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bandwidth = registerOutput<int>('bandwidth');
    connectType = registerOutput<String>('connectType');
    lang = registerOutput<String?>('lang');
    localVpc = registerOutput<FirewallVpcFirewallLocalVpc>('localVpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallVpcFirewallLocalVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    memberUid = registerOutput<String?>('memberUid');
    peerVpc = registerOutput<FirewallVpcFirewallPeerVpc>('peerVpc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FirewallVpcFirewallPeerVpc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    regionStatus = registerOutput<String>('regionStatus');
    status = registerOutput<String>('status');
    vpcFirewallId = registerOutput<String>('vpcFirewallId');
    vpcFirewallName = registerOutput<String>('vpcFirewallName');
  }
}
