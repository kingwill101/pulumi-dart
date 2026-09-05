// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering KeyPair resources.
class KeyPairState {
  /// ARN of the Lightsail key pair.
  final pulumi.Input<String?>? arn;
  /// MD5 public key fingerprint for the encrypted private key.
  final pulumi.Input<String?>? encryptedFingerprint;
  /// Private key material, base 64 encoded and encrypted with the given `pgpKey`. This is only populated when creating a new key and `pgpKey` is supplied.
  final pulumi.Input<String?>? encryptedPrivateKey;
  /// MD5 public key fingerprint as specified in section 4 of RFC 4716.
  final pulumi.Input<String?>? fingerprint;
  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String?>? name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String?>? namePrefix;
  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  final pulumi.Input<String?>? pgpKey;
  /// Private key, base64 encoded. This is only populated when creating a new key, and when no `pgpKey` is provided.
  final pulumi.Input<String?>? privateKey;
  /// Public key material. This public key will be imported into Lightsail.
  final pulumi.Input<String?>? publicKey;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// &gt; **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. `pgpKey` is ignored if `publicKey` is supplied.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [KeyPairState].
  /// [arn] ARN of the Lightsail key pair.
  /// [encryptedFingerprint] MD5 public key fingerprint for the encrypted private key.
  /// [encryptedPrivateKey] Private key material, base 64 encoded and encrypted with the given `pgpKey`. This is only populated when creating a new key and `pgpKey` is supplied.
  /// [fingerprint] MD5 public key fingerprint as specified in section 4 of RFC 4716.
  /// [name] Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  /// [namePrefix] Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  /// [pgpKey] PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  /// [privateKey] Private key, base64 encoded. This is only populated when creating a new key, and when no `pgpKey` is provided.
  /// [publicKey] Public key material. This public key will be imported into Lightsail.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const KeyPairState({
    this.arn,
    this.encryptedFingerprint,
    this.encryptedPrivateKey,
    this.fingerprint,
    this.name,
    this.namePrefix,
    this.pgpKey,
    this.privateKey,
    this.publicKey,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedFingerprint: (() { final guardedValue = map['encryptedFingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedPrivateKey: (() { final guardedValue = map['encryptedPrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fingerprint: (() { final guardedValue = map['fingerprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pgpKey: (() { final guardedValue = map['pgpKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKey: (() { final guardedValue = map['publicKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
