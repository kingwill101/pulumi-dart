// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyPair.
class KeyPairLightsailArgs {
  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final pulumi.Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  final pulumi.Input<String>? namePrefix;

  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  final pulumi.Input<String>? pgpKey;

  /// Public key material. This public key will be imported into Lightsail.
  final pulumi.Input<String>? publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. `pgp_key` is ignored if `public_key` is supplied.
  final pulumi.Input<Map<String, String>>? tags;

  KeyPairLightsailArgs({
    this.name,
    this.namePrefix,
    this.pgpKey,
    this.publicKey,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final namePrefixValue = namePrefix;
    if (namePrefixValue != null) {
      map['namePrefix'] = namePrefixValue;
    }
    final pgpKeyValue = pgpKey;
    if (pgpKeyValue != null) {
      map['pgpKey'] = pgpKeyValue;
    }
    final publicKeyValue = publicKey;
    if (publicKeyValue != null) {
      map['publicKey'] = publicKeyValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory KeyPairLightsailArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairLightsailArgs(
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      namePrefix: pulumi.Input.asOptionalInput<String>(map['namePrefix']),
      pgpKey: pulumi.Input.asOptionalInput<String>(map['pgpKey']),
      publicKey: pulumi.Input.asOptionalInput<String>(map['publicKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
