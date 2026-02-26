// ignore_for_file: unused_element, unnecessary_cast

class SettingsAccessSettingsAllowedDomainsSettings {
  /// List of trusted domains.
  final List<String>? domains;

  /// Configuration for customers to opt in for the feature.
  final bool? enable;

  SettingsAccessSettingsAllowedDomainsSettings({
    this.domains,
    this.enable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final domainsValue = domains;
    if (domainsValue != null) {
      map['domains'] = domainsValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    return map;
  }

  factory SettingsAccessSettingsAllowedDomainsSettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsAccessSettingsAllowedDomainsSettings(
      domains: map['domains'] == null
          ? null
          : (map['domains'] as List).cast<String>(),
      enable: map['enable'] == null ? null : map['enable'] as bool,
    );
  }
}
