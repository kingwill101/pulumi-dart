import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_desired_state_args.dart';
import 'instance_desired_state_state.dart';
import 'instance_desired_state_timeouts.dart';

/// Resource for managing an AWS RDS (Relational Database) RDS Instance State.
///
/// &gt; Destruction of this resource is a no-op and **will not** modify the instance state
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
/// const test = new aws.rds.InstanceDesiredState("test", {
///     identifier: testAwsDbInstance.identifier,
///     state: "available",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.rds.InstanceDesiredState("test",
///     identifier=test_aws_db_instance["identifier"],
///     state="available")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Rds.InstanceDesiredState("test", new()
///     {
///         Identifier = testAwsDbInstance.Identifier,
///         State = "available",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := rds.NewInstanceDesiredState(ctx, "test", &rds.InstanceDesiredStateArgs{
/// 			Identifier: pulumi.Any(testAwsDbInstance.Identifier),
/// 			State:      pulumi.String("available"),
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
/// import com.pulumi.aws.rds.InstanceDesiredState;
/// import com.pulumi.aws.rds.InstanceDesiredStateArgs;
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
///         var test = new InstanceDesiredState("test", InstanceDesiredStateArgs.builder()
///             .identifier(testAwsDbInstance.identifier())
///             .state("available")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:rds:InstanceDesiredState
///     properties:
///       identifier: ${testAwsDbInstance.identifier}
///       state: available
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import RDS (Relational Database) RDS Instance State using the `identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:rds/instanceDesiredState:InstanceDesiredState example rds_instance_state-id-12345678
/// ```
class InstanceDesiredState extends pulumi.CustomResource {
  /// DB Instance Identifier
  late final pulumi.Output<String> identifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configured state of the DB Instance. Valid values are `available` and `stopped`.
  late final pulumi.Output<String> state;
  late final pulumi.Output<InstanceDesiredStateTimeouts?> timeouts;

  /// Creates a new [InstanceDesiredState].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceDesiredState]. {@macro pulumi_rds_instance_desired_state_instance_desired_state_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceDesiredState(
    String name, {
    InstanceDesiredStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/instanceDesiredState:InstanceDesiredState',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identifier = registerOutput<String>('identifier');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    timeouts = registerOutput<InstanceDesiredStateTimeouts?>('timeouts');
  }

  /// Gets an existing [InstanceDesiredState] resource's state with the given [name] and [id].
  static InstanceDesiredState get(
    String name,
    pulumi.Input<String> id, {
    InstanceDesiredStateState? state,
  }) {
    return InstanceDesiredState._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  InstanceDesiredState._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:rds/instanceDesiredState:InstanceDesiredState',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    identifier = registerOutput<String>('identifier');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    timeouts = registerOutput<InstanceDesiredStateTimeouts?>('timeouts');
  }
}
