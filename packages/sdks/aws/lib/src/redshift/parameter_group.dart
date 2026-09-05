import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_parameter.dart';
import 'parameter_group_state.dart';

/// Provides a Redshift Cluster parameter group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const bar = new aws.redshift.ParameterGroup("bar", {
///     parameters: [
///         {
///             name: "require_ssl",
///             value: "true",
///         },
///         {
///             name: "query_group",
///             value: "example",
///         },
///         {
///             name: "enable_user_activity_logging",
///             value: "true",
///         },
///     ],
///     name: "parameter-group-test",
///     family: "redshift-1.0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// bar = aws.redshift.ParameterGroup("bar",
///     parameters=[
///         {
///             "name": "require_ssl",
///             "value": "true",
///         },
///         {
///             "name": "query_group",
///             "value": "example",
///         },
///         {
///             "name": "enable_user_activity_logging",
///             "value": "true",
///         },
///     ],
///     name="parameter-group-test",
///     family="redshift-1.0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var bar = new Aws.RedShift.ParameterGroup("bar", new()
///     {
///         Parameters = new[]
///         {
///             new Aws.RedShift.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "require_ssl",
///                 Value = "true",
///             },
///             new Aws.RedShift.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "query_group",
///                 Value = "example",
///             },
///             new Aws.RedShift.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "enable_user_activity_logging",
///                 Value = "true",
///             },
///         },
///         Name = "parameter-group-test",
///         Family = "redshift-1.0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewParameterGroup(ctx, "bar", &redshift.ParameterGroupArgs{
/// 			Parameters: redshift.ParameterGroupParameterArray{
/// 				&redshift.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("require_ssl"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 				&redshift.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("query_group"),
/// 					Value: pulumi.String("example"),
/// 				},
/// 				&redshift.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("enable_user_activity_logging"),
/// 					Value: pulumi.String("true"),
/// 				},
/// 			},
/// 			Name:   pulumi.String("parameter-group-test"),
/// 			Family: pulumi.String("redshift-1.0"),
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
/// resource "aws_redshift_parametergroup" "bar" {
///   parameters {
///     name  = "require_ssl"
///     value = "true"
///   }
///   parameters {
///     name  = "query_group"
///     value = "example"
///   }
///   parameters {
///     name  = "enable_user_activity_logging"
///     value = "true"
///   }
///   name   = "parameter-group-test"
///   family = "redshift-1.0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.ParameterGroup;
/// import com.pulumi.aws.redshift.ParameterGroupArgs;
/// import com.pulumi.aws.redshift.inputs.ParameterGroupParameterArgs;
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
///         var bar = new ParameterGroup("bar", ParameterGroupArgs.builder()
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .name("require_ssl")
///                     .value("true")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("query_group")
///                     .value("example")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("enable_user_activity_logging")
///                     .value("true")
///                     .build())
///             .name("parameter-group-test")
///             .family("redshift-1.0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   bar:
///     type: aws:redshift:ParameterGroup
///     properties:
///       parameters:
///         - name: require_ssl
///           value: 'true'
///         - name: query_group
///           value: example
///         - name: enable_user_activity_logging
///           value: 'true'
///       name: parameter-group-test
///       family: redshift-1.0
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Parameter Groups using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/parameterGroup:ParameterGroup paramgroup1 parameter-group-test-pulumi
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// ARN of parameter group
  late final pulumi.Output<String> arn;
  /// The description of the Redshift parameter group. Defaults to "Managed by Pulumi".
  late final pulumi.Output<String> description;
  /// The family of the Redshift parameter group.
  late final pulumi.Output<String> family;
  /// The name of the Redshift parameter.
  late final pulumi.Output<String> name;
  /// A list of Redshift parameters to apply.
  late final pulumi.Output<List<ParameterGroupParameter>?> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// You can read more about the parameters that Redshift supports in the [documentation](http://docs.aws.amazon.com/redshift/latest/mgmt/working-with-parameter-groups.html)
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_redshift_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/parameterGroup:ParameterGroup',
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
          'aws:redshift/parameterGroup:ParameterGroup',
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
        'aws:redshift/parameterGroup:ParameterGroup',
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
