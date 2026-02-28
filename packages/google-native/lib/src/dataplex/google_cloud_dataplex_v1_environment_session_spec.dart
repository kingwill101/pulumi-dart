// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for sessions created for this environment.
class GoogleCloudDataplexV1EnvironmentSessionSpec {
  /// Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  final bool? enableFastStartup;

  /// Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  final String? maxIdleDuration;

  /// Creates a new [GoogleCloudDataplexV1EnvironmentSessionSpec].
  /// [enableFastStartup] Optional. If True, this causes sessions to be pre-created and available for faster startup to enable interactive exploration use-cases. This defaults to False to avoid additional billed charges. These can only be set to True for the environment with name set to "default", and with default configuration.
  /// [maxIdleDuration] Optional. The idle time configuration of the session. The session will be auto-terminated at the end of this period.
  GoogleCloudDataplexV1EnvironmentSessionSpec({
    this.enableFastStartup,
    this.maxIdleDuration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableFastStartupValue = enableFastStartup;
    if (enableFastStartupValue != null) {
      map['enableFastStartup'] = enableFastStartupValue;
    }
    final maxIdleDurationValue = maxIdleDuration;
    if (maxIdleDurationValue != null) {
      map['maxIdleDuration'] = maxIdleDurationValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentSessionSpec.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentSessionSpec(
      enableFastStartup: map['enableFastStartup'] == null
          ? null
          : map['enableFastStartup'] as bool,
      maxIdleDuration: map['maxIdleDuration'] == null
          ? null
          : map['maxIdleDuration'] as String,
    );
  }
}
