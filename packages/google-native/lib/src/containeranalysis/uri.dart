// ignore_for_file: unused_element, unnecessary_cast

/// An URI message.
class URI {
  /// A label for the URI.
  final String? label;

  /// The unique resource identifier.
  final String? uri;

  /// Creates a new [URI].
  /// [label] A label for the URI.
  /// [uri] The unique resource identifier.
  URI({
    this.label,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final uriValue = uri;
    if (uriValue != null) {
      map['uri'] = uriValue;
    }
    return map;
  }

  factory URI.fromMap(Map<String, dynamic> map) {
    return URI(
      label: map['label'] == null ? null : map['label'] as String,
      uri: map['uri'] == null ? null : map['uri'] as String,
    );
  }
}
