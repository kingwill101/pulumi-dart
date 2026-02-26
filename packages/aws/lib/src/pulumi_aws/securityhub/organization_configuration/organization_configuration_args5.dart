// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organization_configuration_organization_configuration/organization_configuration_organization_configuration.dart';

/// The set of arguments for OrganizationConfiguration.
class OrganizationConfigurationArgs5 {
  /// Whether to automatically enable Security Hub for new accounts in the organization.
  final Input<bool> autoEnable;

  /// Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  final Input<String>? autoEnableStandards;

  /// Provides information about the way an organization is configured in Security Hub.
  final Input<OrganizationConfigurationOrganizationConfiguration>?
      organizationConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  OrganizationConfigurationArgs5({
    required this.autoEnable,
    this.autoEnableStandards,
    this.organizationConfiguration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoEnable'] = autoEnable;
    final autoEnableStandardsValue = autoEnableStandards;
    if (autoEnableStandardsValue != null) {
      map['autoEnableStandards'] = autoEnableStandardsValue;
    }
    final organizationConfigurationValue = organizationConfiguration;
    if (organizationConfigurationValue != null) {
      map['organizationConfiguration'] = Input.mapOptionalInputValue<
              OrganizationConfigurationOrganizationConfiguration,
              Map<String, dynamic>>(
          organizationConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory OrganizationConfigurationArgs5.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationArgs5(
      autoEnable: Input.asInput<bool>(map['autoEnable']),
      autoEnableStandards:
          Input.asOptionalInput<String>(map['autoEnableStandards']),
      organizationConfiguration: Input.asOptionalInput<
              OrganizationConfigurationOrganizationConfiguration>(
          map['organizationConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
