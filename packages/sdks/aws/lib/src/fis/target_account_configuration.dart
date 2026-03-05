import 'package:pulumi/pulumi.dart' as pulumi;
import 'target_account_configuration_args.dart';
import 'target_account_configuration_state.dart';

/// Manages an AWS FIS (Fault Injection Simulator) Target Account Configuration.
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
/// const example = new aws.fis.TargetAccountConfiguration("example", {
///     experimentTemplateId: exampleAwsFisExperimentTemplate.id,
///     accountId: current.accountId,
///     roleArn: fisRole.arn,
///     description: "Example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.fis.TargetAccountConfiguration("example",
///     experiment_template_id=example_aws_fis_experiment_template["id"],
///     account_id=current["accountId"],
///     role_arn=fis_role["arn"],
///     description="Example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Fis.TargetAccountConfiguration("example", new()
///     {
///         ExperimentTemplateId = exampleAwsFisExperimentTemplate.Id,
///         AccountId = current.AccountId,
///         RoleArn = fisRole.Arn,
///         Description = "Example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/fis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := fis.NewTargetAccountConfiguration(ctx, "example", &fis.TargetAccountConfigurationArgs{
/// 			ExperimentTemplateId: pulumi.Any(exampleAwsFisExperimentTemplate.Id),
/// 			AccountId:            pulumi.Any(current.AccountId),
/// 			RoleArn:              pulumi.Any(fisRole.Arn),
/// 			Description:          pulumi.String("Example"),
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
/// import com.pulumi.aws.fis.TargetAccountConfiguration;
/// import com.pulumi.aws.fis.TargetAccountConfigurationArgs;
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
///         var example = new TargetAccountConfiguration("example", TargetAccountConfigurationArgs.builder()
///             .experimentTemplateId(exampleAwsFisExperimentTemplate.id())
///             .accountId(current.accountId())
///             .roleArn(fisRole.arn())
///             .description("Example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:fis:TargetAccountConfiguration
///     properties:
///       experimentTemplateId: ${exampleAwsFisExperimentTemplate.id}
///       accountId: ${current.accountId}
///       roleArn: ${fisRole.arn}
///       description: Example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import FIS (Fault Injection Simulator) Target Account Configuration using the `account_id,experiment_template_id`. For example:
///
/// ```sh
/// $ pulumi import aws:fis/targetAccountConfiguration:TargetAccountConfiguration example 123456789012,abcd123456789
/// ```
class TargetAccountConfiguration extends pulumi.CustomResource {
  /// Account ID of the target account.
  late final pulumi.Output<String> accountId;
  /// Description of the target account.
  late final pulumi.Output<String> description;
  /// Experiment Template ID.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> experimentTemplateId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM Role for the target account.
  late final pulumi.Output<String> roleArn;

  /// Creates a new [TargetAccountConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TargetAccountConfiguration]. {@macro pulumi_fis_target_account_configuration_target_account_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TargetAccountConfiguration(
    String name, {
    TargetAccountConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/targetAccountConfiguration:TargetAccountConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String>('description');
    experimentTemplateId = registerOutput<String>('experimentTemplateId');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }

  /// Gets an existing [TargetAccountConfiguration] resource's state with the given [name] and [id].
  static TargetAccountConfiguration get(
    String name,
    pulumi.Input<String> id, {
    TargetAccountConfigurationState? state,
  }) {
    return TargetAccountConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TargetAccountConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:fis/targetAccountConfiguration:TargetAccountConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    description = registerOutput<String>('description');
    experimentTemplateId = registerOutput<String>('experimentTemplateId');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
  }
}
