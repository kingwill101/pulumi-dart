// ignore_for_file: unused_element, unnecessary_cast

/// Pairs a set of secret environment variables mapped to encrypted values with the Cloud KMS key to use to decrypt the value.
class InlineSecretResponse {
  /// Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  final Map<String, String> envMap;

  /// Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  final String kmsKeyName;

  /// Creates a new [InlineSecretResponse].
  /// [envMap] Map of environment variable name to its encrypted value. Secret environment variables must be unique across all of a build's secrets, and must be used by at least one build step. Values can be at most 64 KB in size. There can be at most 100 secret values across all of a build's secrets.
  /// [kmsKeyName] Resource name of Cloud KMS crypto key to decrypt the encrypted value. In format: projects/*/locations/*/keyRings/*/cryptoKeys/*
  InlineSecretResponse({
    required this.envMap,
    required this.kmsKeyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['envMap'] = envMap;
    map['kmsKeyName'] = kmsKeyName;
    return map;
  }

  factory InlineSecretResponse.fromMap(Map<String, dynamic> map) {
    return InlineSecretResponse(
      envMap: (map['envMap'] as Map).cast<String, String>(),
      kmsKeyName: map['kmsKeyName'] as String,
    );
  }
}
