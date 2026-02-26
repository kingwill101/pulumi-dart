// ignore_for_file: unused_element, unnecessary_cast

class SettingsServiceAccountApproverSettings {
  /// Indicates whether service account is allowed to grant approvals.
  final bool? enabled;

  SettingsServiceAccountApproverSettings({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory SettingsServiceAccountApproverSettings.fromMap(
      Map<String, dynamic> map) {
    return SettingsServiceAccountApproverSettings(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
