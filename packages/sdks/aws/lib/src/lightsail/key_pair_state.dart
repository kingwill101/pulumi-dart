// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// ARN of the Lightsail key pair.
  final pulumi.Input<String>? arn;
  /// MD5 public key fingerprint for the encrypted private key.
  final pulumi.Input<String>? encryptedFingerprint;
  /// Private key material, base 64 encoded and encrypted with the given `pgp_key`. This is only populated when creating a new key and `pgp_key` is supplied.
  final pulumi.Input<String>? encryptedPrivateKey;
  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  final pulumi.Input<String>? fingerprint;
  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;
  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  final pulumi.Input<String>? pgpKey;
  /// Private key, base64 encoded. This is only populated when creating a new key, and when no `pgp_key` is provided.
  final pulumi.Input<String>? privateKey;
  /// Public key material. This public key will be imported into Lightsail.
  final pulumi.Input<String>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. `pgp_key` is ignored if `public_key` is supplied.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [KeyPairState].
  /// [arn] ARN of the Lightsail key pair.
  /// [encryptedFingerprint] MD5 public key fingerprint for the encrypted private key.
  /// [encryptedPrivateKey] Private key material, base 64 encoded and encrypted with the given `pgp_key`. This is only populated when creating a new key and `pgp_key` is supplied.
  /// [fingerprint] MD5 public key fingerprint as specified in section 4 of RFC 4716.
  /// [name] Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [pgpKey] PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  /// [privateKey] Private key, base64 encoded. This is only populated when creating a new key, and when no `pgp_key` is provided.
  /// [publicKey] Public key material. This public key will be imported into Lightsail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  KeyPairState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? encryptedFingerprint,
    pulumi.Output<String>? encryptedPrivateKey,
    pulumi.Output<String>? fingerprint,
    pulumi.Output<String>? name,
    pulumi.Output<String>? namePrefix,
    pulumi.Output<String>? pgpKey,
    pulumi.Output<String>? privateKey,
    pulumi.Output<String>? publicKey,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      encryptedFingerprint = pulumi.Input.asOptionalInput<String>(encryptedFingerprint),
      encryptedPrivateKey = pulumi.Input.asOptionalInput<String>(encryptedPrivateKey),
      fingerprint = pulumi.Input.asOptionalInput<String>(fingerprint),
      name = pulumi.Input.asOptionalInput<String>(name),
      namePrefix = pulumi.Input.asOptionalInput<String>(namePrefix),
      pgpKey = pulumi.Input.asOptionalInput<String>(pgpKey),
      privateKey = pulumi.Input.asOptionalInput<String>(privateKey),
      publicKey = pulumi.Input.asOptionalInput<String>(publicKey),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'encryptedFingerprint': ?encryptedFingerprint,
      'encryptedPrivateKey': ?encryptedPrivateKey,
      'fingerprint': ?fingerprint,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'pgpKey': ?pgpKey,
      'privateKey': ?privateKey,
      'publicKey': ?publicKey,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory KeyPairState.fromMap(Map<String, dynamic> map) {
    return KeyPairState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      encryptedFingerprint: map['encryptedFingerprint'] == null ? null : pulumi.Output.create<String>(map['encryptedFingerprint'] as String),
      encryptedPrivateKey: map['encryptedPrivateKey'] == null ? null : pulumi.Output.create<String>(map['encryptedPrivateKey'] as String),
      fingerprint: map['fingerprint'] == null ? null : pulumi.Output.create<String>(map['fingerprint'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namePrefix: map['namePrefix'] == null ? null : pulumi.Output.create<String>(map['namePrefix'] as String),
      pgpKey: map['pgpKey'] == null ? null : pulumi.Output.create<String>(map['pgpKey'] as String),
      privateKey: map['privateKey'] == null ? null : pulumi.Output.create<String>(map['privateKey'] as String),
      publicKey: map['publicKey'] == null ? null : pulumi.Output.create<String>(map['publicKey'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

