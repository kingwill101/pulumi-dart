import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_virtual_interface_args.dart';
import 'public_virtual_interface_state.dart';

/// Provides a Direct Connect public virtual interface resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.directconnect.PublicVirtualInterface("foo", {
///     connectionId: "dxcon-zzzzzzzz",
///     name: "vif-foo",
///     vlan: 4094,
///     addressFamily: "ipv4",
///     bgpAsn: 65352,
///     customerAddress: "175.45.176.1/30",
///     amazonAddress: "175.45.176.2/30",
///     routeFilterPrefixes: [
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.directconnect.PublicVirtualInterface("foo",
///     connection_id="dxcon-zzzzzzzz",
///     name="vif-foo",
///     vlan=4094,
///     address_family="ipv4",
///     bgp_asn=65352,
///     customer_address="175.45.176.1/30",
///     amazon_address="175.45.176.2/30",
///     route_filter_prefixes=[
///         "210.52.109.0/24",
///         "175.45.176.0/22",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new Aws.DirectConnect.PublicVirtualInterface("foo", new()
///     {
///         ConnectionId = "dxcon-zzzzzzzz",
///         Name = "vif-foo",
///         Vlan = 4094,
///         AddressFamily = "ipv4",
///         BgpAsn = 65352,
///         CustomerAddress = "175.45.176.1/30",
///         AmazonAddress = "175.45.176.2/30",
///         RouteFilterPrefixes = new[]
///         {
///             "210.52.109.0/24",
///             "175.45.176.0/22",
///         },
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
/// 		_, err := directconnect.NewPublicVirtualInterface(ctx, "foo", &directconnect.PublicVirtualInterfaceArgs{
/// 			ConnectionId:    pulumi.String("dxcon-zzzzzzzz"),
/// 			Name:            pulumi.String("vif-foo"),
/// 			Vlan:            pulumi.Int(4094),
/// 			AddressFamily:   pulumi.String("ipv4"),
/// 			BgpAsn:          pulumi.Int(65352),
/// 			CustomerAddress: pulumi.String("175.45.176.1/30"),
/// 			AmazonAddress:   pulumi.String("175.45.176.2/30"),
/// 			RouteFilterPrefixes: pulumi.StringArray{
/// 				pulumi.String("210.52.109.0/24"),
/// 				pulumi.String("175.45.176.0/22"),
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
/// import com.pulumi.aws.directconnect.PublicVirtualInterface;
/// import com.pulumi.aws.directconnect.PublicVirtualInterfaceArgs;
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
///         var foo = new PublicVirtualInterface("foo", PublicVirtualInterfaceArgs.builder()
///             .connectionId("dxcon-zzzzzzzz")
///             .name("vif-foo")
///             .vlan(4094)
///             .addressFamily("ipv4")
///             .bgpAsn(65352)
///             .customerAddress("175.45.176.1/30")
///             .amazonAddress("175.45.176.2/30")
///             .routeFilterPrefixes(
///                 "210.52.109.0/24",
///                 "175.45.176.0/22")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:directconnect:PublicVirtualInterface
///     properties:
///       connectionId: dxcon-zzzzzzzz
///       name: vif-foo
///       vlan: 4094
///       addressFamily: ipv4
///       bgpAsn: 65352
///       customerAddress: 175.45.176.1/30
///       amazonAddress: 175.45.176.2/30
///       routeFilterPrefixes:
///         - 210.52.109.0/24
///         - 175.45.176.0/22
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Direct Connect public virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/publicVirtualInterface:PublicVirtualInterface test dxvif-33cc44dd
/// ```
class PublicVirtualInterface extends pulumi.CustomResource {
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
  /// The name for the virtual interface.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of routes to be advertised to the AWS network in this region.
  late final pulumi.Output<List<String>> routeFilterPrefixes;
  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  /// Creates a new [PublicVirtualInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicVirtualInterface]. {@macro pulumi_directconnect_public_virtual_interface_public_virtual_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicVirtualInterface(
    String name, {
    PublicVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/publicVirtualInterface:PublicVirtualInterface',
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
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routeFilterPrefixes = registerOutput<List<String>>('routeFilterPrefixes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlan = registerOutput<int>('vlan');
  }

  /// Gets an existing [PublicVirtualInterface] resource's state with the given [name] and [id].
  static PublicVirtualInterface get(
    String name,
    pulumi.Input<String> id, {
    PublicVirtualInterfaceState? state,
  }) {
    return PublicVirtualInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  PublicVirtualInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/publicVirtualInterface:PublicVirtualInterface',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
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
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.routeFilterPrefixes = registerOutput<List<String>>('routeFilterPrefixes');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vlan = registerOutput<int>('vlan');
  }
}
