// ignore_for_file: unused_element, unnecessary_cast

/// Options for the build operations performed as a part of the version deployment. Only applicable for App Engine flexible environment when creating a version using source code directly.
class CloudBuildOptionsResponse {
  /// Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  final String appYamlPath;

  /// The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  final String cloudBuildTimeout;

  /// Creates a new [CloudBuildOptionsResponse].
  /// [appYamlPath] Path to the yaml file used in deployment, used to determine runtime configuration details.Required for flexible environment builds.See https://cloud.google.com/appengine/docs/standard/python/config/appref for more details.
  /// [cloudBuildTimeout] The Cloud Build timeout used as part of any dependent builds performed by version creation. Defaults to 10 minutes.
  CloudBuildOptionsResponse({
    required this.appYamlPath,
    required this.cloudBuildTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appYamlPath': appYamlPath,
      'cloudBuildTimeout': cloudBuildTimeout,
    };
  }

  factory CloudBuildOptionsResponse.fromMap(Map<String, dynamic> map) {
    return CloudBuildOptionsResponse(
      appYamlPath: map['appYamlPath'] as String,
      cloudBuildTimeout: map['cloudBuildTimeout'] as String,
    );
  }
}
