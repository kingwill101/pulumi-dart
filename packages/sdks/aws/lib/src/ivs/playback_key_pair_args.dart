// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ivs_playback_key_pair_playback_key_pair_args_doc}
/// The set of arguments for PlaybackKeyPair.
/// {@endtemplate}
/// {@macro pulumi_ivs_playback_key_pair_playback_key_pair_args_doc}
class PlaybackKeyPairArgs {
  /// Playback Key Pair name.
  final pulumi.Input<String>? name;
  /// Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PlaybackKeyPairArgs].
  /// [name] Playback Key Pair name.
  /// [publicKey] Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  PlaybackKeyPairArgs({
    this.name,
    required this.publicKey,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'publicKey': publicKey,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory PlaybackKeyPairArgs.fromMap(Map<String, dynamic> map) {
    return PlaybackKeyPairArgs(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicKey: (map['publicKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

