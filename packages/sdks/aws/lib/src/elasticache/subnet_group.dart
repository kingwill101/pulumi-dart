import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_group_args.dart';
import 'subnet_group_state.dart';

/// Provides an ElastiCache Subnet Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.Vpc("foo", {
///     cidrBlock: "10.0.0.0/16",
///     tags: {
///         Name: "tf-test",
///     },
/// });
/// const fooSubnet = new aws.ec2.Subnet("foo", {
///     vpcId: foo.id,
///     cidrBlock: "10.0.0.0/24",
///     availabilityZone: "us-west-2a",
///     tags: {
///         Name: "tf-test",
///     },
/// });
/// const bar = new aws.elasticache.SubnetGroup("bar", {
///     name: "tf-test-cache-subnet",
///     subnetIds: [fooSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.Vpc("foo",
///     cidr_block="10.0.0.0/16",
///     tags={
///         "Name": "tf-test",
///     })
/// foo_subnet = aws.ec2.Subnet("foo",
///     vpc_id=foo.id,
///     cidr_block="10.0.0.0/24",
///     availability_zone="us-west-2a",
///     tags={
///         "Name": "tf-test",
///     })
/// bar = aws.elasticache.SubnetGroup("bar",
///     name="tf-test-cache-subnet",
///     subnet_ids=[foo_subnet.id])
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
///         CidrBlock = "10.0.0.0/16",
///         Tags =
///         {
///             { "Name", "tf-test" },
///         },
///     });
///
///     var fooSubnet = new Aws.Ec2.Subnet("foo", new()
///     {
///         VpcId = foo.Id,
///         CidrBlock = "10.0.0.0/24",
///         AvailabilityZone = "us-west-2a",
///         Tags =
///         {
///             { "Name", "tf-test" },
///         },
///     });
///
///     var bar = new Aws.ElastiCache.SubnetGroup("bar", new()
///     {
///         Name = "tf-test-cache-subnet",
///         SubnetIds = new[]
///         {
///             fooSubnet.Id,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		fooSubnet, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// 			VpcId:            foo.ID(),
/// 			CidrBlock:        pulumi.String("10.0.0.0/24"),
/// 			AvailabilityZone: pulumi.String("us-west-2a"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("tf-test"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = elasticache.NewSubnetGroup(ctx, "bar", &elasticache.SubnetGroupArgs{
/// 			Name: pulumi.String("tf-test-cache-subnet"),
/// 			SubnetIds: pulumi.StringArray{
/// 				fooSubnet.ID(),
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
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
/// import com.pulumi.aws.elasticache.SubnetGroup;
/// import com.pulumi.aws.elasticache.SubnetGroupArgs;
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
///         var foo = new Vpc("foo", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .tags(Map.of("Name", "tf-test"))
///             .build());
///
///         var fooSubnet = new Subnet("fooSubnet", SubnetArgs.builder()
///             .vpcId(foo.id())
///             .cidrBlock("10.0.0.0/24")
///             .availabilityZone("us-west-2a")
///             .tags(Map.of("Name", "tf-test"))
///             .build());
///
///         var bar = new SubnetGroup("bar", SubnetGroupArgs.builder()
///             .name("tf-test-cache-subnet")
///             .subnetIds(fooSubnet.id())
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
///       cidrBlock: 10.0.0.0/16
///       tags:
///         Name: tf-test
///   fooSubnet:
///     type: aws:ec2:Subnet
///     name: foo
///     properties:
///       vpcId: ${foo.id}
///       cidrBlock: 10.0.0.0/24
///       availabilityZone: us-west-2a
///       tags:
///         Name: tf-test
///   bar:
///     type: aws:elasticache:SubnetGroup
///     properties:
///       name: tf-test-cache-subnet
///       subnetIds:
///         - ${fooSubnet.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Subnet Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/subnetGroup:SubnetGroup bar tf-test-cache-subnet
/// ```
class SubnetGroup extends pulumi.CustomResource {
  late final pulumi.Output<String> arn;
  /// Description for the cache subnet group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// Name for the cache subnet group. ElastiCache converts this name to lowercase.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// List of VPC Subnet IDs for the cache subnet group
  late final pulumi.Output<List<String>> subnetIds;
  /// Key-value map of resource tags. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [SubnetGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SubnetGroup]. {@macro pulumi_elasticache_subnet_group_subnet_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
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
          'aws:elasticache/subnetGroup:SubnetGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    subnetIds = registerOutput<List<String>>('subnetIds');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcId = registerOutput<String>('vpcId');
  }
}
