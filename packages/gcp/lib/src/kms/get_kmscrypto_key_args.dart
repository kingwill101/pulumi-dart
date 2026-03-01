// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_get_kmscrypto_key_get_kmscrypto_key_args_doc}
/// Arguments for getKMSCryptoKey.
/// {@endtemplate}
/// {@macro pulumi_kms_get_kmscrypto_key_get_kmscrypto_key_args_doc}
class GetKMSCryptoKeyArgs {
  /// The `id` of the Google Cloud Platform KeyRing to which the key belongs.
  final pulumi.Input<String> keyRing;

  /// The CryptoKey's name.
  /// A CryptoKey’s name belonging to the specified Google Cloud Platform KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final pulumi.Input<String> name;

  /// Creates a new [GetKMSCryptoKeyArgs].
  /// [keyRing] The `id` of the Google Cloud Platform KeyRing to which the key belongs.
  /// [name] The CryptoKey's name.
  GetKMSCryptoKeyArgs({required String keyRing, required String name})
    : keyRing = pulumi.Input.asInput<String>(keyRing),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyRing': keyRing, 'name': name};
  }

  factory GetKMSCryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyArgs(
      keyRing: map['keyRing'] as String,
      name: map['name'] as String,
    );
  }
}
