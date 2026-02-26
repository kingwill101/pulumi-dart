// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information.
class RelatedUrlResponse3 {
  /// Label to describe usage of the URL.
  final String label;

  /// Specific URL associated with the resource.
  final String url;

  RelatedUrlResponse3({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['url'] = url;
    return map;
  }

  factory RelatedUrlResponse3.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponse3(
      label: map['label'] as String,
      url: map['url'] as String,
    );
  }
}
