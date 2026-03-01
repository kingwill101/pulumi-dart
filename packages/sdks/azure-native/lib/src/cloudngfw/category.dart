// ignore_for_file: unused_element, unnecessary_cast


/// URL/EDL to match
class Category {
  /// feed list
  final List<String> feeds;
  /// custom URL
  final List<String> urlCustom;

  /// Creates a new [Category].
  /// [feeds] feed list
  /// [urlCustom] custom URL
  Category({
    required this.feeds,
    required this.urlCustom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feeds': feeds,
      'urlCustom': urlCustom,
    };
  }

  factory Category.fromMap(Map<String, dynamic> map) {
    return Category(
      feeds: (map['feeds'] as List).cast<String>(),
      urlCustom: (map['urlCustom'] as List).cast<String>(),
    );
  }
}

