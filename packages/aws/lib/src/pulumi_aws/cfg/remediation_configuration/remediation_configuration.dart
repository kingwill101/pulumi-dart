import 'package:pulumi/pulumi.dart';
import '../remediation_configuration_execution_controls/remediation_configuration_execution_controls.dart';
import '../remediation_configuration_parameter/remediation_configuration_parameter.dart';
import 'remediation_configuration_args.dart';

/// Provides an AWS Config Remediation Configuration.
///
/// > **Note:** Config Remediation Configuration requires an existing Config Rule to be present.
///
/// ## Example Usage
///
/// AWS managed rules can be used by setting the source owner to `AWS` and the source identifier to the name of the managed rule. More information about AWS managed rules can be found in the [AWS Config Developer Guide](https://docs.aws.amazon.com/config/latest/developerguide/evaluate-config_use-managed-rules.html).
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Remediation Configurations using the name config_rule_name. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/remediationConfiguration:RemediationConfiguration this example
/// ```
class RemediationConfiguration extends CustomResource {
  /// ARN of the Config Remediation Configuration.
  late final Output<String> arn;

  /// Remediation is triggered automatically if `true`.
  late final Output<bool?> automatic;

  /// Name of the AWS Config rule.
  late final Output<String> configRuleName;

  /// Configuration block for execution controls. See below.
  late final Output<RemediationConfigurationExecutionControls?>
      executionControls;

  /// Maximum number of failed attempts for auto-remediation. If you do not select a number, the default is 5.
  late final Output<int?> maximumAutomaticAttempts;

  /// Can be specified multiple times for each parameter. Each parameter block supports arguments below.
  late final Output<List<RemediationConfigurationParameter>?> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Type of resource.
  late final Output<String?> resourceType;

  /// Maximum time in seconds that AWS Config runs auto-remediation. If you do not select a number, the default is 60 seconds.
  late final Output<int?> retryAttemptSeconds;

  /// Target ID is the name of the public document.
  late final Output<String> targetId;

  /// Type of the target. Target executes remediation. For example, SSM document.
  ///
  /// The following arguments are optional:
  late final Output<String> targetType;

  /// Version of the target. For example, version of the SSM document
  late final Output<String?> targetVersion;

  RemediationConfiguration(
    String name, {
    RemediationConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/remediationConfiguration:RemediationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.automatic = registerOutput<bool?>('automatic');
    this.configRuleName = registerOutput<String>('configRuleName');
    this.executionControls =
        registerOutput<RemediationConfigurationExecutionControls?>(
            'executionControls');
    this.maximumAutomaticAttempts =
        registerOutput<int?>('maximumAutomaticAttempts');
    this.parameters =
        registerOutput<List<RemediationConfigurationParameter>?>('parameters');
    this.region = registerOutput<String>('region');
    this.resourceType = registerOutput<String?>('resourceType');
    this.retryAttemptSeconds = registerOutput<int?>('retryAttemptSeconds');
    this.targetId = registerOutput<String>('targetId');
    this.targetType = registerOutput<String>('targetType');
    this.targetVersion = registerOutput<String?>('targetVersion');
  }
}
