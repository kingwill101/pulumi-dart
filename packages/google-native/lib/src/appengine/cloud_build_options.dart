// ignore_for_file: unused_element, unnecessary_cast

/// Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
class CloudBuildOptions {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  final String? appYamlPath;

  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  final String? cloudBuildTimeout;

  /// Creates a new [CloudBuildOptions].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  CloudBuildOptions({
    this.appYamlPath,
    this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final appYamlPathValue = appYamlPath;
    if (appYamlPathValue != null) {
      map['appYamlPath'] = appYamlPathValue;
    }
    final cloudBuildTimeoutValue = cloudBuildTimeout;
    if (cloudBuildTimeoutValue != null) {
      map['cloudBuildTimeout'] = cloudBuildTimeoutValue;
    }
    return map;
  }

  factory CloudBuildOptions.fromMap(Map<String, dynamic> map) {
    return CloudBuildOptions(
      appYamlPath:
          map['appYamlPath'] == null ? null : map['appYamlPath'] as String,
      cloudBuildTimeout: map['cloudBuildTimeout'] == null
          ? null
          : map['cloudBuildTimeout'] as String,
    );
  }
}
