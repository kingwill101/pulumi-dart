import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter_accepter.dart';
import 'vpc_peering_connection_accepter_args.dart';
import 'vpc_peering_connection_accepter_requester.dart';
import 'vpc_peering_connection_accepter_state.dart';

/// Provides a resource to manage the accepter's side of a VPC Peering Connection.
///
/// When a cross-account (requester's AWS account differs from the accepter's AWS account) or an inter-region
/// VPC Peering Connection is created, a VPC Peering Connection resource is automatically created in the
/// accepter's account.
/// The requester can use the `aws.ec2.VpcPeeringConnection` resource to manage its side of the connection
/// and the accepter can use the `aws.ec2.VpcPeeringConnectionAccepter` resource to "adopt" its side of the
/// connection into management.
///
/// ## Example Usage
///
/// ### Cross-Account Peering Or Cross-Region Peering AWS Provider v6 (and below)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const peerVpc = new aws.ec2.Vpc("peer", {cidrBlock: "10.1.0.0/16"});
/// const peer = aws.getCallerIdentity({});
/// // Requester's side of the connection.
/// const peerVpcPeeringConnection = new aws.ec2.VpcPeeringConnection("peer", {
///     vpcId: main.id,
///     peerVpcId: peerVpc.id,
///     peerOwnerId: peer.then(peer => peer.accountId),
///     peerRegion: "us-west-2",
///     autoAccept: false,
///     tags: {
///         Side: "Requester",
///     },
/// });
/// // Accepter's side of the connection.
/// const peerVpcPeeringConnectionAccepter = new aws.ec2.VpcPeeringConnectionAccepter("peer", {
///     vpcPeeringConnectionId: peerVpcPeeringConnection.id,
///     autoAccept: true,
///     tags: {
///         Side: "Accepter",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// peer_vpc = aws.ec2.Vpc("peer", cidr_block="10.1.0.0/16")
/// peer = aws.get_caller_identity()
/// # Requester's side of the connection.
/// peer_vpc_peering_connection = aws.ec2.VpcPeeringConnection("peer",
///     vpc_id=main.id,
///     peer_vpc_id=peer_vpc.id,
///     peer_owner_id=peer.account_id,
///     peer_region="us-west-2",
///     auto_accept=False,
///     tags={
///         "Side": "Requester",
///     })
/// # Accepter's side of the connection.
/// peer_vpc_peering_connection_accepter = aws.ec2.VpcPeeringConnectionAccepter("peer",
///     vpc_peering_connection_id=peer_vpc_peering_connection.id,
///     auto_accept=True,
///     tags={
///         "Side": "Accepter",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var peerVpc = new Aws.Ec2.Vpc("peer", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var peer = Aws.GetCallerIdentity.Invoke();
///
///     // Requester's side of the connection.
///     var peerVpcPeeringConnection = new Aws.Ec2.VpcPeeringConnection("peer", new()
///     {
///         VpcId = main.Id,
///         PeerVpcId = peerVpc.Id,
///         PeerOwnerId = peer.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId),
///         PeerRegion = "us-west-2",
///         AutoAccept = false,
///         Tags =
///         {
///             { "Side", "Requester" },
///         },
///     });
///
///     // Accepter's side of the connection.
///     var peerVpcPeeringConnectionAccepter = new Aws.Ec2.VpcPeeringConnectionAccepter("peer", new()
///     {
///         VpcPeeringConnectionId = peerVpcPeeringConnection.Id,
///         AutoAccept = true,
///         Tags =
///         {
///             { "Side", "Accepter" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peerVpc, err := ec2.NewVpc(ctx, "peer", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Requester's side of the connection.
/// 		peerVpcPeeringConnection, err := ec2.NewVpcPeeringConnection(ctx, "peer", &ec2.VpcPeeringConnectionArgs{
/// 			VpcId:       main.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVpcId:   peerVpc.ID().ToIDOutput().ToStringOutput(),
/// 			PeerOwnerId: pulumi.String(peer.AccountId),
/// 			PeerRegion:  pulumi.String("us-west-2"),
/// 			AutoAccept:  pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Requester"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the connection.
/// 		_, err = ec2.NewVpcPeeringConnectionAccepter(ctx, "peer", &ec2.VpcPeeringConnectionAccepterArgs{
/// 			VpcPeeringConnectionId: peerVpcPeeringConnection.ID().ToIDOutput().ToStringOutput(),
/// 			AutoAccept:             pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Accepter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "peer" {
/// }
///
/// resource "aws_ec2_vpc" "main" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpc" "peer" {
///   cidr_block = "10.1.0.0/16"
/// }
/// # Requester's side of the connection.
/// resource "aws_ec2_vpcpeeringconnection" "peer" {
///   vpc_id        = aws_ec2_vpc.main.id
///   peer_vpc_id   = aws_ec2_vpc.peer.id
///   peer_owner_id = data.aws_getcalleridentity.peer.account_id
///   peer_region   = "us-west-2"
///   auto_accept   = false
///   tags = {
///     "Side" = "Requester"
///   }
/// }
/// # Accepter's side of the connection.
/// resource "aws_ec2_vpcpeeringconnectionaccepter" "peer" {
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnection.peer.id
///   auto_accept               = true
///   tags = {
///     "Side" = "Accepter"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepter;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var peerVpc = new Vpc("peerVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         final var peer = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         // Requester's side of the connection.
///         var peerVpcPeeringConnection = new VpcPeeringConnection("peerVpcPeeringConnection", VpcPeeringConnectionArgs.builder()
///             .vpcId(main.id())
///             .peerVpcId(peerVpc.id())
///             .peerOwnerId(peer.accountId())
///             .peerRegion("us-west-2")
///             .autoAccept(false)
///             .tags(Map.of("Side", "Requester"))
///             .build());
///
///         // Accepter's side of the connection.
///         var peerVpcPeeringConnectionAccepter = new VpcPeeringConnectionAccepter("peerVpcPeeringConnectionAccepter", VpcPeeringConnectionAccepterArgs.builder()
///             .vpcPeeringConnectionId(peerVpcPeeringConnection.id())
///             .autoAccept(true)
///             .tags(Map.of("Side", "Accepter"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   peerVpc:
///     type: aws:ec2:Vpc
///     name: peer
///     properties:
///       cidrBlock: 10.1.0.0/16
///   # Requester's side of the connection.
///   peerVpcPeeringConnection:
///     type: aws:ec2:VpcPeeringConnection
///     name: peer
///     properties:
///       vpcId: ${main.id}
///       peerVpcId: ${peerVpc.id}
///       peerOwnerId: ${peer.accountId}
///       peerRegion: us-west-2
///       autoAccept: false
///       tags:
///         Side: Requester
///   # Accepter's side of the connection.
///   peerVpcPeeringConnectionAccepter:
///     type: aws:ec2:VpcPeeringConnectionAccepter
///     name: peer
///     properties:
///       vpcPeeringConnectionId: ${peerVpcPeeringConnection.id}
///       autoAccept: true
///       tags:
///         Side: Accepter
/// variables:
///   peer:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
/// ```
///
///
/// ### Cross-Region Peering (Same Account) AWS Provider v7 (and above)
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const peer = new aws.ec2.Vpc("peer", {
///     region: "us-west-2",
///     cidrBlock: "10.1.0.0/16",
/// });
/// // Requester's side of the connection.
/// const peerVpcPeeringConnection = new aws.ec2.VpcPeeringConnection("peer", {
///     vpcId: main.id,
///     peerVpcId: peer.id,
///     peerRegion: "us-west-2",
///     autoAccept: false,
///     tags: {
///         Side: "Requester",
///     },
/// });
/// // Accepter's side of the connection.
/// const peerVpcPeeringConnectionAccepter = new aws.ec2.VpcPeeringConnectionAccepter("peer", {
///     region: "us-west-2",
///     vpcPeeringConnectionId: peerVpcPeeringConnection.id,
///     autoAccept: true,
///     tags: {
///         Side: "Accepter",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// peer = aws.ec2.Vpc("peer",
///     region="us-west-2",
///     cidr_block="10.1.0.0/16")
/// # Requester's side of the connection.
/// peer_vpc_peering_connection = aws.ec2.VpcPeeringConnection("peer",
///     vpc_id=main.id,
///     peer_vpc_id=peer.id,
///     peer_region="us-west-2",
///     auto_accept=False,
///     tags={
///         "Side": "Requester",
///     })
/// # Accepter's side of the connection.
/// peer_vpc_peering_connection_accepter = aws.ec2.VpcPeeringConnectionAccepter("peer",
///     region="us-west-2",
///     vpc_peering_connection_id=peer_vpc_peering_connection.id,
///     auto_accept=True,
///     tags={
///         "Side": "Accepter",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var peer = new Aws.Ec2.Vpc("peer", new()
///     {
///         Region = "us-west-2",
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     // Requester's side of the connection.
///     var peerVpcPeeringConnection = new Aws.Ec2.VpcPeeringConnection("peer", new()
///     {
///         VpcId = main.Id,
///         PeerVpcId = peer.Id,
///         PeerRegion = "us-west-2",
///         AutoAccept = false,
///         Tags =
///         {
///             { "Side", "Requester" },
///         },
///     });
///
///     // Accepter's side of the connection.
///     var peerVpcPeeringConnectionAccepter = new Aws.Ec2.VpcPeeringConnectionAccepter("peer", new()
///     {
///         Region = "us-west-2",
///         VpcPeeringConnectionId = peerVpcPeeringConnection.Id,
///         AutoAccept = true,
///         Tags =
///         {
///             { "Side", "Accepter" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		peer, err := ec2.NewVpc(ctx, "peer", &ec2.VpcArgs{
/// 			Region:    pulumi.String("us-west-2"),
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Requester's side of the connection.
/// 		peerVpcPeeringConnection, err := ec2.NewVpcPeeringConnection(ctx, "peer", &ec2.VpcPeeringConnectionArgs{
/// 			VpcId:      main.ID().ToIDOutput().ToStringOutput(),
/// 			PeerVpcId:  peer.ID().ToIDOutput().ToStringOutput(),
/// 			PeerRegion: pulumi.String("us-west-2"),
/// 			AutoAccept: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Requester"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Accepter's side of the connection.
/// 		_, err = ec2.NewVpcPeeringConnectionAccepter(ctx, "peer", &ec2.VpcPeeringConnectionAccepterArgs{
/// 			Region:                 pulumi.String("us-west-2"),
/// 			VpcPeeringConnectionId: peerVpcPeeringConnection.ID().ToIDOutput().ToStringOutput(),
/// 			AutoAccept:             pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Side": pulumi.String("Accepter"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpc" "main" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_vpc" "peer" {
///   region     = "us-west-2"
///   cidr_block = "10.1.0.0/16"
/// }
/// # Requester's side of the connection.
/// resource "aws_ec2_vpcpeeringconnection" "peer" {
///   vpc_id      = aws_ec2_vpc.main.id
///   peer_vpc_id = aws_ec2_vpc.peer.id
///   peer_region = "us-west-2"
///   auto_accept = false
///   tags = {
///     "Side" = "Requester"
///   }
/// }
/// # Accepter's side of the connection.
/// resource "aws_ec2_vpcpeeringconnectionaccepter" "peer" {
///   region                    = "us-west-2"
///   vpc_peering_connection_id = aws_ec2_vpcpeeringconnection.peer.id
///   auto_accept               = true
///   tags = {
///     "Side" = "Accepter"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepter;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var peer = new Vpc("peer", VpcArgs.builder()
///             .region("us-west-2")
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         // Requester's side of the connection.
///         var peerVpcPeeringConnection = new VpcPeeringConnection("peerVpcPeeringConnection", VpcPeeringConnectionArgs.builder()
///             .vpcId(main.id())
///             .peerVpcId(peer.id())
///             .peerRegion("us-west-2")
///             .autoAccept(false)
///             .tags(Map.of("Side", "Requester"))
///             .build());
///
///         // Accepter's side of the connection.
///         var peerVpcPeeringConnectionAccepter = new VpcPeeringConnectionAccepter("peerVpcPeeringConnectionAccepter", VpcPeeringConnectionAccepterArgs.builder()
///             .region("us-west-2")
///             .vpcPeeringConnectionId(peerVpcPeeringConnection.id())
///             .autoAccept(true)
///             .tags(Map.of("Side", "Accepter"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   peer:
///     type: aws:ec2:Vpc
///     properties:
///       region: us-west-2
///       cidrBlock: 10.1.0.0/16
///   # Requester's side of the connection.
///   peerVpcPeeringConnection:
///     type: aws:ec2:VpcPeeringConnection
///     name: peer
///     properties:
///       vpcId: ${main.id}
///       peerVpcId: ${peer.id}
///       peerRegion: us-west-2
///       autoAccept: false
///       tags:
///         Side: Requester
///   # Accepter's side of the connection.
///   peerVpcPeeringConnectionAccepter:
///     type: aws:ec2:VpcPeeringConnectionAccepter
///     name: peer
///     properties:
///       region: us-west-2
///       vpcPeeringConnectionId: ${peerVpcPeeringConnection.id}
///       autoAccept: true
///       tags:
///         Side: Accepter
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering Connection Accepters using the Peering Connection ID. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcPeeringConnectionAccepter:VpcPeeringConnectionAccepter example pcx-12345678
/// ```
///
/// Certain resource arguments, like `autoAccept`, do not have an EC2 API method for reading the information after peering connection creation. If the argument is set in the Pulumi program on an imported resource, Pulumi will always show a difference. To workaround this behavior, either omit the argument from the Pulumi program or use `ignoreChanges` to hide the difference. For example:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.VpcPeeringConnectionAccepter("example", {});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.VpcPeeringConnectionAccepter("example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.VpcPeeringConnectionAccepter("example");
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2.NewVpcPeeringConnectionAccepter(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2_vpcpeeringconnectionaccepter" "example" {
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionAccepter;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new VpcPeeringConnectionAccepter("example");
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcPeeringConnectionAccepter
/// ```
class VpcPeeringConnectionAccepterEc2 extends pulumi.CustomResource {
  /// The status of the VPC Peering Connection request.
  late final pulumi.Output<String> acceptStatus;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the accepter VPC.
  late final pulumi.Output<VpcPeeringConnectionAccepterAccepter> accepter;
  /// Whether or not to accept the peering request. Defaults to `false`.
  late final pulumi.Output<bool?> autoAccept;
  /// The AWS account ID of the owner of the requester VPC.
  late final pulumi.Output<String> peerOwnerId;
  /// The region of the accepter VPC.
  late final pulumi.Output<String> peerRegion;
  /// The ID of the requester VPC.
  late final pulumi.Output<String> peerVpcId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A configuration block that describes [VPC Peering Connection]
  /// (https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options set for the requester VPC.
  late final pulumi.Output<VpcPeeringConnectionAccepterRequester> requester;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The ID of the accepter VPC.
  late final pulumi.Output<String> vpcId;
  /// The VPC Peering Connection ID to manage.
  late final pulumi.Output<String> vpcPeeringConnectionId;

  /// Creates a new [VpcPeeringConnectionAccepterEc2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcPeeringConnectionAccepterEc2]. {@macro pulumi_ec2_vpc_peering_connection_accepter_vpc_peering_connection_accepter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcPeeringConnectionAccepterEc2(
    String name, {
    VpcPeeringConnectionAccepterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnectionAccepter:VpcPeeringConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptStatus = registerOutput<String>('acceptStatus');
    accepter = registerOutput<VpcPeeringConnectionAccepterAccepter>('accepter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectionAccepterAccepter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoAccept = registerOutput<bool?>('autoAccept');
    peerOwnerId = registerOutput<String>('peerOwnerId');
    peerRegion = registerOutput<String>('peerRegion');
    peerVpcId = registerOutput<String>('peerVpcId');
    region = registerOutput<String>('region');
    requester = registerOutput<VpcPeeringConnectionAccepterRequester>('requester', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectionAccepterRequester.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
    vpcPeeringConnectionId = registerOutput<String>('vpcPeeringConnectionId');
  }

  /// Gets an existing [VpcPeeringConnectionAccepterEc2] resource's state with the given [name] and [id].
  static VpcPeeringConnectionAccepterEc2 get(
    String name,
    pulumi.Input<String> id, {
    VpcPeeringConnectionAccepterState? state,
  }) {
    return VpcPeeringConnectionAccepterEc2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcPeeringConnectionAccepterEc2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnectionAccepter:VpcPeeringConnectionAccepter',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    acceptStatus = registerOutput<String>('acceptStatus');
    accepter = registerOutput<VpcPeeringConnectionAccepterAccepter>('accepter', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectionAccepterAccepter.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    autoAccept = registerOutput<bool?>('autoAccept');
    peerOwnerId = registerOutput<String>('peerOwnerId');
    peerRegion = registerOutput<String>('peerRegion');
    peerVpcId = registerOutput<String>('peerVpcId');
    region = registerOutput<String>('region');
    requester = registerOutput<VpcPeeringConnectionAccepterRequester>('requester', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcPeeringConnectionAccepterRequester.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
    vpcPeeringConnectionId = registerOutput<String>('vpcPeeringConnectionId');
  }
}
