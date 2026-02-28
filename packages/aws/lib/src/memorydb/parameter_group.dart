import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_parameter.dart';

/// Provides a MemoryDB Parameter Group.
///
/// More information about parameter groups can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/parametergroups.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.ParameterGroup("example", {
///     name: "my-parameter-group",
///     family: "memorydb_redis6",
///     parameters: [{
///         name: "activedefrag",
///         value: "yes",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.ParameterGroup("example",
///     name="my-parameter-group",
///     family="memorydb_redis6",
///     parameters=[{
///         "name": "activedefrag",
///         "value": "yes",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MemoryDb.ParameterGroup("example", new()
///     {
///         Name = "my-parameter-group",
///         Family = "memorydb_redis6",
///         Parameters = new[]
///         {
///             new Aws.MemoryDb.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "activedefrag",
///                 Value = "yes",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.NewParameterGroup(ctx, "example", &memorydb.ParameterGroupArgs{
/// 			Name:   pulumi.String("my-parameter-group"),
/// 			Family: pulumi.String("memorydb_redis6"),
/// 			Parameters: memorydb.ParameterGroupParameterArray{
/// 				&memorydb.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("activedefrag"),
/// 					Value: pulumi.String("yes"),
/// 				},
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ParameterGroup("example", ParameterGroupArgs.builder()
///             .name("my-parameter-group")
///             .family("memorydb_redis6")
///             .parameters(ParameterGroupParameterArgs.builder()
///                 .name("activedefrag")
///                 .value("yes")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:memorydb:ParameterGroup
///     properties:
///       name: my-parameter-group
///       family: memorydb_redis6
///       parameters:
///         - name: activedefrag
///           value: yes
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a parameter group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/parameterGroup:ParameterGroup example my-parameter-group
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// The ARN of the parameter group.
  late final pulumi.Output<String> arn;

  /// Description for the parameter group. Defaults to `"Managed by Pulumi"`.
  late final pulumi.Output<String?> description;

  /// The engine version that the parameter group can be used with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> family;

  /// Name of the parameter group. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Set of MemoryDB parameters to apply. Any parameters not specified will fall back to their family defaults. Detailed below.
  late final pulumi.Output<List<ParameterGroupParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_memorydb_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String?>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.parameters =
        registerOutput<List<ParameterGroupParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
