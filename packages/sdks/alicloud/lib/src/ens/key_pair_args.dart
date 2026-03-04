// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ens_key_pair_key_pair_args_doc}
/// The set of arguments for KeyPair.
/// {@endtemplate}
/// {@macro pulumi_ens_key_pair_key_pair_args_doc}
class KeyPairArgs {
  /// The name of the key pair.
  final pulumi.Input<String> keyPairName;

  /// The version number.
  final pulumi.Input<String> version;

  /// Creates a new [KeyPairArgs].
  /// [keyPairName] The name of the key pair.
  /// [version] The version number.
  KeyPairArgs({required this.keyPairName, required this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyPairName': keyPairName, 'version': version};
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyPairName: pulumi.Input.fromValue(map['keyPairName'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
