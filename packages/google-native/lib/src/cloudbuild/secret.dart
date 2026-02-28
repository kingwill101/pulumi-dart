// ignore_for_file: unused_element, unnecessary_cast


/// Pairs a set of secret environment variables containing encrypted values with the Cloud KMS key to use to decrypt the value. Note: Use `kmsKeyName` with `available_secrets` instead of using `kmsKeyName` with `secret`. For instructions see: https://cloud.google.com/cloud-build/docs/securing-builds/use-encrypted-credentials.
class Secret {
  /// Cloud KMS key name to use to decrypt these envs.
  final String? kmsKeyName;
  /// Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  final Map<String, String>? secretEnv;

  /// Creates a new [Secret].
  /// [kmsKeyName] Cloud KMS key name to use to decrypt these envs.
  /// [secretEnv] Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  Secret({
    this.kmsKeyName,
    this.secretEnv,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kmsKeyName': ?kmsKeyName,
      'secretEnv': ?secretEnv,
    };
  }

  factory Secret.fromMap(Map<String, dynamic> map) {
    return Secret(
      kmsKeyName: map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
      secretEnv: map['secretEnv'] == null ? null : (map['secretEnv'] as Map).cast<String, String>(),
    );
  }
}

