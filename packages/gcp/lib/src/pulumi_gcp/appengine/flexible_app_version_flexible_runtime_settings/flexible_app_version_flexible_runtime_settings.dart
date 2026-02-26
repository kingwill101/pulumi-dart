// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionFlexibleRuntimeSettings {
  /// Operating System of the application runtime.
  final String? operatingSystem;

  /// The runtime version of an App Engine flexible application.
  final String? runtimeVersion;

  FlexibleAppVersionFlexibleRuntimeSettings({
    this.operatingSystem,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final operatingSystemValue = operatingSystem;
    if (operatingSystemValue != null) {
      map['operatingSystem'] = operatingSystemValue;
    }
    final runtimeVersionValue = runtimeVersion;
    if (runtimeVersionValue != null) {
      map['runtimeVersion'] = runtimeVersionValue;
    }
    return map;
  }

  factory FlexibleAppVersionFlexibleRuntimeSettings.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionFlexibleRuntimeSettings(
      operatingSystem: map['operatingSystem'] == null
          ? null
          : map['operatingSystem'] as String,
      runtimeVersion: map['runtimeVersion'] == null
          ? null
          : map['runtimeVersion'] as String,
    );
  }
}
