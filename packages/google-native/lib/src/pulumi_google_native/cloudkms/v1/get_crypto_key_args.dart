// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCryptoKey.
class GetCryptoKeyArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  GetCryptoKeyArgs({
    required this.cryptoKeyId,
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCryptoKeyArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyArgs(
      cryptoKeyId: pulumi.Input.asInput<String>(map['cryptoKeyId']),
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
