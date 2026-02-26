// ignore_for_file: unused_element, unnecessary_cast

class GetTriggerBuildSecret {
  /// Cloud KMS key name to use to decrypt these envs.
  final String kmsKeyName;

  /// Map of environment variable name to its encrypted value.
  /// Secret environment variables must be unique across all of a build's secrets,
  /// and must be used by at least one build step. Values can be at most 64 KB in size.
  /// There can be at most 100 secret values across all of a build's secrets.
  final Map<String, String> secretEnv;

  GetTriggerBuildSecret({
    required this.kmsKeyName,
    required this.secretEnv,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['kmsKeyName'] = kmsKeyName;
    map['secretEnv'] = secretEnv;
    return map;
  }

  factory GetTriggerBuildSecret.fromMap(Map<String, dynamic> map) {
    return GetTriggerBuildSecret(
      kmsKeyName: map['kmsKeyName'] as String,
      secretEnv: (map['secretEnv'] as Map).cast<String, String>(),
    );
  }
}
