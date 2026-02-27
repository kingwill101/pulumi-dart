// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Key.
class KeyArgs {
  /// Arbitrary map of values that, when changed, will trigger a new key to be generated.
  final pulumi.Input<Map<String, String>>? keepers;

  /// The algorithm used to generate the key. KEY_ALG_RSA_2048 is the default algorithm.
  /// Valid values are listed at
  /// [ServiceAccountPrivateKeyType](https://cloud.google.com/iam/reference/rest/v1/projects.serviceAccounts.keys#ServiceAccountKeyAlgorithm)
  /// (only used on create)
  final pulumi.Input<String>? keyAlgorithm;

  /// The output format of the private key. TYPE_GOOGLE_CREDENTIALS_FILE is the default output format.
  final pulumi.Input<String>? privateKeyType;

  /// Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`.
  final pulumi.Input<String>? publicKeyData;

  /// The output format of the public key requested. TYPE_X509_PEM_FILE is the default output format.
  final pulumi.Input<String>? publicKeyType;

  /// The Service account id of the Key. This can be a string in the format
  /// `{ACCOUNT}` or `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`. If the `{ACCOUNT}`-only syntax is used, either
  /// the **full** email address of the service account or its name can be specified as a value, in which case the project will
  /// automatically be inferred from the account. Otherwise, if the `projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}`
  /// syntax is used, the `{ACCOUNT}` specified can be the full email address of the service account or the service account's
  /// unique id. Substituting `-` as a wildcard for the `{PROJECT_ID}` will infer the project from the account.
  final pulumi.Input<String> serviceAccountId;

  KeyArgs({
    this.keepers,
    this.keyAlgorithm,
    this.privateKeyType,
    this.publicKeyData,
    this.publicKeyType,
    required this.serviceAccountId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keepersValue = keepers;
    if (keepersValue != null) {
      map['keepers'] = keepersValue;
    }
    final keyAlgorithmValue = keyAlgorithm;
    if (keyAlgorithmValue != null) {
      map['keyAlgorithm'] = keyAlgorithmValue;
    }
    final privateKeyTypeValue = privateKeyType;
    if (privateKeyTypeValue != null) {
      map['privateKeyType'] = privateKeyTypeValue;
    }
    final publicKeyDataValue = publicKeyData;
    if (publicKeyDataValue != null) {
      map['publicKeyData'] = publicKeyDataValue;
    }
    final publicKeyTypeValue = publicKeyType;
    if (publicKeyTypeValue != null) {
      map['publicKeyType'] = publicKeyTypeValue;
    }
    map['serviceAccountId'] = serviceAccountId;
    return map;
  }

  factory KeyArgs.fromMap(Map<String, dynamic> map) {
    return KeyArgs(
      keepers:
          pulumi.Input.asOptionalInput<Map<String, String>>(map['keepers']),
      keyAlgorithm: pulumi.Input.asOptionalInput<String>(map['keyAlgorithm']),
      privateKeyType:
          pulumi.Input.asOptionalInput<String>(map['privateKeyType']),
      publicKeyData: pulumi.Input.asOptionalInput<String>(map['publicKeyData']),
      publicKeyType: pulumi.Input.asOptionalInput<String>(map['publicKeyType']),
      serviceAccountId: pulumi.Input.asInput<String>(map['serviceAccountId']),
    );
  }
}
