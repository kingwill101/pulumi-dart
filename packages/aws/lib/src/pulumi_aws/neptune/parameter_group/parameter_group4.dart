import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter4.dart';
import 'parameter_group_args4.dart';

/// Manages a Neptune Parameter Group
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.neptune.ParameterGroup("example", {
/// family: "neptune1",
/// name: "example",
/// parameters: [{
/// name: "neptune_query_timeout",
/// value: "25",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.neptune.ParameterGroup("example",
/// family="neptune1",
/// name="example",
/// parameters=[{
/// "name": "neptune_query_timeout",
/// "value": "25",
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
/// var example = new Aws.Neptune.ParameterGroup("example", new()
/// {
/// Family = "neptune1",
/// Name = "example",
/// Parameters = new[]
/// {
/// new Aws.Neptune.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "neptune_query_timeout",
/// Value = "25",
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
/// _, err := neptune.NewParameterGroup(ctx, "example", &neptune.ParameterGroupArgs{
/// Family: pulumi.String("neptune1"),
/// Name:   pulumi.String("example"),
/// Parameters: neptune.ParameterGroupParameterArray{
/// &neptune.ParameterGroupParameterArgs{
/// Name:  pulumi.String("neptune_query_timeout"),
/// Value: pulumi.String("25"),
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
/// import com.pulumi.aws.neptune.ParameterGroup;
/// import com.pulumi.aws.neptune.ParameterGroupArgs;
/// import com.pulumi.aws.neptune.inputs.ParameterGroupParameterArgs;
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
/// var example = new ParameterGroup("example", ParameterGroupArgs.builder()
/// .family("neptune1")
/// .name("example")
/// .parameters(ParameterGroupParameterArgs.builder()
/// .name("neptune_query_timeout")
/// .value("25")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:neptune:ParameterGroup
/// properties:
/// family: neptune1
/// name: example
/// parameters:
/// - name: neptune_query_timeout
/// value: '25'
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Neptune Parameter Groups using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:neptune/parameterGroup:ParameterGroup some_pg some-pg
/// ```
class ParameterGroup4 extends CustomResource {
  /// The Neptune parameter group Amazon Resource Name (ARN).
  late final Output<String> arn;

  /// The description of the Neptune parameter group. Defaults to "Managed by Pulumi".
  late final Output<String?> description;

  /// The family of the Neptune parameter group.
  late final Output<String> family;

  /// The name of the Neptune parameter.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// A list of Neptune parameters to apply.
  late final Output<List<ParameterGroupParameter4>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup4(
    String name, {
    ParameterGroupArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:neptune/parameterGroup:ParameterGroup',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ParameterGroupParameter4>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
