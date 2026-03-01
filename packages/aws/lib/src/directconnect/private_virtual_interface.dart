import 'package:pulumi/pulumi.dart' as pulumi;
import 'private_virtual_interface_args.dart';

/// Provides a Direct Connect private virtual interface resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.directconnect.PrivateVirtualInterface("foo", {
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
/// foo = aws.directconnect.PrivateVirtualInterface("foo",
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
///     var foo = new Aws.DirectConnect.PrivateVirtualInterface("foo", new()
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
/// 		_, err := directconnect.NewPrivateVirtualInterface(ctx, "foo", &directconnect.PrivateVirtualInterfaceArgs{
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
/// import com.pulumi.aws.directconnect.PrivateVirtualInterface;
/// import com.pulumi.aws.directconnect.PrivateVirtualInterfaceArgs;
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
///         var foo = new PrivateVirtualInterface("foo", PrivateVirtualInterfaceArgs.builder()
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
///     type: aws:directconnect:PrivateVirtualInterface
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
/// Using `pulumi import`, import Direct Connect private virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/privateVirtualInterface:PrivateVirtualInterface test dxvif-33cc44dd
/// ```
class PrivateVirtualInterface extends pulumi.CustomResource {
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

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final pulumi.Output<String?> dxGatewayId;

  /// Indicates whether jumbo frames (9001 MTU) are supported.
  late final pulumi.Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual private interface can be either `1500` or `9001` (jumbo frames). Default is `1500`.
  late final pulumi.Output<int?> mtu;

  /// The name for the virtual interface.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Indicates whether to enable or disable SiteLink.
  late final pulumi.Output<bool?> sitelinkEnabled;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  /// The ID of the virtual private gateway to which to connect the virtual interface.
  late final pulumi.Output<String?> vpnGatewayId;

  /// Creates a new [PrivateVirtualInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrivateVirtualInterface]. {@macro pulumi_directconnect_private_virtual_interface_private_virtual_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrivateVirtualInterface(
    String name, {
    PrivateVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:directconnect/privateVirtualInterface:PrivateVirtualInterface',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
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
    this.dxGatewayId = registerOutput<String?>('dxGatewayId');
    this.jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    this.mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.sitelinkEnabled = registerOutput<bool?>('sitelinkEnabled');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlan = registerOutput<int>('vlan');
    this.vpnGatewayId = registerOutput<String?>('vpnGatewayId');
  }
}
