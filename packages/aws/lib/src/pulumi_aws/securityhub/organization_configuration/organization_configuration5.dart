import 'package:pulumi/pulumi.dart';
import '../organization_configuration_organization_configuration/organization_configuration_organization_configuration.dart';
import 'organization_configuration_args5.dart';

/// Manages the Security Hub Organization Configuration.
///
/// > **NOTE:** This resource requires an `aws.securityhub.OrganizationAdminAccount` to be configured (not necessarily with Pulumi). More information about managing Security Hub in an organization can be found in the [Managing administrator and member accounts](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-accounts.html) documentation.
///
/// > **NOTE:** In order to set the `configuration_type` to `CENTRAL`, the delegated admin must be a member account of the organization and not the management account. Central configuration also requires an `aws.securityhub.FindingAggregator` to be configured.
///
/// > **NOTE:** This is an advanced AWS resource. Pulumi will automatically assume management of the Security Hub Organization Configuration without import and perform no actions on removal from the Pulumi program.
///
/// > **NOTE:** Deleting this resource resets security hub to a local organization configuration with auto enable false.
///
/// ## Example Usage
///
/// ### Local Configuration
///
///
///
/// ### Central Configuration
///
///
///
/// ## Import
///
/// Using `pulumi import`, import an existing Security Hub enabled account using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:securityhub/organizationConfiguration:OrganizationConfiguration example 123456789012
/// ```
class OrganizationConfiguration5 extends CustomResource {
  /// Whether to automatically enable Security Hub for new accounts in the organization.
  late final Output<bool> autoEnable;

  /// Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  late final Output<String> autoEnableStandards;

  /// Provides information about the way an organization is configured in Security Hub.
  late final Output<OrganizationConfigurationOrganizationConfiguration>
      organizationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfiguration5(
    String name, {
    OrganizationConfigurationArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:securityhub/organizationConfiguration:OrganizationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoEnable = registerOutput<bool>('autoEnable');
    this.autoEnableStandards = registerOutput<String>('autoEnableStandards');
    this.organizationConfiguration =
        registerOutput<OrganizationConfigurationOrganizationConfiguration>(
            'organizationConfiguration');
    this.region = registerOutput<String>('region');
  }
}
