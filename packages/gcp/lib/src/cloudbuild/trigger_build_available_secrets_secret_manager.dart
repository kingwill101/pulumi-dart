// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildAvailableSecretsSecretManager {
  /// Environment variable name to associate with the secret. Secret environment
  /// variables must be unique across all of a build's secrets, and must be used
  /// by at least one build step.
  final String env;

  /// Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  final String versionName;

  /// Creates a new [TriggerBuildAvailableSecretsSecretManager].
  /// [env] Environment variable name to associate with the secret. Secret environment
  /// [versionName] Resource name of the SecretVersion. In format: projects/*/secrets/*/versions/*
  TriggerBuildAvailableSecretsSecretManager({
    required this.env,
    required this.versionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['env'] = env;
    map['versionName'] = versionName;
    return map;
  }

  factory TriggerBuildAvailableSecretsSecretManager.fromMap(
      Map<String, dynamic> map) {
    return TriggerBuildAvailableSecretsSecretManager(
      env: map['env'] as String,
      versionName: map['versionName'] as String,
    );
  }
}
