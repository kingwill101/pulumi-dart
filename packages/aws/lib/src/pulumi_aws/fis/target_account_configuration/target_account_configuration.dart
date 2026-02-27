import 'package:pulumi/pulumi.dart';
import 'target_account_configuration_args.dart';

/// Manages an AWS FIS (Fault Injection Simulator) Target Account Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import FIS (Fault Injection Simulator) Target Account Configuration using the `account_id,experiment_template_id`. For example:
///
/// ```sh
/// $ pulumi import aws:fis/targetAccountConfiguration:TargetAccountConfiguration example 123456789012,abcd123456789
/// ```
class TargetAccountConfiguration extends CustomResource {
  /// Account ID of the target account.
  late final Output<String> accountId;

  /// Description of the target account.
  late final Output<String> description;

  /// Experiment Template ID.
  ///
  /// The following arguments are optional:
  late final Output<String> experimentTemplateId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM Role for the target account.
  late final Output<String> roleArn;

  TargetAccountConfiguration(
    String name, {
    TargetAccountConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:fis/targetAccountConfiguration:TargetAccountConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String>('description');
    this.experimentTemplateId = registerOutput<String>('experimentTemplateId');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
  }
}
