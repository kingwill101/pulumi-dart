import 'package:pulumi/pulumi.dart';
import '../vpc_endpoint_association_subnet_mapping/vpc_endpoint_association_subnet_mapping.dart';
import '../vpc_endpoint_association_timeouts/vpc_endpoint_association_timeouts.dart';
import '../vpc_endpoint_association_vpc_endpoint_association_status/vpc_endpoint_association_vpc_endpoint_association_status.dart';
import 'vpc_endpoint_association_args.dart';

/// Manages a firewall endpoint for an AWS Network Firewall firewall.
///
/// Use <span pulumi-lang-nodejs="`aws.networkfirewall.VpcEndpointAssociation`" pulumi-lang-dotnet="`aws.networkfirewall.VpcEndpointAssociation`" pulumi-lang-go="`networkfirewall.VpcEndpointAssociation`" pulumi-lang-python="`networkfirewall.VpcEndpointAssociation`" pulumi-lang-yaml="`aws.networkfirewall.VpcEndpointAssociation`" pulumi-lang-java="`aws.networkfirewall.VpcEndpointAssociation`">`aws.networkfirewall.VpcEndpointAssociation`</span> to establish new firewall endpoints in any Availability Zone where the firewall is already being used. The first use of a firewall in an Availability Zone must be defined by <span pulumi-lang-nodejs="`aws.networkfirewall.Firewall`" pulumi-lang-dotnet="`aws.networkfirewall.Firewall`" pulumi-lang-go="`networkfirewall.Firewall`" pulumi-lang-python="`networkfirewall.Firewall`" pulumi-lang-yaml="`aws.networkfirewall.Firewall`" pulumi-lang-java="`aws.networkfirewall.Firewall`">`aws.networkfirewall.Firewall`</span> resource and <span pulumi-lang-nodejs="`subnetMapping`" pulumi-lang-dotnet="`SubnetMapping`" pulumi-lang-go="`subnetMapping`" pulumi-lang-python="`subnet_mapping`" pulumi-lang-yaml="`subnetMapping`" pulumi-lang-java="`subnetMapping`">`subnet_mapping`</span> argument.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.VpcEndpointAssociation("example", {
/// firewallArn: exampleAwsNetworkfirewallFirewall.arn,
/// vpcId: exampleAwsVpc.id,
/// subnetMapping: {
/// subnetId: exampleAwsSubnet.id,
/// },
/// tags: {
/// Name: "example endpoint",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.VpcEndpointAssociation("example",
/// firewall_arn=example_aws_networkfirewall_firewall["arn"],
/// vpc_id=example_aws_vpc["id"],
/// subnet_mapping={
/// "subnet_id": example_aws_subnet["id"],
/// },
/// tags={
/// "Name": "example endpoint",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.NetworkFirewall.VpcEndpointAssociation("example", new()
/// {
/// FirewallArn = exampleAwsNetworkfirewallFirewall.Arn,
/// VpcId = exampleAwsVpc.Id,
/// SubnetMapping = new Aws.NetworkFirewall.Inputs.VpcEndpointAssociationSubnetMappingArgs
/// {
/// SubnetId = exampleAwsSubnet.Id,
/// },
/// Tags =
/// {
/// { "Name", "example endpoint" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := networkfirewall.NewVpcEndpointAssociation(ctx, "example", &networkfirewall.VpcEndpointAssociationArgs{
/// FirewallArn: pulumi.Any(exampleAwsNetworkfirewallFirewall.Arn),
/// VpcId:       pulumi.Any(exampleAwsVpc.Id),
/// SubnetMapping: &networkfirewall.VpcEndpointAssociationSubnetMappingArgs{
/// SubnetId: pulumi.Any(exampleAwsSubnet.Id),
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example endpoint"),
/// },
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new VpcEndpointAssociation("example", VpcEndpointAssociationArgs.builder()
/// .firewallArn(exampleAwsNetworkfirewallFirewall.arn())
/// .vpcId(exampleAwsVpc.id())
/// .subnetMapping(VpcEndpointAssociationSubnetMappingArgs.builder()
/// .subnetId(exampleAwsSubnet.id())
/// .build())
/// .tags(Map.of("Name", "example endpoint"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:networkfirewall:VpcEndpointAssociation
/// properties:
/// firewallArn: ${exampleAwsNetworkfirewallFirewall.arn}
/// vpcId: ${exampleAwsVpc.id}
/// subnetMapping:
/// subnetId: ${exampleAwsSubnet.id}
/// tags:
/// Name: example endpoint
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Firewall VPC Endpoint Association using the <span pulumi-lang-nodejs="`vpcEndpointAssociationArn`" pulumi-lang-dotnet="`VpcEndpointAssociationArn`" pulumi-lang-go="`vpcEndpointAssociationArn`" pulumi-lang-python="`vpc_endpoint_association_arn`" pulumi-lang-yaml="`vpcEndpointAssociationArn`" pulumi-lang-java="`vpcEndpointAssociationArn`">`vpc_endpoint_association_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation example arn:aws:network-firewall:us-west-1:123456789012:vpc-endpoint-association/example
/// ```
class VpcEndpointAssociation extends CustomResource {
  /// A description of the VPC endpoint association.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) that identifies the firewall.
  late final Output<String> firewallArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID for a subnet that's used in an association with a firewall. See Subnet Mapping below for details.
  late final Output<VpcEndpointAssociationSubnetMapping> subnetMapping;

  /// Map of resource tags to associate with the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<VpcEndpointAssociationTimeouts?> timeouts;

  /// ARN of the VPC Endpoint Association.
  late final Output<String> vpcEndpointAssociationArn;

  /// The unique identifier of the VPC endpoint association.
  late final Output<String> vpcEndpointAssociationId;

  /// Nested list of information about the current status of the VPC Endpoint Association.
  late final Output<List<VpcEndpointAssociationVpcEndpointAssociationStatus>>
      vpcEndpointAssociationStatuses;

  /// The unique identifier of the VPC for the endpoint association.
  late final Output<String> vpcId;

  VpcEndpointAssociation(
    String name, {
    VpcEndpointAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/vpcEndpointAssociation:VpcEndpointAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = Output.createUnknown<String?>();
    this.firewallArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subnetMapping =
        Output.createUnknown<VpcEndpointAssociationSubnetMapping>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<VpcEndpointAssociationTimeouts?>();
    this.vpcEndpointAssociationArn = Output.createUnknown<String>();
    this.vpcEndpointAssociationId = Output.createUnknown<String>();
    this.vpcEndpointAssociationStatuses = Output.createUnknown<
        List<VpcEndpointAssociationVpcEndpointAssociationStatus>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
