// ignore_for_file: unused_element, unnecessary_cast

/// K8sBetaAPIConfig , configuration for beta APIs
class K8sBetaAPIConfig {
  /// Enabled k8s beta APIs.
  final List<String>? enabledApis;

  /// Creates a new [K8sBetaAPIConfig].
  /// [enabledApis] Enabled k8s beta APIs.
  K8sBetaAPIConfig({
    this.enabledApis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledApisValue = enabledApis;
    if (enabledApisValue != null) {
      map['enabledApis'] = enabledApisValue;
    }
    return map;
  }

  factory K8sBetaAPIConfig.fromMap(Map<String, dynamic> map) {
    return K8sBetaAPIConfig(
      enabledApis: map['enabledApis'] == null
          ? null
          : (map['enabledApis'] as List).cast<String>(),
    );
  }
}
