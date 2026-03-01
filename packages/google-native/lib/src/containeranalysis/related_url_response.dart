// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information.
class RelatedUrlResponse {
  /// Label to describe usage of the URL.
  final String label;

  /// Specific URL associated with the resource.
  final String url;

  /// Creates a new [RelatedUrlResponse].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  RelatedUrlResponse({required this.label, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'label': label, 'url': url};
  }

  factory RelatedUrlResponse.fromMap(Map<String, dynamic> map) {
    return RelatedUrlResponse(
      label: map['label'] as String,
      url: map['url'] as String,
    );
  }
}
