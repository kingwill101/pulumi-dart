// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCanvasAppSettingsKendraSettings {
  /// Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  UserProfileUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    return map;
  }

  factory UserProfileUserSettingsCanvasAppSettingsKendraSettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsKendraSettings(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
