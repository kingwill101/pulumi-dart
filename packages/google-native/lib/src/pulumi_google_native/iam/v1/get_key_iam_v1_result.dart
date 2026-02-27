// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getKey.
class GetKeyIamV1Result {
  /// The key status.
  final bool disabled;

  /// Specifies the algorithm (and possibly key size) for the key.
  final String keyAlgorithm;

  /// The key origin.
  final String keyOrigin;

  /// The key type.
  final String keyType;

  /// The resource name of the service account key in the following format `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}/keys/{key}`.
  final String name;

  /// The private key data. Only provided in `CreateServiceAccountKey` responses. Make sure to keep the private key data secure because it allows for the assertion of the service account identity. When base64 decoded, the private key data can be used to authenticate with Google API client libraries and with gcloud auth activate-service-account.
  final String privateKeyData;

  /// The output format for the private key. Only provided in `CreateServiceAccountKey` responses, not in `GetServiceAccountKey` or `ListServiceAccountKey` responses. Google never exposes system-managed private keys, and never retains user-managed private keys.
  final String privateKeyType;

  /// The public key data. Only provided in `GetServiceAccountKey` responses.
  final String publicKeyData;

  /// The key can be used after this timestamp.
  final String validAfterTime;

  /// The key can be used before this timestamp. For system-managed key pairs, this timestamp is the end time for the private key signing operation. The public key could still be used for verification for a few hours after this time.
  final String validBeforeTime;

  GetKeyIamV1Result({
    required this.disabled,
    required this.keyAlgorithm,
    required this.keyOrigin,
    required this.keyType,
    required this.name,
    required this.privateKeyData,
    required this.privateKeyType,
    required this.publicKeyData,
    required this.validAfterTime,
    required this.validBeforeTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['keyAlgorithm'] = keyAlgorithm;
    map['keyOrigin'] = keyOrigin;
    map['keyType'] = keyType;
    map['name'] = name;
    map['privateKeyData'] = privateKeyData;
    map['privateKeyType'] = privateKeyType;
    map['publicKeyData'] = publicKeyData;
    map['validAfterTime'] = validAfterTime;
    map['validBeforeTime'] = validBeforeTime;
    return map;
  }

  factory GetKeyIamV1Result.fromMap(Map<String, dynamic> map) {
    return GetKeyIamV1Result(
      disabled: map['disabled'] as bool,
      keyAlgorithm: map['keyAlgorithm'] as String,
      keyOrigin: map['keyOrigin'] as String,
      keyType: map['keyType'] as String,
      name: map['name'] as String,
      privateKeyData: map['privateKeyData'] as String,
      privateKeyType: map['privateKeyType'] as String,
      publicKeyData: map['publicKeyData'] as String,
      validAfterTime: map['validAfterTime'] as String,
      validBeforeTime: map['validBeforeTime'] as String,
    );
  }
}
