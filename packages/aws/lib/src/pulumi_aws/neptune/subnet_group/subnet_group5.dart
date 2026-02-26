import 'package:pulumi/pulumi.dart';
import 'subnet_group_args5.dart';

/// Provides an Neptune subnet group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.neptune.SubnetGroup("default", {
/// name: "main",
/// subnetIds: [
/// frontend.id,
/// backend.id,
/// ],
/// tags: {
/// Name: "My neptune subnet group",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.neptune.SubnetGroup("default",
/// name="main",
/// subnet_ids=[
/// frontend["id"],
/// backend["id"],
/// ],
/// tags={
/// "Name": "My neptune subnet group",
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
/// var @default = new Aws.Neptune.SubnetGroup("default", new()
/// {
/// Name = "main",
/// SubnetIds = new[]
/// {
/// frontend.Id,
/// backend.Id,
/// },
/// Tags =
/// {
/// { "Name", "My neptune subnet group" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/neptune"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := neptune.NewSubnetGroup(ctx, "default", &neptune.SubnetGroupArgs{
/// Name: pulumi.String("main"),
/// SubnetIds: pulumi.StringArray{
/// frontend.Id,
/// backend.Id,
/// },
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("My neptune subnet group"),
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
/// import com.pulumi.aws.neptune.SubnetGroup;
/// import com.pulumi.aws.neptune.SubnetGroupArgs;
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
/// var default_ = new SubnetGroup("default", SubnetGroupArgs.builder()
/// .name("main")
/// .subnetIds(
/// frontend.id(),
/// backend.id())
/// .tags(Map.of("Name", "My neptune subnet group"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:neptune:SubnetGroup
/// properties:
/// name: main
/// subnetIds:
/// - ${frontend.id}
/// - ${backend.id}
/// tags:
/// Name: My neptune subnet group
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Subnet groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/subnetGroup:SubnetGroup default production-subnet-group
/// ```
class SubnetGroup5 extends CustomResource {
  /// The ARN of the neptune subnet group.
  late final Output<String> arn;

  /// The description of the neptune subnet group. Defaults to "Managed by Pulumi".
  late final Output<String> description;

  /// The name of the neptune subnet group. If omitted, this provider will assign a random, unique name.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of VPC subnet IDs.
  late final Output<List<String>> subnetIds;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  SubnetGroup5(
    String name, {
    SubnetGroupArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/subnetGroup:SubnetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.subnetIds = Output.createUnknown<List<String>>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
