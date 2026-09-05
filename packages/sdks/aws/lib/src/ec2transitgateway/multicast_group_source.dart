import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_group_source_args.dart';
import 'multicast_group_source_state.dart';

/// Registers sources (network interfaces) with the transit gateway multicast group.
/// A multicast source is a network interface attached to a supported instance that sends multicast traffic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2transitgateway.MulticastGroupSource("example", {
///     groupIpAddress: "224.0.0.1",
///     networkInterfaceId: exampleAwsNetworkInterface.id,
///     transitGatewayMulticastDomainId: exampleAwsEc2TransitGatewayMulticastDomain.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2transitgateway.MulticastGroupSource("example",
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
///     var example = new Aws.Ec2TransitGateway.MulticastGroupSource("example", new()
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
/// 		_, err := ec2transitgateway.NewMulticastGroupSource(ctx, "example", &ec2transitgateway.MulticastGroupSourceArgs{
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_ec2transitgateway_multicastgroupsource" "example" {
///   group_ip_address                    = "224.0.0.1"
///   network_interface_id                = exampleAwsNetworkInterface.id
///   transit_gateway_multicast_domain_id = exampleAwsEc2TransitGatewayMulticastDomain.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2transitgateway.MulticastGroupSource;
/// import com.pulumi.aws.ec2transitgateway.MulticastGroupSourceArgs;
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
///         var example = new MulticastGroupSource("example", MulticastGroupSourceArgs.builder()
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
///     type: aws:ec2transitgateway:MulticastGroupSource
///     properties:
///       groupIpAddress: 224.0.0.1
///       networkInterfaceId: ${exampleAwsNetworkInterface.id}
///       transitGatewayMulticastDomainId: ${exampleAwsEc2TransitGatewayMulticastDomain.id}
/// ```
class MulticastGroupSource extends pulumi.CustomResource {
  /// The IP address assigned to the transit gateway multicast group.
  late final pulumi.Output<String> groupIpAddress;
  /// The group members' network interface ID to register with the transit gateway multicast group.
  late final pulumi.Output<String> networkInterfaceId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the transit gateway multicast domain.
  late final pulumi.Output<String> transitGatewayMulticastDomainId;

  /// Creates a new [MulticastGroupSource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MulticastGroupSource]. {@macro pulumi_ec2transitgateway_multicast_group_source_multicast_group_source_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MulticastGroupSource(
    String name, {
    MulticastGroupSourceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastGroupSource:MulticastGroupSource',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    groupIpAddress = registerOutput<String>('groupIpAddress');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    region = registerOutput<String>('region');
    transitGatewayMulticastDomainId = registerOutput<String>('transitGatewayMulticastDomainId');
  }

  /// Gets an existing [MulticastGroupSource] resource's state with the given [name] and [id].
  static MulticastGroupSource get(
    String name,
    pulumi.Input<String> id, {
    MulticastGroupSourceState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MulticastGroupSource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MulticastGroupSource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/multicastGroupSource:MulticastGroupSource',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupIpAddress = registerOutput<String>('groupIpAddress');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    region = registerOutput<String>('region');
    transitGatewayMulticastDomainId = registerOutput<String>('transitGatewayMulticastDomainId');
  }

  /// Creates a typed reference to an existing [MulticastGroupSource] resource.
  MulticastGroupSource.reference(String urn)
    : super(
        'aws:ec2transitgateway/multicastGroupSource:MulticastGroupSource',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    groupIpAddress = registerOutput<String>('groupIpAddress');
    networkInterfaceId = registerOutput<String>('networkInterfaceId');
    region = registerOutput<String>('region');
    transitGatewayMulticastDomainId = registerOutput<String>('transitGatewayMulticastDomainId');
  }
}
