import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_private_virtual_interface_args.dart';
import 'hosted_private_virtual_interface_state.dart';

/// Provides a Direct Connect hosted private virtual interface resource. This resource represents the allocator's side of the hosted virtual interface.
/// A hosted virtual interface is a virtual interface that is owned by another AWS account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.directconnect.HostedPrivateVirtualInterface("foo", {
///     connectionId: "dxcon-zzzzzzzz",
///     name: "vif-foo",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.directconnect.HostedPrivateVirtualInterface("foo",
///     connection_id="dxcon-zzzzzzzz",
///     name="vif-foo",
///     vlan=4094,
///     address_family="ipv4",
///     bgp_asn=65352)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.DirectConnect.HostedPrivateVirtualInterface("foo", new()
///     {
///         ConnectionId = "dxcon-zzzzzzzz",
///         Name = "vif-foo",
///         Vlan = 4094,
///         AddressFamily = "ipv4",
///         BgpAsn = 65352,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directconnect"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directconnect.NewHostedPrivateVirtualInterface(ctx, "foo", &directconnect.HostedPrivateVirtualInterfaceArgs{
/// 			ConnectionId:  pulumi.String("dxcon-zzzzzzzz"),
/// 			Name:          pulumi.String("vif-foo"),
/// 			Vlan:          pulumi.Int(4094),
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			BgpAsn:        pulumi.Int(65352),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var foo = new HostedPrivateVirtualInterface("foo", HostedPrivateVirtualInterfaceArgs.builder()
///             .connectionId("dxcon-zzzzzzzz")
///             .name("vif-foo")
///             .vlan(4094)
///             .addressFamily("ipv4")
///             .bgpAsn(65352)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:directconnect:HostedPrivateVirtualInterface
///     properties:
///       connectionId: dxcon-zzzzzzzz
///       name: vif-foo
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect hosted private virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPrivateVirtualInterface:HostedPrivateVirtualInterface test dxvif-33cc44dd
/// ```
class HostedPrivateVirtualInterface extends pulumi.CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  late final pulumi.Output<String> addressFamily;

  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  late final pulumi.Output<String> amazonAddress;
  late final pulumi.Output<String> amazonSideAsn;

  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;

  /// The Direct Connect endpoint on which the virtual interface terminates.
  late final pulumi.Output<String> awsDevice;

  /// The autonomous system (AS) number for Border Gateway Protocol (BGP) configuration.
  late final pulumi.Output<int> bgpAsn;

  /// The authentication key for BGP configuration.
  late final pulumi.Output<String> bgpAuthKey;

  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  late final pulumi.Output<String> connectionId;

  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  late final pulumi.Output<String> customerAddress;

  /// Indicates whether jumbo frames (9001 MTU) are supported.
  late final pulumi.Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection. The MTU of a virtual private interface can be either `1500` or `9001` (jumbo frames). Default is `1500`.
  late final pulumi.Output<int?> mtu;

  /// The name for the virtual interface.
  late final pulumi.Output<String> name;

  /// The AWS account that will own the new virtual interface.
  late final pulumi.Output<String> ownerAccountId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  /// Creates a new [HostedPrivateVirtualInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedPrivateVirtualInterface]. {@macro pulumi_directconnect_hosted_private_virtual_interface_hosted_private_virtual_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedPrivateVirtualInterface(
    String name, {
    HostedPrivateVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedPrivateVirtualInterface:HostedPrivateVirtualInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressFamily = registerOutput<String>('addressFamily');
    amazonAddress = registerOutput<String>('amazonAddress');
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    awsDevice = registerOutput<String>('awsDevice');
    bgpAsn = registerOutput<int>('bgpAsn');
    bgpAuthKey = registerOutput<String>('bgpAuthKey');
    connectionId = registerOutput<String>('connectionId');
    customerAddress = registerOutput<String>('customerAddress');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    vlan = registerOutput<int>('vlan');
  }

  /// Gets an existing [HostedPrivateVirtualInterface] resource's state with the given [name] and [id].
  static HostedPrivateVirtualInterface get(
    String name,
    pulumi.Input<String> id, {
    HostedPrivateVirtualInterfaceState? state,
  }) {
    return HostedPrivateVirtualInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HostedPrivateVirtualInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/hostedPrivateVirtualInterface:HostedPrivateVirtualInterface',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    addressFamily = registerOutput<String>('addressFamily');
    amazonAddress = registerOutput<String>('amazonAddress');
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    awsDevice = registerOutput<String>('awsDevice');
    bgpAsn = registerOutput<int>('bgpAsn');
    bgpAuthKey = registerOutput<String>('bgpAuthKey');
    connectionId = registerOutput<String>('connectionId');
    customerAddress = registerOutput<String>('customerAddress');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    region = registerOutput<String>('region');
    vlan = registerOutput<int>('vlan');
  }
}
