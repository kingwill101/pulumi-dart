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
    required String keyPairName,
    required String publicKeyBody,
  }) :
      keyPairName = pulumi.Input.asInput<String>(keyPairName),
      publicKeyBody = pulumi.Input.asInput<String>(publicKeyBody);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': keyPairName,
      'publicKeyBody': publicKeyBody,
    };
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyPairName: map['keyPairName'] as String,
      publicKeyBody: map['publicKeyBody'] as String,
    );
  }
}

