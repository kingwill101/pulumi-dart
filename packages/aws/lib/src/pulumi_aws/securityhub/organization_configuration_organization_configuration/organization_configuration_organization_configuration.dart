// ignore_for_file: unused_element, unnecessary_cast

class OrganizationConfigurationOrganizationConfiguration {
  /// Indicates whether the organization uses local or central configuration. If using central configuration, <span pulumi-lang-nodejs="`autoEnable`" pulumi-lang-dotnet="`AutoEnable`" pulumi-lang-go="`autoEnable`" pulumi-lang-python="`auto_enable`" pulumi-lang-yaml="`autoEnable`" pulumi-lang-java="`autoEnable`">`auto_enable`</span> must be set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> and <span pulumi-lang-nodejs="`autoEnableStandards`" pulumi-lang-dotnet="`AutoEnableStandards`" pulumi-lang-go="`autoEnableStandards`" pulumi-lang-python="`auto_enable_standards`" pulumi-lang-yaml="`autoEnableStandards`" pulumi-lang-java="`autoEnableStandards`">`auto_enable_standards`</span> set to `NONE`. More information can be found in the [documentation for central configuration](https://docs.aws.amazon.com/securityhub/latest/userguide/central-configuration-intro.html). Valid values: `LOCAL`, `CENTRAL`.
  final String configurationType;

  OrganizationConfigurationOrganizationConfiguration({
    required this.configurationType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationType'] = configurationType;
    return map;
  }

  factory OrganizationConfigurationOrganizationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return OrganizationConfigurationOrganizationConfiguration(
      configurationType: map['configurationType'] as String,
    );
  }
}
