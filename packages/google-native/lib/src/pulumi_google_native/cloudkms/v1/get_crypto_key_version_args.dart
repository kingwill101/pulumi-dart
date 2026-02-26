// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getCryptoKeyVersion.
class GetCryptoKeyVersionArgs {
  final Input<String> cryptoKeyId;
  final Input<String> cryptoKeyVersionId;
  final Input<String> keyRingId;
  final Input<String> location;
  final Input<String>? project;

  GetCryptoKeyVersionArgs({
    required this.cryptoKeyId,
    required this.cryptoKeyVersionId,
    required this.keyRingId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cryptoKeyId'] = cryptoKeyId;
    map['cryptoKeyVersionId'] = cryptoKeyVersionId;
    map['keyRingId'] = keyRingId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetCryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionArgs(
      cryptoKeyId: Input.asInput<String>(map['cryptoKeyId']),
      cryptoKeyVersionId: Input.asInput<String>(map['cryptoKeyVersionId']),
      keyRingId: Input.asInput<String>(map['keyRingId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
