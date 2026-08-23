import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';
import 'subnet_group_state.dart';

/// Provides a MemoryDB Subnet Group.
///
/// More information about subnet groups can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/subnetgroups.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.Vpc("example", {cidrBlock: "10.0.0.0/16"});
/// const exampleSubnet = new aws.ec2.Subnet("example", {
///     vpcId: example.id,
///     cidrBlock: "10.0.0.0/24",
///     availabilityZone: "us-west-2a",
/// });
/// const exampleSubnetGroup = new aws.memorydb.SubnetGroup("example", {
///     name: "my-subnet-group",
///     subnetIds: [exampleSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.Vpc("example", cidr_block="10.0.0.0/16")
/// example_subnet = aws.ec2.Subnet("example",
///     vpc_id=example.id,
///     cidr_block="10.0.0.0/24",
///     availability_zone="us-west-2a")
/// example_subnet_group = aws.memorydb.SubnetGroup("example",
///     name="my-subnet-group",
///     subnet_ids=[example_subnet.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Ec2.Vpc("example", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var exampleSubnet = new Aws.Ec2.Subnet("example", new()
///     {
///         VpcId = example.Id,
///         CidrBlock = "10.0.0.0/24",
///         AvailabilityZone = "us-west-2a",
///     });
///
///     var exampleSubnetGroup = new Aws.MemoryDb.SubnetGroup("example", new()
///     {
///         Name = "my-subnet-group",
///         SubnetIds = new[]
///         {
///             exampleSubnet.Id,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := ec2.NewVpc(ctx, "example", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := ec2.NewSubnet(ctx, "example", &ec2.SubnetArgs{
/// 			VpcId:            example.ID().ToIDOutput().ToStringOutput(),
/// 			CidrBlock:        pulumi.String("10.0.0.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = memorydb.NewSubnetGroup(ctx, "example", &memorydb.SubnetGroupArgs{
/// 			Name: pulumi.String("my-subnet-group"),
/// 			SubnetIds: pulumi.StringArray{
/// 				exampleSubnet.ID().ToIDOutput().ToStringOutput(),
/// 			},
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
/// resource "aws_ec2_vpc" "example" {
///   cidr_block = "10.0.0.0/16"
/// }
/// resource "aws_ec2_subnet" "example" {
///   vpc_id            = aws_ec2_vpc.example.id
///   cidr_block        = "10.0.0.0/24"
///   availability_zone = "us-west-2a"
/// }
/// resource "aws_memorydb_subnetgroup" "example" {
///   name       = "my-subnet-group"
///   subnet_ids = [aws_ec2_subnet.example.id]
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.memorydb.SubnetGroup;
/// import com.pulumi.aws.memorydb.SubnetGroupArgs;
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
///         var example = new Vpc("example", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .vpcId(example.id())
///             .cidrBlock("10.0.0.0/24")
///             .availabilityZone("us-west-2a")
///             .build());
///
///         var exampleSubnetGroup = new SubnetGroup("exampleSubnetGroup", SubnetGroupArgs.builder()
///             .name("my-subnet-group")
///             .subnetIds(exampleSubnet.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   exampleSubnet:
///     type: aws:ec2:Subnet
///     name: example
///     properties:
///       vpcId: ${example.id}
///       cidrBlock: 10.0.0.0/24
///       availabilityZone: us-west-2a
///   exampleSubnetGroup:
///     type: aws:memorydb:SubnetGroup
///     name: example
///     properties:
///       name: my-subnet-group
///       subnetIds:
///         - ${exampleSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a subnet group using its `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/subnetGroup:SubnetGroup example my-subnet-group
/// ```
class SubnetGroup extends pulumi.CustomResource {
  /// The ARN of the subnet group.
  late final pulumi.Output<String> arn;
  /// Description for the subnet group. Defaults to `"Managed by Pulumi"`.
  late final pulumi.Output<String?> description;
  /// Name of the subnet group. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of VPC Subnet ID-s for the subnet group. At least one subnet must be provided.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The VPC in which the subnet group exists.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetGroup]. {@macro pulumi_memorydb_subnet_group_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }

  /// Gets an existing [SubnetGroup] resource's state with the given [name] and [id].
  static SubnetGroup get(
    String name,
    pulumi.Input<String> id, {
    SubnetGroupState? state,
  }) {
    return SubnetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SubnetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
