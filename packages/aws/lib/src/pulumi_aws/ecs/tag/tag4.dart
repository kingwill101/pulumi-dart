import 'package:pulumi/pulumi.dart';
import 'tag_args4.dart';

/// Manages an individual ECS resource tag. This resource should only be used in cases where ECS resources are created outside the provider (e.g., ECS Clusters implicitly created by Batch Compute Environments).
///
/// > **NOTE:** This tagging resource should not be combined with the resource for managing the parent resource. For example, using <span pulumi-lang-nodejs="`aws.ecs.Cluster`" pulumi-lang-dotnet="`aws.ecs.Cluster`" pulumi-lang-go="`ecs.Cluster`" pulumi-lang-python="`ecs.Cluster`" pulumi-lang-yaml="`aws.ecs.Cluster`" pulumi-lang-java="`aws.ecs.Cluster`">`aws.ecs.Cluster`</span> and <span pulumi-lang-nodejs="`aws.ecs.Tag`" pulumi-lang-dotnet="`aws.ecs.Tag`" pulumi-lang-go="`ecs.Tag`" pulumi-lang-python="`ecs.Tag`" pulumi-lang-yaml="`aws.ecs.Tag`" pulumi-lang-java="`aws.ecs.Tag`">`aws.ecs.Tag`</span> to manage tags of the same ECS Cluster will cause a perpetual difference where the <span pulumi-lang-nodejs="`aws.ecs.Cluster`" pulumi-lang-dotnet="`aws.ecs.Cluster`" pulumi-lang-go="`ecs.Cluster`" pulumi-lang-python="`ecs.Cluster`" pulumi-lang-yaml="`aws.ecs.Cluster`" pulumi-lang-java="`aws.ecs.Cluster`">`aws.ecs.Cluster`</span> resource will try to remove the tag being added by the <span pulumi-lang-nodejs="`aws.ecs.Tag`" pulumi-lang-dotnet="`aws.ecs.Tag`" pulumi-lang-go="`ecs.Tag`" pulumi-lang-python="`ecs.Tag`" pulumi-lang-yaml="`aws.ecs.Tag`" pulumi-lang-java="`aws.ecs.Tag`">`aws.ecs.Tag`</span> resource.
///
/// > **NOTE:** This tagging resource does not use the provider <span pulumi-lang-nodejs="`ignoreTags`" pulumi-lang-dotnet="`IgnoreTags`" pulumi-lang-go="`ignoreTags`" pulumi-lang-python="`ignore_tags`" pulumi-lang-yaml="`ignoreTags`" pulumi-lang-java="`ignoreTags`">`ignore_tags`</span> configuration.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.batch.ComputeEnvironment("example", {
/// name: "example",
/// serviceRole: exampleAwsIamRole.arn,
/// type: "UNMANAGED",
/// });
/// const exampleTag = new aws.ecs.Tag("example", {
/// resourceArn: example.ecsClusterArn,
/// key: "Name",
/// value: "Hello World",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.batch.ComputeEnvironment("example",
/// name="example",
/// service_role=example_aws_iam_role["arn"],
/// type="UNMANAGED")
/// example_tag = aws.ecs.Tag("example",
/// resource_arn=example.ecs_cluster_arn,
/// key="Name",
/// value="Hello World")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Batch.ComputeEnvironment("example", new()
/// {
/// Name = "example",
/// ServiceRole = exampleAwsIamRole.Arn,
/// Type = "UNMANAGED",
/// });
///
/// var exampleTag = new Aws.Ecs.Tag("example", new()
/// {
/// ResourceArn = example.EcsClusterArn,
/// Key = "Name",
/// Value = "Hello World",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/batch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ecs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := batch.NewComputeEnvironment(ctx, "example", &batch.ComputeEnvironmentArgs{
/// Name:        pulumi.String("example"),
/// ServiceRole: pulumi.Any(exampleAwsIamRole.Arn),
/// Type:        pulumi.String("UNMANAGED"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ecs.NewTag(ctx, "example", &ecs.TagArgs{
/// ResourceArn: example.EcsClusterArn,
/// Key:         pulumi.String("Name"),
/// Value:       pulumi.String("Hello World"),
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
/// import com.pulumi.aws.batch.ComputeEnvironment;
/// import com.pulumi.aws.batch.ComputeEnvironmentArgs;
/// import com.pulumi.aws.ecs.Tag;
/// import com.pulumi.aws.ecs.TagArgs;
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
/// var example = new ComputeEnvironment("example", ComputeEnvironmentArgs.builder()
/// .name("example")
/// .serviceRole(exampleAwsIamRole.arn())
/// .type("UNMANAGED")
/// .build());
///
/// var exampleTag = new Tag("exampleTag", TagArgs.builder()
/// .resourceArn(example.ecsClusterArn())
/// .key("Name")
/// .value("Hello World")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:batch:ComputeEnvironment
/// properties:
/// name: example
/// serviceRole: ${exampleAwsIamRole.arn}
/// type: UNMANAGED
/// exampleTag:
/// type: aws:ecs:Tag
/// name: example
/// properties:
/// resourceArn: ${example.ecsClusterArn}
/// key: Name
/// value: Hello World
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.ecs.Tag`" pulumi-lang-dotnet="`aws.ecs.Tag`" pulumi-lang-go="`ecs.Tag`" pulumi-lang-python="`ecs.Tag`" pulumi-lang-yaml="`aws.ecs.Tag`" pulumi-lang-java="`aws.ecs.Tag`">`aws.ecs.Tag`</span> using the ECS resource identifier and key, separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ecs/tag:Tag example arn:aws:ecs:us-east-1:123456789012:cluster/example,Name
/// ```
class Tag4 extends CustomResource {
  /// Tag name.
  late final Output<String> key;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Amazon Resource Name (ARN) of the ECS resource to tag.
  late final Output<String> resourceArn;

  /// Tag value.
  late final Output<String> value;

  Tag4(
    String name, {
    TagArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ecs/tag:Tag',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.key = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.resourceArn = Output.createUnknown<String>();
    this.value = Output.createUnknown<String>();
  }
}
