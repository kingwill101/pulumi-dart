import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_parameter.dart';

/// Provides an ElastiCache parameter group resource.
///
/// > **NOTE:** Attempting to remove the `reserved-memory` parameter when `family` is set to `redis2.6` or `redis2.8` may show a perpetual difference in this provider due to an ElastiCache API limitation. Leave that parameter configured with any value to workaround the issue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.elasticache.ParameterGroup("default", {
///     name: "cache-params",
///     family: "redis2.8",
///     parameters: [
///         {
///             name: "activerehashing",
///             value: "yes",
///         },
///         {
///             name: "min-slaves-to-write",
///             value: "2",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.elasticache.ParameterGroup("default",
///     name="cache-params",
///     family="redis2.8",
///     parameters=[
///         {
///             "name": "activerehashing",
///             "value": "yes",
///         },
///         {
///             "name": "min-slaves-to-write",
///             "value": "2",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.ElastiCache.ParameterGroup("default", new()
///     {
///         Name = "cache-params",
///         Family = "redis2.8",
///         Parameters = new[]
///         {
///             new Aws.ElastiCache.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "activerehashing",
///                 Value = "yes",
///             },
///             new Aws.ElastiCache.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "min-slaves-to-write",
///                 Value = "2",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := elasticache.NewParameterGroup(ctx, "default", &elasticache.ParameterGroupArgs{
/// 			Name:   pulumi.String("cache-params"),
/// 			Family: pulumi.String("redis2.8"),
/// 			Parameters: elasticache.ParameterGroupParameterArray{
/// 				&elasticache.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("activerehashing"),
/// 					Value: pulumi.String("yes"),
/// 				},
/// 				&elasticache.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("min-slaves-to-write"),
/// 					Value: pulumi.String("2"),
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
/// import com.pulumi.aws.elasticache.ParameterGroup;
/// import com.pulumi.aws.elasticache.ParameterGroupArgs;
/// import com.pulumi.aws.elasticache.inputs.ParameterGroupParameterArgs;
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
///         var default_ = new ParameterGroup("default", ParameterGroupArgs.builder()
///             .name("cache-params")
///             .family("redis2.8")
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .name("activerehashing")
///                     .value("yes")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("min-slaves-to-write")
///                     .value("2")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:elasticache:ParameterGroup
///     properties:
///       name: cache-params
///       family: redis2.8
///       parameters:
///         - name: activerehashing
///           value: yes
///         - name: min-slaves-to-write
///           value: '2'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import ElastiCache Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:elasticache/parameterGroup:ParameterGroup default redis-params
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// The AWS ARN associated with the parameter group.
  late final pulumi.Output<String> arn;

  /// The description of the ElastiCache parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;

  /// The family of the ElastiCache parameter group.
  late final pulumi.Output<String> family;

  /// The name of the ElastiCache parameter.
  late final pulumi.Output<String> name;

  /// A list of ElastiCache parameters to apply.
  late final pulumi.Output<List<ParameterGroupParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_elasticache_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:elasticache/parameterGroup:ParameterGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<List<ParameterGroupParameter>?>(
      'parameters',
    );
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
