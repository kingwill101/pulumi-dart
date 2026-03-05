import 'package:pulumi/pulumi.dart' as pulumi;
import 'parameter_group_args.dart';
import 'parameter_group_state.dart';

/// Provides a DAX Parameter Group resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.dax.ParameterGroup("example", {
///     name: "example",
///     parameters: [
///         {
///             name: "query-ttl-millis",
///             value: "100000",
///         },
///         {
///             name: "record-ttl-millis",
///             value: "100000",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.dax.ParameterGroup("example",
///     name="example",
///     parameters=[
///         {
///             "name": "query-ttl-millis",
///             "value": "100000",
///         },
///         {
///             "name": "record-ttl-millis",
///             "value": "100000",
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
///     var example = new Aws.Dax.ParameterGroup("example", new()
///     {
///         Name = "example",
///         Parameters = new[]
///         {
///             new Aws.Dax.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "query-ttl-millis",
///                 Value = "100000",
///             },
///             new Aws.Dax.Inputs.ParameterGroupParameterArgs
///             {
///                 Name = "record-ttl-millis",
///                 Value = "100000",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dax"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dax.NewParameterGroup(ctx, "example", &dax.ParameterGroupArgs{
/// 			Name: pulumi.String("example"),
/// 			Parameters: dax.ParameterGroupParameterArray{
/// 				&dax.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("query-ttl-millis"),
/// 					Value: pulumi.String("100000"),
/// 				},
/// 				&dax.ParameterGroupParameterArgs{
/// 					Name:  pulumi.String("record-ttl-millis"),
/// 					Value: pulumi.String("100000"),
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
/// import com.pulumi.aws.dax.ParameterGroup;
/// import com.pulumi.aws.dax.ParameterGroupArgs;
/// import com.pulumi.aws.dax.inputs.ParameterGroupParameterArgs;
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
///             .name("example")
///             .parameters(
///                 ParameterGroupParameterArgs.builder()
///                     .name("query-ttl-millis")
///                     .value("100000")
///                     .build(),
///                 ParameterGroupParameterArgs.builder()
///                     .name("record-ttl-millis")
///                     .value("100000")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dax:ParameterGroup
///     properties:
///       name: example
///       parameters:
///         - name: query-ttl-millis
///           value: '100000'
///         - name: record-ttl-millis
///           value: '100000'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import DAX Parameter Group using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:dax/parameterGroup:ParameterGroup example my_dax_pg
/// ```
class ParameterGroup extends pulumi.CustomResource {
  /// A description of the parameter group.
  late final pulumi.Output<String?> description;
  /// The name of the parameter group.
  late final pulumi.Output<String> name;
  /// The parameters of the parameter group.
  late final pulumi.Output<List<Map<String, dynamic>>> parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ParameterGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ParameterGroup]. {@macro pulumi_dax_parameter_group_parameter_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ParameterGroup(
    String name, {
    ParameterGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [ParameterGroup] resource's state with the given [name] and [id].
  static ParameterGroup get(
    String name,
    pulumi.Input<String> id, {
    ParameterGroupState? state,
  }) {
    return ParameterGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ParameterGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dax/parameterGroup:ParameterGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    parameters = registerOutput<List<Map<String, dynamic>>>('parameters');
    region = registerOutput<String>('region');
  }
}
