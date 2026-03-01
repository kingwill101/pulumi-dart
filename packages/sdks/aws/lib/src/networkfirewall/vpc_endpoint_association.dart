import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_association_args.dart';
import 'vpc_endpoint_association_state.dart';
import 'vpc_endpoint_association_subnet_mapping.dart';
import 'vpc_endpoint_association_timeouts.dart';
import 'vpc_endpoint_association_vpc_endpoint_association_status.dart';

/// Manages a firewall endpoint for an AWS Network Firewall firewall.
///
/// Use `aws.networkfirewall.VpcEndpointAssociation` to establish new firewall endpoints in any Availability Zone where the firewall is already being used. The first use of a firewall in an Availability Zone must be defined by `aws.networkfirewall.Firewall` resource and `subnet_mapping` argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.VpcEndpointAssociation("example", {
///     firewallArn: exampleAwsNetworkfirewallFirewall.arn,
///     vpcId: exampleAwsVpc.id,
///     subnetMapping: {
///         subnetId: exampleAwsSubnet.id,
///     },
///     tags: {
///         Name: "example endpoint",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.VpcEndpointAssociation("example",
///     firewall_arn=example_aws_networkfirewall_firewall["arn"],
///     vpc_id=example_aws_vpc["id"],
///     subnet_mapping={
///         "subnet_id": example_aws_subnet["id"],
///     },
///     tags={
///         "Name": "example endpoint",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.NetworkFirewall.VpcEndpointAssociation("example", new()
///     {
///         FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
///         VpcId = exampleAwsVpc.Id,
///         SubnetMapping = new Aws.NetworkFirewall.Inputs.VpcEndpointAssociationSubnetMappingArgs
///         {
///             SubnetId = exampleAwsSubnet.Id,
///         },
///         Tags =
///         {
///             { "Name", "example endpoint" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewVpcEndpointAssociation(ctx, "example", &networkfirewall.VpcEndpointAssociationArgs{
/// 			FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
/// 			VpcId:       pulumi.Any(exampleAwsVpc.Id),
/// 			SubnetMapping: &networkfirewall.VpcEndpointAssociationSubnetMappingArgs{
/// 				SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example endpoint"),
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
/// import com.pulumi.aws.networkfirewall.VpcEndpointAssociation;
/// import com.pulumi.aws.networkfirewall.VpcEndpointAssociationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.VpcEndpointAssociationSubnetMappingArgs;
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
///         var example = new VpcEndpointAssociation("example", VpcEndpointAssociationArgs.builder()
///             .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
///             .vpcId(exampleAwsVpc.id())
///             .subnetMapping(VpcEndpointAssociationSubnetMappingArgs.builder()
///                 .subnetId(exampleAwsSubnet.id())
///                 .build())
///             .tags(Map.of("Name", "example endpoint"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:VpcEndpointAssociation
///     properties:
///       firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
///       vpcId: ${exampleAwsVpc.id}
///       subnetMapping:
///         subnetId: ${exampleAwsSubnet.id}
///       tags:
///         Name: example endpoint
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall VPC Endpoint Association using the `vpc_endpoint_association_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation example arn:aws:network-firewall:us-west-1:123456789012:vpc-endpoint-association/example
/// ```
class VpcEndpointAssociation extends pulumi.CustomResource {
  /// A description of the VPC endpoint association.
  late final pulumi.Output<String?> description;
  /// The Amazon Resource Name (ARN) that identifies the firewall.
  late final pulumi.Output<String> firewallArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  late final pulumi.Output<VpcEndpointAssociationSubnetMapping> subnetMapping;
  /// Map of resource tags to associate with the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<VpcEndpointAssociationTimeouts?> timeouts;
  /// ARN of the VPC Endpoint Association.
  late final pulumi.Output<String> vpcEndpointAssociationArn;
  /// The unique identifier of the VPC endpoint association.
  late final pulumi.Output<String> vpcEndpointAssociationId;
  /// Nested list of information about the current status of the VPC Endpoint Association.
  late final pulumi.Output<List<VpcEndpointAssociationVpcEndpointAssociationStatus>> vpcEndpointAssociationStatuses;
  /// The unique identifier of the VPC for the endpoint association.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcEndpointAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcEndpointAssociation]. {@macro pulumi_networkfirewall_vpc_endpoint_association_vpc_endpoint_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcEndpointAssociation(
    String name, {
    VpcEndpointAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.firewallArn = registerOutput<String>('firewallArn');
    this.region = registerOutput<String>('region');
    this.subnetMapping = registerOutput<VpcEndpointAssociationSubnetMapping>('subnetMapping');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcEndpointAssociationTimeouts?>('timeouts');
    this.vpcEndpointAssociationArn = registerOutput<String>('vpcEndpointAssociationArn');
    this.vpcEndpointAssociationId = registerOutput<String>('vpcEndpointAssociationId');
    this.vpcEndpointAssociationStatuses = registerOutput<List<VpcEndpointAssociationVpcEndpointAssociationStatus>>('vpcEndpointAssociationStatuses');
    this.vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [VpcEndpointAssociation] resource's state with the given [name] and [id].
  static VpcEndpointAssociation get(
    String name,
    pulumi.Input<String> id, {
    VpcEndpointAssociationState? state,
  }) {
    return VpcEndpointAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcEndpointAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.firewallArn = registerOutput<String>('firewallArn');
    this.region = registerOutput<String>('region');
    this.subnetMapping = registerOutput<VpcEndpointAssociationSubnetMapping>('subnetMapping');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<VpcEndpointAssociationTimeouts?>('timeouts');
    this.vpcEndpointAssociationArn = registerOutput<String>('vpcEndpointAssociationArn');
    this.vpcEndpointAssociationId = registerOutput<String>('vpcEndpointAssociationId');
    this.vpcEndpointAssociationStatuses = registerOutput<List<VpcEndpointAssociationVpcEndpointAssociationStatus>>('vpcEndpointAssociationStatuses');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
