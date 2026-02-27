import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_policy_association_args.dart';

/// Manages Security Hub configuration policy associations.
///
/// > **NOTE:** This resource requires `aws.securityhub.OrganizationConfiguration` to be configured with type `CENTRAL`. More information about Security Hub central configuration and configuration policies can be found in the [How Security Hub configuration policies work](https://docs.aws.amazon.com/securityhub/latest/userguide/configuration-policies-overview.html) documentation.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the target id. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation example_account_association 123456789012
/// ```
class ConfigurationPolicyAssociation extends pulumi.CustomResource {
  /// The universally unique identifier (UUID) of the configuration policy.
  late final pulumi.Output<String> policyId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The identifier of the target account, organizational unit, or the root to associate with the specified configuration.
  late final pulumi.Output<String> targetId;

  ConfigurationPolicyAssociation(
    String name, {
    ConfigurationPolicyAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/configurationPolicyAssociation:ConfigurationPolicyAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.policyId = registerOutput<String>('policyId');
    this.region = registerOutput<String>('region');
    this.targetId = registerOutput<String>('targetId');
  }
}
