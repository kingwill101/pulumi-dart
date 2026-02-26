import 'package:pulumi/pulumi.dart';
import 'bgp_peer_args.dart';

/// Provides a Direct Connect BGP peer resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const peer = new aws.directconnect.BgpPeer("peer", {
/// virtualInterfaceId: foo.id,
/// addressFamily: "ipv6",
/// bgpAsn: 65351,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// peer = aws.directconnect.BgpPeer("peer",
/// virtual_interface_id=foo["id"],
/// address_family="ipv6",
/// bgp_asn=65351)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var peer = new Aws.DirectConnect.BgpPeer("peer", new()
/// {
/// VirtualInterfaceId = foo.Id,
/// AddressFamily = "ipv6",
/// BgpAsn = 65351,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := directconnect.NewBgpPeer(ctx, "peer", &directconnect.BgpPeerArgs{
/// VirtualInterfaceId: pulumi.Any(foo.Id),
/// AddressFamily:      pulumi.String("ipv6"),
/// BgpAsn:             pulumi.Int(65351),
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
/// import com.pulumi.aws.directconnect.BgpPeer;
/// import com.pulumi.aws.directconnect.BgpPeerArgs;
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
/// var peer = new BgpPeer("peer", BgpPeerArgs.builder()
/// .virtualInterfaceId(foo.id())
/// .addressFamily("ipv6")
/// .bgpAsn(65351)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// peer:
/// type: aws:directconnect:BgpPeer
/// properties:
/// virtualInterfaceId: ${foo.id}
/// addressFamily: ipv6
/// bgpAsn: 65351
/// ```
/// <!--End PulumiCodeChooser -->
class BgpPeer extends CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  late final Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  late final Output<String> amazonAddress;

  /// The Direct Connect endpoint on which the BGP peer terminates.
  late final Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final Output<String> bgpAuthKey;

  /// The ID of the BGP peer.
  late final Output<String> bgpPeerId;

  /// The Up/Down state of the BGP peer.
  late final Output<String> bgpStatus;

  /// The IPv4 CIDR destination address to which Amazon should send traffic.
  /// Required for IPv4 BGP peers on public virtual interfaces.
  late final Output<String> customerAddress;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the Direct Connect virtual interface on which to create the BGP peer.
  late final Output<String> virtualInterfaceId;

  BgpPeer(
    String name, {
    BgpPeerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/bgpPeer:BgpPeer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressFamily = Output.createUnknown<String>();
    this.amazonAddress = Output.createUnknown<String>();
    this.awsDevice = Output.createUnknown<String>();
    this.bgpAsn = Output.createUnknown<int>();
    this.bgpAuthKey = Output.createUnknown<String>();
    this.bgpPeerId = Output.createUnknown<String>();
    this.bgpStatus = Output.createUnknown<String>();
    this.customerAddress = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.virtualInterfaceId = Output.createUnknown<String>();
  }
}
