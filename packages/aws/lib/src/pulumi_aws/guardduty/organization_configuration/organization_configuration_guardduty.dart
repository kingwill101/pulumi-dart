import 'package:pulumi/pulumi.dart' as pulumi;
import '../organization_configuration_datasources/organization_configuration_datasources.dart';
import 'organization_configuration_guardduty_args.dart';

/// Manages the GuardDuty Organization Configuration in the current AWS Region. The AWS account utilizing this resource must have been assigned as a delegated Organization administrator account, e.g., via the `aws.guardduty.OrganizationAdminAccount` resource. More information about Organizations support in GuardDuty can be found in the [GuardDuty User Guide](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty_organizations.html).
///
/// > **NOTE:** This is an advanced resource. The provider will automatically assume management of the GuardDuty Organization Configuration without import and perform no actions on removal from the resource configuration.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import GuardDuty Organization Configurations using the GuardDuty Detector ID. For example:
///
/// ```sh
/// $ pulumi import aws:guardduty/organizationConfiguration:OrganizationConfiguration example 00b00fd5aecc0ab60a708659477e9617
/// ```
class OrganizationConfigurationGuardduty extends pulumi.CustomResource {
  /// Indicates the auto-enablement configuration of GuardDuty for the member accounts in the organization.
  /// Valid values are `ALL`, `NEW`, `NONE`.
  late final pulumi.Output<String> autoEnableOrganizationMembers;

  /// Configuration for the collected datasources. [Deprecated](https://docs.aws.amazon.com/guardduty/latest/ug/guardduty-feature-object-api-changes-march2023.html) in favor of `aws.guardduty.OrganizationConfigurationFeature` resources.
  ///
  /// > **NOTE:** One of `auto_enable` or `auto_enable_organization_members` must be specified.
  late final pulumi.Output<OrganizationConfigurationDatasources> datasources;

  /// The detector ID of the GuardDuty account.
  late final pulumi.Output<String> detectorId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationConfigurationGuardduty(
    String name, {
    OrganizationConfigurationGuarddutyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:guardduty/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoEnableOrganizationMembers =
        registerOutput<String>('autoEnableOrganizationMembers');
    this.datasources =
        registerOutput<OrganizationConfigurationDatasources>('datasources');
    this.detectorId = registerOutput<String>('detectorId');
    this.region = registerOutput<String>('region');
  }
}
