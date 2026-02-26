import 'package:pulumi/pulumi.dart';
import '../cluster_parameter_group_parameter/cluster_parameter_group_parameter2.dart';
import 'cluster_parameter_group_args2.dart';

/// Manages a Neptune Cluster Parameter Group
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.ClusterParameterGroup("example", {
/// family: "neptune1",
/// name: "example",
/// description: "neptune cluster parameter group",
/// parameters: [{
/// name: "neptune_enable_audit_log",
/// value: "1",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.ClusterParameterGroup("example",
/// family="neptune1",
/// name="example",
/// description="neptune cluster parameter group",
/// parameters=[{
/// "name": "neptune_enable_audit_log",
/// "value": "1",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Neptune.ClusterParameterGroup("example", new()
/// {
/// Family = "neptune1",
/// Name = "example",
/// Description = "neptune cluster parameter group",
/// Parameters = new[]
/// {
/// new Aws.Neptune.Inputs.ClusterParameterGroupParameterArgs
/// {
/// Name = "neptune_enable_audit_log",
/// Value = "1",
/// },
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
/// _, err := neptune.NewClusterParameterGroup(ctx, "example", &neptune.ClusterParameterGroupArgs{
/// Family:      pulumi.String("neptune1"),
/// Name:        pulumi.String("example"),
/// Description: pulumi.String("neptune cluster parameter group"),
/// Parameters: neptune.ClusterParameterGroupParameterArray{
/// &neptune.ClusterParameterGroupParameterArgs{
/// Name:  pulumi.String("neptune_enable_audit_log"),
/// Value: pulumi.String("1"),
/// },
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
/// import com.pulumi.aws.neptune.ClusterParameterGroup;
/// import com.pulumi.aws.neptune.ClusterParameterGroupArgs;
/// import com.pulumi.aws.neptune.inputs.ClusterParameterGroupParameterArgs;
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
/// var example = new ClusterParameterGroup("example", ClusterParameterGroupArgs.builder()
/// .family("neptune1")
/// .name("example")
/// .description("neptune cluster parameter group")
/// .parameters(ClusterParameterGroupParameterArgs.builder()
/// .name("neptune_enable_audit_log")
/// .value("1")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:neptune:ClusterParameterGroup
/// properties:
/// family: neptune1
/// name: example
/// description: neptune cluster parameter group
/// parameters:
/// - name: neptune_enable_audit_log
/// value: 1
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Cluster Parameter Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/clusterParameterGroup:ClusterParameterGroup cluster_pg production-pg-1
/// ```
class ClusterParameterGroup2 extends CustomResource {
  /// The ARN of the neptune cluster parameter group.
  late final Output<String> arn;

  /// The description of the neptune cluster parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the neptune cluster parameter group.
  late final Output<String> family;

  /// The name of the neptune parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// A list of neptune parameters to apply.
  late final Output<List<ClusterParameterGroupParameter2>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ClusterParameterGroup2(
    String name, {
    ClusterParameterGroupArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/clusterParameterGroup:ClusterParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.family = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.namePrefix = Output.createUnknown<String>();
    this.parameters =
        Output.createUnknown<List<ClusterParameterGroupParameter2>?>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
