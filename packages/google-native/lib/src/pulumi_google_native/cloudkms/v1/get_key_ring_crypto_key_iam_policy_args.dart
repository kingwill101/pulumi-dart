// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getKeyRingCryptoKeyIamPolicy.
class GetKeyRingCryptoKeyIamPolicyArgs {
  final Input<String> cryptoKeyId;
  final Input<String> keyRingId;
  final Input<String> location;
  final Input<int>? optionsRequestedPolicyVersion;
  final Input<String>? project;

  GetKeyRingCryptoKeyIamPolicyArgs({
    required this.cryptoKeyId,
    required this.keyRingId,
    required this.location,
    this.optionsRequestedPolicyVersion,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final optionsRequestedPolicyVersionValue = optionsRequestedPolicyVersion;
    if (optionsRequestedPolicyVersionValue != null) {
      map['optionsRequestedPolicyVersion'] = optionsRequestedPolicyVersionValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetKeyRingCryptoKeyIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetKeyRingCryptoKeyIamPolicyArgs(
      cryptoKeyId: Input.asInput<String>(map['cryptoKeyId']),
      keyRingId: Input.asInput<String>(map['keyRingId']),
      location: Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion:
          Input.asOptionalInput<int>(map['optionsRequestedPolicyVersion']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
