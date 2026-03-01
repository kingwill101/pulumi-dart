// ignore_for_file: unused_element, unnecessary_cast

class IgnoreTags {
  /// Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.
  final List<String>? keyPrefixes;

  /// Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.
  final List<String>? keys;

  /// Creates a new [IgnoreTags].
  /// [keyPrefixes] Resource tag key prefixes to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEY_PREFIXES environment variable.
  /// [keys] Resource tag keys to ignore across all resources. Can also be configured with the TF_AWS_IGNORE_TAGS_KEYS environment variable.
  IgnoreTags({this.keyPrefixes, this.keys});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'keyPrefixes': ?keyPrefixes, 'keys': ?keys};
  }

  factory IgnoreTags.fromMap(Map<String, dynamic> map) {
    return IgnoreTags(
      keyPrefixes: map['keyPrefixes'] == null
          ? null
          : (map['keyPrefixes'] as List).cast<String>(),
      keys: map['keys'] == null ? null : (map['keys'] as List).cast<String>(),
    );
  }
}
