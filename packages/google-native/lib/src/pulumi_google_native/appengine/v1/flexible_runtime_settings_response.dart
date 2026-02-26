// ignore_for_file: unused_element, unnecessary_cast

/// Runtime settings for the App Engine flexible environment.
class FlexibleRuntimeSettingsResponse {
  /// The operating system of the application runtime.
  final String operatingSystem;

  /// The runtime version of an App Engine flexible application.
  final String runtimeVersion;

  FlexibleRuntimeSettingsResponse({
    required this.operatingSystem,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['operatingSystem'] = operatingSystem;
    map['runtimeVersion'] = runtimeVersion;
    return map;
  }

  factory FlexibleRuntimeSettingsResponse.fromMap(Map<String, dynamic> map) {
    return FlexibleRuntimeSettingsResponse(
      operatingSystem: map['operatingSystem'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
