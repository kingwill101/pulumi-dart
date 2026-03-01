import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_member_args.dart';
import 'multicast_group_member_state.dart';

/// Registers members (network interfaces) with the transit gateway multicast group.
/// A member is a network interface associated with a supported EC2 instance that receives multicast traffic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.MulticastGroupMember("example", {
///     groupIpAddress: "224.0.0.1",
///     networkInterfaceId: exampleAwsNetworkInterface.id,
///     transitGatewayMulticastDomainId: exampleAwsEc2TransitGatewayMulticastDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.MulticastGroupMember("example",
///     group_ip_address="224.0.0.1",
///     network_interface_id=example_aws_network_interface["id"],
///     transit_gateway_multicast_domain_id=example_aws_ec2_transit_gateway_multicast_domain["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2TransitGateway.MulticastGroupMember("example", new()
///     {
///         GroupIpAddress = "224.0.0.1",
///         NetworkInterfaceId = exampleAwsNetworkInterface.Id,
///         TransitGatewayMulticastDomainId = exampleAwsEc2TransitGatewayMulticastDomain.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2transitgateway"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ec2transitgateway.NewMulticastGroupMember(ctx, "example", &ec2transitgateway.MulticastGroupMemberArgs{
/// 			GroupIpAddress:                  pulumi.String("224.0.0.1"),
/// 			NetworkInterfaceId:              pulumi.Any(exampleAwsNetworkInterface.Id),
/// 			TransitGatewayMulticastDomainId: pulumi.Any(exampleAwsEc2TransitGatewayMulticastDomain.Id),
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
/// import com.pulumi.aws.ec2transitgateway.MulticastGroupMember;
/// import com.pulumi.aws.ec2transitgateway.MulticastGroupMemberArgs;
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
///         var example = new MulticastGroupMember("example", MulticastGroupMemberArgs.builder()
///             .groupIpAddress("224.0.0.1")
///             .networkInterfaceId(exampleAwsNetworkInterface.id())
///             .transitGatewayMulticastDomainId(exampleAwsEc2TransitGatewayMulticastDomain.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2transitgateway:MulticastGroupMember
///     properties:
///       groupIpAddress: 224.0.0.1
///       networkInterfaceId: ${exampleAwsNetworkInterface.id}
///       transitGatewayMulticastDomainId: ${exampleAwsEc2TransitGatewayMulticastDomain.id}
/// ```
class MulticastGroupMember extends pulumi.CustomResource {
  /// The IP address assigned to the transit gateway multicast group.
  late final pulumi.Output<String> groupIpAddress;
  /// The group members' network interface ID to register with the transit gateway multicast group.
  late final pulumi.Output<String> networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the transit gateway multicast domain.
  late final pulumi.Output<String> transitGatewayMulticastDomainId;

  /// Creates a new [MulticastGroupMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastGroupMember]. {@macro pulumi_ec2transitgateway_multicast_group_member_multicast_group_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastGroupMember(
    String name, {
    MulticastGroupMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastGroupMember:MulticastGroupMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.transitGatewayMulticastDomainId = registerOutput<String>('transitGatewayMulticastDomainId');
  }

  /// Gets an existing [MulticastGroupMember] resource's state with the given [name] and [id].
  static MulticastGroupMember get(
    String name,
    pulumi.Input<String> id, {
    MulticastGroupMemberState? state,
  }) {
    return MulticastGroupMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MulticastGroupMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastGroupMember:MulticastGroupMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.groupIpAddress = registerOutput<String>('groupIpAddress');
    this.networkInterfaceId = registerOutput<String>('networkInterfaceId');
    this.region = registerOutput<String>('region');
    this.transitGatewayMulticastDomainId = registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
