import 'package:pulumi/pulumi.dart' as pulumi;
import 'test_grid_project_args.dart';
import 'test_grid_project_vpc_config.dart';

/// Provides a resource to manage AWS Device Farm Test Grid Projects.
///
/// > **NOTE:** AWS currently has limited regional support for Device Farm (e.g., `us-west-2`). See [AWS Device Farm endpoints and quotas](https://docs.aws.amazon.com/general/latest/gr/devicefarm.html) for information on supported regions.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.devicefarm.TestGridProject("example", {
///     name: "example",
///     vpcConfig: {
///         vpcId: exampleAwsVpc.id,
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///         securityGroupIds: exampleAwsSecurityGroup.map(__item => __item.id),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.devicefarm.TestGridProject("example",
///     name="example",
///     vpc_config={
///         "vpc_id": example_aws_vpc["id"],
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///         "security_group_ids": [__item["id"] for __item in example_aws_security_group],
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
///     var example = new Aws.DeviceFarm.TestGridProject("example", new()
///     {
///         Name = "example",
///         VpcConfig = new Aws.DeviceFarm.Inputs.TestGridProjectVpcConfigArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///             SecurityGroupIds = exampleAwsSecurityGroup.Select(__item => __item.Id).ToList(),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/devicefarm"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := devicefarm.NewTestGridProject(ctx, "example", &devicefarm.TestGridProjectArgs{
/// Name: pulumi.String("example"),
/// VpcConfig: &devicefarm.TestGridProjectVpcConfigArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:4,24-46)),
/// SecurityGroupIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:5,24-53)),
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
/// import com.pulumi.aws.devicefarm.TestGridProject;
/// import com.pulumi.aws.devicefarm.TestGridProjectArgs;
/// import com.pulumi.aws.devicefarm.inputs.TestGridProjectVpcConfigArgs;
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
///         var example = new TestGridProject("example", TestGridProjectArgs.builder()
///             .name("example")
///             .vpcConfig(TestGridProjectVpcConfigArgs.builder()
///                 .vpcId(exampleAwsVpc.id())
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .securityGroupIds(exampleAwsSecurityGroup.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Device Farm test grid project.
///
///
/// Using `pulumi import`, import DeviceFarm Test Grid Projects using their ARN. For example:
///
/// ```sh
/// $ pulumi import aws:devicefarm/testGridProject:TestGridProject example arn:aws:devicefarm:us-west-2:123456789012:testgrid-project:4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class TestGridProject extends pulumi.CustomResource {
  /// The Amazon Resource Name of this Test Grid Project.
  late final pulumi.Output<String> arn;

  /// Human-readable description of the project.
  late final pulumi.Output<String?> description;

  /// The name of the Selenium testing project.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VPC security groups and subnets that are attached to a project. See VPC Config below.
  late final pulumi.Output<TestGridProjectVpcConfig?> vpcConfig;

  /// Creates a new [TestGridProject].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TestGridProject]. {@macro pulumi_devicefarm_test_grid_project_test_grid_project_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TestGridProject(
    String name, {
    TestGridProjectArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:devicefarm/testGridProject:TestGridProject',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcConfig = registerOutput<TestGridProjectVpcConfig?>('vpcConfig');
  }
}
