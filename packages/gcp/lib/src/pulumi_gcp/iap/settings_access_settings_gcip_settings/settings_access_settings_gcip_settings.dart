// ignore_for_file: unused_element, unnecessary_cast

class SettingsAccessSettingsGcipSettings {
  /// Login page URI associated with the GCIP tenants. Typically, all resources within
  /// the same project share the same login page, though it could be overridden at the
  /// sub resource level.
  final String? loginPageUri;

  /// GCIP tenant ids that are linked to the IAP resource. tenantIds could be a string
  /// beginning with a number character to indicate authenticating with GCIP tenant flow,
  /// or in the format of _ to indicate authenticating with GCIP agent flow. If agent flow
  /// is used, tenantIds should only contain one single element, while for tenant flow,
  /// tenantIds can contain multiple elements.
  final List<String>? tenantIds;

  SettingsAccessSettingsGcipSettings({
    this.loginPageUri,
    this.tenantIds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final loginPageUriValue = loginPageUri;
    if (loginPageUriValue != null) {
      map['loginPageUri'] = loginPageUriValue;
    }
    final tenantIdsValue = tenantIds;
    if (tenantIdsValue != null) {
      map['tenantIds'] = tenantIdsValue;
    }
    return map;
  }

  factory SettingsAccessSettingsGcipSettings.fromMap(Map<String, dynamic> map) {
    return SettingsAccessSettingsGcipSettings(
      loginPageUri:
          map['loginPageUri'] == null ? null : map['loginPageUri'] as String,
      tenantIds: map['tenantIds'] == null
          ? null
          : (map['tenantIds'] as List).cast<String>(),
    );
  }
}
