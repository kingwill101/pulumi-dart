import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';
import 'subnet_group_state.dart';

/// Creates a new Amazon Redshift subnet group. You must provide a list of one or more subnets in your existing VPC when creating Amazon Redshift subnet group.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.Vpc("foo", {cidrBlock: "10.1.0.0/16"});
/// const fooSubnet = new aws.ec2.Subnet("foo", {
///     cidrBlock: "10.1.1.0/24",
///     availabilityZone: "us-west-2a",
///     vpcId: foo.id,
///     tags: {
///         Name: "tf-dbsubnet-test-1",
///     },
/// });
/// const bar = new aws.ec2.Subnet("bar", {
///     cidrBlock: "10.1.2.0/24",
///     availabilityZone: "us-west-2b",
///     vpcId: foo.id,
///     tags: {
///         Name: "tf-dbsubnet-test-2",
///     },
/// });
/// const fooSubnetGroup = new aws.redshift.SubnetGroup("foo", {
///     name: "foo",
///     subnetIds: [
///         fooSubnet.id,
///         bar.id,
///     ],
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.Vpc("foo", cidr_block="10.1.0.0/16")
/// foo_subnet = aws.ec2.Subnet("foo",
///     cidr_block="10.1.1.0/24",
///     availability_zone="us-west-2a",
///     vpc_id=foo.id,
///     tags={
///         "Name": "tf-dbsubnet-test-1",
///     })
/// bar = aws.ec2.Subnet("bar",
///     cidr_block="10.1.2.0/24",
///     availability_zone="us-west-2b",
///     vpc_id=foo.id,
///     tags={
///         "Name": "tf-dbsubnet-test-2",
///     })
/// foo_subnet_group = aws.redshift.SubnetGroup("foo",
///     name="foo",
///     subnet_ids=[
///         foo_subnet.id,
///         bar.id,
///     ],
///     tags={
///         "environment": "Production",
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
///     var foo = new Aws.Ec2.Vpc("foo", new()
///     {
///         CidrBlock = "10.1.0.0/16",
///     });
///
///     var fooSubnet = new Aws.Ec2.Subnet("foo", new()
///     {
///         CidrBlock = "10.1.1.0/24",
///         AvailabilityZone = "us-west-2a",
///         VpcId = foo.Id,
///         Tags =
///         {
///             { "Name", "tf-dbsubnet-test-1" },
///         },
///     });
///
///     var bar = new Aws.Ec2.Subnet("bar", new()
///     {
///         CidrBlock = "10.1.2.0/24",
///         AvailabilityZone = "us-west-2b",
///         VpcId = foo.Id,
///         Tags =
///         {
///             { "Name", "tf-dbsubnet-test-2" },
///         },
///     });
///
///     var fooSubnetGroup = new Aws.RedShift.SubnetGroup("foo", new()
///     {
///         Name = "foo",
///         SubnetIds = new[]
///         {
///             fooSubnet.Id,
///             bar.Id,
///         },
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.1.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSubnet, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			CidrBlock:        pulumi.String("10.1.1.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			VpcId:            foo.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-dbsubnet-test-1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bar, err := ec2.NewSubnet(ctx, "bar", &ec2.SubnetArgs{
/// 			CidrBlock:        pulumi.String("10.1.2.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2b"),
/// 			VpcId:            foo.ID().ToIDOutput().ToStringOutput(),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-dbsubnet-test-2"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redshift.NewSubnetGroup(ctx, "foo", &redshift.SubnetGroupArgs{
/// 			Name: pulumi.String("foo"),
/// 			SubnetIds: pulumi.StringArray{
/// 				fooSubnet.ID().ToIDOutput().ToStringOutput(),
/// 				bar.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// resource "aws_ec2_vpc" "foo" {
///   cidr_block = "10.1.0.0/16"
/// }
/// resource "aws_ec2_subnet" "foo" {
///   cidr_block        = "10.1.1.0/24"
///   availability_zone = "us-west-2a"
///   vpc_id            = aws_ec2_vpc.foo.id
///   tags = {
///     "Name" = "tf-dbsubnet-test-1"
///   }
/// }
/// resource "aws_ec2_subnet" "bar" {
///   cidr_block        = "10.1.2.0/24"
///   availability_zone = "us-west-2b"
///   vpc_id            = aws_ec2_vpc.foo.id
///   tags = {
///     "Name" = "tf-dbsubnet-test-2"
///   }
/// }
/// resource "aws_redshift_subnetgroup" "foo" {
///   name       = "foo"
///   subnet_ids = [aws_ec2_subnet.foo.id, aws_ec2_subnet.bar.id]
///   tags = {
///     "environment" = "Production"
///   }
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
/// import com.pulumi.aws.redshift.SubnetGroup;
/// import com.pulumi.aws.redshift.SubnetGroupArgs;
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
///         var foo = new Vpc("foo", VpcArgs.builder()
///             .cidrBlock("10.1.0.0/16")
///             .build());
///
///         var fooSubnet = new Subnet("fooSubnet", SubnetArgs.builder()
///             .cidrBlock("10.1.1.0/24")
///             .availabilityZone("us-west-2a")
///             .vpcId(foo.id())
///             .tags(Map.of("Name", "tf-dbsubnet-test-1"))
///             .build());
///
///         var bar = new Subnet("bar", SubnetArgs.builder()
///             .cidrBlock("10.1.2.0/24")
///             .availabilityZone("us-west-2b")
///             .vpcId(foo.id())
///             .tags(Map.of("Name", "tf-dbsubnet-test-2"))
///             .build());
///
///         var fooSubnetGroup = new SubnetGroup("fooSubnetGroup", SubnetGroupArgs.builder()
///             .name("foo")
///             .subnetIds(
///                 fooSubnet.id(),
///                 bar.id())
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.1.0.0/16
///   fooSubnet:
///     type: aws:ec2:Subnet
///     name: foo
///     properties:
///       cidrBlock: 10.1.1.0/24
///       availabilityZone: us-west-2a
///       vpcId: ${foo.id}
///       tags:
///         Name: tf-dbsubnet-test-1
///   bar:
///     type: aws:ec2:Subnet
///     properties:
///       cidrBlock: 10.1.2.0/24
///       availabilityZone: us-west-2b
///       vpcId: ${foo.id}
///       tags:
///         Name: tf-dbsubnet-test-2
///   fooSubnetGroup:
///     type: aws:redshift:SubnetGroup
///     name: foo
///     properties:
///       name: foo
///       subnetIds:
///         - ${fooSubnet.id}
///         - ${bar.id}
///       tags:
///         environment: Production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift subnet groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/subnetGroup:SubnetGroup testgroup1 test-cluster-subnet-group
/// ```
class SubnetGroup extends pulumi.CustomResource {
  /// ARN of the Redshift Subnet group name
  late final pulumi.Output<String> arn;
  /// The description of the Redshift Subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// The name of the Redshift Subnet group.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// An array of VPC subnet IDs.
  late final pulumi.Output<List<String>> subnetIds;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [SubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetGroup]. {@macro pulumi_redshift_subnet_group_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [SubnetGroup] resource's state with the given [name] and [id].
  static SubnetGroup get(
    String name,
    pulumi.Input<String> id, {
    SubnetGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SubnetGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SubnetGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [SubnetGroup] resource.
  SubnetGroup.reference(String urn)
    : super(
        'aws:redshift/subnetGroup:SubnetGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
