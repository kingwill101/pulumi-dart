// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_key_pair_key_pair_args_doc}
/// The set of arguments for KeyPair.
/// {@endtemplate}
/// {@macro pulumi_ec2_key_pair_key_pair_args_doc}
class KeyPairArgs {
  /// The name for the key pair. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String?>? keyName;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `keyName`. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String?>? keyNamePrefix;
  /// The public key material.
  final pulumi.Input<String> publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [KeyPairArgs].
  /// [keyName] The name for the key pair. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  /// [keyNamePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `keyName`. If neither `keyName` nor `keyNamePrefix` is provided, the provider will create a unique key name.
  /// [publicKey] The public key material.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const KeyPairArgs({
    this.keyName,
    this.keyNamePrefix,
    required this.publicKey,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyNamePrefix': ?keyNamePrefix,
      'publicKey': publicKey,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyNamePrefix: (() { final guardedValue = map['keyNamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: pulumi.Input.fromValue(map['publicKey'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
