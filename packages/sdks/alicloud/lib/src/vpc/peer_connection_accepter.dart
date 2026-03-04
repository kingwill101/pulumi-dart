import 'package:pulumi/pulumi.dart' as pulumi;
import 'peer_connection_accepter_args.dart';
import 'peer_connection_accepter_state.dart';

/// Provides a Vpc Peer Peer Connection Accepter resource.
///
/// Vpc peer connection receiver.
///
/// For information about Vpc Peer Peer Connection Accepter and how to use it, see [What is Peer Connection Accepter](https://www.alibabacloud.com/help/en/vpc/developer-reference/api-vpcpeer-2022-01-01-acceptvpcpeerconnection).
///
/// &gt; **NOTE:** Available since v1.196.0.
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
/// const name = config.get("name") || "tf-example";
/// const acceptingRegion = config.get("acceptingRegion") || "cn-beijing";
/// const anotherUid = config.get("anotherUid") || "xxxx";
/// const local = new alicloud.vpc.Network("local", {
///     vpcName: name,
///     cidrBlock: "10.4.0.0/16",
/// });
/// const acceptingNetwork = new alicloud.vpc.Network("accepting", {
///     vpcName: name,
///     cidrBlock: "192.168.0.0/16",
/// });
/// const accepting = alicloud.getAccount({});
/// const _default = new alicloud.vpc.PeerConnection("default", {
///     peerConnectionName: name,
///     vpcId: local.id,
///     acceptingAliUid: accepting.then(accepting => accepting.id),
///     acceptingRegionId: acceptingRegion,
///     acceptingVpcId: acceptingNetwork.id,
///     description: name,
/// });
/// const defaultPeerConnectionAccepter = new alicloud.vpc.PeerConnectionAccepter("default", {instanceId: _default.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "tf-example"
/// accepting_region = config.get("acceptingRegion")
/// if accepting_region is None:
///     accepting_region = "cn-beijing"
/// another_uid = config.get("anotherUid")
/// if another_uid is None:
///     another_uid = "xxxx"
/// local = alicloud.vpc.Network("local",
///     vpc_name=name,
///     cidr_block="10.4.0.0/16")
/// accepting_network = alicloud.vpc.Network("accepting",
///     vpc_name=name,
///     cidr_block="192.168.0.0/16")
/// accepting = alicloud.get_account()
/// default = alicloud.vpc.PeerConnection("default",
///     peer_connection_name=name,
///     vpc_id=local.id,
///     accepting_ali_uid=accepting.id,
///     accepting_region_id=accepting_region,
///     accepting_vpc_id=accepting_network.id,
///     description=name)
/// default_peer_connection_accepter = alicloud.vpc.PeerConnectionAccepter("default", instance_id=default.id)
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
///     var name = config.Get("name") ?? "tf-example";
///     var acceptingRegion = config.Get("acceptingRegion") ?? "cn-beijing";
///     var anotherUid = config.Get("anotherUid") ?? "xxxx";
///     var local = new AliCloud.Vpc.Network("local", new()
///     {
///         VpcName = name,
///         CidrBlock = "10.4.0.0/16",
///     });
///
///     var acceptingNetwork = new AliCloud.Vpc.Network("accepting", new()
///     {
///         VpcName = name,
///         CidrBlock = "192.168.0.0/16",
///     });
///
///     var accepting = AliCloud.GetAccount.Invoke();
///
///     var @default = new AliCloud.Vpc.PeerConnection("default", new()
///     {
///         PeerConnectionName = name,
///         VpcId = local.Id,
///         AcceptingAliUid = accepting.Apply(getAccountResult => getAccountResult.Id),
///         AcceptingRegionId = acceptingRegion,
///         AcceptingVpcId = acceptingNetwork.Id,
///         Description = name,
///     });
///
///     var defaultPeerConnectionAccepter = new AliCloud.Vpc.PeerConnectionAccepter("default", new()
///     {
///         InstanceId = @default.Id,
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
/// 		name := "tf-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		acceptingRegion := "cn-beijing"
/// 		if param := cfg.Get("acceptingRegion"); param != "" {
/// 			acceptingRegion = param
/// 		}
/// 		anotherUid := "xxxx"
/// 		if param := cfg.Get("anotherUid"); param != "" {
/// 			anotherUid = param
/// 		}
/// 		local, err := vpc.NewNetwork(ctx, "local", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("10.4.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		acceptingNetwork, err := vpc.NewNetwork(ctx, "accepting", &vpc.NetworkArgs{
/// 			VpcName:   pulumi.String(name),
/// 			CidrBlock: pulumi.String("192.168.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		accepting, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := vpc.NewPeerConnection(ctx, "default", &vpc.PeerConnectionArgs{
/// 			PeerConnectionName: pulumi.String(name),
/// 			VpcId:              local.ID(),
/// 			AcceptingAliUid:    pulumi.String(accepting.Id),
/// 			AcceptingRegionId:  pulumi.String(acceptingRegion),
/// 			AcceptingVpcId:     acceptingNetwork.ID(),
/// 			Description:        pulumi.String(name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = vpc.NewPeerConnectionAccepter(ctx, "default", &vpc.PeerConnectionAccepterArgs{
/// 			InstanceId: _default.ID(),
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
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.vpc.PeerConnection;
/// import com.pulumi.alicloud.vpc.PeerConnectionArgs;
/// import com.pulumi.alicloud.vpc.PeerConnectionAccepter;
/// import com.pulumi.alicloud.vpc.PeerConnectionAccepterArgs;
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
///         final var acceptingRegion = config.get("acceptingRegion").orElse("cn-beijing");
///         final var anotherUid = config.get("anotherUid").orElse("xxxx");
///         var local = new Network("local", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("10.4.0.0/16")
///             .build());
///
///         var acceptingNetwork = new Network("acceptingNetwork", NetworkArgs.builder()
///             .vpcName(name)
///             .cidrBlock("192.168.0.0/16")
///             .build());
///
///         final var accepting = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var default_ = new PeerConnection("default", PeerConnectionArgs.builder()
///             .peerConnectionName(name)
///             .vpcId(local.id())
///             .acceptingAliUid(accepting.id())
///             .acceptingRegionId(acceptingRegion)
///             .acceptingVpcId(acceptingNetwork.id())
///             .description(name)
///             .build());
///
///         var defaultPeerConnectionAccepter = new PeerConnectionAccepter("defaultPeerConnectionAccepter", PeerConnectionAccepterArgs.builder()
///             .instanceId(default_.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: tf-example
///   acceptingRegion:
///     type: string
///     default: cn-beijing
///   anotherUid:
///     type: string
///     default: xxxx
/// resources:
///   local:
///     type: alicloud:vpc:Network
///     properties:
///       vpcName: ${name}
///       cidrBlock: 10.4.0.0/16
///   acceptingNetwork:
///     type: alicloud:vpc:Network
///     name: accepting
///     properties:
///       vpcName: ${name}
///       cidrBlock: 192.168.0.0/16
///   default:
///     type: alicloud:vpc:PeerConnection
///     properties:
///       peerConnectionName: ${name}
///       vpcId: ${local.id}
///       acceptingAliUid: ${accepting.id}
///       acceptingRegionId: ${acceptingRegion}
///       acceptingVpcId: ${acceptingNetwork.id}
///       description: ${name}
///   defaultPeerConnectionAccepter:
///     type: alicloud:vpc:PeerConnectionAccepter
///     name: default
///     properties:
///       instanceId: ${default.id}
/// variables:
///   accepting:
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
/// Vpc Peer Peer Connection Accepter can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:vpc/peerConnectionAccepter:PeerConnectionAccepter example <id>
/// ```
class PeerConnectionAccepter extends pulumi.CustomResource {
  /// The ID of the Alibaba Cloud account (primary account) of the receiving end of the VPC peering connection to be created.-to-peer connection to the VPC account.-account VPC peer-to-peer connection.
  late final pulumi.Output<int> acceptingOwnerUid;

