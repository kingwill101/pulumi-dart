import 'package:pulumi/pulumi.dart';
import 'local_gateway_route_table_vpc_association_args.dart';

/// Manages an EC2 Local Gateway Route Table VPC Association. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html#vpc-associations).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGatewayRouteTable({
/// outpostArn: "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleLocalGatewayRouteTableVpcAssociation = new aws.ec2.LocalGatewayRouteTableVpcAssociation("example", {
/// localGatewayRouteTableId: example.then(example => example.id),
/// vpcId: exampleVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway_route_table(outpost_arn="arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_local_gateway_route_table_vpc_association = aws.ec2.LocalGatewayRouteTableVpcAssociation("example",
/// local_gateway_route_table_id=example.id,
/// vpc_id=example_vpc.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.Ec2.GetLocalGatewayRouteTable.Invoke(new()
/// {
/// OutpostArn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// });
///
/// var exampleVpc = new Aws.Ec2.Vpc("example", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// });
///
/// var exampleLocalGatewayRouteTableVpcAssociation = new Aws.Ec2.LocalGatewayRouteTableVpcAssociation("example", new()
/// {
/// LocalGatewayRouteTableId = example.Apply(getLocalGatewayRouteTableResult => getLocalGatewayRouteTableResult.Id),
/// VpcId = exampleVpc.Id,
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
/// example, err := ec2.GetLocalGatewayRouteTable(ctx, &ec2.GetLocalGatewayRouteTableArgs{
/// OutpostArn: pulumi.StringRef("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewLocalGatewayRouteTableVpcAssociation(ctx, "example", &ec2.LocalGatewayRouteTableVpcAssociationArgs{
/// LocalGatewayRouteTableId: pulumi.String(example.Id),
/// VpcId:                    exampleVpc.ID(),
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
/// import com.pulumi.aws.ec2.Ec2Functions;
/// import com.pulumi.aws.ec2.inputs.GetLocalGatewayRouteTableArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTableVpcAssociation;
/// import com.pulumi.aws.ec2.LocalGatewayRouteTableVpcAssociationArgs;
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
/// final var example = Ec2Functions.getLocalGatewayRouteTable(GetLocalGatewayRouteTableArgs.builder()
/// .outpostArn("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
/// .build());
///
/// var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// var exampleLocalGatewayRouteTableVpcAssociation = new LocalGatewayRouteTableVpcAssociation("exampleLocalGatewayRouteTableVpcAssociation", LocalGatewayRouteTableVpcAssociationArgs.builder()
/// .localGatewayRouteTableId(example.id())
/// .vpcId(exampleVpc.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleVpc:
/// type: aws:ec2:Vpc
/// name: example
/// properties:
/// cidrBlock: 10.0.0.0/16
/// exampleLocalGatewayRouteTableVpcAssociation:
/// type: aws:ec2:LocalGatewayRouteTableVpcAssociation
/// name: example
/// properties:
/// localGatewayRouteTableId: ${example.id}
/// vpcId: ${exampleVpc.id}
/// variables:
/// example:
/// fn::invoke:
/// function: aws:ec2:getLocalGatewayRouteTable
/// arguments:
/// outpostArn: arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ec2.LocalGatewayRouteTableVpcAssociation`" pulumi-lang-dotnet="`aws.ec2.LocalGatewayRouteTableVpcAssociation`" pulumi-lang-go="`ec2.LocalGatewayRouteTableVpcAssociation`" pulumi-lang-python="`ec2.LocalGatewayRouteTableVpcAssociation`" pulumi-lang-yaml="`aws.ec2.LocalGatewayRouteTableVpcAssociation`" pulumi-lang-java="`aws.ec2.LocalGatewayRouteTableVpcAssociation`">`aws.ec2.LocalGatewayRouteTableVpcAssociation`</span> using the Local Gateway Route Table VPC Association identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation example lgw-vpc-assoc-1234567890abcdef
/// ```
class LocalGatewayRouteTableVpcAssociation extends CustomResource {
  late final Output<String> localGatewayId;

  /// Identifier of EC2 Local Gateway Route Table.
  late final Output<String> localGatewayRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  LocalGatewayRouteTableVpcAssociation(
    String name, {
    LocalGatewayRouteTableVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.localGatewayId = Output.createUnknown<String>();
    this.localGatewayRouteTableId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
