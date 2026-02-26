// ignore_for_file: unused_element, unnecessary_cast

class UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings {
  /// Describes whether model deployment permissions are enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings({
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

  factory UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings.fromMap(
      Map<String, dynamic> map) {
    return UserProfileUserSettingsCanvasAppSettingsDirectDeploySettings(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
