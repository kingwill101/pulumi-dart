// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getKMSCryptoKey.
class GetKMSCryptoKeyArgs {
  /// The `id` of the Google Cloud Platform KeyRing to which the key belongs.
  final Input<String> keyRing;

  /// The CryptoKey's name.
  /// A CryptoKey’s name belonging to the specified Google Cloud Platform KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  final Input<String> name;

  GetKMSCryptoKeyArgs({
    required this.keyRing,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['keyRing'] = keyRing;
    map['name'] = name;
    return map;
  }

  factory GetKMSCryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetKMSCryptoKeyArgs(
      keyRing: Input.asInput<String>(map['keyRing']),
      name: Input.asInput<String>(map['name']),
    );
  }
}
