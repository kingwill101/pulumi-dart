import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_virtual_interface_args.dart';
import 'transit_virtual_interface_state.dart';

/// Provides a Direct Connect transit virtual interface resource.
/// A transit virtual interface is a VLAN that transports traffic from a Direct Connect gateway to one or more transit gateways.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
///     name: "tf-dxg-example",
///     amazonSideAsn: "64512",
/// });
/// const exampleTransitVirtualInterface = new aws.directconnect.TransitVirtualInterface("example", {
///     connectionId: exampleAwsDxConnection.id,
///     dxGatewayId: example.id,
///     name: "tf-transit-vif-example",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
///     name="tf-dxg-example",
///     amazon_side_asn="64512")
/// example_transit_virtual_interface = aws.directconnect.TransitVirtualInterface("example",
///     connection_id=example_aws_dx_connection["id"],
///     dx_gateway_id=example.id,
///     name="tf-transit-vif-example",
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
///     var example = new Aws.DirectConnect.Gateway("example", new()
///     {
///         Name = "tf-dxg-example",
///         AmazonSideAsn = "64512",
///     });
///
///     var exampleTransitVirtualInterface = new Aws.DirectConnect.TransitVirtualInterface("example", new()
///     {
///         ConnectionId = exampleAwsDxConnection.Id,
///         DxGatewayId = example.Id,
///         Name = "tf-transit-vif-example",
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
/// 		example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// 			Name:          pulumi.String("tf-dxg-example"),
/// 			AmazonSideAsn: pulumi.String("64512"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = directconnect.NewTransitVirtualInterface(ctx, "example", &directconnect.TransitVirtualInterfaceArgs{
/// 			ConnectionId:  pulumi.Any(exampleAwsDxConnection.Id),
/// 			DxGatewayId:   example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:          pulumi.String("tf-transit-vif-example"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_directconnect_gateway" "example" {
///   name            = "tf-dxg-example"
///   amazon_side_asn = 64512
/// }
/// resource "aws_directconnect_transitvirtualinterface" "example" {
///   connection_id  = exampleAwsDxConnection.id
///   dx_gateway_id  = aws_directconnect_gateway.example.id
///   name           = "tf-transit-vif-example"
///   vlan           = 4094
///   address_family = "ipv4"
///   bgp_asn        = 65352
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.directconnect.TransitVirtualInterface;
/// import com.pulumi.aws.directconnect.TransitVirtualInterfaceArgs;
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
///         var example = new Gateway("example", GatewayArgs.builder()
///             .name("tf-dxg-example")
///             .amazonSideAsn("64512")
///             .build());
///
///         var exampleTransitVirtualInterface = new TransitVirtualInterface("exampleTransitVirtualInterface", TransitVirtualInterfaceArgs.builder()
///             .connectionId(exampleAwsDxConnection.id())
///             .dxGatewayId(example.id())
///             .name("tf-transit-vif-example")
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
///   example:
///     type: aws:directconnect:Gateway
///     properties:
///       name: tf-dxg-example
///       amazonSideAsn: 64512
///   exampleTransitVirtualInterface:
///     type: aws:directconnect:TransitVirtualInterface
///     name: example
///     properties:
///       connectionId: ${exampleAwsDxConnection.id}
///       dxGatewayId: ${example.id}
///       name: tf-transit-vif-example
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect transit virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/transitVirtualInterface:TransitVirtualInterface test dxvif-33cc44dd
/// ```
///
/// &gt; **Note:** When a virtual interface uses an ASN in the `bgpAsn` range (`1` to `2147483646`), AWS returns the value in both the `asn` and `asnLong` API fields, so import always populates `bgpAsn` rather than `bgpAsnLong`. If the virtual interface was originally created with `bgpAsnLong` set to a value in that range, update your configuration to use `bgpAsn` after import to avoid a difference. Virtual interfaces using a 4-byte ASN (greater than `2147483646`) import into `bgpAsnLong` as expected.
class TransitVirtualInterface extends pulumi.CustomResource {
  /// The address family for the BGP peer. `ipv4 ` or `ipv6`.
  late final pulumi.Output<String> addressFamily;
  /// The IPv4 CIDR address to use to send traffic to Amazon. Required for IPv4 BGP peers.
  late final pulumi.Output<String> amazonAddress;
  late final pulumi.Output<String> amazonSideAsn;
  /// The ARN of the virtual interface.
  late final pulumi.Output<String> arn;
  /// The Direct Connect endpoint on which the virtual interface terminates.
  late final pulumi.Output<String> awsDevice;
  /// BGP autonomous system number as an integer between `1` and `2147483646`. For larger values, use `bgpAsnLong`. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  late final pulumi.Output<int?> bgpAsn;
  /// BGP autonomous system number as an asplain decimal string between `1` and `4294967294`. This argument also accepts values in the `bgpAsn` range. Exactly one of `bgpAsn` or `bgpAsnLong` must be specified.
  late final pulumi.Output<String?> bgpAsnLong;
  /// The authentication key for BGP configuration.
  late final pulumi.Output<String> bgpAuthKey;
  /// The ID of the Direct Connect connection (or LAG) on which to create the virtual interface.
  late final pulumi.Output<String> connectionId;
  /// The IPv4 CIDR destination address to which Amazon should send traffic. Required for IPv4 BGP peers.
  late final pulumi.Output<String> customerAddress;
  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final pulumi.Output<String> dxGatewayId;
  /// Indicates whether jumbo frames (8500 MTU) are supported.
  late final pulumi.Output<bool> jumboFrameCapable;
  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual transit interface can be either `1500` or `8500` (jumbo frames). Default is `1500`.
  late final pulumi.Output<int?> mtu;
  /// The name for the virtual interface.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Indicates whether to enable or disable SiteLink.
  late final pulumi.Output<bool?> sitelinkEnabled;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  /// Creates a new [TransitVirtualInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TransitVirtualInterface]. {@macro pulumi_directconnect_transit_virtual_interface_transit_virtual_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TransitVirtualInterface(
    String name, {
    TransitVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/transitVirtualInterface:TransitVirtualInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    addressFamily = registerOutput<String>('addressFamily');
    amazonAddress = registerOutput<String>('amazonAddress');
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    awsDevice = registerOutput<String>('awsDevice');
    bgpAsn = registerOutput<int?>('bgpAsn');
    bgpAsnLong = registerOutput<String?>('bgpAsnLong');
    bgpAuthKey = registerOutput<String>('bgpAuthKey');
    connectionId = registerOutput<String>('connectionId');
    customerAddress = registerOutput<String>('customerAddress');
    dxGatewayId = registerOutput<String>('dxGatewayId');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sitelinkEnabled = registerOutput<bool?>('sitelinkEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vlan = registerOutput<int>('vlan');
  }

  /// Gets an existing [TransitVirtualInterface] resource's state with the given [name] and [id].
  static TransitVirtualInterface get(
    String name,
    pulumi.Input<String> id, {
    TransitVirtualInterfaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TransitVirtualInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TransitVirtualInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/transitVirtualInterface:TransitVirtualInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressFamily = registerOutput<String>('addressFamily');
    amazonAddress = registerOutput<String>('amazonAddress');
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    awsDevice = registerOutput<String>('awsDevice');
    bgpAsn = registerOutput<int?>('bgpAsn');
    bgpAsnLong = registerOutput<String?>('bgpAsnLong');
    bgpAuthKey = registerOutput<String>('bgpAuthKey');
    connectionId = registerOutput<String>('connectionId');
    customerAddress = registerOutput<String>('customerAddress');
    dxGatewayId = registerOutput<String>('dxGatewayId');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sitelinkEnabled = registerOutput<bool?>('sitelinkEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vlan = registerOutput<int>('vlan');
  }

  /// Creates a typed reference to an existing [TransitVirtualInterface] resource.
  TransitVirtualInterface.reference(String urn)
    : super(
        'aws:directconnect/transitVirtualInterface:TransitVirtualInterface',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressFamily = registerOutput<String>('addressFamily');
    amazonAddress = registerOutput<String>('amazonAddress');
    amazonSideAsn = registerOutput<String>('amazonSideAsn');
    arn = registerOutput<String>('arn');
    awsDevice = registerOutput<String>('awsDevice');
    bgpAsn = registerOutput<int?>('bgpAsn');
    bgpAsnLong = registerOutput<String?>('bgpAsnLong');
    bgpAuthKey = registerOutput<String>('bgpAuthKey');
    connectionId = registerOutput<String>('connectionId');
    customerAddress = registerOutput<String>('customerAddress');
    dxGatewayId = registerOutput<String>('dxGatewayId');
    jumboFrameCapable = registerOutput<bool>('jumboFrameCapable');
    mtu = registerOutput<int?>('mtu');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sitelinkEnabled = registerOutput<bool?>('sitelinkEnabled');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vlan = registerOutput<int>('vlan');
  }
}