  /// The region ID of the recipient of the VPC peering connection to be created.-to-peer connection in the same region, enter the same region ID as the region ID of the initiator.-region VPC peer-to-peer connection, enter a region ID that is different from the region ID of the initiator.
  late final pulumi.Output<String> acceptingRegionId;

  /// The VPC ID of the receiving end of the VPC peer connection.
  late final pulumi.Output<String> acceptingVpcId;

  /// The new bandwidth of the VPC peering connection. Unit: Mbit/s. The value must be an integer greater than 0.
  late final pulumi.Output<int> bandwidth;

  /// The creation time of the VPC peer connection. Use UTC time in the format' YYYY-MM-DDThh:mm:ssZ '.
  late final pulumi.Output<String> createTime;

  /// The new description of the VPC peering connection.
  /// The description must be 1 to 256 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String> description;

  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  late final pulumi.Output<bool?> dryRun;

  /// Specifies whether to forcefully delete the VPC peering connection. Valid values:
  late final pulumi.Output<bool?> forceDelete;

  /// The ID of the VPC peering connection whose name or description you want to modify.
  late final pulumi.Output<String> instanceId;

  /// Link Type
  late final pulumi.Output<String> linkType;

  /// The new name of the VPC peering connection.
  /// The name must be 1 to 128 characters in length, and cannot start with `http://` or `https://`.
  late final pulumi.Output<String> peerConnectionAccepterName;

