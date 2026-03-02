// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKeyPairsPair {
  /// The ID of the Key Pair. Its value is same as Queue Name.
  final pulumi.Input<String> id;
  /// The Private Key of the Fingerprint.
  final pulumi.Input<String> keyPairFingerPrint;
  /// The Key Name.
  final pulumi.Input<String> keyPairName;

  /// Creates a new [GetKeyPairsPair].
  /// [id] The ID of the Key Pair. Its value is same as Queue Name.
  /// [keyPairFingerPrint] The Private Key of the Fingerprint.
  /// [keyPairName] The Key Name.
  GetKeyPairsPair({
    required this.id,
    required this.keyPairFingerPrint,
    required this.keyPairName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'keyPairFingerPrint': keyPairFingerPrint,
      'keyPairName': keyPairName,
    };
  }

  factory GetKeyPairsPair.fromMap(Map<String, dynamic> map) {
    return GetKeyPairsPair(
      id: (map['id'] as String).input(),
      keyPairFingerPrint: (map['keyPairFingerPrint'] as String).input(),
      keyPairName: (map['keyPairName'] as String).input(),
    );
  }
}

