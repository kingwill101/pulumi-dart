import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_securityhub_args.dart';

/// Enables Security Hub for this AWS account.
///
/// > **NOTE:** Destroying this resource will disable Security Hub for this AWS account.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/account:Account example 123456789012
/// ```
class AccountSecurityhub extends pulumi.CustomResource {
  /// ARN of the SecurityHub Hub created in the account.
  late final pulumi.Output<String> arn;

  /// Whether to automatically enable new controls when they are added to standards that are enabled. By default, this is set to true, and new controls are enabled automatically. To not automatically enable new controls, set this to false.
  late final pulumi.Output<bool?> autoEnableControls;

  /// Updates whether the calling account has consolidated control findings turned on. If the value for this field is set to `SECURITY_CONTROL`, Security Hub generates a single finding for a control check even when the check applies to multiple enabled standards. If the value for this field is set to `STANDARD_CONTROL`, Security Hub generates separate findings for a control check when the check applies to multiple enabled standards. For accounts that are part of an organization, this value can only be updated in the administrator account.
  late final pulumi.Output<String> controlFindingGenerator;

  /// Whether to enable the security standards that Security Hub has designated as automatically enabled including: ` AWS Foundational Security Best Practices v1.0.0` and `CIS AWS Foundations Benchmark v1.2.0`. Defaults to `true`.
  late final pulumi.Output<bool?> enableDefaultStandards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  AccountSecurityhub(
    String name, {
    AccountSecurityhubArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/account:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.autoEnableControls = registerOutput<bool?>('autoEnableControls');
    this.controlFindingGenerator =
        registerOutput<String>('controlFindingGenerator');
    this.enableDefaultStandards =
        registerOutput<bool?>('enableDefaultStandards');
    this.region = registerOutput<String>('region');
  }
}