  /// The ID of the region where you want to query VPC peering connections.
  late final pulumi.Output<String> regionId;

  /// The ID of the new resource group.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  late final pulumi.Output<String> resourceGroupId;

  /// The status of the resource
  late final pulumi.Output<String> status;

  /// The VPC ID of the initiator of the VPC peering connection.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [PeerConnectionAccepter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PeerConnectionAccepter]. {@macro pulumi_vpc_peer_connection_accepter_peer_connection_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PeerConnectionAccepter(
    String name, {
    PeerConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/peerConnectionAccepter:PeerConnectionAccepter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptingOwnerUid = registerOutput<int>('acceptingOwnerUid');
    acceptingRegionId = registerOutput<String>('acceptingRegionId');
    acceptingVpcId = registerOutput<String>('acceptingVpcId');
    bandwidth = registerOutput<int>('bandwidth');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    forceDelete = registerOutput<bool?>('forceDelete');
    instanceId = registerOutput<String>('instanceId');
    linkType = registerOutput<String>('linkType');
    peerConnectionAccepterName = registerOutput<String>(
      'peerConnectionAccepterName',
    );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [PeerConnectionAccepter] resource's state with the given [name] and [id].
  static PeerConnectionAccepter get(
    String name,
    pulumi.Input<String> id, {
    PeerConnectionAccepterState? state,
  }) {
    return PeerConnectionAccepter._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PeerConnectionAccepter._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:vpc/peerConnectionAccepter:PeerConnectionAccepter',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acceptingOwnerUid = registerOutput<int>('acceptingOwnerUid');
    acceptingRegionId = registerOutput<String>('acceptingRegionId');
    acceptingVpcId = registerOutput<String>('acceptingVpcId');
    bandwidth = registerOutput<int>('bandwidth');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    dryRun = registerOutput<bool?>('dryRun');
    forceDelete = registerOutput<bool?>('forceDelete');
    instanceId = registerOutput<String>('instanceId');
    linkType = registerOutput<String>('linkType');
    peerConnectionAccepterName = registerOutput<String>(
      'peerConnectionAccepterName',
    );
    regionId = registerOutput<String>('regionId');
    resourceGroupId = registerOutput<String>('resourceGroupId');
    status = registerOutput<String>('status');
    vpcId = registerOutput<String>('vpcId');
  }
}
