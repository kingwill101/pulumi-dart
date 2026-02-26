import 'package:pulumi/pulumi.dart';
import 'resource_args4.dart';

/// Resource for managing an AWS Resource Groups Resource.
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
/// const example = new aws.ec2.DedicatedHost("example", {
/// instanceFamily: "t3",
/// availabilityZone: "us-east-1a",
/// hostRecovery: "off",
/// autoPlacement: "on",
/// });
/// const exampleGroup = new aws.resourcegroups.Group("example", {name: "example"});
/// const exampleResource = new aws.resourcegroups.Resource("example", {
/// groupArn: exampleGroup.arn,
/// resourceArn: example.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.DedicatedHost("example",
/// instance_family="t3",
/// availability_zone="us-east-1a",
/// host_recovery="off",
/// auto_placement="on")
/// example_group = aws.resourcegroups.Group("example", name="example")
/// example_resource = aws.resourcegroups.Resource("example",
/// group_arn=example_group.arn,
/// resource_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.DedicatedHost("example", new()
/// {
/// InstanceFamily = "t3",
/// AvailabilityZone = "us-east-1a",
/// HostRecovery = "off",
/// AutoPlacement = "on",
/// });
///
/// var exampleGroup = new Aws.ResourceGroups.Group("example", new()
/// {
/// Name = "example",
/// });
///
/// var exampleResource = new Aws.ResourceGroups.Resource("example", new()
/// {
/// GroupArn = exampleGroup.Arn,
/// ResourceArn = example.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/resourcegroups"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := ec2.NewDedicatedHost(ctx, "example", &ec2.DedicatedHostArgs{
/// InstanceFamily:   pulumi.String("t3"),
/// AvailabilityZone: pulumi.String("us-east-1a"),
/// HostRecovery:     pulumi.String("off"),
/// AutoPlacement:    pulumi.String("on"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGroup, err := resourcegroups.NewGroup(ctx, "example", &resourcegroups.GroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = resourcegroups.NewResource(ctx, "example", &resourcegroups.ResourceArgs{
/// GroupArn:    exampleGroup.Arn,
/// ResourceArn: example.Arn,
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
/// import com.pulumi.aws.ec2.DedicatedHost;
/// import com.pulumi.aws.ec2.DedicatedHostArgs;
/// import com.pulumi.aws.resourcegroups.Group;
/// import com.pulumi.aws.resourcegroups.GroupArgs;
/// import com.pulumi.aws.resourcegroups.Resource;
/// import com.pulumi.aws.resourcegroups.ResourceArgs;
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
/// var example = new DedicatedHost("example", DedicatedHostArgs.builder()
/// .instanceFamily("t3")
/// .availabilityZone("us-east-1a")
/// .hostRecovery("off")
/// .autoPlacement("on")
/// .build());
///
/// var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
/// .name("example")
/// .build());
///
/// var exampleResource = new Resource("exampleResource", ResourceArgs.builder()
/// .groupArn(exampleGroup.arn())
/// .resourceArn(example.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:DedicatedHost
/// properties:
/// instanceFamily: t3
/// availabilityZone: us-east-1a
/// hostRecovery: off
/// autoPlacement: on
/// exampleGroup:
/// type: aws:resourcegroups:Group
/// name: example
/// properties:
/// name: example
/// exampleResource:
/// type: aws:resourcegroups:Resource
/// name: example
/// properties:
/// groupArn: ${exampleGroup.arn}
/// resourceArn: ${example.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an AWS Resource Groups Resource using <span pulumi-lang-nodejs="`groupArn`" pulumi-lang-dotnet="`GroupArn`" pulumi-lang-go="`groupArn`" pulumi-lang-python="`group_arn`" pulumi-lang-yaml="`groupArn`" pulumi-lang-java="`groupArn`">`group_arn`</span> and <span pulumi-lang-nodejs="`resourceArn`" pulumi-lang-dotnet="`ResourceArn`" pulumi-lang-go="`resourceArn`" pulumi-lang-python="`resource_arn`" pulumi-lang-yaml="`resourceArn`" pulumi-lang-java="`resourceArn`">`resource_arn`</span>, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:resourcegroups/resource:Resource example arn:aws:resource-groups:us-west-2:012345678901:group/example,arn:aws:lambda:us-west-2:012345678901:function:example
/// ```
class ResourceType4 extends CustomResource {
  /// Name or ARN of the resource group to add resources to.
  late final Output<String> groupArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the resource to be added to the group.
  late final Output<String> resourceArn;

  /// The resource type of a resource, such as `AWS::EC2::Instance`.
  late final Output<String> resourceType;

  ResourceType4(
    String name, {
    ResourceArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:resourcegroups/resource:Resource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.groupArn = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.resourceType = Output.createUnknown<String>();
  }
}
