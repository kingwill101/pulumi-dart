import 'package:pulumi/pulumi.dart';
import '../parameter_group_parameter/parameter_group_parameter3.dart';
import 'parameter_group_args3.dart';

/// Provides a MemoryDB Parameter Group.
///
/// More information about parameter groups can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/parametergroups.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.ParameterGroup("example", {
/// name: "my-parameter-group",
/// family: "memorydb_redis6",
/// parameters: [{
/// name: "activedefrag",
/// value: "yes",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.ParameterGroup("example",
/// name="my-parameter-group",
/// family="memorydb_redis6",
/// parameters=[{
/// "name": "activedefrag",
/// "value": "yes",
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
/// var example = new Aws.MemoryDb.ParameterGroup("example", new()
/// {
/// Name = "my-parameter-group",
/// Family = "memorydb_redis6",
/// Parameters = new[]
/// {
/// new Aws.MemoryDb.Inputs.ParameterGroupParameterArgs
/// {
/// Name = "activedefrag",
/// Value = "yes",
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := memorydb.NewParameterGroup(ctx, "example", &memorydb.ParameterGroupArgs{
/// Name:   pulumi.String("my-parameter-group"),
/// Family: pulumi.String("memorydb_redis6"),
/// Parameters: memorydb.ParameterGroupParameterArray{
/// &memorydb.ParameterGroupParameterArgs{
/// Name:  pulumi.String("activedefrag"),
/// Value: pulumi.String("yes"),
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
/// import com.pulumi.aws.memorydb.ParameterGroup;
/// import com.pulumi.aws.memorydb.ParameterGroupArgs;
/// import com.pulumi.aws.memorydb.inputs.ParameterGroupParameterArgs;
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
/// .name("my-parameter-group")
/// .family("memorydb_redis6")
/// .parameters(ParameterGroupParameterArgs.builder()
/// .name("activedefrag")
/// .value("yes")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:memorydb:ParameterGroup
/// properties:
/// name: my-parameter-group
/// family: memorydb_redis6
/// parameters:
/// - name: activedefrag
/// value: yes
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a parameter group using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/parameterGroup:ParameterGroup example my-parameter-group
/// ```
class ParameterGroup3 extends CustomResource {
  /// The ARN of the parameter group.
  late final Output<String> arn;

  /// Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  late final Output<String?> description;

  /// The engine version that the parameter group can be used with.
  ///
  /// The following arguments are optional:
  late final Output<String> family;

  /// Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  late final Output<List<ParameterGroupParameter3>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ParameterGroup3(
    String name, {
    ParameterGroupArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/parameterGroup:ParameterGroup',
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
        registerOutput<List<ParameterGroupParameter3>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
