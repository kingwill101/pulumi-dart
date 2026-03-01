// ignore_for_file: unused_element, unnecessary_cast


class DomainDefaultUserSettingsCanvasAppSettingsKendraSettings {
  /// Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsKendraSettings].
  /// [status] Describes whether the document querying feature is enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  DomainDefaultUserSettingsCanvasAppSettingsKendraSettings({
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
    };
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsKendraSettings.fromMap(Map<String, dynamic> map) {
    return DomainDefaultUserSettingsCanvasAppSettingsKendraSettings(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

