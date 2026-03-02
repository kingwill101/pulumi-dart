// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering PlaybackKeyPair resources.
class PlaybackKeyPairState {
  /// ARN of the Playback Key Pair.
  final pulumi.Input<String>? arn;
  /// Key-pair identifier.
  final pulumi.Input<String>? fingerprint;
  /// Playback Key Pair name.
  final pulumi.Input<String>? name;
  /// Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [PlaybackKeyPairState].
  /// [arn] ARN of the Playback Key Pair.
  /// [fingerprint] Key-pair identifier.
  /// [name] Playback Key Pair name.
  /// [publicKey] Public portion of a customer-generated key pair. Must be an ECDSA public key in PEM format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  PlaybackKeyPairState({
    this.arn,
    this.fingerprint,
    this.name,
    this.publicKey,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'publicKey': ?publicKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory PlaybackKeyPairState.fromMap(Map<String, dynamic> map) {
    return PlaybackKeyPairState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      publicKey: map['publicKey'] == null ? null : (map['publicKey'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

