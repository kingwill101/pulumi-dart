// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ProviderIgnoreTags {
  /// Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.
  final pulumi.Input<List<String>>? keyPrefixes;
  /// Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.
  final pulumi.Input<List<String>>? keys;

  /// Creates a new [ProviderIgnoreTags].
  /// [keyPrefixes] Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.
  /// [keys] Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.
  const ProviderIgnoreTags({
    this.keyPrefixes,
    this.keys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyPrefixes': ?keyPrefixes,
      'keys': ?keys,
    };
  }

  factory ProviderIgnoreTags.fromMap(Map<String, dynamic> map) {
    return ProviderIgnoreTags(
      keyPrefixes: (() { final guardedValue = map['keyPrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

