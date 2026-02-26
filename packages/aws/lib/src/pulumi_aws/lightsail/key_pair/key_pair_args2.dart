// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyPair.
class KeyPairArgs2 {
  /// Name of the Lightsail Key Pair. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  final Input<String>? name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  final Input<String>? namePrefix;

  /// PGP key to encrypt the resulting private key material. Only used when creating a new key pair.
  final Input<String>? pgpKey;

  /// Public key material. This public key will be imported into Lightsail.
  final Input<String>? publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags to assign to the resource. To create a key-only tag, use an empty string as the value. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// > **Note:** A PGP key is not required, however it is strongly encouraged. Without a PGP key, the private key material will be stored in state unencrypted. <span pulumi-lang-nodejs="`pgpKey`" pulumi-lang-dotnet="`PgpKey`" pulumi-lang-go="`pgpKey`" pulumi-lang-python="`pgp_key`" pulumi-lang-yaml="`pgpKey`" pulumi-lang-java="`pgpKey`">`pgp_key`</span> is ignored if <span pulumi-lang-nodejs="`publicKey`" pulumi-lang-dotnet="`PublicKey`" pulumi-lang-go="`publicKey`" pulumi-lang-python="`public_key`" pulumi-lang-yaml="`publicKey`" pulumi-lang-java="`publicKey`">`public_key`</span> is supplied.
  final Input<Map<String, String>>? tags;

  KeyPairArgs2({
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

  factory KeyPairArgs2.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs2(
      name: Input.asOptionalInput<String>(map['name']),
      namePrefix: Input.asOptionalInput<String>(map['namePrefix']),
      pgpKey: Input.asOptionalInput<String>(map['pgpKey']),
      publicKey: Input.asOptionalInput<String>(map['publicKey']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
