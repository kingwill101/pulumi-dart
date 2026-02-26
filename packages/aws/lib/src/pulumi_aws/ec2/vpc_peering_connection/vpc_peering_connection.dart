import 'package:pulumi/pulumi.dart';
import '../vpc_peering_connection_accepter/vpc_peering_connection_accepter.dart';
import '../vpc_peering_connection_requester/vpc_peering_connection_requester.dart';
import 'vpc_peering_connection_args.dart';

/// Provides a resource to manage a VPC peering connection.
///
/// > **Note:** Modifying the VPC Peering Connection options requires peering to be active. An automatic activation
/// can be done using the <span pulumi-lang-nodejs="`autoAccept`" pulumi-lang-dotnet="`AutoAccept`" pulumi-lang-go="`autoAccept`" pulumi-lang-python="`auto_accept`" pulumi-lang-yaml="`autoAccept`" pulumi-lang-java="`autoAccept`">`auto_accept`</span> attribute. Alternatively, the VPC Peering
/// Connection has to be made active manually using other means. See notes below for
/// more information.
///
/// > **NOTE on VPC Peering Connections and VPC Peering Connection Options:** This provider provides
/// both a standalone VPC Peering Connection Options and a VPC Peering Connection
/// resource with <span pulumi-lang-nodejs="`accepter`" pulumi-lang-dotnet="`Accepter`" pulumi-lang-go="`accepter`" pulumi-lang-python="`accepter`" pulumi-lang-yaml="`accepter`" pulumi-lang-java="`accepter`">`accepter`</span> and <span pulumi-lang-nodejs="`requester`" pulumi-lang-dotnet="`Requester`" pulumi-lang-go="`requester`" pulumi-lang-python="`requester`" pulumi-lang-yaml="`requester`" pulumi-lang-java="`requester`">`requester`</span> attributes. Do not manage options for the same VPC peering
/// connection in both a VPC Peering Connection resource and a VPC Peering Connection Options resource.
/// Doing so will cause a conflict of options and will overwrite the options.
/// Using a VPC Peering Connection Options resource decouples management of the connection options from
/// management of the VPC Peering Connection and allows options to be set correctly in cross-account scenarios.
///
/// > **Note:** For cross-account (requester's AWS account differs from the accepter's AWS account) or inter-region
/// VPC Peering Connections use the <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnection`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnection`" pulumi-lang-go="`ec2.VpcPeeringConnection`" pulumi-lang-python="`ec2.VpcPeeringConnection`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnection`" pulumi-lang-java="`aws.ec2.VpcPeeringConnection`">`aws.ec2.VpcPeeringConnection`</span> resource to manage the requester's side of the
/// connection and use the <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-go="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-python="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-java="`aws.ec2.VpcPeeringConnectionAccepter`">`aws.ec2.VpcPeeringConnectionAccepter`</span> resource to manage the accepter's side of the connection.
///
/// > **Note:** Creating multiple <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnection`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnection`" pulumi-lang-go="`ec2.VpcPeeringConnection`" pulumi-lang-python="`ec2.VpcPeeringConnection`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnection`" pulumi-lang-java="`aws.ec2.VpcPeeringConnection`">`aws.ec2.VpcPeeringConnection`</span> resources with the same <span pulumi-lang-nodejs="`peerVpcId`" pulumi-lang-dotnet="`PeerVpcId`" pulumi-lang-go="`peerVpcId`" pulumi-lang-python="`peer_vpc_id`" pulumi-lang-yaml="`peerVpcId`" pulumi-lang-java="`peerVpcId`">`peer_vpc_id`</span> and <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> will not produce an error. Instead, AWS will return the connection <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> that already exists, resulting in multiple <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnection`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnection`" pulumi-lang-go="`ec2.VpcPeeringConnection`" pulumi-lang-python="`ec2.VpcPeeringConnection`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnection`" pulumi-lang-java="`aws.ec2.VpcPeeringConnection`">`aws.ec2.VpcPeeringConnection`</span> resources with the same <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
/// peerOwnerId: peerOwnerId,
/// peerVpcId: bar.id,
/// vpcId: fooAwsVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.VpcPeeringConnection("foo",
/// peer_owner_id=peer_owner_id,
/// peer_vpc_id=bar["id"],
/// vpc_id=foo_aws_vpc["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
/// {
/// PeerOwnerId = peerOwnerId,
/// PeerVpcId = bar.Id,
/// VpcId = fooAwsVpc.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// PeerOwnerId: pulumi.Any(peerOwnerId),
/// PeerVpcId:   pulumi.Any(bar.Id),
/// VpcId:       pulumi.Any(fooAwsVpc.Id),
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
/// .peerOwnerId(peerOwnerId)
/// .peerVpcId(bar.id())
/// .vpcId(fooAwsVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ec2:VpcPeeringConnection
/// properties:
/// peerOwnerId: ${peerOwnerId}
/// peerVpcId: ${bar.id}
/// vpcId: ${fooAwsVpc.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Basic usage with connection options:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
/// peerOwnerId: peerOwnerId,
/// peerVpcId: bar.id,
/// vpcId: fooAwsVpc.id,
/// accepter: {
/// allowRemoteVpcDnsResolution: true,
/// },
/// requester: {
/// allowRemoteVpcDnsResolution: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.VpcPeeringConnection("foo",
/// peer_owner_id=peer_owner_id,
/// peer_vpc_id=bar["id"],
/// vpc_id=foo_aws_vpc["id"],
/// accepter={
/// "allow_remote_vpc_dns_resolution": True,
/// },
/// requester={
/// "allow_remote_vpc_dns_resolution": True,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
/// {
/// PeerOwnerId = peerOwnerId,
/// PeerVpcId = bar.Id,
/// VpcId = fooAwsVpc.Id,
/// Accepter = new Aws.Ec2.Inputs.VpcPeeringConnectionAccepterArgs
/// {
/// AllowRemoteVpcDnsResolution = true,
/// },
/// Requester = new Aws.Ec2.Inputs.VpcPeeringConnectionRequesterArgs
/// {
/// AllowRemoteVpcDnsResolution = true,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// PeerOwnerId: pulumi.Any(peerOwnerId),
/// PeerVpcId:   pulumi.Any(bar.Id),
/// VpcId:       pulumi.Any(fooAwsVpc.Id),
/// Accepter: &ec2.VpcPeeringConnectionAccepterTypeArgs{
/// AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// },
/// Requester: &ec2.VpcPeeringConnectionRequesterArgs{
/// AllowRemoteVpcDnsResolution: pulumi.Bool(true),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
/// .peerOwnerId(peerOwnerId)
/// .peerVpcId(bar.id())
/// .vpcId(fooAwsVpc.id())
/// .accepter(VpcPeeringConnectionAccepterArgs.builder()
/// .allowRemoteVpcDnsResolution(true)
/// .build())
/// .requester(VpcPeeringConnectionRequesterArgs.builder()
/// .allowRemoteVpcDnsResolution(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ec2:VpcPeeringConnection
/// properties:
/// peerOwnerId: ${peerOwnerId}
/// peerVpcId: ${bar.id}
/// vpcId: ${fooAwsVpc.id}
/// accepter:
/// allowRemoteVpcDnsResolution: true
/// requester:
/// allowRemoteVpcDnsResolution: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Basic usage with tags:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooVpc = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const bar = new aws.ec2.Vpc("bar", {cidrBlock: "10.2.0.0/16"});
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
/// peerOwnerId: peerOwnerId,
/// peerVpcId: bar.id,
/// vpcId: fooVpc.id,
/// autoAccept: true,
/// tags: {
/// Name: "VPC Peering between foo and bar",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_vpc = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// bar = aws.ec2.Vpc("bar", cidr_block="10.2.0.0/16")
/// foo = aws.ec2.VpcPeeringConnection("foo",
/// peer_owner_id=peer_owner_id,
/// peer_vpc_id=bar.id,
/// vpc_id=foo_vpc.id,
/// auto_accept=True,
/// tags={
/// "Name": "VPC Peering between foo and bar",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var fooVpc = new Aws.Ec2.Vpc("foo", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var bar = new Aws.Ec2.Vpc("bar", new()
/// {
/// CidrBlock = "10.2.0.0/16",
/// });
///
/// var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
/// {
/// PeerOwnerId = peerOwnerId,
/// PeerVpcId = bar.Id,
/// VpcId = fooVpc.Id,
/// AutoAccept = true,
/// Tags =
/// {
/// { "Name", "VPC Peering between foo and bar" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// fooVpc, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// bar, err := ec2.NewVpc(ctx, "bar", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.2.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// PeerOwnerId: pulumi.Any(peerOwnerId),
/// PeerVpcId:   bar.ID(),
/// VpcId:       fooVpc.ID(),
/// AutoAccept:  pulumi.Bool(true),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("VPC Peering between foo and bar"),
/// },
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var fooVpc = new Vpc("fooVpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var bar = new Vpc("bar", VpcArgs.builder()
/// .cidrBlock("10.2.0.0/16")
/// .build());
///
/// var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
/// .peerOwnerId(peerOwnerId)
/// .peerVpcId(bar.id())
/// .vpcId(fooVpc.id())
/// .autoAccept(true)
/// .tags(Map.of("Name", "VPC Peering between foo and bar"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ec2:VpcPeeringConnection
/// properties:
/// peerOwnerId: ${peerOwnerId}
/// peerVpcId: ${bar.id}
/// vpcId: ${fooVpc.id}
/// autoAccept: true
/// tags:
/// Name: VPC Peering between foo and bar
/// fooVpc:
/// type: aws:ec2:Vpc
/// name: foo
/// properties:
/// cidrBlock: 10.1.0.0/16
/// bar:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.2.0.0/16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Basic usage with region:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const fooVpc = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const bar = new aws.ec2.Vpc("bar", {cidrBlock: "10.2.0.0/16"});
/// const foo = new aws.ec2.VpcPeeringConnection("foo", {
/// peerOwnerId: peerOwnerId,
/// peerVpcId: bar.id,
/// vpcId: fooVpc.id,
/// peerRegion: "us-east-1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo_vpc = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// bar = aws.ec2.Vpc("bar", cidr_block="10.2.0.0/16")
/// foo = aws.ec2.VpcPeeringConnection("foo",
/// peer_owner_id=peer_owner_id,
/// peer_vpc_id=bar.id,
/// vpc_id=foo_vpc.id,
/// peer_region="us-east-1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var fooVpc = new Aws.Ec2.Vpc("foo", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// });
///
/// var bar = new Aws.Ec2.Vpc("bar", new()
/// {
/// CidrBlock = "10.2.0.0/16",
/// });
///
/// var foo = new Aws.Ec2.VpcPeeringConnection("foo", new()
/// {
/// PeerOwnerId = peerOwnerId,
/// PeerVpcId = bar.Id,
/// VpcId = fooVpc.Id,
/// PeerRegion = "us-east-1",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// fooVpc, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.1.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// bar, err := ec2.NewVpc(ctx, "bar", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.2.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcPeeringConnection(ctx, "foo", &ec2.VpcPeeringConnectionArgs{
/// PeerOwnerId: pulumi.Any(peerOwnerId),
/// PeerVpcId:   bar.ID(),
/// VpcId:       fooVpc.ID(),
/// PeerRegion:  pulumi.String("us-east-1"),
/// })
/// if err != nil {
/// return err
/// }
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var fooVpc = new Vpc("fooVpc", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .build());
///
/// var bar = new Vpc("bar", VpcArgs.builder()
/// .cidrBlock("10.2.0.0/16")
/// .build());
///
/// var foo = new VpcPeeringConnection("foo", VpcPeeringConnectionArgs.builder()
/// .peerOwnerId(peerOwnerId)
/// .peerVpcId(bar.id())
/// .vpcId(fooVpc.id())
/// .peerRegion("us-east-1")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ec2:VpcPeeringConnection
/// properties:
/// peerOwnerId: ${peerOwnerId}
/// peerVpcId: ${bar.id}
/// vpcId: ${fooVpc.id}
/// peerRegion: us-east-1
/// fooVpc:
/// type: aws:ec2:Vpc
/// name: foo
/// properties:
/// cidrBlock: 10.1.0.0/16
/// bar:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.2.0.0/16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Notes
///
/// If both VPCs are not in the same AWS account and region do not enable the <span pulumi-lang-nodejs="`autoAccept`" pulumi-lang-dotnet="`AutoAccept`" pulumi-lang-go="`autoAccept`" pulumi-lang-python="`auto_accept`" pulumi-lang-yaml="`autoAccept`" pulumi-lang-java="`autoAccept`">`auto_accept`</span> attribute.
/// The accepter can manage its side of the connection using the <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-go="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-python="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-java="`aws.ec2.VpcPeeringConnectionAccepter`">`aws.ec2.VpcPeeringConnectionAccepter`</span> resource
/// or accept the connection manually using the AWS Management Console, AWS CLI, through SDKs, etc.
///
/// ## Import
///
/// Using `pulumi import`, import VPC Peering resources using the VPC peering <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcPeeringConnection:VpcPeeringConnection test_connection pcx-111aaa111
/// ```
class VpcPeeringConnection extends CustomResource {
  /// The status of the VPC Peering Connection request.
  late final Output<String> acceptStatus;

  /// An optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that accepts
  /// the peering connection (a maximum of one).
  late final Output<VpcPeeringConnectionAccepter> accepter;

  /// Accept the peering (both VPCs need to be in the same AWS account and region).
  late final Output<bool?> autoAccept;

  /// The AWS account ID of the target peer VPC.
  /// Defaults to the account ID the [AWS provider][1] is currently connected to, so must be managed if connecting cross-account.
  late final Output<String> peerOwnerId;

  /// The region of the accepter VPC of the VPC Peering Connection. <span pulumi-lang-nodejs="`autoAccept`" pulumi-lang-dotnet="`AutoAccept`" pulumi-lang-go="`autoAccept`" pulumi-lang-python="`auto_accept`" pulumi-lang-yaml="`autoAccept`" pulumi-lang-java="`autoAccept`">`auto_accept`</span> must be <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>,
  /// and use the <span pulumi-lang-nodejs="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-dotnet="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-go="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-python="`ec2.VpcPeeringConnectionAccepter`" pulumi-lang-yaml="`aws.ec2.VpcPeeringConnectionAccepter`" pulumi-lang-java="`aws.ec2.VpcPeeringConnectionAccepter`">`aws.ec2.VpcPeeringConnectionAccepter`</span> to manage the accepter side.
  late final Output<String> peerRegion;

  /// The ID of the target VPC with which you are creating the VPC Peering Connection.
  late final Output<String> peerVpcId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A optional configuration block that allows for [VPC Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html) options to be set for the VPC that requests
  /// the peering connection (a maximum of one).
  late final Output<VpcPeeringConnectionRequester> requester;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The ID of the requester VPC.
  late final Output<String> vpcId;

  VpcPeeringConnection(
    String name, {
    VpcPeeringConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcPeeringConnection:VpcPeeringConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
