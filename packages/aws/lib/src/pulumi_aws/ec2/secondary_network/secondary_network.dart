import 'package:pulumi/pulumi.dart';
import '../secondary_network_ipv4_cidr_block_association/secondary_network_ipv4_cidr_block_association.dart';
import '../secondary_network_timeouts/secondary_network_timeouts.dart';
import 'secondary_network_args.dart';

/// Provides an EC2 Secondary Network resource for RDMA networking.
///
/// Secondary networks are specialized network resources that enable high-performance RDMA (Remote Direct Memory Access) networking for compute-intensive workloads.
/// They provide dedicated network infrastructure with low latency and high bandwidth capabilities.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.SecondaryNetwork("example", {
/// ipv4CidrBlock: "10.0.0.0/16",
/// networkType: "rdma",
/// tags: {
/// Name: "example-secondary-network",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.SecondaryNetwork("example",
/// ipv4_cidr_block="10.0.0.0/16",
/// network_type="rdma",
/// tags={
/// "Name": "example-secondary-network",
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
/// var example = new Aws.Ec2.SecondaryNetwork("example", new()
/// {
/// Ipv4CidrBlock = "10.0.0.0/16",
/// NetworkType = "rdma",
/// Tags =
/// {
/// { "Name", "example-secondary-network" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewSecondaryNetwork(ctx, "example", &ec2.SecondaryNetworkArgs{
/// Ipv4CidrBlock: pulumi.String("10.0.0.0/16"),
/// NetworkType:   pulumi.String("rdma"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("example-secondary-network"),
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
/// import com.pulumi.aws.ec2.SecondaryNetwork;
/// import com.pulumi.aws.ec2.SecondaryNetworkArgs;
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
/// var example = new SecondaryNetwork("example", SecondaryNetworkArgs.builder()
/// .ipv4CidrBlock("10.0.0.0/16")
/// .networkType("rdma")
/// .tags(Map.of("Name", "example-secondary-network"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:SecondaryNetwork
/// properties:
/// ipv4CidrBlock: 10.0.0.0/16
/// networkType: rdma
/// tags:
/// Name: example-secondary-network
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> - (String) ID of the secondary network.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import EC2 Secondary Networks using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/secondaryNetwork:SecondaryNetwork example sn-0123456789abcdef0
/// ```
class SecondaryNetwork extends CustomResource {
  /// ARN of the secondary network.
  late final Output<String> arn;

  /// IPv4 CIDR block for the secondary network. The CIDR block size must be between `/12` and `/28`.
  late final Output<String> ipv4CidrBlock;

  /// A list of IPv4 CIDR block associations for the secondary network.
  late final Output<List<SecondaryNetworkIpv4CidrBlockAssociation>>
      ipv4CidrBlockAssociations;

  /// Type of secondary network. Currently only <span pulumi-lang-nodejs="`rdma`" pulumi-lang-dotnet="`Rdma`" pulumi-lang-go="`rdma`" pulumi-lang-python="`rdma`" pulumi-lang-yaml="`rdma`" pulumi-lang-java="`rdma`">`rdma`</span> is supported.
  late final Output<String> networkType;
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID of the secondary network.
  late final Output<String> secondaryNetworkId;

  /// State of the IPv4 CIDR block association.
  late final Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<SecondaryNetworkTimeouts?> timeouts;

  SecondaryNetwork(
    String name, {
    SecondaryNetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/secondaryNetwork:SecondaryNetwork',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.ipv4CidrBlock = Output.createUnknown<String>();
    this.ipv4CidrBlockAssociations =
        Output.createUnknown<List<SecondaryNetworkIpv4CidrBlockAssociation>>();
    this.networkType = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.secondaryNetworkId = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<SecondaryNetworkTimeouts?>();
  }
}
