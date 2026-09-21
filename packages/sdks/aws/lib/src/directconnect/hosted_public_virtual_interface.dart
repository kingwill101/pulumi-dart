import 'package:pulumi/pulumi.dart' as pulumi;
import 'hosted_public_virtual_interface_args.dart';
import 'hosted_public_virtual_interface_state.dart';

/// Provides a Direct Connect hosted public virtual interface resource. This resource represents the allocator's side of the hosted virtual interface.
/// A hosted virtual interface is a virtual interface that is owned by another AWS account.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.directconnect.HostedPublicVirtualInterface("foo", {
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
/// foo = aws.directconnect.HostedPublicVirtualInterface("foo",
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
///     var foo = new Aws.DirectConnect.HostedPublicVirtualInterface("foo", new()
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
/// 		_, err := directconnect.NewHostedPublicVirtualInterface(ctx, "foo", &directconnect.HostedPublicVirtualInterfaceArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_directconnect_hostedpublicvirtualinterface" "foo" {
///   connection_id         = "dxcon-zzzzzzzz"
///   name                  = "vif-foo"
///   vlan                  = 4094
///   address_family        = "ipv4"
///   bgp_asn               = 65352
///   customer_address      = "175.45.176.1/30"
///   amazon_address        = "175.45.176.2/30"
///   route_filter_prefixes = ["210.52.109.0/24", "175.45.176.0/22"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterface;
/// import com.pulumi.aws.directconnect.HostedPublicVirtualInterfaceArgs;
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
///         var foo = new HostedPublicVirtualInterface("foo", HostedPublicVirtualInterfaceArgs.builder()
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
///     type: aws:directconnect:HostedPublicVirtualInterface
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
/// Using `pulumi import`, import Direct Connect hosted public virtual interfaces using the VIF `id`. For example:
///
/// ```sh
/// $ pulumi import aws:directconnect/hostedPublicVirtualInterface:HostedPublicVirtualInterface test dxvif-33cc44dd
/// ```
///
/// &gt; **Note:** When a virtual interface uses an ASN in the `bgpAsn` range (`1` to `2147483646`), AWS returns the value in both the `asn` and `asnLong` API fields, so import always populates `bgpAsn` rather than `bgpAsnLong`. If the virtual interface was originally created with `bgpAsnLong` set to a value in that range, update your configuration to use `bgpAsn` after import to avoid a difference. Virtual interfaces using a 4-byte ASN (greater than `2147483646`) import into `bgpAsnLong` as expected.
class HostedPublicVirtualInterface extends pulumi.CustomResource {
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
  /// The name for the virtual interface.
  late final pulumi.Output<String> name;
  /// The AWS account that will own the new virtual interface.
  late final pulumi.Output<String> ownerAccountId;
  /// Maximum bandwidth allocation for the virtual interface, restricting the bandwidth it can use on the parent connection. Specify a supported bandwidth value without a space (for example, `50Mbps`, `1Gbps`, or `10Gbps`); the value cannot exceed the bandwidth of the parent connection or link aggregation group (LAG), and supported values range up to `1.6Tbps`. See the [VIF Rate Limiters documentation](https://docs.aws.amazon.com/directconnect/latest/UserGuide/vif-rate-limiters.html) for the full list of supported values. Changing this forces a new resource to be created. Rate Limiters are supported only on Direct Connect dedicated connections (including LAGs); they are not supported on hosted connections.
  late final pulumi.Output<String> rateLimit;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A list of routes to be advertised to the AWS network in this region.
  late final pulumi.Output<List<String>> routeFilterPrefixes;
  /// The VLAN ID.
  late final pulumi.Output<int> vlan;

  /// Creates a new [HostedPublicVirtualInterface].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HostedPublicVirtualInterface]. {@macro pulumi_directconnect_hosted_public_virtual_interface_hosted_public_virtual_interface_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HostedPublicVirtualInterface(
    String name, {
    HostedPublicVirtualInterfaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPublicVirtualInterface:HostedPublicVirtualInterface',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
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
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    rateLimit = registerOutput<String>('rateLimit');
    region = registerOutput<String>('region');
    routeFilterPrefixes = registerOutput<List<String>>('routeFilterPrefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vlan = registerOutput<int>('vlan');
  }

  /// Gets an existing [HostedPublicVirtualInterface] resource's state with the given [name] and [id].
  static HostedPublicVirtualInterface get(
    String name,
    pulumi.Input<String> id, {
    HostedPublicVirtualInterfaceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return HostedPublicVirtualInterface._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  HostedPublicVirtualInterface._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directconnect/hostedPublicVirtualInterface:HostedPublicVirtualInterface',
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
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    rateLimit = registerOutput<String>('rateLimit');
    region = registerOutput<String>('region');
    routeFilterPrefixes = registerOutput<List<String>>('routeFilterPrefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vlan = registerOutput<int>('vlan');
  }

  /// Creates a typed reference to an existing [HostedPublicVirtualInterface] resource.
  HostedPublicVirtualInterface.reference(String urn)
    : super(
        'aws:directconnect/hostedPublicVirtualInterface:HostedPublicVirtualInterface',
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
    this.name = registerOutput<String>('name');
    ownerAccountId = registerOutput<String>('ownerAccountId');
    rateLimit = registerOutput<String>('rateLimit');
    region = registerOutput<String>('region');
    routeFilterPrefixes = registerOutput<List<String>>('routeFilterPrefixes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    vlan = registerOutput<int>('vlan');
  }
}
