// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationConfigurationOrganizationConfiguration {
  /// Indicates whether the organization uses local or central configuration. If using central configuration, `autoEnable` must be set to `false` and `autoEnableStandards` set to `NONE`. More information can be found in the [documentation for central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html). Valid values: `LOCAL`, `CENTRAL`.
  final pulumi.Input<String> configurationType;

  /// Creates a new [OrganizationConfigurationOrganizationConfiguration].
  /// [configurationType] Indicates whether the organization uses local or central configuration. If using central configuration, `autoEnable` must be set to `false` and `autoEnableStandards` set to `NONE`. More information can be found in the [documentation for central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html). Valid values: `LOCAL`, `CENTRAL`.
  const OrganizationConfigurationOrganizationConfiguration({
    required this.configurationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': configurationType,
    };
  }

  factory OrganizationConfigurationOrganizationConfiguration.fromMap(Map<String, dynamic> map) {
    return OrganizationConfigurationOrganizationConfiguration(
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
    );
  }
}
