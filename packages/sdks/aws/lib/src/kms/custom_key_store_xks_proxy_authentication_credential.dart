// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomKeyStoreXksProxyAuthenticationCredential {
  /// A unique identifier for the raw secret access key.
  final pulumi.Input<String> accessKeyId;
  /// A secret string of 43-64 characters.
  final pulumi.Input<String> rawSecretAccessKey;

  /// Creates a new [CustomKeyStoreXksProxyAuthenticationCredential].
  /// [accessKeyId] A unique identifier for the raw secret access key.
  /// [rawSecretAccessKey] A secret string of 43-64 characters.
  const CustomKeyStoreXksProxyAuthenticationCredential({
    required this.accessKeyId,
    required this.rawSecretAccessKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKeyId': accessKeyId,
      'rawSecretAccessKey': rawSecretAccessKey,
    };
  }

  factory CustomKeyStoreXksProxyAuthenticationCredential.fromMap(Map<String, dynamic> map) {
    return CustomKeyStoreXksProxyAuthenticationCredential(
      accessKeyId: pulumi.Input.fromValue(map['accessKeyId'] as String),
      rawSecretAccessKey: pulumi.Input.fromValue(map['rawSecretAccessKey'] as String),
    );
  }
}
