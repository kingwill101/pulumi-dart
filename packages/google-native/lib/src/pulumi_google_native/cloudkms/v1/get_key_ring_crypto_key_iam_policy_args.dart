// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getKeyRingCryptoKeyIamPolicy.
class GetKeyRingCryptoKeyIamPolicyArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;

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
      cryptoKeyId: pulumi.Input.asInput<String>(map['cryptoKeyId']),
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      optionsRequestedPolicyVersion: pulumi.Input.asOptionalInput<int>(
          map['optionsRequestedPolicyVersion']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
