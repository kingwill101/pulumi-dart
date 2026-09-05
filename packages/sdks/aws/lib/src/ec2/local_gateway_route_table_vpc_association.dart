import 'package:pulumi/pulumi.dart' as pulumi;
import 'local_gateway_route_table_vpc_association_args.dart';
import 'local_gateway_route_table_vpc_association_state.dart';

/// Manages an EC2 Local Gateway Route Table VPC Association. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html#vpc-associations).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.ec2.getLocalGatewayRouteTable({
///     outpostArn: "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
/// });
/// const exampleVpc = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleLocalGatewayRouteTableVpcAssociation = new aws.ec2.LocalGatewayRouteTableVpcAssociation("example", {
///     localGatewayRouteTableId: example.then(example => example.id),
///     vpcId: exampleVpc.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.get_local_gateway_route_table(outpost_arn="arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
/// example_vpc = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_local_gateway_route_table_vpc_association = aws.ec2.LocalGatewayRouteTableVpcAssociation("example",
///     local_gateway_route_table_id=example.id,
///     vpc_id=example_vpc.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Ec2.GetLocalGatewayRouteTable.Invoke(new()
///     {
///         OutpostArn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef",
///     });
///
///     var exampleVpc = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleLocalGatewayRouteTableVpcAssociation = new Aws.Ec2.LocalGatewayRouteTableVpcAssociation("example", new()
///     {
///         LocalGatewayRouteTableId = example.Apply(getLocalGatewayRouteTableResult => getLocalGatewayRouteTableResult.Id),
///         VpcId = exampleVpc.Id,
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
/// 		example, err := ec2.LookupLocalGatewayRouteTable(ctx, &ec2.LookupLocalGatewayRouteTableArgs{
/// 			OutpostArn: pulumi.StringRef("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpc, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewLocalGatewayRouteTableVpcAssociation(ctx, "example", &ec2.LocalGatewayRouteTableVpcAssociationArgs{
/// 			LocalGatewayRouteTableId: pulumi.String(example.Id),
/// 			VpcId:                    exampleVpc.ID().ToIDOutput().ToStringOutput(),
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
/// data "aws_ec2_getlocalgatewayroutetable" "example" {
///   outpost_arn = "arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef"
/// }
///
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_localgatewayroutetablevpcassociation" "example" {
///   local_gateway_route_table_id = data.aws_ec2_getlocalgatewayroutetable.example.id
///   vpc_id                       = aws_ec2_vpc.example.id
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
///         final var example = Ec2Functions.getLocalGatewayRouteTable(GetLocalGatewayRouteTableArgs.builder()
///             .outpostArn("arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef")
///             .build());
///
///         var exampleVpc = new Vpc("exampleVpc", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleLocalGatewayRouteTableVpcAssociation = new LocalGatewayRouteTableVpcAssociation("exampleLocalGatewayRouteTableVpcAssociation", LocalGatewayRouteTableVpcAssociationArgs.builder()
///             .localGatewayRouteTableId(example.id())
///             .vpcId(exampleVpc.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleVpc:
///     type: aws:ec2:Vpc
///     name: example
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleLocalGatewayRouteTableVpcAssociation:
///     type: aws:ec2:LocalGatewayRouteTableVpcAssociation
///     name: example
///     properties:
///       localGatewayRouteTableId: ${example.id}
///       vpcId: ${exampleVpc.id}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:ec2:getLocalGatewayRouteTable
///       arguments:
///         outpostArn: arn:aws:outposts:us-west-2:123456789012:outpost/op-1234567890abcdef
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRouteTableVpcAssociation` using the Local Gateway Route Table VPC Association identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation example lgw-vpc-assoc-1234567890abcdef
/// ```
class LocalGatewayRouteTableVpcAssociation extends pulumi.CustomResource {
  late final pulumi.Output<String> localGatewayId;
  /// Identifier of EC2 Local Gateway Route Table.
  late final pulumi.Output<String> localGatewayRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vpcId;

  /// Creates a new [LocalGatewayRouteTableVpcAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LocalGatewayRouteTableVpcAssociation]. {@macro pulumi_ec2_local_gateway_route_table_vpc_association_local_gateway_route_table_vpc_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LocalGatewayRouteTableVpcAssociation(
    String name, {
    LocalGatewayRouteTableVpcAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [LocalGatewayRouteTableVpcAssociation] resource's state with the given [name] and [id].
  static LocalGatewayRouteTableVpcAssociation get(
    String name,
    pulumi.Input<String> id, {
    LocalGatewayRouteTableVpcAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LocalGatewayRouteTableVpcAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LocalGatewayRouteTableVpcAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }

  /// Creates a typed reference to an existing [LocalGatewayRouteTableVpcAssociation] resource.
  LocalGatewayRouteTableVpcAssociation.reference(String urn)
    : super(
        'aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    localGatewayId = registerOutput<String>('localGatewayId');
    localGatewayRouteTableId = registerOutput<String>('localGatewayRouteTableId');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    vpcId = registerOutput<String>('vpcId');
  }
}
