// ignore_for_file: unused_element, unnecessary_cast

class GcpUserAccessBindingScopedAccessSettingDryRunSettings {
  /// Optional. Access level that a user must have to be granted access. Only one access level is supported, not multiple. This repeated field must have exactly one element. Example: "accessPolicies/9522/accessLevels/device_trusted"
  final String? accessLevels;

  GcpUserAccessBindingScopedAccessSettingDryRunSettings({
    this.accessLevels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessLevelsValue = accessLevels;
    if (accessLevelsValue != null) {
      map['accessLevels'] = accessLevelsValue;
    }
    return map;
  }

  factory GcpUserAccessBindingScopedAccessSettingDryRunSettings.fromMap(
      Map<String, dynamic> map) {
    return GcpUserAccessBindingScopedAccessSettingDryRunSettings(
      accessLevels:
          map['accessLevels'] == null ? null : map['accessLevels'] as String,
    );
  }
}
