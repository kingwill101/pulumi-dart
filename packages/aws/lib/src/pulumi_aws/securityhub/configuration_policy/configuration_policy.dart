import 'package:pulumi/pulumi.dart';
import '../configuration_policy_configuration_policy/configuration_policy_configuration_policy.dart';
import 'configuration_policy_args.dart';

/// Manages Security Hub configuration policy
///
/// > **NOTE:** This resource requires `aws.securityhub.OrganizationConfiguration` to be configured of type `CENTRAL`. More information about Security Hub central configuration and configuration policies can be found in the [How Security Hub configuration policies work](https://docs.aws.amazon.com/securityhub/latest/userguide/configuration-policies-overview.html) documentation.
///
/// ## Example Usage
///
/// ### Default standards enabled
///
///
///
/// ### Disabled Policy
///
///
///
/// ### Custom Control Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the universally unique identifier (UUID) of the policy. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicy:ConfigurationPolicy example "00000000-1111-2222-3333-444444444444"
/// ```
class ConfigurationPolicy extends CustomResource {
  late final Output<String> arn;

  /// Defines how Security Hub is configured. See below.
  late final Output<ConfigurationPolicyConfigurationPolicy> configurationPolicy;

  /// The description of the configuration policy.
  late final Output<String?> description;

  /// The name of the configuration policy.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ConfigurationPolicy(
    String name, {
    ConfigurationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicy:ConfigurationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.configurationPolicy =
        registerOutput<ConfigurationPolicyConfigurationPolicy>(
            'configurationPolicy');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
  }
}
