import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'alias_routing_strategy.dart';
import 'alias_state.dart';

/// Provides a GameLift Alias resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.gamelift.Alias("example", {
///     name: "example-alias",
///     description: "Example Description",
///     routingStrategy: {
///         message: "Example Message",
///         type: "TERMINAL",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.gamelift.Alias("example",
///     name="example-alias",
///     description="Example Description",
///     routing_strategy={
///         "message": "Example Message",
///         "type": "TERMINAL",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.GameLift.Alias("example", new()
///     {
///         Name = "example-alias",
///         Description = "Example Description",
///         RoutingStrategy = new Aws.GameLift.Inputs.AliasRoutingStrategyArgs
///         {
///             Message = "Example Message",
///             Type = "TERMINAL",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/gamelift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := gamelift.NewAlias(ctx, "example", &gamelift.AliasArgs{
/// 			Name:        pulumi.String("example-alias"),
/// 			Description: pulumi.String("Example Description"),
/// 			RoutingStrategy: &gamelift.AliasRoutingStrategyArgs{
/// 				Message: pulumi.String("Example Message"),
/// 				Type:    pulumi.String("TERMINAL"),
/// 			},
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
/// resource "aws_gamelift_alias" "example" {
///   name        = "example-alias"
///   description = "Example Description"
///   routing_strategy = {
///     message = "Example Message"
///     type    = "TERMINAL"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.gamelift.Alias;
/// import com.pulumi.aws.gamelift.AliasArgs;
/// import com.pulumi.aws.gamelift.inputs.AliasRoutingStrategyArgs;
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
///         var example = new Alias("example", AliasArgs.builder()
///             .name("example-alias")
///             .description("Example Description")
///             .routingStrategy(AliasRoutingStrategyArgs.builder()
///                 .message("Example Message")
///                 .type("TERMINAL")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:gamelift:Alias
///     properties:
///       name: example-alias
///       description: Example Description
///       routingStrategy:
///         message: Example Message
///         type: TERMINAL
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import GameLift Aliases using the ID. For example:
///
/// ```sh
/// $ pulumi import aws:gamelift/alias:Alias example <alias-id>
/// ```
class Alias extends pulumi.CustomResource {
  /// Alias ARN.
  late final pulumi.Output<String> arn;
  /// Description of the alias.
  late final pulumi.Output<String?> description;
  /// Name of the alias.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Specifies the fleet and/or routing type to use for the alias.
  late final pulumi.Output<AliasRoutingStrategy> routingStrategy;
  /// Key-value map of resource tags. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_gamelift_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routingStrategy = registerOutput<AliasRoutingStrategy>('routingStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AliasRoutingStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Alias] resource's state with the given [name] and [id].
  static Alias get(
    String name,
    pulumi.Input<String> id, {
    AliasState? state,
  }) {
    return Alias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Alias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:gamelift/alias:Alias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routingStrategy = registerOutput<AliasRoutingStrategy>('routingStrategy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AliasRoutingStrategy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
