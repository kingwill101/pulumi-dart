import 'package:pulumi/pulumi.dart';
import 'hosted_private_virtual_interface_args.dart';

/// Provides a Direct Connect hosted private virtual interface resource. This resource represents the allocator's side of the hosted virtual interface.
/// A hosted virtual interface is a virtual interface that is owned by another AWS account.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.directconnect.HostedPrivateVirtualInterface("foo", {
/// connectionId: "dxcon-zzzzzzzz",
/// name: "vif-foo",
/// vlan: 4094,
/// addressFamily: "ipv4",
/// bgpAsn: 65352,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.directconnect.HostedPrivateVirtualInterface("foo",
/// connection_id="dxcon-zzzzzzzz",
/// name="vif-foo",
/// vlan=4094,
/// address_family="ipv4",
/// bgp_asn=65352)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.DirectConnect.HostedPrivateVirtualInterface("foo", new()
/// {
/// ConnectionId = "dxcon-zzzzzzzz",
/// Name = "vif-foo",
/// Vlan = 4094,
/// AddressFamily = "ipv4",
/// BgpAsn = 65352,
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
/// _, err := directconnect.NewHostedPrivateVirtualInterface(ctx, "foo", &directconnect.HostedPrivateVirtualInterfaceArgs{
/// ConnectionId:  pulumi.String("dxcon-zzzzzzzz"),
/// Name:          pulumi.String("vif-foo"),
/// Vlan:          pulumi.Int(4094),
/// AddressFamily: pulumi.String("ipv4"),
/// BgpAsn:        pulumi.Int(65352),
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
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterface;
/// import com.pulumi.aws.directconnect.HostedPrivateVirtualInterfaceArgs;
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
/// var foo = new HostedPrivateVirtualInterface("foo", HostedPrivateVirtualInterfaceArgs.builder()
/// .connectionId("dxcon-zzzzzzzz")
/// .name("vif-foo")
/// .vlan(4094)
/// .addressFamily("ipv4")
/// .bgpAsn(65352)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:directconnect:HostedPrivateVirtualInterface
/// properties:
/// connectionId: dxcon-zzzzzzzz
/// name: vif-foo
/// vlan: 4094
/// addressFamily: ipv4
/// bgpAsn: 65352
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted private virtual interfaces using the VIF <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPrivateVirtualInterface:HostedPrivateVirtualInterface test dxvif-33cc44dd
/// ```
class HostedPrivateVirtualInterface extends CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or <span pulumi-lang-nodejs="`ipv6`" pulumi-lang-dotnet="`Ipv6`" pulumi-lang-go="`ipv6`" pulumi-lang-python="`ipv6`" pulumi-lang-yaml="`ipv6`" pulumi-lang-java="`ipv6`">`ipv6`</span>.
  late final Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  late final Output<String> amazonAddress;
  late final Output<String> amazonSideAsn;

  /// The ARN of the virtual interface.
  late final Output<String> arn;

  /// The Direct Connect endpoint on which the virtual interface terminates.
  late final Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final Output<String> bgpAuthKey;

  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  late final Output<String> connectionId;

  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  late final Output<String> customerAddress;

  /// Indicates whether jumbo frames (9001 MTU) are supported.
  late final Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual private interface can be either <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span> or <span pulumi-lang-nodejs="`9001`" pulumi-lang-dotnet="`9001`" pulumi-lang-go="`9001`" pulumi-lang-python="`9001`" pulumi-lang-yaml="`9001`" pulumi-lang-java="`9001`">`9001`</span> (jumbo frames). Default is <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>.
  late final Output<int?> mtu;

  /// The name for the virtual interface.
  late final Output<String> name;

  /// The AWS account that will own the new virtual interface.
  late final Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The VLAN ID.
  late final Output<int> vlan;

  HostedPrivateVirtualInterface(
    String name, {
    HostedPrivateVirtualInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPrivateVirtualInterface:HostedPrivateVirtualInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.amazonAddress = registerOutput<String>('amazonAddress');
    this.amazonSideAsn = registerOutput<String>('amazonSideAsn');
    this.arn = registerOutput<String>('arn');
    this.awsDevice = registerOutput<String>('awsDevice');
    this.bgpAsn = registerOutput<int>('bgpAsn');
    this.bgpAuthKey = registerOutput<String>('bgpAuthKey');
    this.connectionId = registerOutput<String>('connectionId');
    this.customerAddress = registerOutput<String>('customerAddress');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.ownerAccountId = registerOutput<String>('ownerAccountId');
    this.region = registerOutput<String>('region');
    this.vlan = registerOutput<int>('vlan');
  }
}
