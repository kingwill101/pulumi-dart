// ignore_for_file: unused_element, unnecessary_cast

class FlexibleAppVersionDeploymentCloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.
  final String appYamlPath;

  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? cloudBuildTimeout;

  /// Creates a new [FlexibleAppVersionDeploymentCloudBuildOptions].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  FlexibleAppVersionDeploymentCloudBuildOptions({
    required this.appYamlPath,
    this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appYamlPath'] = appYamlPath;
    final cloudBuildTimeoutValue = cloudBuildTimeout;
    if (cloudBuildTimeoutValue != null) {
      map['cloudBuildTimeout'] = cloudBuildTimeoutValue;
    }
    return map;
  }

  factory FlexibleAppVersionDeploymentCloudBuildOptions.fromMap(
      Map<String, dynamic> map) {
    return FlexibleAppVersionDeploymentCloudBuildOptions(
      appYamlPath: map['appYamlPath'] as String,
      cloudBuildTimeout: map['cloudBuildTimeout'] == null
          ? null
          : map['cloudBuildTimeout'] as String,
    );
  }
}
