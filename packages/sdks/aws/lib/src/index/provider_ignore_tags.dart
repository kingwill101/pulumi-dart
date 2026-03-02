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
  ProviderIgnoreTags({
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
      keyPrefixes: map['keyPrefixes'] == null ? null : (((map['keyPrefixes'] as List).cast<String>()).input()).input(),
      keys: map['keys'] == null ? null : (((map['keys'] as List).cast<String>()).input()).input(),
    );
  }
}

