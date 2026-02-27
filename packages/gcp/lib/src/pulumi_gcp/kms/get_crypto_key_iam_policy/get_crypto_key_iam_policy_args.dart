// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCryptoKeyIamPolicy.
class GetCryptoKeyIamPolicyArgs {
  /// The crypto key ID, in the form
  final pulumi.Input<String> cryptoKeyId;

  GetCryptoKeyIamPolicyArgs({
    required this.cryptoKeyId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    return map;
  }

  factory GetCryptoKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyIamPolicyArgs(
      cryptoKeyId: pulumi.Input.asInput<String>(map['cryptoKeyId']),
    );
  }
}
