// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrganizationConfigurationOrganizationConfiguration {
  /// Indicates whether the organization uses local or central configuration. If using central configuration, `auto_enable` must be set to `false` and `auto_enable_standards` set to `NONE`. More information can be found in the [documentation for central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html). Valid values: `LOCAL`, `CENTRAL`.
  final pulumi.Input<String> configurationType;

  /// Creates a new [OrganizationConfigurationOrganizationConfiguration].
  /// [configurationType] Indicates whether the organization uses local or central configuration. If using central configuration, `auto_enable` must be set to `false` and `auto_enable_standards` set to `NONE`. More information can be found in the [documentation for central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html). Valid values: `LOCAL`, `CENTRAL`.
  OrganizationConfigurationOrganizationConfiguration({
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

