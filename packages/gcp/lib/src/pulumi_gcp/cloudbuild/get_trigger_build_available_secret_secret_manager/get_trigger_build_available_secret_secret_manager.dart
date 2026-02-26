// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerBuildAvailableSecretSecretManager {
  /// Environment variable name to associate with the secret. Secret environment
  /// variables must be unique across all of a build's secrets, and must be used
  /// by at least one build step.
  final String env;

  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final String versionName;

  GetTriggerBuildAvailableSecretSecretManager({
    required this.env,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['env'] = env;
    map['versionName'] = versionName;
    return map;
  }

  factory GetTriggerBuildAvailableSecretSecretManager.fromMap(
      Map<String, dynamic> map) {
    return GetTriggerBuildAvailableSecretSecretManager(
      env: map['env'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
