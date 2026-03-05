// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ecp_key_pair_key_pair_args_doc}
/// The set of arguments for KeyPair.
/// {@endtemplate}
/// {@macro pulumi_ecp_key_pair_key_pair_args_doc}
class KeyPairArgs {
  /// The Key Name.
  final pulumi.Input<String> keyPairName;
  /// The public key body.
  final pulumi.Input<String> publicKeyBody;

  /// Creates a new [KeyPairArgs].
  /// [keyPairName] The Key Name.
  /// [publicKeyBody] The public key body.
  KeyPairArgs({
    required this.keyPairName,
    required this.publicKeyBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': keyPairName,
      'publicKeyBody': publicKeyBody,
    };
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyPairName: pulumi.Input.fromValue(map['keyPairName'] as String),
      publicKeyBody: pulumi.Input.fromValue(map['publicKeyBody'] as String),
    );
  }
}

