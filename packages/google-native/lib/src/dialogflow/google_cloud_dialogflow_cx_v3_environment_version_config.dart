// ignore_for_file: unused_element, unnecessary_cast

/// Configuration for the version.
class GoogleCloudDialogflowCxV3EnvironmentVersionConfig {
  /// Format: projects//locations//agents//flows//versions/.
  final String version;

  /// Creates a new [GoogleCloudDialogflowCxV3EnvironmentVersionConfig].
  /// [version] Format: projects//locations//agents//flows//versions/.
  GoogleCloudDialogflowCxV3EnvironmentVersionConfig({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['version'] = version;
    return map;
  }

  factory GoogleCloudDialogflowCxV3EnvironmentVersionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3EnvironmentVersionConfig(
      version: map['version'] as String,
    );
  }
}
