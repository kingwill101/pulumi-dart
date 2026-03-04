import 'package:pulumi/pulumi.dart' as pulumi;
import 'route_args.dart';
import 'route_state.dart';

/// Provides additional routes for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleEndpoint = new aws.ec2clientvpn.Endpoint("example", {
///     description: "Example Client VPN endpoint",
///     serverCertificateArn: exampleAwsAcmCertificate.arn,
///     clientCidrBlock: "10.0.0.0/16",
///     authenticationOptions: [{
///         type: "certificate-authentication",
///         rootCertificateChainArn: exampleAwsAcmCertificate.arn,
///     }],
///     connectionLogOptions: {
///         enabled: false,
///     },
/// });
/// const exampleNetworkAssociation = new aws.ec2clientvpn.NetworkAssociation("example", {
///     clientVpnEndpointId: exampleEndpoint.id,
///     subnetId: exampleAwsSubnet.id,
/// });
/// const example = new aws.ec2clientvpn.Route("example", {
///     clientVpnEndpointId: exampleEndpoint.id,
///     destinationCidrBlock: "0.0.0.0/0",
///     targetVpcSubnetId: exampleNetworkAssociation.subnetId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_endpoint = aws.ec2clientvpn.Endpoint("example",
///     description="Example Client VPN endpoint",
///     server_certificate_arn=example_aws_acm_certificate["arn"],
///     client_cidr_block="10.0.0.0/16",
///     authentication_options=[{
///         "type": "certificate-authentication",
///         "root_certificate_chain_arn": example_aws_acm_certificate["arn"],
///     }],
///     connection_log_options={
///         "enabled": False,
///     })
/// example_network_association = aws.ec2clientvpn.NetworkAssociation("example",
///     client_vpn_endpoint_id=example_endpoint.id,
///     subnet_id=example_aws_subnet["id"])
/// example = aws.ec2clientvpn.Route("example",
///     client_vpn_endpoint_id=example_endpoint.id,
///     destination_cidr_block="0.0.0.0/0",
///     target_vpc_subnet_id=example_network_association.subnet_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleEndpoint = new Aws.Ec2ClientVpn.Endpoint("example", new()
///     {
///         Description = "Example Client VPN endpoint",
///         ServerCertificateArn = exampleAwsAcmCertificate.Arn,
///         ClientCidrBlock = "10.0.0.0/16",
///         AuthenticationOptions = new[]
///         {
///             new Aws.Ec2ClientVpn.Inputs.EndpointAuthenticationOptionArgs
///             {
///                 Type = "certificate-authentication",
///                 RootCertificateChainArn = exampleAwsAcmCertificate.Arn,
///             },
///         },
///         ConnectionLogOptions = new Aws.Ec2ClientVpn.Inputs.EndpointConnectionLogOptionsArgs
///         {
///             Enabled = false,
///         },
///     });
///
///     var exampleNetworkAssociation = new Aws.Ec2ClientVpn.NetworkAssociation("example", new()
///     {
///         ClientVpnEndpointId = exampleEndpoint.Id,
///         SubnetId = exampleAwsSubnet.Id,
///     });
///
///     var example = new Aws.Ec2ClientVpn.Route("example", new()
///     {
///         ClientVpnEndpointId = exampleEndpoint.Id,
///         DestinationCidrBlock = "0.0.0.0/0",
///         TargetVpcSubnetId = exampleNetworkAssociation.SubnetId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2clientvpn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleEndpoint, err := ec2clientvpn.NewEndpoint(ctx, "example", &ec2clientvpn.EndpointArgs{
/// 			Description:          pulumi.String("Example Client VPN endpoint"),
/// 			ServerCertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// 			ClientCidrBlock:      pulumi.String("10.0.0.0/16"),
/// 			AuthenticationOptions: ec2clientvpn.EndpointAuthenticationOptionArray{
/// 				&ec2clientvpn.EndpointAuthenticationOptionArgs{
/// 					Type:                    pulumi.String("certificate-authentication"),
/// 					RootCertificateChainArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// 				},
/// 			},
/// 			ConnectionLogOptions: &ec2clientvpn.EndpointConnectionLogOptionsArgs{
/// 				Enabled: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleNetworkAssociation, err := ec2clientvpn.NewNetworkAssociation(ctx, "example", &ec2clientvpn.NetworkAssociationArgs{
/// 			ClientVpnEndpointId: exampleEndpoint.ID(),
/// 			SubnetId:            pulumi.Any(exampleAwsSubnet.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2clientvpn.NewRoute(ctx, "example", &ec2clientvpn.RouteArgs{
/// 			ClientVpnEndpointId:  exampleEndpoint.ID(),
/// 			DestinationCidrBlock: pulumi.String("0.0.0.0/0"),
/// 			TargetVpcSubnetId:    exampleNetworkAssociation.SubnetId,
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
/// import com.pulumi.aws.ec2clientvpn.Endpoint;
/// import com.pulumi.aws.ec2clientvpn.EndpointArgs;
/// import com.pulumi.aws.ec2clientvpn.inputs.EndpointAuthenticationOptionArgs;
/// import com.pulumi.aws.ec2clientvpn.inputs.EndpointConnectionLogOptionsArgs;
/// import com.pulumi.aws.ec2clientvpn.NetworkAssociation;
/// import com.pulumi.aws.ec2clientvpn.NetworkAssociationArgs;
/// import com.pulumi.aws.ec2clientvpn.Route;
/// import com.pulumi.aws.ec2clientvpn.RouteArgs;
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
///         var exampleEndpoint = new Endpoint("exampleEndpoint", EndpointArgs.builder()
///             .description("Example Client VPN endpoint")
///             .serverCertificateArn(exampleAwsAcmCertificate.arn())
///             .clientCidrBlock("10.0.0.0/16")
///             .authenticationOptions(EndpointAuthenticationOptionArgs.builder()
///                 .type("certificate-authentication")
///                 .rootCertificateChainArn(exampleAwsAcmCertificate.arn())
///                 .build())
///             .connectionLogOptions(EndpointConnectionLogOptionsArgs.builder()
///                 .enabled(false)
///                 .build())
///             .build());
///
///         var exampleNetworkAssociation = new NetworkAssociation("exampleNetworkAssociation", NetworkAssociationArgs.builder()
///             .clientVpnEndpointId(exampleEndpoint.id())
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///         var example = new Route("example", RouteArgs.builder()
///             .clientVpnEndpointId(exampleEndpoint.id())
///             .destinationCidrBlock("0.0.0.0/0")
///             .targetVpcSubnetId(exampleNetworkAssociation.subnetId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2clientvpn:Route
///     properties:
///       clientVpnEndpointId: ${exampleEndpoint.id}
///       destinationCidrBlock: 0.0.0.0/0
///       targetVpcSubnetId: ${exampleNetworkAssociation.subnetId}
///   exampleNetworkAssociation:
///     type: aws:ec2clientvpn:NetworkAssociation
///     name: example
///     properties:
///       clientVpnEndpointId: ${exampleEndpoint.id}
///       subnetId: ${exampleAwsSubnet.id}
///   exampleEndpoint:
///     type: aws:ec2clientvpn:Endpoint
///     name: example
///     properties:
///       description: Example Client VPN endpoint
///       serverCertificateArn: ${exampleAwsAcmCertificate.arn}
///       clientCidrBlock: 10.0.0.0/16
///       authenticationOptions:
///         - type: certificate-authentication
///           rootCertificateChainArn: ${exampleAwsAcmCertificate.arn}
///       connectionLogOptions:
///         enabled: false
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN routes using the endpoint ID, target subnet ID, and destination CIDR block. All values are separated by a `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/route:Route example cvpn-endpoint-1234567890abcdef,subnet-9876543210fedcba,10.1.0.0/24
/// ```
class Route extends pulumi.CustomResource {
  /// The ID of the Client VPN endpoint.
  late final pulumi.Output<String> clientVpnEndpointId;

