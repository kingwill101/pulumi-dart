import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_connection_route_args.dart';
import 'vpn_connection_route_state.dart';

/// Provides a static route between a VPN connection and a customer gateway.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const vpc = new aws.ec2.Vpc("vpc", {cidrBlock: "10.0.0.0/16"});
/// const vpnGateway = new aws.ec2.VpnGateway("vpn_gateway", {vpcId: vpc.id});
/// const customerGateway = new aws.ec2.CustomerGateway("customer_gateway", {
///     bgpAsn: "65000",
///     ipAddress: "172.0.0.1",
///     type: "ipsec.1",
/// });
/// const main = new aws.ec2.VpnConnection("main", {
///     vpnGatewayId: vpnGateway.id,
///     customerGatewayId: customerGateway.id,
///     type: "ipsec.1",
///     staticRoutesOnly: true,
/// });
/// const office = new aws.ec2.VpnConnectionRoute("office", {
///     destinationCidrBlock: "192.168.10.0/24",
///     vpnConnectionId: main.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// vpc = aws.ec2.Vpc("vpc", cidr_block="10.0.0.0/16")
/// vpn_gateway = aws.ec2.VpnGateway("vpn_gateway", vpc_id=vpc.id)
/// customer_gateway = aws.ec2.CustomerGateway("customer_gateway",
///     bgp_asn="65000",
///     ip_address="172.0.0.1",
///     type="ipsec.1")
/// main = aws.ec2.VpnConnection("main",
///     vpn_gateway_id=vpn_gateway.id,
///     customer_gateway_id=customer_gateway.id,
///     type="ipsec.1",
///     static_routes_only=True)
/// office = aws.ec2.VpnConnectionRoute("office",
///     destination_cidr_block="192.168.10.0/24",
///     vpn_connection_id=main.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var vpc = new Aws.Ec2.Vpc("vpc", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var vpnGateway = new Aws.Ec2.VpnGateway("vpn_gateway", new()
///     {
///         VpcId = vpc.Id,
///     });
///
///     var customerGateway = new Aws.Ec2.CustomerGateway("customer_gateway", new()
///     {
///         BgpAsn = "65000",
///         IpAddress = "172.0.0.1",
///         Type = "ipsec.1",
///     });
///
///     var main = new Aws.Ec2.VpnConnection("main", new()
///     {
///         VpnGatewayId = vpnGateway.Id,
///         CustomerGatewayId = customerGateway.Id,
///         Type = "ipsec.1",
///         StaticRoutesOnly = true,
///     });
///
///     var office = new Aws.Ec2.VpnConnectionRoute("office", new()
///     {
///         DestinationCidrBlock = "192.168.10.0/24",
///         VpnConnectionId = main.Id,
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
/// 		vpc, err := ec2.NewVpc(ctx, "vpc", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpnGateway, err := ec2.NewVpnGateway(ctx, "vpn_gateway", &ec2.VpnGatewayArgs{
/// 			VpcId: vpc.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customerGateway, err := ec2.NewCustomerGateway(ctx, "customer_gateway", &ec2.CustomerGatewayArgs{
/// 			BgpAsn:    pulumi.String("65000"),
/// 			IpAddress: pulumi.String("172.0.0.1"),
/// 			Type:      pulumi.String("ipsec.1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		main, err := ec2.NewVpnConnection(ctx, "main", &ec2.VpnConnectionArgs{
/// 			VpnGatewayId:      vpnGateway.ID(),
/// 			CustomerGatewayId: customerGateway.ID(),
/// 			Type:              pulumi.String("ipsec.1"),
/// 			StaticRoutesOnly:  pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpnConnectionRoute(ctx, "office", &ec2.VpnConnectionRouteArgs{
/// 			DestinationCidrBlock: pulumi.String("192.168.10.0/24"),
/// 			VpnConnectionId:      main.ID(),
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
/// import com.pulumi.aws.ec2.VpnGateway;
/// import com.pulumi.aws.ec2.VpnGatewayArgs;
/// import com.pulumi.aws.ec2.CustomerGateway;
/// import com.pulumi.aws.ec2.CustomerGatewayArgs;
/// import com.pulumi.aws.ec2.VpnConnection;
/// import com.pulumi.aws.ec2.VpnConnectionArgs;
/// import com.pulumi.aws.ec2.VpnConnectionRoute;
/// import com.pulumi.aws.ec2.VpnConnectionRouteArgs;
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
///         var vpc = new Vpc("vpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var vpnGateway = new VpnGateway("vpnGateway", VpnGatewayArgs.builder()
///             .vpcId(vpc.id())
///             .build());
///
///         var customerGateway = new CustomerGateway("customerGateway", CustomerGatewayArgs.builder()
///             .bgpAsn("65000")
///             .ipAddress("172.0.0.1")
///             .type("ipsec.1")
///             .build());
///
///         var main = new VpnConnection("main", VpnConnectionArgs.builder()
///             .vpnGatewayId(vpnGateway.id())
///             .customerGatewayId(customerGateway.id())
///             .type("ipsec.1")
///             .staticRoutesOnly(true)
///             .build());
///
///         var office = new VpnConnectionRoute("office", VpnConnectionRouteArgs.builder()
///             .destinationCidrBlock("192.168.10.0/24")
///             .vpnConnectionId(main.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   vpc:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   vpnGateway:
///     type: aws:ec2:VpnGateway
///     name: vpn_gateway
///     properties:
///       vpcId: ${vpc.id}
///   customerGateway:
///     type: aws:ec2:CustomerGateway
///     name: customer_gateway
///     properties:
///       bgpAsn: 65000
///       ipAddress: 172.0.0.1
///       type: ipsec.1
///   main:
///     type: aws:ec2:VpnConnection
///     properties:
///       vpnGatewayId: ${vpnGateway.id}
///       customerGatewayId: ${customerGateway.id}
///       type: ipsec.1
///       staticRoutesOnly: true
///   office:
///     type: aws:ec2:VpnConnectionRoute
///     properties:
///       destinationCidrBlock: 192.168.10.0/24
///       vpnConnectionId: ${main.id}
/// ```
class VpnConnectionRouteEc2 extends pulumi.CustomResource {
  /// The CIDR block associated with the local subnet of the customer network.
  late final pulumi.Output<String> destinationCidrBlock;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the VPN connection.
  late final pulumi.Output<String> vpnConnectionId;

  /// Creates a new [VpnConnectionRouteEc2].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnConnectionRouteEc2]. {@macro pulumi_ec2_vpn_connection_route_vpn_connection_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnConnectionRouteEc2(
    String name, {
    VpnConnectionRouteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnectionRoute:VpnConnectionRoute',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    region = registerOutput<String>('region');
    vpnConnectionId = registerOutput<String>('vpnConnectionId');
  }

  /// Gets an existing [VpnConnectionRouteEc2] resource's state with the given [name] and [id].
  static VpnConnectionRouteEc2 get(
    String name,
    pulumi.Input<String> id, {
    VpnConnectionRouteState? state,
  }) {
    return VpnConnectionRouteEc2._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnConnectionRouteEc2._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpnConnectionRoute:VpnConnectionRoute',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    region = registerOutput<String>('region');
    vpnConnectionId = registerOutput<String>('vpnConnectionId');
  }
}
