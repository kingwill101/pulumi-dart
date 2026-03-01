import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_prefix_list_association_args.dart';

/// Provides a Cloud Enterprise Network (CEN) Transit Router Prefix List Association resource.
///
/// For information about Cloud Enterprise Network (CEN) Transit Router Prefix List Association and how to use it, see [What is Transit Router Prefix List Association](https://www.alibabacloud.com/help/en/cloud-enterprise-network/latest/createtransitrouterprefixlistassociation).
///
/// > **NOTE:** Available since v1.188.0.
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
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.vpc.PrefixList("example", {entrys: [{
///     cidr: "192.168.0.0/16",
/// }]});
/// const exampleInstance = new alicloud.cen.Instance("example", {
///     cenInstanceName: "tf_example",
///     description: "an example for cen",
/// });
/// const exampleTransitRouter = new alicloud.cen.TransitRouter("example", {
///     transitRouterName: "tf_example",
///     cenId: exampleInstance.id,
/// });
/// const exampleTransitRouterRouteTable = new alicloud.cen.TransitRouterRouteTable("example", {transitRouterId: exampleTransitRouter.transitRouterId});
/// const exampleTransitRouterPrefixListAssociation = new alicloud.cen.TransitRouterPrefixListAssociation("example", {
///     prefixListId: example.id,
///     transitRouterId: exampleTransitRouter.transitRouterId,
///     transitRouterTableId: exampleTransitRouterRouteTable.transitRouterRouteTableId,
///     nextHop: "BlackHole",
///     nextHopType: "BlackHole",
///     ownerUid: _default.then(_default => _default.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// example = alicloud.vpc.PrefixList("example", entrys=[{
///     "cidr": "192.168.0.0/16",
/// }])
/// example_instance = alicloud.cen.Instance("example",
///     cen_instance_name="tf_example",
///     description="an example for cen")
/// example_transit_router = alicloud.cen.TransitRouter("example",
///     transit_router_name="tf_example",
///     cen_id=example_instance.id)
/// example_transit_router_route_table = alicloud.cen.TransitRouterRouteTable("example", transit_router_id=example_transit_router.transit_router_id)
/// example_transit_router_prefix_list_association = alicloud.cen.TransitRouterPrefixListAssociation("example",
///     prefix_list_id=example.id,
///     transit_router_id=example_transit_router.transit_router_id,
///     transit_router_table_id=example_transit_router_route_table.transit_router_route_table_id,
///     next_hop="BlackHole",
///     next_hop_type="BlackHole",
///     owner_uid=default.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Vpc.PrefixList("example", new()
///     {
///         Entrys = new[]
///         {
///             new AliCloud.Vpc.Inputs.PrefixListEntryArgs
///             {
///                 Cidr = "192.168.0.0/16",
///             },
///         },
///     });
///
///     var exampleInstance = new AliCloud.Cen.Instance("example", new()
///     {
///         CenInstanceName = "tf_example",
///         Description = "an example for cen",
///     });
///
///     var exampleTransitRouter = new AliCloud.Cen.TransitRouter("example", new()
///     {
///         TransitRouterName = "tf_example",
///         CenId = exampleInstance.Id,
///     });
///
///     var exampleTransitRouterRouteTable = new AliCloud.Cen.TransitRouterRouteTable("example", new()
///     {
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///     });
///
///     var exampleTransitRouterPrefixListAssociation = new AliCloud.Cen.TransitRouterPrefixListAssociation("example", new()
///     {
///         PrefixListId = example.Id,
///         TransitRouterId = exampleTransitRouter.TransitRouterId,
///         TransitRouterTableId = exampleTransitRouterRouteTable.TransitRouterRouteTableId,
///         NextHop = "BlackHole",
///         NextHopType = "BlackHole",
///         OwnerUid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///     });
///
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
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := vpc.NewPrefixList(ctx, "example", &vpc.PrefixListArgs{
/// 			Entrys: vpc.PrefixListEntryArray{
/// 				&vpc.PrefixListEntryArgs{
/// 					Cidr: pulumi.String("192.168.0.0/16"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleInstance, err := cen.NewInstance(ctx, "example", &cen.InstanceArgs{
/// 			CenInstanceName: pulumi.String("tf_example"),
/// 			Description:     pulumi.String("an example for cen"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouter, err := cen.NewTransitRouter(ctx, "example", &cen.TransitRouterArgs{
/// 			TransitRouterName: pulumi.String("tf_example"),
/// 			CenId:             exampleInstance.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTransitRouterRouteTable, err := cen.NewTransitRouterRouteTable(ctx, "example", &cen.TransitRouterRouteTableArgs{
/// 			TransitRouterId: exampleTransitRouter.TransitRouterId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cen.NewTransitRouterPrefixListAssociation(ctx, "example", &cen.TransitRouterPrefixListAssociationArgs{
/// 			PrefixListId:         example.ID(),
/// 			TransitRouterId:      exampleTransitRouter.TransitRouterId,
/// 			TransitRouterTableId: exampleTransitRouterRouteTable.TransitRouterRouteTableId,
/// 			NextHop:              pulumi.String("BlackHole"),
/// 			NextHopType:          pulumi.String("BlackHole"),
/// 			OwnerUid:             pulumi.String(_default.Id),
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
/// import com.pulumi.alicloud.vpc.PrefixList;
/// import com.pulumi.alicloud.vpc.PrefixListArgs;
/// import com.pulumi.alicloud.vpc.inputs.PrefixListEntryArgs;
/// import com.pulumi.alicloud.cen.Instance;
/// import com.pulumi.alicloud.cen.InstanceArgs;
/// import com.pulumi.alicloud.cen.TransitRouter;
/// import com.pulumi.alicloud.cen.TransitRouterArgs;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTable;
/// import com.pulumi.alicloud.cen.TransitRouterRouteTableArgs;
/// import com.pulumi.alicloud.cen.TransitRouterPrefixListAssociation;
/// import com.pulumi.alicloud.cen.TransitRouterPrefixListAssociationArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new PrefixList("example", PrefixListArgs.builder()
///             .entrys(PrefixListEntryArgs.builder()
///                 .cidr("192.168.0.0/16")
///                 .build())
///             .build());
///
///         var exampleInstance = new Instance("exampleInstance", InstanceArgs.builder()
///             .cenInstanceName("tf_example")
///             .description("an example for cen")
///             .build());
///
///         var exampleTransitRouter = new TransitRouter("exampleTransitRouter", TransitRouterArgs.builder()
///             .transitRouterName("tf_example")
///             .cenId(exampleInstance.id())
///             .build());
///
///         var exampleTransitRouterRouteTable = new TransitRouterRouteTable("exampleTransitRouterRouteTable", TransitRouterRouteTableArgs.builder()
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .build());
///
///         var exampleTransitRouterPrefixListAssociation = new TransitRouterPrefixListAssociation("exampleTransitRouterPrefixListAssociation", TransitRouterPrefixListAssociationArgs.builder()
///             .prefixListId(example.id())
///             .transitRouterId(exampleTransitRouter.transitRouterId())
///             .transitRouterTableId(exampleTransitRouterRouteTable.transitRouterRouteTableId())
///             .nextHop("BlackHole")
///             .nextHopType("BlackHole")
///             .ownerUid(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:vpc:PrefixList
///     properties:
///       entrys:
///         - cidr: 192.168.0.0/16
///   exampleInstance:
///     type: alicloud:cen:Instance
///     name: example
///     properties:
///       cenInstanceName: tf_example
///       description: an example for cen
///   exampleTransitRouter:
///     type: alicloud:cen:TransitRouter
///     name: example
///     properties:
///       transitRouterName: tf_example
///       cenId: ${exampleInstance.id}
///   exampleTransitRouterRouteTable:
///     type: alicloud:cen:TransitRouterRouteTable
///     name: example
///     properties:
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///   exampleTransitRouterPrefixListAssociation:
///     type: alicloud:cen:TransitRouterPrefixListAssociation
///     name: example
///     properties:
///       prefixListId: ${example.id}
///       transitRouterId: ${exampleTransitRouter.transitRouterId}
///       transitRouterTableId: ${exampleTransitRouterRouteTable.transitRouterRouteTableId}
///       nextHop: BlackHole
///       nextHopType: BlackHole
///       ownerUid: ${default.id}
/// variables:
///   default:
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
/// Cloud Enterprise Network (CEN) Transit Router Prefix List Association can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cen/transitRouterPrefixListAssociation:TransitRouterPrefixListAssociation default <prefix_list_id>:<transit_router_id>:<transit_router_table_id>:<next_hop>.
/// ```
class TransitRouterPrefixListAssociation extends pulumi.CustomResource {
  /// The ID of the next hop. **NOTE:** If `next_hop` is set to `BlackHole`, you must set this parameter to `BlackHole`.
  late final pulumi.Output<String> nextHop;
  /// The type of the next hop. Valid values:
  /// - `BlackHole`: Specifies that all the CIDR blocks in the prefix list are blackhole routes. Packets destined for the CIDR blocks are dropped.
  /// - `VPC`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual private cloud (VPC) connection.
  /// - `VBR`: Specifies that the next hop of the CIDR blocks in the prefix list is a virtual border router (VBR) connection.
  /// - `TR`: Specifies that the next hop of the CIDR blocks in the prefix list is an inter-region connection.
  late final pulumi.Output<String> nextHopType;
  /// The ID of the Alibaba Cloud account to which the prefix list belongs.
  late final pulumi.Output<int> ownerUid;
  /// The ID of the prefix list.
  late final pulumi.Output<String> prefixListId;
  /// The status of the prefix list.
  late final pulumi.Output<String> status;
  /// The ID of the transit router.
  late final pulumi.Output<String> transitRouterId;
  /// The ID of the route table of the transit router.
  late final pulumi.Output<String> transitRouterTableId;

  /// Creates a new [TransitRouterPrefixListAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitRouterPrefixListAssociation]. {@macro pulumi_cen_transit_router_prefix_list_association_transit_router_prefix_list_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitRouterPrefixListAssociation(
    String name, {
    TransitRouterPrefixListAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cen/transitRouterPrefixListAssociation:TransitRouterPrefixListAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.nextHop = registerOutput<String>('nextHop');
    this.nextHopType = registerOutput<String>('nextHopType');
    this.ownerUid = registerOutput<int>('ownerUid');
    this.prefixListId = registerOutput<String>('prefixListId');
    this.status = registerOutput<String>('status');
    this.transitRouterId = registerOutput<String>('transitRouterId');
    this.transitRouterTableId = registerOutput<String>('transitRouterTableId');
  }
}
