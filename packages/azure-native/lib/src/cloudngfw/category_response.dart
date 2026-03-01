// ignore_for_file: unused_element, unnecessary_cast


/// URL/EDL to match
class CategoryResponse {
  /// feed list
  final List<String> feeds;
  /// custom URL
  final List<String> urlCustom;

  /// Creates a new [CategoryResponse].
  /// [feeds] feed list
  /// [urlCustom] custom URL
  CategoryResponse({
    required this.feeds,
    required this.urlCustom,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'feeds': feeds,
      'urlCustom': urlCustom,
    };
  }

  factory CategoryResponse.fromMap(Map<String, dynamic> map) {
    return CategoryResponse(
      feeds: (map['feeds'] as List).cast<String>(),
      urlCustom: (map['urlCustom'] as List).cast<String>(),
    );
  }
}

