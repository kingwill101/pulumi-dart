import 'package:pulumi/pulumi.dart' as pulumi;
import 'alias_args.dart';
import 'alias_routing_configuration.dart';
import 'alias_state.dart';

/// Provides a Step Function State Machine Alias.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const sfnAlias = new aws.sfn.Alias("sfn_alias", {
///     routingConfigurations: [{
///         stateMachineVersionArn: sfnTest.stateMachineVersionArn,
///         weight: 100,
///     }],
///     name: "my_sfn_alias",
/// });
/// const mySfnAlias = new aws.sfn.Alias("my_sfn_alias", {
///     routingConfigurations: [
///         {
///             stateMachineVersionArn: "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
///             weight: 50,
///         },
///         {
///             stateMachineVersionArn: "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
///             weight: 50,
///         },
///     ],
///     name: "my_sfn_alias",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// sfn_alias = aws.sfn.Alias("sfn_alias",
///     routing_configurations=[{
///         "state_machine_version_arn": sfn_test["stateMachineVersionArn"],
///         "weight": 100,
///     }],
///     name="my_sfn_alias")
/// my_sfn_alias = aws.sfn.Alias("my_sfn_alias",
///     routing_configurations=[
///         {
///             "state_machine_version_arn": "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
///             "weight": 50,
///         },
///         {
///             "state_machine_version_arn": "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
///             "weight": 50,
///         },
///     ],
///     name="my_sfn_alias")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sfnAlias = new Aws.Sfn.Alias("sfn_alias", new()
///     {
///         RoutingConfigurations = new[]
///         {
///             new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
///             {
///                 StateMachineVersionArn = sfnTest.StateMachineVersionArn,
///                 Weight = 100,
///             },
///         },
///         Name = "my_sfn_alias",
///     });
///
///     var mySfnAlias = new Aws.Sfn.Alias("my_sfn_alias", new()
///     {
///         RoutingConfigurations = new[]
///         {
///             new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
///             {
///                 StateMachineVersionArn = "arn:aws:states:us-east-1:12345:stateMachine:demo:3",
///                 Weight = 50,
///             },
///             new Aws.Sfn.Inputs.AliasRoutingConfigurationArgs
///             {
///                 StateMachineVersionArn = "arn:aws:states:us-east-1:12345:stateMachine:demo:2",
///                 Weight = 50,
///             },
///         },
///         Name = "my_sfn_alias",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sfn"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sfn.NewAlias(ctx, "sfn_alias", &sfn.AliasArgs{
/// 			RoutingConfigurations: sfn.AliasRoutingConfigurationArray{
/// 				&sfn.AliasRoutingConfigurationArgs{
/// 					StateMachineVersionArn: pulumi.Any(sfnTest.StateMachineVersionArn),
/// 					Weight:                 pulumi.Int(100),
/// 				},
/// 			},
/// 			Name: pulumi.String("my_sfn_alias"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = sfn.NewAlias(ctx, "my_sfn_alias", &sfn.AliasArgs{
/// 			RoutingConfigurations: sfn.AliasRoutingConfigurationArray{
/// 				&sfn.AliasRoutingConfigurationArgs{
/// 					StateMachineVersionArn: pulumi.String("arn:aws:states:us-east-1:12345:stateMachine:demo:3"),
/// 					Weight:                 pulumi.Int(50),
/// 				},
/// 				&sfn.AliasRoutingConfigurationArgs{
/// 					StateMachineVersionArn: pulumi.String("arn:aws:states:us-east-1:12345:stateMachine:demo:2"),
/// 					Weight:                 pulumi.Int(50),
/// 				},
/// 			},
/// 			Name: pulumi.String("my_sfn_alias"),
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
/// resource "aws_sfn_alias" "sfn_alias" {
///   routing_configurations {
///     state_machine_version_arn = sfnTest.stateMachineVersionArn
///     weight                    = 100
///   }
///   name = "my_sfn_alias"
/// }
/// resource "aws_sfn_alias" "my_sfn_alias" {
///   routing_configurations {
///     state_machine_version_arn = "arn:aws:states:us-east-1:12345:stateMachine:demo:3"
///     weight                    = 50
///   }
///   routing_configurations {
///     state_machine_version_arn = "arn:aws:states:us-east-1:12345:stateMachine:demo:2"
///     weight                    = 50
///   }
///   name = "my_sfn_alias"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sfn.Alias;
/// import com.pulumi.aws.sfn.AliasArgs;
/// import com.pulumi.aws.sfn.inputs.AliasRoutingConfigurationArgs;
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
///         var sfnAlias = new Alias("sfnAlias", AliasArgs.builder()
///             .routingConfigurations(AliasRoutingConfigurationArgs.builder()
///                 .stateMachineVersionArn(sfnTest.stateMachineVersionArn())
///                 .weight(100)
///                 .build())
///             .name("my_sfn_alias")
///             .build());
///
///         var mySfnAlias = new Alias("mySfnAlias", AliasArgs.builder()
///             .routingConfigurations(
///                 AliasRoutingConfigurationArgs.builder()
///                     .stateMachineVersionArn("arn:aws:states:us-east-1:12345:stateMachine:demo:3")
///                     .weight(50)
///                     .build(),
///                 AliasRoutingConfigurationArgs.builder()
///                     .stateMachineVersionArn("arn:aws:states:us-east-1:12345:stateMachine:demo:2")
///                     .weight(50)
///                     .build())
///             .name("my_sfn_alias")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sfnAlias:
///     type: aws:sfn:Alias
///     name: sfn_alias
///     properties:
///       routingConfigurations:
///         - stateMachineVersionArn: ${sfnTest.stateMachineVersionArn}
///           weight: 100
///       name: my_sfn_alias
///   mySfnAlias:
///     type: aws:sfn:Alias
///     name: my_sfn_alias
///     properties:
///       routingConfigurations:
///         - stateMachineVersionArn: arn:aws:states:us-east-1:12345:stateMachine:demo:3
///           weight: 50
///         - stateMachineVersionArn: arn:aws:states:us-east-1:12345:stateMachine:demo:2
///           weight: 50
///       name: my_sfn_alias
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the alias.
///
///
/// Using `pulumi import`, import SFN (Step Functions) Alias using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sfn/alias:Alias foo arn:aws:states:us-east-1:123456789098:stateMachine:myStateMachine:foo
/// ```
class Alias extends pulumi.CustomResource {
  /// ARN identifying your state machine alias.
  late final pulumi.Output<String> arn;
  /// The date the state machine alias was created.
  late final pulumi.Output<String> creationDate;
  /// Description of the alias.
  late final pulumi.Output<String?> description;
  /// Name for the alias you are creating.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The StateMachine alias' route configuration settings. Fields documented below
  late final pulumi.Output<List<AliasRoutingConfiguration>> routingConfigurations;

  /// Creates a new [Alias].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Alias]. {@macro pulumi_sfn_alias_alias_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Alias(
    String name, {
    AliasArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sfn/alias:Alias',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routingConfigurations = registerOutput<List<AliasRoutingConfiguration>>('routingConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AliasRoutingConfiguration>(guardedValue, (value) => AliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [Alias] resource's state with the given [name] and [id].
  static Alias get(
    String name,
    pulumi.Input<String> id, {
    AliasState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Alias._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Alias._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sfn/alias:Alias',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routingConfigurations = registerOutput<List<AliasRoutingConfiguration>>('routingConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AliasRoutingConfiguration>(guardedValue, (value) => AliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [Alias] resource.
  Alias.reference(String urn)
    : super(
        'aws:sfn/alias:Alias',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    creationDate = registerOutput<String>('creationDate');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    routingConfigurations = registerOutput<List<AliasRoutingConfiguration>>('routingConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AliasRoutingConfiguration>(guardedValue, (value) => AliasRoutingConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
