// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_organization_configuration.dart';

/// Input properties used for looking up and filtering OrganizationConfiguration resources.
class OrganizationConfigurationState {
  /// Whether to automatically enable Security Hub for new accounts in the organization.
  final pulumi.Input<bool>? autoEnable;
  /// Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  final pulumi.Input<String>? autoEnableStandards;
  /// Provides information about the way an organization is configured in Security Hub.
  final pulumi.Input<OrganizationConfigurationOrganizationConfiguration>? organizationConfiguration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [OrganizationConfigurationState].
  /// [autoEnable] Whether to automatically enable Security Hub for new accounts in the organization.
  /// [autoEnableStandards] Whether to automatically enable Security Hub default standards for new member accounts in the organization. By default, this parameter is equal to `DEFAULT`, and new member accounts are automatically enabled with default Security Hub standards. To opt out of enabling default standards for new member accounts, set this parameter equal to `NONE`.
  /// [organizationConfiguration] Provides information about the way an organization is configured in Security Hub.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const OrganizationConfigurationState({
    this.autoEnable,
    this.autoEnableStandards,
    this.organizationConfiguration,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoEnable': ?autoEnable,
      'autoEnableStandards': ?autoEnableStandards,
      'organizationConfiguration': ?pulumi.Input.mapOptionalInputValue<OrganizationConfigurationOrganizationConfiguration, Map<String, dynamic>>(organizationConfiguration, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory OrganizationConfigurationState.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationState(
      autoEnable: (() { final guardedValue = map['autoEnable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      autoEnableStandards: (() { final guardedValue = map['autoEnableStandards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      organizationConfiguration: (() { final guardedValue = map['organizationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OrganizationConfigurationOrganizationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

