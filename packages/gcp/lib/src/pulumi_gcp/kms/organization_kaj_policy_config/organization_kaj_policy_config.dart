import 'package:pulumi/pulumi.dart';
import '../organization_kaj_policy_config_default_key_access_justification_policy/organization_kaj_policy_config_default_key_access_justification_policy.dart';
import 'organization_kaj_policy_config_args.dart';

/// ## Example Usage
///
/// ### Kms Organization Kaj Policy Config Basic
///
///
///
///
/// ## Import
///
/// OrganizationKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/kajPolicyConfig`
///
/// * `{{organization}}`
///
/// When using the `pulumi import` command, OrganizationKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default organizations/{{organization}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default {{organization}}
/// ```
class OrganizationKajPolicyConfig extends CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final Output<
          OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>
      defaultKeyAccessJustificationPolicy;

  /// The organization number for which to retrieve config.
  late final Output<String> organization;

  OrganizationKajPolicyConfig(
    String name, {
    OrganizationKajPolicyConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<
            OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>(
        'defaultKeyAccessJustificationPolicy');
    this.organization = registerOutput<String>('organization');
  }
}
