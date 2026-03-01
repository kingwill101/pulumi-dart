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
  KeyPairArgs({
    required pulumi.Output<String> keyPairName,
    required pulumi.Output<String> version,
  }) :
      keyPairName = pulumi.Input.asInput<String>(keyPairName),
      version = pulumi.Input.asInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPairName': keyPairName,
      'version': version,
    };
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyPairName: pulumi.Output.create<String>(map['keyPairName'] as String),
      version: pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

