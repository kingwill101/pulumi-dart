// ignore_for_file: unused_element, unnecessary_cast

/// Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
class InlineSecret {
  /// Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  final Map<String, String>? envMap;

  /// Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final String? kmsKeyName;

  /// Creates a new [InlineSecret].
  /// [envMap] Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  /// [kmsKeyName] Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  InlineSecret({
    this.envMap,
    this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final envMapValue = envMap;
    if (envMapValue != null) {
      map['envMap'] = envMapValue;
    }
    final kmsKeyNameValue = kmsKeyName;
    if (kmsKeyNameValue != null) {
      map['kmsKeyName'] = kmsKeyNameValue;
    }
    return map;
  }

  factory InlineSecret.fromMap(Map<String, dynamic> map) {
    return InlineSecret(
      envMap: map['envMap'] == null
          ? null
          : (map['envMap'] as Map).cast<String, String>(),
      kmsKeyName:
          map['kmsKeyName'] == null ? null : map['kmsKeyName'] as String,
    );
  }
}
