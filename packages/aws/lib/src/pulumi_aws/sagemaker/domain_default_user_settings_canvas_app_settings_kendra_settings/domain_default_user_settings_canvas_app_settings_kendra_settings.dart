// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCanvasAppSettingsKendraSettings {
  /// Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  DomainDefaultUserSettingsCanvasAppSettingsKendraSettings({
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

  factory DomainDefaultUserSettingsCanvasAppSettingsKendraSettings.fromMap(
      Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsKendraSettings(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
