// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for KeyPair.
class KeyPairArgs {
  /// The name for the key pair. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String>? keyName;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `key_name`. If neither `key_name` nor `key_name_prefix` is provided, the provider will create a unique key name.
  final pulumi.Input<String>? keyNamePrefix;

  /// The public key material.
  final pulumi.Input<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  KeyPairArgs({
    this.keyName,
    this.keyNamePrefix,
    required this.publicKey,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyNameValue = keyName;
    if (keyNameValue != null) {
      map['keyName'] = keyNameValue;
    }
    final keyNamePrefixValue = keyNamePrefix;
    if (keyNamePrefixValue != null) {
      map['keyNamePrefix'] = keyNamePrefixValue;
    }
    map['publicKey'] = publicKey;
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

  factory KeyPairArgs.fromMap(Map<String, dynamic> map) {
    return KeyPairArgs(
      keyName: pulumi.Input.asOptionalInput<String>(map['keyName']),
      keyNamePrefix: pulumi.Input.asOptionalInput<String>(map['keyNamePrefix']),
      publicKey: pulumi.Input.asInput<String>(map['publicKey']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
