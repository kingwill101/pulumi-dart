// ignore_for_file: unused_element, unnecessary_cast

/// Runtime settings for the App Engine flexible environment.
class FlexibleRuntimeSettingsResponseAppengineV1beta {
  /// The operating system of the application runtime.
  final String operatingSystem;

  /// The runtime version of an App Engine flexible application.
  final String runtimeVersion;

  /// Creates a new [FlexibleRuntimeSettingsResponseAppengineV1beta].
  /// [operatingSystem] The operating system of the application runtime.
  /// [runtimeVersion] The runtime version of an App Engine flexible application.
  FlexibleRuntimeSettingsResponseAppengineV1beta({
    required this.operatingSystem,
    required this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'operatingSystem': operatingSystem,
      'runtimeVersion': runtimeVersion,
    };
  }

  factory FlexibleRuntimeSettingsResponseAppengineV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return FlexibleRuntimeSettingsResponseAppengineV1beta(
      operatingSystem: map['operatingSystem'] as String,
      runtimeVersion: map['runtimeVersion'] as String,
    );
  }
}
