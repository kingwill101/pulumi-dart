import 'package:pulumi/pulumi.dart' as pulumi;
import 'peer_connection_args.dart';
import 'peer_connection_state.dart';

/// Provides a Vpc Peer Peer Connection resource.
///
/// Vpc peer connection.
///
/// For information about Vpc Peer Peer Connection and how to use it, see [What is Peer Connection](https://www.alibabacloud.com/help/en/virtual-private-cloud/latest/createvpcpeer).
///
/// &gt; **NOTE:** Available since v1.186.0.
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
/// const config = new pulumi.Config();
/// const acceptingRegion = config.get("acceptingRegion") || "cn-beijing";
/// const localVpc = new alicloud.vpc.Network("local_vpc", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const acceptingVpc = new alicloud.vpc.Network("accepting_vpc", {
///     vpcName: "terraform-example",
///     cidrBlock: "172.17.3.0/24",
/// });
/// const defaultPeerConnection = new alicloud.vpc.PeerConnection("default", {
///     peerConnectionName: "terraform-example",
///     vpcId: localVpc.id,
///     acceptingAliUid: _default.then(_default => _default.id),
///     acceptingRegionId: acceptingRegion,
///     acceptingVpcId: acceptingVpc.id,
///     description: "terraform-example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// default = alicloud.get_account()
/// config = pulumi.Config()
/// accepting_region = config.get("acceptingRegion")
/// if accepting_region is None:
///     accepting_region = "cn-beijing"
/// local_vpc = alicloud.vpc.Network("local_vpc",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// accepting_vpc = alicloud.vpc.Network("accepting_vpc",
///     vpc_name="terraform-example",
///     cidr_block="172.17.3.0/24")
/// default_peer_connection = alicloud.vpc.PeerConnection("default",
///     peer_connection_name="terraform-example",
///     vpc_id=local_vpc.id,
///     accepting_ali_uid=default.id,
///     accepting_region_id=accepting_region,
///     accepting_vpc_id=accepting_vpc.id,
///     description="terraform-example")
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
///     var config = new Config();
///     var acceptingRegion = config.Get("acceptingRegion") ?? "cn-beijing";
///     var localVpc = new AliCloud.Vpc.Network("local_vpc", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var acceptingVpc = new AliCloud.Vpc.Network("accepting_vpc", new()
///     {
///         VpcName = "terraform-example",
///         CidrBlock = "172.17.3.0/24",
///     });
///
///     var defaultPeerConnection = new AliCloud.Vpc.PeerConnection("default", new()
///     {
///         PeerConnectionName = "terraform-example",
///         VpcId = localVpc.Id,
///         AcceptingAliUid = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         AcceptingRegionId = acceptingRegion,
///         AcceptingVpcId = acceptingVpc.Id,
///         Description = "terraform-example",
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
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cfg := config.New(ctx, "")
/// 		acceptingRegion := "cn-beijing"
/// 		if param := cfg.Get("acceptingRegion"); param != "" {
/// 			acceptingRegion = param
/// 		}
/// 		localVpc, err := vpc.NewNetwork(ctx, "local_vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		acceptingVpc, err := vpc.NewNetwork(ctx, "accepting_vpc", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String("terraform-example"),
/// 			CidrBlock: pulumi.String("172.17.3.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewPeerConnection(ctx, "default", &vpc.PeerConnectionArgs{
/// 			PeerConnectionName: pulumi.String("terraform-example"),
/// 			VpcId:              localVpc.ID(),
/// 			AcceptingAliUid:    pulumi.String(_default.Id),
/// 			AcceptingRegionId:  pulumi.String(acceptingRegion),
/// 			AcceptingVpcId:     acceptingVpc.ID(),
/// 			Description:        pulumi.String("terraform-example"),
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
/// import com.pulumi.alicloud.vpc.Network;
/// import com.pulumi.alicloud.vpc.NetworkArgs;
/// import com.pulumi.alicloud.vpc.PeerConnection;
/// import com.pulumi.alicloud.vpc.PeerConnectionArgs;
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
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         final var acceptingRegion = config.get("acceptingRegion").orElse("cn-beijing");
///         var localVpc = new Network("localVpc", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var acceptingVpc = new Network("acceptingVpc", NetworkArgs.builder()
///             .vpcName("terraform-example")
///             .cidrBlock("172.17.3.0/24")
///             .build());
///
///         var defaultPeerConnection = new PeerConnection("defaultPeerConnection", PeerConnectionArgs.builder()
///             .peerConnectionName("terraform-example")
///             .vpcId(localVpc.id())
///             .acceptingAliUid(default_.id())
///             .acceptingRegionId(acceptingRegion)
///             .acceptingVpcId(acceptingVpc.id())
///             .description("terraform-example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   acceptingRegion:
///     type: string
///     default: cn-beijing
/// resources:
///   localVpc:
///     type: alicloud:vpc:Network
///     name: local_vpc
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   acceptingVpc:
///     type: alicloud:vpc:Network
///     name: accepting_vpc
///     properties:
///       vpcName: terraform-example
///       cidrBlock: 172.17.3.0/24
///   defaultPeerConnection:
///     type: alicloud:vpc:PeerConnection
///     name: default
///     properties:
///       peerConnectionName: terraform-example
///       vpcId: ${localVpc.id}
///       acceptingAliUid: ${default.id}
///       acceptingRegionId: ${acceptingRegion}
///       acceptingVpcId: ${acceptingVpc.id}
///       description: terraform-example
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
/// Vpc Peer Peer Connection can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/peerConnection:PeerConnection example <id>
/// ```
class PeerConnection extends pulumi.CustomResource {
  /// The ID of the Alibaba Cloud account to which the accepter VPC belongs.
  ///
  /// *   To create a VPC peering connection within your Alibaba Cloud account, enter the ID of your Alibaba Cloud account.
  /// *   To create a VPC peering connection between your Alibaba Cloud account and another Alibaba Cloud account, enter the ID of the peer Alibaba Cloud account.
  ///
  /// &gt; **NOTE:**   If the accepter is a RAM user, set `AcceptingAliUid` to the ID of the Alibaba Cloud account that created the RAM user.
  late final pulumi.Output<int?> acceptingAliUid;
  /// The region ID of the accepter VPC of the VPC peering connection that you want to create.
  ///
  /// - To create an intra-region VPC peering connection, enter a region ID that is the same as that of the requester VPC.
  /// - To create an inter-region VPC peering connection, enter a region ID that is different from that of the requester VPC.
  late final pulumi.Output<String> acceptingRegionId;
  /// The ID of the accepter VPC.
  late final pulumi.Output<String> acceptingVpcId;
  /// The bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0. Before you specify this parameter, make sure that you create an inter-region VPC peering connection.
  late final pulumi.Output<int> bandwidth;
  /// The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  late final pulumi.Output<String> createTime;
  /// The description of the VPC peering connection.
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  late final pulumi.Output<String> description;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;
  /// Specifies whether to forcefully delete the VPC peering connection. Valid values:
  late final pulumi.Output<bool?> forceDelete;
  /// The link type of the VPC peering connection that you want to create. Valid values:
  /// - Platinum.
  /// - Gold: default value.
  ///
  /// &gt; **NOTE:**
  ///
  /// &gt; **NOTE:**  - If you need to specify this parameter, ensure that the VPC peering connection is an inter-region connection.
  late final pulumi.Output<String> linkType;
  /// The name of the VPC peering connection.
  /// The name must be 2 to 128 characters in length, and can contain digits, underscores (\_), and hyphens (-). It must start with a letter.
  late final pulumi.Output<String> peerConnectionName;
  /// The region ID of the resource to which you want to create and add tags.
  late final pulumi.Output<String> regionId;
  /// The ID of the new resource group.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String> resourceGroupId;
  /// The status of the resource
  late final pulumi.Output<String> status;
  /// The tags of VpcPeer.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the requester VPC or accepter VPC of the VPC peering connection that you want to query.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [PeerConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeerConnection]. {@macro pulumi_vpc_peer_connection_peer_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeerConnection(
    String name, {
    PeerConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/peerConnection:PeerConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptingAliUid = registerOutput<int?>('acceptingAliUid');
    acceptingRegionId = registerOutput<String>('acceptingRegionId');
    acceptingVpcId = registerOutput<String>('acceptingVpcId');
    bandwidth = registerOutput<int>('bandwidth');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    forceDelete = registerOutput<bool?>('forceDelete');
    linkType = registerOutput<String>('linkType');
    peerConnectionName = registerOutput<String>('peerConnectionName');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [PeerConnection] resource's state with the given [name] and [id].
  static PeerConnection get(
    String name,
    pulumi.Input<String> id, {
    PeerConnectionState? state,
  }) {
    return PeerConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PeerConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:vpc/peerConnection:PeerConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptingAliUid = registerOutput<int?>('acceptingAliUid');
    acceptingRegionId = registerOutput<String>('acceptingRegionId');
    acceptingVpcId = registerOutput<String>('acceptingVpcId');
    bandwidth = registerOutput<int>('bandwidth');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    forceDelete = registerOutput<bool?>('forceDelete');
    linkType = registerOutput<String>('linkType');
    peerConnectionName = registerOutput<String>('peerConnectionName');
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    vpcId = registerOutput<String>('vpcId');
  }
}
