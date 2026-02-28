// ignore_for_file: unused_element, unnecessary_cast

class TriggerBuildSecret {
  /// Cloud KMS key name to use to decrypt these envs.
  final String kmsKeyName;

  /// Map of environment variable name to its encrypted value.
  /// Secret environment variables must be unique across all of a build's secrets,
  /// and must be used by at least one build step. Values can be at most 64 KB in size.
  /// There can be at most 100 secret values across all of a build's secrets.
  final Map<String, String>? secretEnv;

  /// Creates a new [TriggerBuildSecret].
  /// [kmsKeyName] Cloud KMS key name to use to decrypt these envs.
  /// [secretEnv] Map of environment variable name to its encrypted value.
  TriggerBuildSecret({
    required this.kmsKeyName,
    this.secretEnv,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    final secretEnvValue = secretEnv;
    if (secretEnvValue != null) {
      map['secretEnv'] = secretEnvValue;
    }
    return map;
  }

  factory TriggerBuildSecret.fromMap(Map<String, dynamic> map) {
    return TriggerBuildSecret(
      kmsKeyName: map['kmsKeyName'] as String,
      secretEnv: map['secretEnv'] == null
          ? null
          : (map['secretEnv'] as Map).cast<String, String>(),
    );
  }
}
