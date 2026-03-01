// ignore_for_file: unused_element, unnecessary_cast

class DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings {
  /// Describes whether model deployment permissions are enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  final String? status;

  /// Creates a new [DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings].
  /// [status] Describes whether model deployment permissions are enabled or disabled in the Canvas application. Valid values are `ENABLED` and `DISABLED`.
  DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings({this.status});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'status': ?status};
  }

  factory DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainDefaultUserSettingsCanvasAppSettingsDirectDeploySettings(
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}
