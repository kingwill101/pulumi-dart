// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_organization_configuration.dart';

/// {@template pulumi_securityhub_organization_configuration_organization_configuration_args_doc}
/// The set of arguments for OrganizationConfiguration.
/// {@endtemplate}
/// {@macro pulumi_securityhub_organization_configuration_organization_configuration_args_doc}
class OrganizationConfigurationArgs {
  /// Whether to automatically enable Security Hub for new accounts in the organization.
  final pulumi.Input<bool> autoEnable;

  /// Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  final pulumi.Input<String>? autoEnableStandards;

  /// Provides information about the way an organization is configured in Security Hub.
  final pulumi.Input<OrganizationConfigurationOrganizationConfiguration>?
  organizationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationArgs].
  /// [autoEnable] Whether to automatically enable Security Hub for new accounts in the organization.
  /// [autoEnableStandards] Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  /// [organizationConfiguration] Provides information about the way an organization is configured in Security Hub.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  OrganizationConfigurationArgs({
    required bool autoEnable,
    String? autoEnableStandards,
    OrganizationConfigurationOrganizationConfiguration?
    organizationConfiguration,
    String? region,
  }) : autoEnable = pulumi.Input.asInput<bool>(autoEnable),
       autoEnableStandards = pulumi.Input.asOptionalInput<String>(
         autoEnableStandards,
       ),
       organizationConfiguration =
           pulumi.Input.asOptionalInput<
             OrganizationConfigurationOrganizationConfiguration
           >(organizationConfiguration),
       region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': autoEnable,
      'autoEnableStandards': ?autoEnableStandards,
      'organizationConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            OrganizationConfigurationOrganizationConfiguration,
            Map<String, dynamic>
          >(organizationConfiguration, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory OrganizationConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs(
      autoEnable: map['autoEnable'] as bool,
      autoEnableStandards: map['autoEnableStandards'] == null
          ? null
          : map['autoEnableStandards'] as String,
      organizationConfiguration: map['organizationConfiguration'] == null
          ? null
          : OrganizationConfigurationOrganizationConfiguration.fromMap(
              (map['organizationConfiguration'] as Map).cast<String, dynamic>(),
            ),
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
