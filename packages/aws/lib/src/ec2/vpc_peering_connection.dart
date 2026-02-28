import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_peering_connection_accepter.dart';
import 'vpc_peering_connection_args.dart';
import 'vpc_peering_connection_requester.dart';

/// Provides a resource to manage a VPC peering connection.
///
/// > **Note:** Modifying the VPC Peering Connection options requires peering to be active. An automatic activation
/// can be done using the `auto_accept` attribute. Alternatively, the VPC Peering
/// Connection has to be made active manually using other means. See notes below for
/// more information.
///
/// > **NOTE on VPC Peering Connections and VPC Peering Connection Options:** This provider provides
/// both a standalone VPC Peering Connection Options and a VPC Peering Connection
/// resource with `accepter` and `requester` attributes. Do not manage options for the same VPC peering
/// connection in both a VPC Peering Connection resource and a VPC Peering Connection Options resource.
/// Doing so will cause a conflict of options and will overwrite the options.
/// Using a VPC Peering Connection Options resource decouples management of the connection options from
/// management of the VPC Peering Connection and allows options to be set correctly in cross-account scenarios.
///
/// > **Note:** For cross-account (requester's AWS account differs from the accepter's AWS account) or inter-region
/// VPC Peering Connections use the `aws.ec2.VpcPeeringConnection` resource to manage the requester's side of the
/// connection and use the `aws.ec2.VpcPeeringConnectionAccepter` resource to manage the accepter's side of the connection.
///
/// > **Note:** Creating multiple `aws.ec2.VpcPeeringConnection` resources with the same `peer_vpc_id` and `vpc_id` will not produce an error. Instead, AWS will return the connection `id` that already exists, resulting in multiple `aws.ec2.VpcPeeringConnection` resources with the same `id`.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
///     peerOwnerId: peerOwnerId,
///     peerVpcId: bar.id,
///     vpcId: fooAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.VpcPeeringConnection("foo",
///     peer_owner_id=peer_owner_id,
///     peer_vpc_id=bar["id"],
///     vpc_id=foo_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
///     {
///         PeerOwnerId = peerOwnerId,
///         PeerVpcId = bar.Id,
///         VpcId = fooAwsVpc.Id,
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
/// 		_, err := ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// 			PeerOwnerId: pulumi.Any(peerOwnerId),
/// 			PeerVpcId:   pulumi.Any(bar.Id),
/// 			VpcId:       pulumi.Any(fooAwsVpc.Id),
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
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
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
///         var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
///             .peerOwnerId(peerOwnerId)
///             .peerVpcId(bar.id())
///             .vpcId(fooAwsVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:VpcPeeringConnection
///     properties:
///       peerOwnerId: ${peerOwnerId}
///       peerVpcId: ${bar.id}
///       vpcId: ${fooAwsVpc.id}
/// ```
///
///
/// Basic usage with connection options:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
///     peerOwnerId: peerOwnerId,
///     peerVpcId: bar.id,
///     vpcId: fooAwsVpc.id,
///     accepter: {
///         allowRemoteVpcDnsResolution: true,
///     },
///     requester: {
///         allowRemoteVpcDnsResolution: true,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.VpcPeeringConnection("foo",
///     peer_owner_id=peer_owner_id,
///     peer_vpc_id=bar["id"],
///     vpc_id=foo_aws_vpc["id"],
///     accepter={
///         "allow_remote_vpc_dns_resolution": True,
///     },
///     requester={
///         "allow_remote_vpc_dns_resolution": True,
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
///     var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
///     {
///         PeerOwnerId = peerOwnerId,
///         PeerVpcId = bar.Id,
///         VpcId = fooAwsVpc.Id,
///         Accepter = new Aws.Ec2.Inputs.VpcPeeringConnectionAccepterArgs
///         {
///             AllowRemoteVpcDnsResolution = true,
///         },
///         Requester = new Aws.Ec2.Inputs.VpcPeeringConnectionRequesterArgs
///         {
///             AllowRemoteVpcDnsResolution = true,
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
/// 		_, err := ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// 			PeerOwnerId: pulumi.Any(peerOwnerId),
/// 			PeerVpcId:   pulumi.Any(bar.Id),
/// 			VpcId:       pulumi.Any(fooAwsVpc.Id),
/// 			Accepter: &ec2.VpcPeeringConnectionAccepterTypeArgs{
/// 				AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// 			},
/// 			Requester: &ec2.VpcPeeringConnectionRequesterArgs{
/// 				AllowRemoteVpcDnsResolution: pulumi.Bool(true),
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
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
/// import com.pulumi.aws.ec2.inputs.VpcPeeringConnectionAccepterArgs;
/// import com.pulumi.aws.ec2.inputs.VpcPeeringConnectionRequesterArgs;
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
///         var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
///             .peerOwnerId(peerOwnerId)
///             .peerVpcId(bar.id())
///             .vpcId(fooAwsVpc.id())
///             .accepter(VpcPeeringConnectionAccepterArgs.builder()
///                 .allowRemoteVpcDnsResolution(true)
///                 .build())
///             .requester(VpcPeeringConnectionRequesterArgs.builder()
///                 .allowRemoteVpcDnsResolution(true)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:VpcPeeringConnection
///     properties:
///       peerOwnerId: ${peerOwnerId}
///       peerVpcId: ${bar.id}
///       vpcId: ${fooAwsVpc.id}
///       accepter:
///         allowRemoteVpcDnsResolution: true
///       requester:
///         allowRemoteVpcDnsResolution: true
/// ```
///
///
/// Basic usage with tags:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooVpc = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const bar = new aws.ec2.Vpc("bar", {cidrBlock: "10.2.0.0/16"});
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
///     peerOwnerId: peerOwnerId,
///     peerVpcId: bar.id,
///     vpcId: fooVpc.id,
///     autoAccept: true,
///     tags: {
///         Name: "VPC Peering between foo and bar",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_vpc = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// bar = aws.ec2.Vpc("bar", cidr_block="10.2.0.0/16")
/// foo = aws.ec2.VpcPeeringConnection("foo",
///     peer_owner_id=peer_owner_id,
///     peer_vpc_id=bar.id,
///     vpc_id=foo_vpc.id,
///     auto_accept=True,
///     tags={
///         "Name": "VPC Peering between foo and bar",
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
///     var fooVpc = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var bar = new Aws.Ec2.Vpc("bar", new()
///     {
///         CidrBlock = "10.2.0.0/16",
///     });
///
///     var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
///     {
///         PeerOwnerId = peerOwnerId,
///         PeerVpcId = bar.Id,
///         VpcId = fooVpc.Id,
///         AutoAccept = true,
///         Tags =
///         {
///             { "Name", "VPC Peering between foo and bar" },
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
/// 		fooVpc, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewVpc(ctx, "bar", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.2.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// 			PeerOwnerId: pulumi.Any(peerOwnerId),
/// 			PeerVpcId:   bar.ID(),
/// 			VpcId:       fooVpc.ID(),
/// 			AutoAccept:  pulumi.Bool(true),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("VPC Peering between foo and bar"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
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
///         var fooVpc = new Vpc("fooVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var bar = new Vpc("bar", VpcArgs.builder()
///             .cidrBlock("10.2.0.0/16")
///             .build());
///
///         var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
///             .peerOwnerId(peerOwnerId)
///             .peerVpcId(bar.id())
///             .vpcId(fooVpc.id())
///             .autoAccept(true)
///             .tags(Map.of("Name", "VPC Peering between foo and bar"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:VpcPeeringConnection
///     properties:
///       peerOwnerId: ${peerOwnerId}
///       peerVpcId: ${bar.id}
///       vpcId: ${fooVpc.id}
///       autoAccept: true
///       tags:
///         Name: VPC Peering between foo and bar
///   fooVpc:
///     type: aws:ec2:Vpc
///     name: foo
///     properties:
///       cidrBlock: 10.1.0.0/16
///   bar:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.2.0.0/16
/// ```
///
///
/// Basic usage with region:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooVpc = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const bar = new aws.ec2.Vpc("bar", {cidrBlock: "10.2.0.0/16"});
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
///     peerOwnerId: peerOwnerId,
///     peerVpcId: bar.id,
///     vpcId: fooVpc.id,
///     peerRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_vpc = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// bar = aws.ec2.Vpc("bar", cidr_block="10.2.0.0/16")
/// foo = aws.ec2.VpcPeeringConnection("foo",
///     peer_owner_id=peer_owner_id,
///     peer_vpc_id=bar.id,
///     vpc_id=foo_vpc.id,
///     peer_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fooVpc = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var bar = new Aws.Ec2.Vpc("bar", new()
///     {
///         CidrBlock = "10.2.0.0/16",
///     });
///
///     var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
///     {
///         PeerOwnerId = peerOwnerId,
///         PeerVpcId = bar.Id,
///         VpcId = fooVpc.Id,
///         PeerRegion = "us-east-1",
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
/// 		fooVpc, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewVpc(ctx, "bar", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.2.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// 			PeerOwnerId: pulumi.Any(peerOwnerId),
/// 			PeerVpcId:   bar.ID(),
/// 			VpcId:       fooVpc.ID(),
/// 			PeerRegion:  pulumi.String("us-east-1"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcPeeringConnection;
/// import com.pulumi.aws.ec2.VpcPeeringConnectionArgs;
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
///         var fooVpc = new Vpc("fooVpc", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var bar = new Vpc("bar", VpcArgs.builder()
///             .cidrBlock("10.2.0.0/16")
///             .build());
///
///         var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
///             .peerOwnerId(peerOwnerId)
///             .peerVpcId(bar.id())
///             .vpcId(fooVpc.id())
///             .peerRegion("us-east-1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:VpcPeeringConnection
///     properties:
///       peerOwnerId: ${peerOwnerId}
///       peerVpcId: ${bar.id}
///       vpcId: ${fooVpc.id}
///       peerRegion: us-east-1
///   fooVpc:
///     type: aws:ec2:Vpc
///     name: foo
///     properties:
///       cidrBlock: 10.1.0.0/16
///   bar:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.2.0.0/16
/// ```
///
///
/// ## Notes
///
/// If both VPCs are not in the same AWS account and region do not enable the `auto_accept` attribute.
/// The accepter can manage its side of the connection using the `aws.ec2.VpcPeeringConnectionAccepter` resource
/// or accept the connection manually using the AWS Management Console, AWS CLI, through SDKs, etc.
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering resources using the VPC peering `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcPeeringConnection:VpcPeeringConnection test_connection pcx-111aaa111
/// ```
class VpcPeeringConnection extends pulumi.CustomResource {
  /// The status of the VPC Peering Connection request.
  late final pulumi.Output<String> acceptStatus;

  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  late final pulumi.Output<VpcPeeringConnectionAccepter> accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  late final pulumi.Output<bool?> autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  late final pulumi.Output<String> peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. `auto_accept` must be `false`,
  /// and use the `aws.ec2.VpcPeeringConnectionAccepter` to manage the accepter side.
  late final pulumi.Output<String> peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  late final pulumi.Output<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  late final pulumi.Output<VpcPeeringConnectionRequester> requester;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the requester VPC.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcPeeringConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcPeeringConnection]. {@macro pulumi_ec2_vpc_peering_connection_vpc_peering_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcPeeringConnection(
    String name, {
    VpcPeeringConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnection:VpcPeeringConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.acceptStatus = registerOutput<String>('acceptStatus');
    this.accepter = registerOutput<VpcPeeringConnectionAccepter>('accepter');
    this.autoAccept = registerOutput<bool?>('autoAccept');
    this.peerOwnerId = registerOutput<String>('peerOwnerId');
    this.peerRegion = registerOutput<String>('peerRegion');
    this.peerVpcId = registerOutput<String>('peerVpcId');
    this.region = registerOutput<String>('region');
    this.requester = registerOutput<VpcPeeringConnectionRequester>('requester');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
