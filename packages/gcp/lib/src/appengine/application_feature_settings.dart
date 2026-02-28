// ignore_for_file: unused_element, unnecessary_cast

class ApplicationFeatureSettings {
  /// Set to false to use the legacy health check instead of the readiness
  /// and liveness checks.
  final bool splitHealthChecks;

  /// Creates a new [ApplicationFeatureSettings].
  /// [splitHealthChecks] Set to false to use the legacy health check instead of the readiness
  ApplicationFeatureSettings({
    required this.splitHealthChecks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['splitHealthChecks'] = splitHealthChecks;
    return map;
  }

  factory ApplicationFeatureSettings.fromMap(Map<String, dynamic> map) {
    return ApplicationFeatureSettings(
      splitHealthChecks: map['splitHealthChecks'] as bool,
    );
  }
}
