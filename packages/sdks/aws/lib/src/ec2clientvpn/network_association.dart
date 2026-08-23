import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_association_args.dart';
import 'network_association_state.dart';

/// Provides network associations for AWS Client VPN endpoints. For more information on usage, please see the
/// [AWS Client VPN Administrator's Guide](https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/what-is.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2clientvpn.NetworkAssociation("example", {
///     clientVpnEndpointId: exampleAwsEc2ClientVpnEndpoint.id,
///     subnetId: exampleAwsSubnet.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2clientvpn.NetworkAssociation("example",
///     client_vpn_endpoint_id=example_aws_ec2_client_vpn_endpoint["id"],
///     subnet_id=example_aws_subnet["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2ClientVpn.NetworkAssociation("example", new()
///     {
///         ClientVpnEndpointId = exampleAwsEc2ClientVpnEndpoint.Id,
///         SubnetId = exampleAwsSubnet.Id,
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
/// 		_, err := ec2clientvpn.NewNetworkAssociation(ctx, "example", &ec2clientvpn.NetworkAssociationArgs{
/// 			ClientVpnEndpointId: pulumi.Any(exampleAwsEc2ClientVpnEndpoint.Id),
/// 			SubnetId:            pulumi.Any(exampleAwsSubnet.Id),
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
/// resource "aws_ec2clientvpn_networkassociation" "example" {
///   client_vpn_endpoint_id = exampleAwsEc2ClientVpnEndpoint.id
///   subnet_id              = exampleAwsSubnet.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2clientvpn.NetworkAssociation;
/// import com.pulumi.aws.ec2clientvpn.NetworkAssociationArgs;
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
///         var example = new NetworkAssociation("example", NetworkAssociationArgs.builder()
///             .clientVpnEndpointId(exampleAwsEc2ClientVpnEndpoint.id())
///             .subnetId(exampleAwsSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2clientvpn:NetworkAssociation
///     properties:
///       clientVpnEndpointId: ${exampleAwsEc2ClientVpnEndpoint.id}
///       subnetId: ${exampleAwsSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import AWS Client VPN network associations using the endpoint ID and the association ID. Values are separated by a `,`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2clientvpn/networkAssociation:NetworkAssociation example cvpn-endpoint-0ac3a1abbccddd666,cvpn-assoc-0b8db902465d069ad
/// ```
class NetworkAssociation extends pulumi.CustomResource {
  /// The unique ID of the target network association.
  late final pulumi.Output<String> associationId;
  /// The ID of the Client VPN endpoint.
  late final pulumi.Output<String> clientVpnEndpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the subnet to associate with the Client VPN endpoint.
  late final pulumi.Output<String> subnetId;
  /// The ID of the VPC in which the target subnet is located.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [NetworkAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkAssociation]. {@macro pulumi_ec2clientvpn_network_association_network_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkAssociation(
    String name, {
    NetworkAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/networkAssociation:NetworkAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationId = registerOutput<String>('associationId');
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    region = registerOutput<String>('region');
    subnetId = registerOutput<String>('subnetId');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [NetworkAssociation] resource's state with the given [name] and [id].
  static NetworkAssociation get(
    String name,
    pulumi.Input<String> id, {
    NetworkAssociationState? state,
  }) {
    return NetworkAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2clientvpn/networkAssociation:NetworkAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    associationId = registerOutput<String>('associationId');
    clientVpnEndpointId = registerOutput<String>('clientVpnEndpointId');
    region = registerOutput<String>('region');
    subnetId = registerOutput<String>('subnetId');
    vpcId = registerOutput<String>('vpcId');
  }
}
