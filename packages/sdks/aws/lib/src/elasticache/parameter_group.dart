import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_parameter.dart';
import 'parameter_group_state.dart';

/// Provides an ElastiCache parameter group resource.
///
/// &gt; **NOTE:** Attempting to remove the `reserved-memory` parameter when `family` is set to `redis2.6` or `redis2.8` may show a perpetual difference in this provider due to an ElastiCache API limitation. Leave that parameter configured with any value to workaround the issue.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.elasticache.ParameterGroup("default", {
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
///     name: "cache-params",
///     family: "redis2.8",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.elasticache.ParameterGroup("default",
///     parameters=[
///         {
///             "name": "activerehashing",
///             "value": "yes",
///         },
///         {
///             "name": "min-slaves-to-write",
///             "value": "2",
///         },
///     ],
///     name="cache-params",
///     family="redis2.8")
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
///         Name = "cache-params",
///         Family = "redis2.8",
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
/// 			Name:   pulumi.String("cache-params"),
/// 			Family: pulumi.String("redis2.8"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_elasticache_parametergroup" "default" {
///   parameters {
///     name  = "activerehashing"
///     value = "yes"
///   }
///   parameters {
///     name  = "min-slaves-to-write"
///     value = "2"
///   }
///   name   = "cache-params"
///   family = "redis2.8"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .name("activerehashing")
///                     .value("yes")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("min-slaves-to-write")
///                     .value("2")
///                     .build())
///             .name("cache-params")
///             .family("redis2.8")
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
///       parameters:
///         - name: activerehashing
///           value: yes
///         - name: min-slaves-to-write
///           value: '2'
///       name: cache-params
///       family: redis2.8
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
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [ParameterGroup] resource's state with the given [name] and [id].
  static ParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    ParameterGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:elasticache/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [ParameterGroup] resource.
  ParameterGroup.reference(String urn)
    : super(
        'aws:elasticache/parameterGroup:ParameterGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    family = registerOutput<String>('family');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<ParameterGroupParameter>?>('parameters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ParameterGroupParameter>(guardedValue, (value) => ParameterGroupParameter.fromMap((value as Map).cast<String, dynamic>())); });
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
