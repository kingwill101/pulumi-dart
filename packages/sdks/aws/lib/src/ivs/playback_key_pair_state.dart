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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

