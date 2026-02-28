// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information
class RelatedUrlResponseContaineranalysisV1alpha1 {
  /// Label to describe usage of the URL
  final String label;

  /// Specific URL to associate with the note
  final String url;

  /// Creates a new [RelatedUrlResponseContaineranalysisV1alpha1].
  /// [label] Label to describe usage of the URL
  /// [url] Specific URL to associate with the note
  RelatedUrlResponseContaineranalysisV1alpha1({
    required this.label,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['label'] = label;
    map['url'] = url;
    return map;
  }

  factory RelatedUrlResponseContaineranalysisV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return RelatedUrlResponseContaineranalysisV1alpha1(
      label: map['label'] as String,
      url: map['url'] as String,
    );
  }
}
