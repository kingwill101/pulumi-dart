import 'package:pulumi/pulumi.dart';
import 'transit_virtual_interface_args.dart';

/// Provides a Direct Connect transit virtual interface resource.
/// A transit virtual interface is a VLAN that transports traffic from a Direct Connect gateway to one or more transit gateways.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directconnect.Gateway("example", {
/// name: "tf-dxg-example",
/// amazonSideAsn: "64512",
/// });
/// const exampleTransitVirtualInterface = new aws.directconnect.TransitVirtualInterface("example", {
/// connectionId: exampleAwsDxConnection.id,
/// dxGatewayId: example.id,
/// name: "tf-transit-vif-example",
/// vlan: 4094,
/// addressFamily: "ipv4",
/// bgpAsn: 65352,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directconnect.Gateway("example",
/// name="tf-dxg-example",
/// amazon_side_asn="64512")
/// example_transit_virtual_interface = aws.directconnect.TransitVirtualInterface("example",
/// connection_id=example_aws_dx_connection["id"],
/// dx_gateway_id=example.id,
/// name="tf-transit-vif-example",
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
/// var example = new Aws.DirectConnect.Gateway("example", new()
/// {
/// Name = "tf-dxg-example",
/// AmazonSideAsn = "64512",
/// });
///
/// var exampleTransitVirtualInterface = new Aws.DirectConnect.TransitVirtualInterface("example", new()
/// {
/// ConnectionId = exampleAwsDxConnection.Id,
/// DxGatewayId = example.Id,
/// Name = "tf-transit-vif-example",
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
/// example, err := directconnect.NewGateway(ctx, "example", &directconnect.GatewayArgs{
/// Name:          pulumi.String("tf-dxg-example"),
/// AmazonSideAsn: pulumi.String("64512"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directconnect.NewTransitVirtualInterface(ctx, "example", &directconnect.TransitVirtualInterfaceArgs{
/// ConnectionId:  pulumi.Any(exampleAwsDxConnection.Id),
/// DxGatewayId:   example.ID(),
/// Name:          pulumi.String("tf-transit-vif-example"),
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
/// import com.pulumi.aws.directconnect.Gateway;
/// import com.pulumi.aws.directconnect.GatewayArgs;
/// import com.pulumi.aws.directconnect.TransitVirtualInterface;
/// import com.pulumi.aws.directconnect.TransitVirtualInterfaceArgs;
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
/// var example = new Gateway("example", GatewayArgs.builder()
/// .name("tf-dxg-example")
/// .amazonSideAsn("64512")
/// .build());
///
/// var exampleTransitVirtualInterface = new TransitVirtualInterface("exampleTransitVirtualInterface", TransitVirtualInterfaceArgs.builder()
/// .connectionId(exampleAwsDxConnection.id())
/// .dxGatewayId(example.id())
/// .name("tf-transit-vif-example")
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
/// example:
/// type: aws:directconnect:Gateway
/// properties:
/// name: tf-dxg-example
/// amazonSideAsn: 64512
/// exampleTransitVirtualInterface:
/// type: aws:directconnect:TransitVirtualInterface
/// name: example
/// properties:
/// connectionId: ${exampleAwsDxConnection.id}
/// dxGatewayId: ${example.id}
/// name: tf-transit-vif-example
/// vlan: 4094
/// addressFamily: ipv4
/// bgpAsn: 65352
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect transit virtual interfaces using the VIF <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/transitVirtualInterface:TransitVirtualInterface test dxvif-33cc44dd
/// ```
class TransitVirtualInterface extends CustomResource {
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

  /// The ID of the Direct Connect gateway to which to connect the virtual interface.
  late final Output<String> dxGatewayId;

  /// Indicates whether jumbo frames (8500 MTU) are supported.
  late final Output<bool> jumboFrameCapable;

  /// The maximum transmission unit (MTU) is the size, in bytes, of the largest permissible packet that can be passed over the connection.
  /// The MTU of a virtual transit interface can be either <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span> or <span pulumi-lang-nodejs="`8500`" pulumi-lang-dotnet="`8500`" pulumi-lang-go="`8500`" pulumi-lang-python="`8500`" pulumi-lang-yaml="`8500`" pulumi-lang-java="`8500`">`8500`</span> (jumbo frames). Default is <span pulumi-lang-nodejs="`1500`" pulumi-lang-dotnet="`1500`" pulumi-lang-go="`1500`" pulumi-lang-python="`1500`" pulumi-lang-yaml="`1500`" pulumi-lang-java="`1500`">`1500`</span>.
  late final Output<int?> mtu;

  /// The name for the virtual interface.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether to enable or disable SiteLink.
  late final Output<bool?> sitelinkEnabled;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VLAN ID.
  late final Output<int> vlan;

  TransitVirtualInterface(
    String name, {
    TransitVirtualInterfaceArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/transitVirtualInterface:TransitVirtualInterface',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.addressFamily = Output.createUnknown<String>();
    this.amazonAddress = Output.createUnknown<String>();
    this.amazonSideAsn = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.awsDevice = Output.createUnknown<String>();
    this.bgpAsn = Output.createUnknown<int>();
    this.bgpAuthKey = Output.createUnknown<String>();
    this.connectionId = Output.createUnknown<String>();
    this.customerAddress = Output.createUnknown<String>();
    this.dxGatewayId = Output.createUnknown<String>();
    this.jumboFrameCapable = Output.createUnknown<bool>();
    this.mtu = Output.createUnknown<int?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.sitelinkEnabled = Output.createUnknown<bool?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vlan = Output.createUnknown<int>();
  }
}
