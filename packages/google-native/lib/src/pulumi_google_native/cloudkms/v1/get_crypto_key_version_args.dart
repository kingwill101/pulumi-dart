// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getCryptoKeyVersion.
class GetCryptoKeyVersionArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> cryptoKeyVersionId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

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
      cryptoKeyId: pulumi.Input.asInput<String>(map['cryptoKeyId']),
      cryptoKeyVersionId:
          pulumi.Input.asInput<String>(map['cryptoKeyVersionId']),
      keyRingId: pulumi.Input.asInput<String>(map['keyRingId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
