// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information
class RelatedUrlResponse2 {
  /// Label to describe usage of the URL
  final String label;

  /// Specific URL to associate with the note
  final String url;

  RelatedUrlResponse2({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['url'] = url;
    return map;
  }

  factory RelatedUrlResponse2.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponse2(
      label: map['label'] as String,
      url: map['url'] as String,
    );
  }
}