  /// A brief description of the route.
  late final pulumi.Output<String?> description;

  /// The IPv4 or IPv6 address range, in CIDR notation, of the route destination.
  late final pulumi.Output<String> destinationCidrBlock;

  /// Indicates how the Client VPN route was added. Will be `add-route` for routes created by this resource.
  late final pulumi.Output<String> origin;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the Subnet to route the traffic through. It must already be attached to the Client VPN.
  late final pulumi.Output<String> targetVpcSubnetId;

  /// The type of the route.
  late final pulumi.Output<String> type;

  /// Creates a new [Route].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Route]. {@macro pulumi_ec2clientvpn_route_route_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Route(String name, {RouteArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:ec2clientvpn/route:Route',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    description = registerOutput<String?>('description');
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    origin = registerOutput<String>('origin');
    region = registerOutput<String>('region');
    targetVpcSubnetId = registerOutput<String>('targetVpcSubnetId');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [Route] resource's state with the given [name] and [id].
  static Route get(String name, pulumi.Input<String> id, {RouteState? state}) {
    return Route._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Route._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2clientvpn/route:Route',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    description = registerOutput<String?>('description');
    destinationCidrBlock = registerOutput<String>('destinationCidrBlock');
    origin = registerOutput<String>('origin');
    region = registerOutput<String>('region');
    targetVpcSubnetId = registerOutput<String>('targetVpcSubnetId');
    type = registerOutput<String>('type');
  }
}
