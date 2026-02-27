import 'package:pulumi/pulumi.dart' as pulumi;
import '../account_vdm_attributes_dashboard_attributes/account_vdm_attributes_dashboard_attributes.dart';
import '../account_vdm_attributes_guardian_attributes/account_vdm_attributes_guardian_attributes.dart';
import 'account_vdm_attributes_args.dart';

/// Resource for managing an AWS SESv2 (Simple Email V2) Account VDM Attributes.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import SESv2 (Simple Email V2) Account VDM Attributes using the word `ses-account-vdm-attributes`. For example:
///
/// ```sh
/// $ pulumi import aws:sesv2/accountVdmAttributes:AccountVdmAttributes example ses-account-vdm-attributes
/// ```
class AccountVdmAttributes extends pulumi.CustomResource {
  /// Specifies additional settings for your VDM configuration as applicable to the Dashboard.
  late final pulumi.Output<AccountVdmAttributesDashboardAttributes>
      dashboardAttributes;

  /// Specifies additional settings for your VDM configuration as applicable to the Guardian.
  late final pulumi.Output<AccountVdmAttributesGuardianAttributes>
      guardianAttributes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Specifies the status of your VDM configuration. Valid values: `ENABLED`, `DISABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> vdmEnabled;

  AccountVdmAttributes(
    String name, {
    AccountVdmAttributesArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sesv2/accountVdmAttributes:AccountVdmAttributes',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dashboardAttributes =
        registerOutput<AccountVdmAttributesDashboardAttributes>(
            'dashboardAttributes');
    this.guardianAttributes =
        registerOutput<AccountVdmAttributesGuardianAttributes>(
            'guardianAttributes');
    this.region = registerOutput<String>('region');
    this.vdmEnabled = registerOutput<String>('vdmEnabled');
  }
}
