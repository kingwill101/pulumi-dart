// ignore_for_file: unused_element, unnecessary_cast

/// Describes a URL link.
class LinkResponse2 {
  /// Describes what the link offers.
  final String description;

  /// The URL of the link.
  final String url;

  LinkResponse2({
    required this.description,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['url'] = url;
    return map;
  }

  factory LinkResponse2.fromMap(Map<String, dynamic> map) {
    return LinkResponse2(
      description: map['description'] as String,
      url: map['url'] as String,
    );
  }
}
