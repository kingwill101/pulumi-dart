import 'package:pulumi/pulumi.dart';
import 'subnet_group_args3.dart';

/// Provides an ElastiCache Subnet Group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const foo = new aws.ec2.Vpc("foo", {
/// cidrBlock: "10.0.0.0/16",
/// tags: {
/// Name: "tf-test",
/// },
/// });
/// const fooSubnet = new aws.ec2.Subnet("foo", {
/// vpcId: foo.id,
/// cidrBlock: "10.0.0.0/24",
/// availabilityZone: "us-west-2a",
/// tags: {
/// Name: "tf-test",
/// },
/// });
/// const bar = new aws.elasticache.SubnetGroup("bar", {
/// name: "tf-test-cache-subnet",
/// subnetIds: [fooSubnet.id],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// foo = aws.ec2.Vpc("foo",
/// cidr_block="10.0.0.0/16",
/// tags={
/// "Name": "tf-test",
/// })
/// foo_subnet = aws.ec2.Subnet("foo",
/// vpc_id=foo.id,
/// cidr_block="10.0.0.0/24",
/// availability_zone="us-west-2a",
/// tags={
/// "Name": "tf-test",
/// })
/// bar = aws.elasticache.SubnetGroup("bar",
/// name="tf-test-cache-subnet",
/// subnet_ids=[foo_subnet.id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var foo = new Aws.Ec2.Vpc("foo", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// Tags =
/// {
/// { "Name", "tf-test" },
/// },
/// });
///
/// var fooSubnet = new Aws.Ec2.Subnet("foo", new()
/// {
/// VpcId = foo.Id,
/// CidrBlock = "10.0.0.0/24",
/// AvailabilityZone = "us-west-2a",
/// Tags =
/// {
/// { "Name", "tf-test" },
/// },
/// });
///
/// var bar = new Aws.ElastiCache.SubnetGroup("bar", new()
/// {
/// Name = "tf-test-cache-subnet",
/// SubnetIds = new[]
/// {
/// fooSubnet.Id,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// foo, err := ec2.NewVpc(ctx, "foo", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// fooSubnet, err := ec2.NewSubnet(ctx, "foo", &ec2.SubnetArgs{
/// VpcId:            foo.ID(),
/// CidrBlock:        pulumi.String("10.0.0.0/24"),
/// AvailabilityZone: pulumi.String("us-west-2a"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("tf-test"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = elasticache.NewSubnetGroup(ctx, "bar", &elasticache.SubnetGroupArgs{
/// Name: pulumi.String("tf-test-cache-subnet"),
/// SubnetIds: pulumi.StringArray{
/// fooSubnet.ID(),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var foo = new Vpc("foo", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .tags(Map.of("Name", "tf-test"))
/// .build());
///
/// var fooSubnet = new Subnet("fooSubnet", SubnetArgs.builder()
/// .vpcId(foo.id())
/// .cidrBlock("10.0.0.0/24")
/// .availabilityZone("us-west-2a")
/// .tags(Map.of("Name", "tf-test"))
/// .build());
///
/// var bar = new SubnetGroup("bar", SubnetGroupArgs.builder()
/// .name("tf-test-cache-subnet")
/// .subnetIds(fooSubnet.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// foo:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// tags:
/// Name: tf-test
/// fooSubnet:
/// type: aws:ec2:Subnet
/// name: foo
/// properties:
/// vpcId: ${foo.id}
/// cidrBlock: 10.0.0.0/24
/// availabilityZone: us-west-2a
/// tags:
/// Name: tf-test
/// bar:
/// type: aws:elasticache:SubnetGroup
/// properties:
/// name: tf-test-cache-subnet
/// subnetIds:
/// - ${fooSubnet.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Subnet Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/subnetGroup:SubnetGroup bar tf-test-cache-subnet
/// ```
class SubnetGroup3 extends CustomResource {
  late final Output<String> arn;

  /// Description for the cache subnet group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// Name for the cache subnet group. ElastiCache converts this name to lowercase.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of VPC Subnet IDs for the cache subnet group
  late final Output<List<String>> subnetIds;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Virtual Private Cloud identifier (VPC ID) of the cache subnet group.
  late final Output<String> vpcId;

  SubnetGroup3(
    String name, {
    SubnetGroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/subnetGroup:SubnetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
