// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for KeyPair.
class KeyPairArgs {
  /// The name for the key pair. If neither <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span> nor <span pulumi-lang-nodejs="`keyNamePrefix`" pulumi-lang-dotnet="`KeyNamePrefix`" pulumi-lang-go="`keyNamePrefix`" pulumi-lang-python="`key_name_prefix`" pulumi-lang-yaml="`keyNamePrefix`" pulumi-lang-java="`keyNamePrefix`">`key_name_prefix`</span> is provided, the provider will create a unique key name.
  final Input<String>? keyName;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span>. If neither <span pulumi-lang-nodejs="`keyName`" pulumi-lang-dotnet="`KeyName`" pulumi-lang-go="`keyName`" pulumi-lang-python="`key_name`" pulumi-lang-yaml="`keyName`" pulumi-lang-java="`keyName`">`key_name`</span> nor <span pulumi-lang-nodejs="`keyNamePrefix`" pulumi-lang-dotnet="`KeyNamePrefix`" pulumi-lang-go="`keyNamePrefix`" pulumi-lang-python="`key_name_prefix`" pulumi-lang-yaml="`keyNamePrefix`" pulumi-lang-java="`keyNamePrefix`">`key_name_prefix`</span> is provided, the provider will create a unique key name.
  final Input<String>? keyNamePrefix;

  /// The public key material.
  final Input<String> publicKey;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

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
      keyName: Input.asOptionalInput<String>(map['keyName']),
      keyNamePrefix: Input.asOptionalInput<String>(map['keyNamePrefix']),
      publicKey: Input.asInput<String>(map['publicKey']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
