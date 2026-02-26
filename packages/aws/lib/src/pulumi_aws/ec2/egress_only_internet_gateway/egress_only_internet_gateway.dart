import 'package:pulumi/pulumi.dart';
import 'egress_only_internet_gateway_args.dart';

/// [IPv6 only] Creates an egress-only Internet gateway for your VPC.
/// An egress-only Internet gateway is used to enable outbound communication
/// over IPv6 from instances in your VPC to the Internet, and prevents hosts
/// outside of your VPC from initiating an IPv6 connection with your instance.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {
/// cidrBlock: "10.1.0.0/16",
/// assignGeneratedIpv6CidrBlock: true,
/// });
/// const exampleEgressOnlyInternetGateway = new aws.ec2.EgressOnlyInternetGateway("example", {
/// vpcId: example.id,
/// tags: {
/// Name: "main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example",
/// cidr_block="10.1.0.0/16",
/// assign_generated_ipv6_cidr_block=True)
/// example_egress_only_internet_gateway = aws.ec2.EgressOnlyInternetGateway("example",
/// vpc_id=example.id,
/// tags={
/// "Name": "main",
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
/// var example = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.1.0.0/16",
/// AssignGeneratedIpv6CidrBlock = true,
/// });
///
/// var exampleEgressOnlyInternetGateway = new Aws.Ec2.EgressOnlyInternetGateway("example", new()
/// {
/// VpcId = example.Id,
/// Tags =
/// {
/// { "Name", "main" },
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
/// example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock:                    pulumi.String("10.1.0.0/16"),
/// AssignGeneratedIpv6CidrBlock: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewEgressOnlyInternetGateway(ctx, "example", &ec2.EgressOnlyInternetGatewayArgs{
/// VpcId: example.ID(),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("main"),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.EgressOnlyInternetGateway;
/// import com.pulumi.aws.ec2.EgressOnlyInternetGatewayArgs;
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
/// var example = new Vpc("example", VpcArgs.builder()
/// .cidrBlock("10.1.0.0/16")
/// .assignGeneratedIpv6CidrBlock(true)
/// .build());
///
/// var exampleEgressOnlyInternetGateway = new EgressOnlyInternetGateway("exampleEgressOnlyInternetGateway", EgressOnlyInternetGatewayArgs.builder()
/// .vpcId(example.id())
/// .tags(Map.of("Name", "main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.1.0.0/16
/// assignGeneratedIpv6CidrBlock: true
/// exampleEgressOnlyInternetGateway:
/// type: aws:ec2:EgressOnlyInternetGateway
/// name: example
/// properties:
/// vpcId: ${example.id}
/// tags:
/// Name: main
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Egress-only Internet gateways using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/egressOnlyInternetGateway:EgressOnlyInternetGateway example eigw-015e0e244e24dfe8a
/// ```
class EgressOnlyInternetGateway extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID to create in.
  late final Output<String> vpcId;

  EgressOnlyInternetGateway(
    String name, {
    EgressOnlyInternetGatewayArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/egressOnlyInternetGateway:EgressOnlyInternetGateway',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
