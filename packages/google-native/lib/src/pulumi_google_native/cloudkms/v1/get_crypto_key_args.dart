// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCryptoKey.
class GetCryptoKeyArgs {
  final Input<String> cryptoKeyId;
  final Input<String> keyRingId;
  final Input<String> location;
  final Input<String>? project;

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
      cryptoKeyId: Input.asInput<String>(map['cryptoKeyId']),
      keyRingId: Input.asInput<String>(map['keyRingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
