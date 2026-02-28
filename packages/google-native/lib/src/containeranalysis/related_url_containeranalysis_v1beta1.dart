// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for any related URL information.
class RelatedUrlContaineranalysisV1beta1 {
  /// Label to describe usage of the URL.
  final String? label;

  /// Specific URL associated with the resource.
  final String? url;

  /// Creates a new [RelatedUrlContaineranalysisV1beta1].
  /// [label] Label to describe usage of the URL.
  /// [url] Specific URL associated with the resource.
  RelatedUrlContaineranalysisV1beta1({
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

  factory RelatedUrlContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return RelatedUrlContaineranalysisV1beta1(
      label: map['label'] == null ? null : map['label'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
