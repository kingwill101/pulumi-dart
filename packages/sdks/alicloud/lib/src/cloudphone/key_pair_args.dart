// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudphone_key_pair_key_pair_args_doc}
/// The set of arguments for KeyPair.
/// {@endtemplate}
/// {@macro pulumi_cloudphone_key_pair_key_pair_args_doc}
class KeyPairArgs {
  /// ADB key pair name.
  final pulumi.Input<String> keyPairName;
  /// The public key of the key pair.
  final pulumi.Input<String>? publicKeyBody;

  /// Creates a new [KeyPairArgs].
  /// [keyPairName] ADB key pair name.
  /// [publicKeyBody] The public key of the key pair.
  KeyPairArgs({
    required this.keyPairName,
    this.publicKeyBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': keyPairName,
      'publicKeyBody': ?publicKeyBody,
    };
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyPairName: (map['keyPairName'] as String).input(),
      publicKeyBody: map['publicKeyBody'] == null ? null : (map['publicKeyBody'] as String).input(),
    );
  }
}

