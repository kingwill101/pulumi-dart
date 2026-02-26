// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information
class RelatedUrl2 {
  /// Label to describe usage of the URL
  final String? label;

  /// Specific URL to associate with the note
  final String? url;

  RelatedUrl2({
    this.label,
    this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final labelValue = label;
    if (labelValue != null) {
      map['label'] = labelValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory RelatedUrl2.fromMap(Map<String, dynamic> map) {
    return RelatedUrl2(
      label: map['label'] == null ? null : map['label'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
