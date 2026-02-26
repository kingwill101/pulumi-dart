import 'package:pulumi/pulumi.dart';
import 'subnet_group_args.dart';

/// Provides a DAX Subnet Group resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dax.SubnetGroup("example", {
/// name: "example",
/// subnetIds: [
/// example1.id,
/// example2.id,
/// ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dax.SubnetGroup("example",
/// name="example",
/// subnet_ids=[
/// example1["id"],
/// example2["id"],
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Dax.SubnetGroup("example", new()
/// {
/// Name = "example",
/// SubnetIds = new[]
/// {
/// example1.Id,
/// example2.Id,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dax"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := dax.NewSubnetGroup(ctx, "example", &dax.SubnetGroupArgs{
/// Name: pulumi.String("example"),
/// SubnetIds: pulumi.StringArray{
/// example1.Id,
/// example2.Id,
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
/// import com.pulumi.aws.dax.SubnetGroup;
/// import com.pulumi.aws.dax.SubnetGroupArgs;
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
/// var example = new SubnetGroup("example", SubnetGroupArgs.builder()
/// .name("example")
/// .subnetIds(
/// example1.id(),
/// example2.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:dax:SubnetGroup
/// properties:
/// name: example
/// subnetIds:
/// - ${example1.id}
/// - ${example2.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DAX Subnet Group using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:dax/subnetGroup:SubnetGroup example my_dax_sg
/// ```
class SubnetGroup extends CustomResource {
  /// A description of the subnet group.
  late final Output<String?> description;

  /// The name of the subnet group.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A list of VPC subnet IDs for the subnet group.
  late final Output<List<String>> subnetIds;

  /// VPC ID of the subnet group.
  late final Output<String> vpcId;

  SubnetGroup(
    String name, {
    SubnetGroupArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dax/subnetGroup:SubnetGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.subnetIds = registerOutput<List<String>>('subnetIds');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
