// ignore_for_file: unused_element, unnecessary_cast

/// Describes a URL link.
class HelpLinkResponseComputeBeta {
  /// Describes what the link offers.
  final String description;

  /// The URL of the link.
  final String url;

  /// Creates a new [HelpLinkResponseComputeBeta].
  /// [description] Describes what the link offers.
  /// [url] The URL of the link.
  HelpLinkResponseComputeBeta({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['url'] = url;
    return map;
  }

  factory HelpLinkResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return HelpLinkResponseComputeBeta(
      description: map['description'] as String,
      url: map['url'] as String,
    );
  }
}
